Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.11?download=true
inline.NumInlined: 4205
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB4_12global_state11GlobalState20update_configuration:bb.a

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.es

bb.fa:                                            ; preds = %bb.es
  %i.qy = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = invoke noundef zeroext i1 @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config12cfg_set_test(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4640) %i.qz, i32 noundef 0, i32 undef)
          to label %bb.fb unwind label %bb.q

bb.fb:                                            ; preds = %bb.fa
  %i.rb = xor i1 %i.qn, %i.ra
  br i1 %i.rb, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -1, ptr %i.g, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 0, ptr %i.rc, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ff unwind label %bb.fk

bb.fd:                                            ; preds = %bb.fb, %bb.fi
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigE10drop_innerBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEEB1f_.exit168 unwind label %bb.p

bb.fe:                                            ; preds = %bb.fh
  %lpad.thr_comm.split-lp218 = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.ff:                                            ; preds = %bb.fc
  %i.re = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %i.rf = trunc nuw i64 %i.re to i1
  %i.rg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !range !53, !noundef !5 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.rf, label %bb.fg, label %bb.fh, !prof !16

bb.fg:                                            ; preds = %bb.ff
  %i.rj = load i64, ptr %i.ri, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.rh, i64 %i.rj) #43
          to label %bb.fj unwind label %bb.fk

bb.fh:                                            ; preds = %bb.ff
  %i.rk = load ptr, ptr %i.ri, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.rl = icmp samesign ugt i64 %i.rh, 26
  call void @llvm.assume(i1 %i.rl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.rk, ptr noundef nonnull align 1 dereferenceable(27) @198, i64 27, i1 false)
  store i64 %i.rh, ptr %i.f, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.rk, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 27, ptr %.sroa.646.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCs6u1mgJOKDyY_13rust_analyzer8op_queueINtB4_7OpQueueNtNtB6_12global_state21FetchWorkspaceRequestNtBY_22FetchWorkspaceResponseE10request_opB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.rd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %bb.fi unwind label %bb.fe

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.fd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEEB1f_.exit168: ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

bb.fj:                                            ; preds = %bb.fg, %bb.ex, %bb.cq
  unreachable

bb.fk:                                            ; preds = %bb.fg, %bb.fc
  %lpad.thr_comm217 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer12global_state21FetchWorkspaceRequestEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #41
          to label %.body127 unwind label %bb.ck

bb.fl:                                            ; preds = %bb.ex, %bb.eu
  %lpad.thr_comm209 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer12global_state21FetchWorkspaceRequestEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #41
          to label %.body127 unwind label %bb.ck

bb.fm:                                            ; preds = %bb.cq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer6config13LinkedProjectEEB1c_.exit150
  %lpad.thr_comm198 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer12global_state21FetchWorkspaceRequestEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #41
          to label %.body127 unwind label %bb.ck

.thread:                                          ; preds = %.body61, %.thread172
  %.pn57.pn.pn171 = phi { ptr, i32 } [ %.pn57.pn, %.body61 ], [ %eh.lpad-body175, %.thread172 ]
  resume { ptr, i32 } %.pn57.pn.pn171

.thread172:                                       ; preds = %bb.j, %.thread176
  %eh.lpad-body175 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread176 ], [ %i.ah, %bb.j ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(4640) %1) #41
          to label %.thread unwind label %bb.ck
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB4_12global_state11GlobalState21fetch_workspace_error(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.e = load i64, ptr %i.d, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.h = icmp ult i64 %i.g, 13101380734168716
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.e, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge, %bb.a
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.phi, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %._crit_edge.thread
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.r

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 704
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 328
  %i.r = load i64, ptr %i.q, align 8, !range !9, !noundef !5 ; 2 uses
  %.not34 = icmp eq i64 %i.r, -2
  br i1 %.not34, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1616
  %i.t = load i64, ptr %i.s, align 8, !range !10, !noundef !5
  %.not35 = icmp eq i64 %i.t, 2
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 1936
  %i.v = load i64, ptr %i.u, align 8, !range !9, !noundef !5 ; 2 uses
  %.not36 = icmp eq i64 %i.v, -2
  br i1 %.not36, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4600
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !align !8, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 304
  %.pr = load i64, ptr %i.y, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h
  %i.z = phi i64 [ %i.v, %bb.g ], [ %i.r, %bb.e ], [ %.pr, %bb.h ]
  %.not37 = icmp eq i64 %i.z, -1
  br i1 %.not37, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 39)
          to label %.thread unwind label %.loopexit.split-lp

.thread:                                          ; preds = %bb.j
  %i.aa = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2957, !noundef !5 ; 2 uses
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2957, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.ac, ptr noundef nonnull align 1 dereferenceable(39) @199, i64 39, i1 false)
  %i.ad = add nuw nsw i64 %i.aa, 39
  store i64 %i.ad, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2957
  br label %bb.q

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #41
          to label %common.resume unwind label %bb.p

._crit_edge:                                      ; preds = %bb.n
  %.pr38.pre = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.ae = icmp sgt i64 %.pr38.pre, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %.pr38.pre, 0
  br i1 %i.af, label %._crit_edge.thread, label %bb.q

bb.l:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.01.039 = phi ptr [ %i.m, %.lr.ph ], [ %i.ag, %bb.n ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.039, i64 704 ; 2 uses
  %i.ah = load i64, ptr %.sroa.01.039, align 8, !range !28, !noundef !5
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.039, i64 8
  store ptr %i.aj, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCsdRkQxkTxnTp_6anyhow5ErrorNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.419.0..sroa_idx, align 8
  %i.ak = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @122, ptr noundef nonnull @200, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %.loopexit  ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.al = icmp eq ptr %i.ag, %i.n
  br i1 %i.al, label %._crit_edge, label %bb.l

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.p:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.q:                                             ; preds = %.thread, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB4_12global_state11GlobalState22fetch_build_data_error(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.g = load i64, ptr %i.f, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.k, 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.o, %bb.d ], [ %i.ah, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit41, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.01.042 = phi ptr [ %i.i, %.lr.ph ], [ %i.q, %bb.k ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.042, i64 48 ; 2 uses
  %i.r = load i64, ptr %.sroa.01.042, align 8, !range !7, !noundef !5
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.i

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i64, ptr %.sroa.55.0..sroa_idx, align 8 ; 2 uses
  %i.t = icmp sgt i64 %.pre, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.pre, 0
  br i1 %i.u, label %._crit_edge.thread, label %bb.p

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.042, i64 8
  store ptr %i.v, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCsdRkQxkTxnTp_6anyhow5ErrorNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.49.0..sroa_idx, align 8
  %i.w = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @122, ptr noundef nonnull @201, ptr noundef nonnull %i.a)
          to label %bb.n unwind label %bb.l       ; 0 uses

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.042, i64 24
  %i.y = load i64, ptr %i.x, align 8, !range !7, !noundef !5
  %.not39 = icmp eq i64 %i.y, -1
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.042, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.042, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aa, ptr %i.d, align 8, !captures !54
  store i64 %i.ac, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ad = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @122, ptr noundef nonnull @201, ptr noundef nonnull %i.c)
          to label %bb.m unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.i, %bb.n, %bb.m
  %i.ae = icmp eq ptr %i.q, %i.l
  br i1 %i.ae, label %._crit_edge, label %bb.g

bb.l:                                             ; preds = %bb.h, %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #41
          to label %common.resume unwind label %bb.o

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.o:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
end_hunk_0
