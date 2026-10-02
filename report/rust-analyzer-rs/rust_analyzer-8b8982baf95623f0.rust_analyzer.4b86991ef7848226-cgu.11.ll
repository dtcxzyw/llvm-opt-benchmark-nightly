Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.11?download=true
inline.NumInlined: 4205
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNCNvMs_NtNtCsM5evIHPibA_17crossbeam_channel7flavors5arrayINtB6_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4send0Cs6u1mgJOKDyY_13rust_analyzer:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtCsM5evIHPibA_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #40
  %i.ap = load ptr, ptr %i.a, align 8, !noundef !5
  %.not1 = icmp eq ptr %i.ap, null
  br i1 %.not1, label %bb.l, label %bb.j, !prof !16

_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4: ; preds = %.split.i, %.split.us.i, %_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryECs6u1mgJOKDyY_13rust_analyzer.exit
  ret void

bb.j:                                             ; preds = %_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  %i.aq = load ptr, ptr %i.b, align 8, !alias.scope !2722, !nonnull !5, !noundef !5
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !2722
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryECs6u1mgJOKDyY_13rust_analyzer.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #44
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4

bb.l:                                             ; preds = %_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #46
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i8 -1, 3) i8 @_RNSNvYNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableBc_(ptr noundef nonnull %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [216 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2731
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(216) %i.d, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2731
  %i.e = invoke { ptr, i64 } @_RNvMNtCs4sl5YdnrCxp_3vfs8vfs_pathNtB2_7VfsPath7as_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %0)
          to label %bb.c unwind label %bb.b       ; 2 uses

.body.i:                                          ; preds = %bb.m, %bb.j, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.f, %bb.b ], [ %i.m, %bb.j ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer12global_state19GlobalStateSnapshotEBF_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.c) #41
          to label %bb.n unwind label %bb.w

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.d, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { ptr, i64 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2731
  invoke void @_RNvXsf_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCsbSS6DM8SDEO_5alloc6borrow7ToOwned8to_owned(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h)
          to label %bb.g unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %i.b, align 8, !noalias !2731
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noalias !2731, !noundef !5
  %.not6.i = icmp eq i64 %i.j, 0
  br i1 %.not6.i, label %bb.h, label %bb.l

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2731
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.k = load i64, ptr %i.b, align 8, !range !7, !alias.scope !2732, !noalias !2731, !noundef !5
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.b

bb.l:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2731, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke void @_RNvMs2_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_14FlycheckHandle17restart_workspace(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2731
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer12global_state19GlobalStateSnapshotEBF_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.c)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.n:                                             ; preds = %bb.o, %.body.i
  %.pn8.i = phi { ptr, i32 } [ %i.s, %bb.o ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %0) #41
          to label %common.resume.i unwind label %bb.w

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2731
  %i.t = load i64, ptr %0, align 8, !range !11, !alias.scope !2733, !noundef !5
  %i.u = icmp eq i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.u, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck0B7_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume.i:                                  ; preds = %bb.u, %bb.r, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %bb.u ], [ %i.w, %bb.r ], [ %.pn8.i, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.p
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck0B7_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.w:                                             ; preds = %bb.n, %.body.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck0B7_.exit: ; preds = %bb.q, %bb.t
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  ret i8 -1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i8 -1, 3) i8 @_RNSNvYNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableBc_(ptr noundef nonnull %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i.i.i.i.i.i.i = alloca [39 x i8], align 1 ; 5 uses
  %.sroa.518.i.i.i.i.i.i.i.i.i = alloca [39 x i8], align 1 ; 5 uses
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 12 uses
  %i.d = alloca [64 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i = alloca [39 x i8], align 1    ; 5 uses
  %.sroa.518.i.i.i.i = alloca [39 x i8], align 1  ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [64 x i8], align 8                ; 10 uses
  %i.o = alloca [64 x i8], align 8                ; 12 uses
  %i.p = alloca [64 x i8], align 8                ; 12 uses
  %.sroa.8.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [80 x i8], align 8                ; 12 uses
  %i.v = alloca [200 x i8], align 8               ; 18 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.4.i.sroa.0 = alloca [183 x i8], align 1  ; 6 uses
  %.sroa.4.i.sroa.8 = alloca [7 x i8], align 1    ; 2 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 11 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 11 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [152 x i8], align 8              ; 13 uses
  %i.at = alloca [200 x i8], align 8              ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 14 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.12.i = alloca [24 x i8], align 8         ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 15 uses
  %i.ba = alloca [24 x i8], align 8               ; 9 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [200 x i8], align 8              ; 9 uses
  %i.bg = alloca [80 x i8], align 8               ; 16 uses
  %i.bh = alloca [24 x i8], align 8               ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2825
  %i.bi = invoke { ptr, i64 } @_RNvMNtCs4sl5YdnrCxp_3vfs8vfs_pathNtB2_7VfsPath7as_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %0)
          to label %bb.c unwind label %bb.b       ; 2 uses

.body254.i:                                       ; preds = %bb.fz, %bb.fv, %.body.i, %bb.b
  %.pn189.i = phi { ptr, i32 } [ %.pn185.pn.i, %.body.i ], [ %i.qj, %bb.fv ], [ %i.bj, %bb.b ], [ %i.qn, %bb.fz ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0) #41
          to label %bb.ge unwind label %bb.db

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i258.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.d, %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body254.i

bb.c:                                             ; preds = %bb.a
  %i.bk = extractvalue { ptr, i64 } %i.bi, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = extractvalue { ptr, i64 } %i.bi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2825
  invoke void @_RNvXsf_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCsbSS6DM8SDEO_5alloc6borrow7ToOwned8to_owned(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bl)
          to label %bb.g unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %i.bh, align 8, !noalias !2825
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2825
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !alias.scope !2825, !noundef !5
  invoke void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2_10TargetSpec8for_file(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.bf, ptr noundef nonnull align 8 %i.bm, i32 noundef %i.bo)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2825
  br label %bb.f

.body.i:                                          ; preds = %bb.gd, %bb.dg, %.body220.i, %.body227.i, %bb.av, %bb.au, %bb.ar, %.body40.i.thread465.i, %bb.aj, %.body44.i.i, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.h
  %.pn185.pn.i = phi { ptr, i32 } [ %.pn185.i, %bb.gd ], [ %.pn175.i, %.body220.i ], [ %.pn185.i, %.body227.i ], [ %i.ct, %bb.aa ], [ %i.bp, %bb.h ], [ %eh.lpad-body54.i.i, %bb.ar ], [ %.pn175.i, %bb.dg ], [ %.pn28.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i ], [ %i.do, %bb.av ], [ %i.dd, %.body40.i.thread465.i ], [ %i.dc, %bb.aj ], [ %eh.lpad-body45.i.i, %.body44.i.i ], [ %i.cw, %bb.au ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #41
          to label %.body254.i unwind label %bb.db

bb.h:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %bb.f
  %i.bq = load i64, ptr %i.bf, align 8, !range !17, !noalias !2825, !noundef !5 ; 5 uses
  %i.br = icmp eq i64 %i.bq, -3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !noalias !2825 ; 4 uses
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2825
  br label %bb.fx

bb.k:                                             ; preds = %bb.i
  %.sroa.584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(183) %.sroa.4.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(183) %.sroa.584.0..sroa_idx.i, i64 183, i1 false)
  %.sroa.4.i.sroa.7.0..sroa.584.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  %.sroa.4.i.sroa.7.0.copyload = load i8, ptr %.sroa.4.i.sroa.7.0..sroa.584.0..sroa_idx.i.sroa_idx, align 8, !noalias !2825 ; 4 uses
  %.sroa.4.i.sroa.8.0..sroa.584.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.sroa.8.0..sroa.584.0..sroa_idx.i.sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2825
  %.not168.i = icmp eq i64 %i.bq, -2
  br i1 %.not168.i, label %bb.ay, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.bu = icmp eq i64 %i.bq, -1
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2826
  store i8 %i.bt, ptr %i.u, align 8, !noalias !2827
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.7.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.sroa.0, i64 79, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2826
  store i64 -1, ptr %i.t, align 8, !noalias !2826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2826
  %.sroa.4.i.sroa.0.47..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.sroa.0, i64 47 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.i.sroa.0.47..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2826
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.af unwind label %bb.ae, !noalias !2828

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2826
  store i64 %i.bq, ptr %i.v, align 8, !noalias !2827
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 %i.bt, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2827
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(183) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(183) %.sroa.4.i.sroa.0, i64 183, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  store i8 %.sroa.4.i.sroa.7.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !2827
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.sroa.8, i64 7, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.bv, align 8, !noalias !2826 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !2826, !nonnull !5, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.o, !noalias !2828

bb.o:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body.i.i unwind label %bb.p, !noalias !2828

bb.p:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2828
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.q, !noalias !2828

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.q, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %i.bz, %bb.o ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc) #41
          to label %.body33.i.i unwind label %bb.ad, !noalias !2828

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNSNvYNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableBc_:bb.a
  br i1 %.not.i.i.i.i, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.gl = load ptr, ptr %i.o, align 8, !alias.scope !2838, !noalias !2840, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %.pre27.i.i.i.i, ptr nonnull %i.gl, i64 %i.fz), !noalias !2842
  %i.gm = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.gm, label %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread7.i.i, label %bb.bt

_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread7.i.i: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2836
  br label %.loopexit349.i

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i.i.i.i, i64 39, i1 false), !noalias !2839
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  %i.gn = load i8, ptr %i.fl, align 2, !range !6, !alias.scope !2837, !noalias !2839, !noundef !5
  %i.go = load i8, ptr %i.fg, align 8, !range !38, !alias.scope !2837, !noalias !2839, !noundef !5
  %i.gp = load i8, ptr %i.fi, align 1, !range !38, !alias.scope !2837, !noalias !2839, !noundef !5
  store ptr %i.gj, ptr %i.n, align 8, !noalias !2841
  store i64 %i.fz, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2841
  store i8 %i.gk, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i, i64 39, i1 false), !noalias !2841
  store i8 %i.go, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !2841
  store i8 %i.gp, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 1, !noalias !2841
  store i8 %i.gn, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 2, !noalias !2841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2841
  %i.gq = load ptr, ptr %i.o, align 8, !alias.scope !2838, !noalias !2840, !nonnull !5, !noundef !5
  %i.gr = load i8, ptr %i.fm, align 8, !range !50, !alias.scope !2838, !noalias !2840, !noundef !5 ; 2 uses
  %.not26.i.i.i.i = icmp eq i8 %i.gr, -1
  br i1 %.not26.i.i.i.i, label %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.425.0..sroa_idx.i.i.i.i, i64 39, i1 false), !noalias !2840
  br label %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i

_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i: ; preds = %bb.bx, %bb.bw
  %i.gs = load i8, ptr %i.fn, align 2, !range !6, !alias.scope !2838, !noalias !2840, !noundef !5
  %i.gt = load i8, ptr %i.fh, align 8, !range !38, !alias.scope !2838, !noalias !2840, !noundef !5
  %i.gu = load i8, ptr %i.fj, align 1, !range !38, !alias.scope !2838, !noalias !2840, !noundef !5
  store ptr %i.gq, ptr %i.m, align 8, !noalias !2841
  store i64 %i.ga, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !2841
  store i8 %i.gr, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !2841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i, i64 39, i1 false), !noalias !2841
  store i8 %i.gt, ptr %.sroa.612.0..sroa_idx.i.i.i.i, align 8, !noalias !2841
  store i8 %i.gu, ptr %.sroa.713.0..sroa_idx.i.i.i.i, align 1, !noalias !2841
  store i8 %i.gs, ptr %.sroa.814.0..sroa_idx.i.i.i.i, align 2, !noalias !2841
  %i.gv = invoke noundef zeroext i1 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.m)
          to label %.noexc208.i unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.i

.noexc208.i:                                      ; preds = %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2841
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2836
  br i1 %i.gv, label %.loopexit349.i, label %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread.i.i

_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread.i.i: ; preds = %.noexc208.i, %bb.bq
  %i.gw = add nuw nsw i64 %.sroa.02.014.i.i, 1
  %i.gx = icmp eq ptr %i.fp, %i.fa
  br i1 %i.gx, label %.thread306.i, label %bb.bn

.loopexit336.i:                                   ; preds = %bb.co, %bb.cj
  %lpad.loopexit338.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge192.i

.loopexit.split-lp337.loopexit.i:                 ; preds = %bb.cb
  %lpad.loopexit341.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge192.i

.loopexit.split-lp337.loopexit.split-lp.loopexit.i: ; preds = %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i, %.noexc206.i, %.sink.split.i.i.i, %bb.br, %bb.bp
  %lpad.loopexit346.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge192.i

.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.cn
  %lpad.loopexit.split-lp347.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge192.i

.loopexit349.i:                                   ; preds = %.noexc208.i, %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread7.i.i
  %i.gy = icmp ult i64 %.sroa.02.014.i.i, %i.ez
  call void @llvm.assume(i1 %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !2825, !nonnull !5, !noundef !5
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !2825, !noundef !5 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.hc, 72
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx
  %i.hf = icmp eq i64 %i.hc, 0
  br i1 %i.hf, label %.thread306.i, label %.lr.ph

bb.by:                                            ; preds = %.lr.ph
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hi, i64 72 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.he
  br i1 %i.hh, label %.thread306.i, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit349.i, %bb.by
  %i.hi = phi ptr [ %i.hg, %bb.by ], [ %i.hd, %.loopexit349.i ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !2843, !noundef !5
  %i.hl = icmp eq i64 %i.hk, %.sroa.02.014.i.i
  br i1 %i.hl, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck14FlycheckHandleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvNtNtBU_8handlers12notification12run_flychecks_0s0_0EBU_.exit.i, label %bb.by

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck14FlycheckHandleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvNtNtBU_8handlers12notification12run_flychecks_0s0_0EBU_.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %.val.i = load ptr, ptr %i.eu, align 8, !alias.scope !2825 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.hm = load i64, ptr %i.az, align 8, !range !7, !alias.scope !2844, !noalias !2845, !noundef !5
  %.not.i210.i = icmp eq i64 %i.hm, -1
  br i1 %.not.i210.i, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck14FlycheckHandleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvNtNtBU_8handlers12notification12run_flychecks_0s0_0EBU_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !2846, !nonnull !5, !noundef !5 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.hq = load i64, ptr %i.hp, align 8, !noalias !2846, !noundef !5 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.hq, 704
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2847)
  %i.hs = icmp eq i64 %i.hq, 0
  br i1 %i.hs, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bz
  %i.ht = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !2848, !noalias !2849, !nonnull !5
  %i.hv = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !2848, !noalias !2849
  %.sroa.4.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.12.0..sroa_idx268.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.ca

bb.ca:                                            ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  %i.hx = phi ptr [ %i.ho, %.lr.ph.i.i.i ], [ %i.hy, %.backedge.i.i.i ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 704 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2850)
  %i.hz = load i64, ptr %i.hx, align 8, !range !10, !alias.scope !2850, !noalias !2851, !noundef !5
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.cb, label %.backedge.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.ic = invoke noundef align 8 ptr @_RNvMs_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB4_11ProjectJson14crate_by_label(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ib, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hu, i64 noundef %i.hw)
          to label %.noexc214.i unwind label %.loopexit.split-lp337.loopexit.i ; 3 uses

.noexc214.i:                                      ; preds = %bb.cb
  %.not.i.i.i211.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i211.i, label %.backedge.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.noexc214.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !2851, !nonnull !5, !noundef !5 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ig = load i64, ptr %i.if, align 8, !noalias !2851, !noundef !5
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @41, i64 32, i1 false), !noalias !2852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2853
  store ptr %i.ie, ptr %i.k, align 8, !alias.scope !2854, !noalias !2855
  store ptr %i.ih, ptr %.sroa.4.0..sroa_idx1.i.i.i.i, align 8, !alias.scope !2854, !noalias !2855
  store ptr %i.ib, ptr %.sroa.5.0..sroa_idx2.i.i.i.i, align 8, !alias.scope !2854, !noalias !2855
  invoke void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2D_8adapters3map3MapIB3E_INtNtB3I_10filter_map9FilterMapIB3E_INtNtNtB2F_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5d_NtB5d_5Crate9iter_deps0ENCNCNvMs1_NtBT_12global_stateNtB6L_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6D_s_0ENCINvXs8_NtB9_3setINtB8x_7HashSetBP_B1O_EIB2x_BP_E6extendB45_E0EEBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i unwind label %bb.cd, !noalias !2856

bb.cd:                                            ; preds = %bb.cc
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.critedge192.i unwind label %bb.ce, !noalias !2856

bb.ce:                                            ; preds = %bb.cd
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2856
  unreachable

_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2853
  %.sroa.0265.0.copyload266.i = load ptr, ptr %i.l, align 8, !noalias !2857 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx268.i, i64 24, i1 false), !noalias !2857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2852
  %i.ik = icmp eq ptr %.sroa.0265.0.copyload266.i, null
  br i1 %i.ik, label %.backedge.i.i.i, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i

.backedge.i.i.i:                                  ; preds = %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i, %.noexc214.i, %bb.ca
  %i.il = icmp eq ptr %i.hy, %i.hr
  br i1 %i.il, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i, label %bb.ca

bb.cf:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck14FlycheckHandleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvNtNtBU_8handlers12notification12run_flychecks_0s0_0EBU_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.im = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !noalias !2846, !nonnull !5, !noundef !5 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ip = load i64, ptr %i.io, align 8, !noalias !2846, !noundef !5 ; 2 uses
  %.idx3.i.i = mul nuw nsw i64 %i.ip, 704
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 %.idx3.i.i
  %i.ir = icmp eq i64 %i.ip, 0
  br i1 %i.ir, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i, label %.lr.ph.i2.i.i

.lr.ph.i2.i.i:                                    ; preds = %bb.cf
  %1 = insertelement <2 x ptr> poison, ptr %i.az, i64 0
  %2 = insertelement <2 x ptr> %1, ptr %i.j, i64 1
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %3 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 8, i64 24>
  %i.is = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i.i212.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.12.0..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.cg

bb.cg:                                            ; preds = %.backedge.i3.i.i, %.lr.ph.i2.i.i
  %i.it = phi ptr [ %i.in, %.lr.ph.i2.i.i ], [ %i.iu, %.backedge.i3.i.i ] ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 704 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2858)
  %i.iv = load i64, ptr %i.it, align 8, !range !10, !alias.scope !2858, !noalias !2859, !noundef !5
  switch i64 %i.iv, label %default.unreachable [
    i64 0, label %bb.ch
    i64 2, label %bb.ci
    i64 1, label %.backedge.i3.i.i
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !range !7, !alias.scope !2858, !noalias !2859, !noundef !5
  %.not.i.i5.i.i = icmp eq i64 %i.iy, -1
  br i1 %.not.i.i5.i.i, label %.backedge.i3.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.iw, %bb.ch ], [ %i.ix, %bb.ci ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2860
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !2858, !noalias !2859, !nonnull !5, !noundef !5 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !alias.scope !2858, !noalias !2859, !noundef !5 ; 3 uses
  %i.jd = getelementptr inbounds nuw [448 x i8], ptr %i.ja, i64 %i.jc
  store ptr %i.ja, ptr %i.j, align 8, !noalias !2860
  store ptr %i.jd, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !2860
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !2860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2860
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.i, align 8, !noalias !2860
  store <2 x ptr> %3, ptr %i.is, align 8, !noalias !2860
  %i.je = invoke { i32, i32 } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB30_5ArenaB1P_E4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTINtB30_3IdxB1P_ERB1P_EB4R_uINtNtNtBc_3ops12control_flow11ControlFlowB4R_ENCNvMs4_B1R_NtB1R_14CargoWorkspace8packages0NCINvNvB3M_4find5checkB4R_NCNCNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB7k_19GlobalStateSnapshot38all_workspace_dependencies_for_package00E0E0B5i_EB7m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %.noexc217.i unwind label %.loopexit336.i ; 2 uses

.noexc217.i:                                      ; preds = %bb.cj
  %i.jf = extractvalue { i32, i32 } %i.je, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2860
  %i.jg = trunc i32 %i.jf to i1
  br i1 %i.jg, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.noexc217.i
  %i.jh = extractvalue { i32, i32 } %i.je, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2860
  %i.ji = zext i32 %i.jh to i64                   ; 3 uses
  %i.jj = icmp ugt i64 %i.jc, %i.ji
  br i1 %i.jj, label %bb.cm, label %bb.cn

bb.cl:                                            ; preds = %.noexc217.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2860
  br label %.backedge.i3.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jk = getelementptr inbounds nuw [448 x i8], ptr %i.ja, i64 %i.ji
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 408 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !2859, !noundef !5
  %.not19.i.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not19.i.i.i.i, label %.backedge.i3.i.i, label %bb.co

bb.cn:                                            ; preds = %bb.ck
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ji, i64 noundef %i.jc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #46
          to label %.noexc218.i unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.i

.noexc218.i:                                      ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2861
  invoke void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jl)
          to label %.noexc219.i unwind label %.loopexit336.i

.noexc219.i:                                      ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @41, i64 32, i1 false), !noalias !2862
  store ptr %.sroa.0.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i212.i, align 8, !alias.scope !2863, !noalias !2864
  invoke void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2D_8adapters3map3MapIB3E_IB3E_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtBT_12global_stateNtB6Q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6G_s_0ENCINvXs8_NtB9_3setINtB8D_7HashSetBP_B1O_EIB2x_BP_E6extendB45_E0EEBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i unwind label %bb.cp, !noalias !2865

bb.cp:                                            ; preds = %.noexc219.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.critedge192.i unwind label %bb.cq, !noalias !2865

bb.cq:                                            ; preds = %bb.cp
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2865
  unreachable

_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i: ; preds = %.noexc219.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2861
  %.sroa.0265.0.copyload267.i = load ptr, ptr %i.h, align 8, !noalias !2866 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx269.i, i64 24, i1 false), !noalias !2866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2862
  %i.jp = icmp eq ptr %.sroa.0265.0.copyload267.i, null
  br i1 %i.jp, label %.backedge.i3.i.i, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i

.backedge.i3.i.i:                                 ; preds = %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i, %bb.cm, %bb.cl, %bb.ci, %bb.cg
  %i.jq = icmp eq ptr %i.iu, %i.iq
  br i1 %i.jq, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i, label %bb.cg

_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i: ; preds = %.backedge.i.i.i, %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i, %.backedge.i3.i.i, %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i, %bb.cf, %bb.bz
  %i.jr = phi ptr [ null, %bb.cf ], [ %.sroa.0265.0.copyload267.i, %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i ], [ null, %bb.bz ], [ null, %.backedge.i3.i.i ], [ %.sroa.0265.0.copyload266.i, %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i ], [ null, %.backedge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2825
  store ptr %i.jr, ptr %i.aw, align 8, !noalias !2825
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i, i64 24, i1 false), !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2825
  %i.js = load i64, ptr %i.bh, align 8, !range !7, !noalias !2825, !noundef !5
  %.not172.i = icmp eq i64 %i.js, -1
  br i1 %.not172.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2825
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.cv unwind label %bb.cz

bb.cs:                                            ; preds = %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i
  store i64 -1, ptr %i.av, align 8, !noalias !2825
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  invoke void @_RNvMs2_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_14FlycheckHandle19restart_for_package(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hi, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av)
          to label %bb.cw unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

bb.cv:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2825
  br label %bb.ct

bb.cw:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_.exit.i: ; preds = %bb.cw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i, %.thread296.i
  %.sroa.7.2.i = phi i64 [ %.sroa.02.014.i.i, %bb.cw ], [ %.sroa.7.1300.i, %.thread296.i ], [ %.sroa.3.0.i309.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i ]
  %.sroa.0.2290.i = phi i64 [ 1, %bb.cw ], [ %.sroa.0.1289302.i, %.thread296.i ], [ %.sroa.0.0.i203310.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i ]
  %.sroa.074.1.i = phi i8 [ 0, %bb.cw ], [ 1, %.thread296.i ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2825
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.cx

bb.cx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_.exit.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body220.i unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.dd

bb.cz:                                            ; preds = %bb.cr
  %i.jw = landingpad { ptr, i32 }
          cleanup
  %i.jx = icmp eq ptr %i.jr, null
  br i1 %i.jx, label %.noexc223.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %.noexc223.i unwind label %bb.db

bb.db:                                            ; preds = %bb.gd, %bb.gc, %bb.gb, %.loopexit.split-lp.i, %.body243.i, %.body246.i, %bb.dg, %.critedge192.i, %.body200.i, %.critedge.i, %.noexc223.i, %bb.da, %.body.i, %.body254.i
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

.noexc223.i:                                      ; preds = %bb.da, %bb.cz
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck6TargetEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ax) #41
          to label %.critedge.i unwind label %bb.db

.critedge.i:                                      ; preds = %.noexc223.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #41
          to label %.body200.i unwind label %bb.db

.body200.i:                                       ; preds = %.critedge192.i, %bb.dc, %.critedge.i, %bb.cu, %bb.bk
  %.sroa.074.2.i = phi i8 [ 1, %.critedge192.i ], [ 1, %bb.dc ], [ 1, %bb.bk ], [ 0, %.critedge.i ], [ 0, %bb.cu ]
  %.pn.pn.i = phi { ptr, i32 } [ %eh.lpad-body216.i, %.critedge192.i ], [ %i.jz, %bb.dc ], [ %i.es, %bb.bk ], [ %i.jw, %.critedge.i ], [ %i.jt, %bb.cu ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #41
          to label %.body220.i unwind label %bb.db

bb.dc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i, %.thread296.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

.body220.i:                                       ; preds = %bb.dd, %.body200.i, %bb.cx
  %.sroa.074.3.i = phi i8 [ %.sroa.074.2.i, %.body200.i ], [ %.sroa.074.1.i, %bb.cx ], [ %.sroa.074.1.i, %bb.dd ]
  %.pn175.i = phi { ptr, i32 } [ %.pn.pn.i, %.body200.i ], [ %i.ju, %bb.cx ], [ %i.kb, %bb.dd ] ; 2 uses
  %i.ka = trunc nuw i8 %.sroa.074.3.i to i1
  br i1 %i.ka, label %bb.dg, label %.body.i

bb.dd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body220.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2825
  %i.kc = trunc nuw i8 %.sroa.074.1.i to i1
  br i1 %i.kc, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.df, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2825
  br label %bb.bi

bb.df:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck6TargetEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bb)
          to label %bb.de unwind label %bb.ax

.critedge192.i:                                   ; preds = %bb.cp, %bb.cd, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp337.loopexit.split-lp.loopexit.i, %.loopexit.split-lp337.loopexit.i, %.loopexit336.i
end_hunk_1
begin_hunk_2_@_RNSNvYNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableBc_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2825
  store ptr @148, ptr %i.ap, align 8, !noalias !2825
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr inttoptr (i64 37 to ptr), ptr %i.lc, align 8, !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2825
  store ptr %i.au, ptr %i.ao, align 8, !noalias !2825
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !2825
  %i.ld = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @146, ptr %i.ld, align 8, !noalias !2825
  %i.le = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ao, ptr %i.le, align 8, !noalias !2825
  %i.lf = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr @149, ptr %i.lf, align 8, !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2825
  store i64 1, ptr %i.ab, align 8, !noalias !2825
  %.sroa.039.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aq, ptr %.sroa.039.sroa.4.0..sroa_idx.i, align 8, !noalias !2825
  %.sroa.039.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 2, ptr %.sroa.039.sroa.5.0..sroa_idx.i, align 8, !noalias !2825
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.lb, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !2825
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.la, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.dv unwind label %bb.dm

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2825
  br label %bb.dt

bb.dw:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2825
  %i.lg = load i64, ptr %i.am, align 8, !range !7, !noalias !2825, !noundef !5 ; 2 uses
  %i.lh = icmp eq i64 %i.lg, -1
  %i.li = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.lj = load i8, ptr %i.li, align 8, !noalias !2825 ; 2 uses
  br i1 %i.lh, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2825
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.dz unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body227.i unwind label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.ax

bb.ea:                                            ; preds = %bb.dy
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.eb:                                            ; preds = %bb.dw
  %.sroa.5155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.550.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5155.0..sroa_idx.i, i64 15, i1 false), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2825
  store i64 %i.lg, ptr %i.an, align 8, !noalias !2825
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store i8 %i.lj, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2825
  %i.lm = load ptr, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !2825, !nonnull !5, !noundef !5 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.lo = load i64, ptr %i.ln, align 8, !noalias !2825, !noundef !5
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %i.lo
  invoke void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtCs9R0CJ7nmiec_5paths7AbsPathEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2c_5slice4iter4IterNtB16_10AbsPathBufENvYB3i_NtNtNtB2c_3ops5deref5Deref5derefEE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull %i.lm, ptr noundef nonnull %i.lp)
          to label %bb.ed unwind label %bb.ec

.body243.i:                                       ; preds = %bb.ff, %.loopexit.split-lp.i, %bb.ec
  %.pn181.i = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.lq, %bb.ec ], [ %i.pt, %bb.ff ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #41
          to label %.body246.i unwind label %bb.db

bb.ec:                                            ; preds = %bb.fg, %bb.eb
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %.body243.i

.loopexit323.i:                                   ; preds = %bb.fl, %bb.fj
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i, %.noexc238.i, %.lr.ph208
  %lpad.loopexit324.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lpad.loopexit327.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.ey
  %lpad.loopexit330.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.fd, %bb.fb
  %lpad.loopexit334.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.ek, %bb.eg, %bb.ef
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit323.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit323.i ], [ %lpad.loopexit324.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit327.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit330.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit334.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtCs9R0CJ7nmiec_5paths7AbsPathEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #41
          to label %.body243.i unwind label %bb.db

bb.ed:                                            ; preds = %bb.eb
  %i.lr = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2825
  %i.ls = icmp ult i64 %i.lr, 2
  br i1 %i.ls, label %bb.ee, label %bb.ej

bb.ee:                                            ; preds = %bb.ed
  %i.lt = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2825 ; 3 uses
  switch i8 %i.lt, label %bb.ef [
    i8 0, label %bb.ej
    i8 1, label %bb.eg
    i8 2, label %bb.eg
  ], !prof !43

bb.ef:                                            ; preds = %bb.ee
  %i.lu = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s0_10___CALLSITE)
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

bb.eg:                                            ; preds = %bb.ee, %bb.eh, %bb.ee
  %.sroa.057.0.i = phi i8 [ %i.lu, %bb.eh ], [ %i.lt, %bb.ee ], [ %i.lt, %bb.ee ]
  %i.lv = load ptr, ptr @_RNvNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s0_10___CALLSITE, align 8, !noalias !2825, !nonnull !5, !align !8, !noundef !5
  %i.lw = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lv, i8 noundef %.sroa.057.0.i)
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.eh:                                            ; preds = %bb.ef
  %i.lx = icmp eq i8 %i.lu, 0
  br i1 %i.lx, label %bb.ej, label %bb.eg

bb.ei:                                            ; preds = %bb.eg
  br i1 %i.lw, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.el, %bb.ei, %bb.eh, %bb.ee, %bb.ed
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.lz = load ptr, ptr %i.ly, align 8, !alias.scope !2825, !nonnull !5, !noundef !5 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.md = load i64, ptr %i.mc, align 8, !noundef !5
  %i.me = getelementptr inbounds nuw [704 x i8], ptr %i.mb, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !alias.scope !2825, !nonnull !5, !noundef !5
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8, !alias.scope !2825, !noundef !5 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %.idx394.i = mul nuw nsw i64 %i.mi, 72
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.idx394.i ; 2 uses
  %i.ml = icmp eq i64 %i.mi, 0
  br i1 %i.ml, label %.outer._crit_edge.i, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.ej
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.d, i64 57 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.c, i64 57 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.420.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.mv = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.mw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %.sroa.612.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.713.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  %.sroa.814.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %.sroa.418.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.519.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %4 = insertelement <2 x ptr> poison, ptr %i.ak, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.f, i64 1
  %6 = getelementptr inbounds nuw i8, <2 x ptr> %5, <2 x i64> <i64 0, i64 24>
  %i.my = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mz = trunc nuw i64 %.sroa.0.0288.i to i1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.sroa.064.0.ph389.i = phi i1 [ false, %.lr.ph.lr.ph.i ], [ true, %.outer.i ]
  %.sroa.065.0.ph388.i = phi ptr [ %i.mj, %.lr.ph.lr.ph.i ], [ %i.ng, %.outer.i ]
  br label %bb.em

bb.ek:                                            ; preds = %bb.ei
  %i.na = load ptr, ptr @_RNvNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s0_10___CALLSITE, align 8, !noalias !2825, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2825
  store ptr @150, ptr %i.ai, align 8, !noalias !2825
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.nc, align 8, !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2825
  store ptr %i.ak, ptr %i.ah, align 8, !noalias !2825
  store ptr %i.ai, ptr %i.aj, align 8, !noalias !2825
  %i.nd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @146, ptr %i.nd, align 8, !noalias !2825
  %i.ne = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ah, ptr %i.ne, align 8, !noalias !2825
  %i.nf = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr @151, ptr %i.nf, align 8, !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2825
  store i64 1, ptr %i.aa, align 8, !noalias !2825
  %.sroa.059.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.aj, ptr %.sroa.059.sroa.4.0..sroa_idx.i, align 8, !noalias !2825
  %.sroa.059.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 2, ptr %.sroa.059.sroa.5.0..sroa_idx.i, align 8, !noalias !2825
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.nb, ptr %.sroa.460.0..sroa_idx.i, align 8, !noalias !2825
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.na, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2825
  br label %bb.ej

.outer._crit_edge.i:                              ; preds = %.thread317.i, %bb.ej
  %.sroa.064.0.ph.lcssa375.i = phi i1 [ false, %bb.ej ], [ %.sroa.064.0.ph389.i, %.thread317.i ]
  %.not179.i = icmp ne i64 %.sroa.0.0288.i, 0
  %or.cond194.not.i = or i1 %.not179.i, %.sroa.064.0.ph.lcssa375.i
  br i1 %or.cond194.not.i, label %.loopexit.i, label %bb.fi

bb.em:                                            ; preds = %.thread317.i, %.lr.ph.i
  %.sroa.065.0386.i = phi ptr [ %.sroa.065.0.ph388.i, %.lr.ph.i ], [ %i.ng, %.thread317.i ] ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.065.0386.i, i64 72 ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.065.0386.i, i64 64
  br label %bb.en

bb.en:                                            ; preds = %bb.ez, %bb.em
  %.sroa.0277.0.i = phi ptr [ %i.mb, %bb.em ], [ %i.nl, %bb.ez ] ; 2 uses
  %.sroa.8279.0.i = phi i64 [ 0, %bb.em ], [ %i.pn, %bb.ez ]
  %i.ni = icmp eq ptr %.sroa.0277.0.i, %i.me
  br i1 %i.ni, label %.thread317.i, label %.lr.ph.i233.i

.lr.ph.i233.i:                                    ; preds = %bb.en, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3L_QNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0E0E0B4u_.exit.i.i
  %i.nj = phi ptr [ %i.nl, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3L_QNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0E0E0B4u_.exit.i.i ], [ %.sroa.0277.0.i, %bb.en ] ; 6 uses
  %i.nk = phi i64 [ %i.pl, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3L_QNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0E0E0B4u_.exit.i.i ], [ %.sroa.8279.0.i, %bb.en ] ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 704 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2867)
  call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  %i.nm = load i64, ptr %i.nj, align 8, !range !10, !alias.scope !2869, !noalias !2870, !noundef !5
  switch i64 %i.nm, label %default.unreachable [
    i64 0, label %bb.eo
    i64 1, label %bb.ep
    i64 2, label %bb.ex
  ]

bb.eo:                                            ; preds = %.lr.ph.i233.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 40
  br label %bb.ey

bb.ep:                                            ; preds = %.lr.ph.i233.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 40
  %i.np = load ptr, ptr %i.no, align 8, !alias.scope !2869, !noalias !2870, !nonnull !5, !noundef !5 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.nr = load i64, ptr %i.nq, align 8, !alias.scope !2869, !noalias !2870, !noundef !5 ; 2 uses
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.nr, 376
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 %.idx.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB2C_3map12map_try_foldTjB3H_ETNtBL_13CrateArrayIdxB3H_EuB3M_NCNvMs_BL_NtBL_11ProjectJson6crates0NCINvNvB1B_3any5checkB53_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B3M_EB6J_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ep, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateuINtNtNtBf_3ops12control_flow11ControlFlowuENCINvNtBb_3map12map_try_foldTjB25_ETNtB28_13CrateArrayIdxB25_EuB2Y_NCNvMs_B28_NtB28_11ProjectJson6crates0NCINvNvB1e_3any5checkB4e_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B5X_.exit.i.i.i.i.i.i.i
  %i.nt = phi ptr [ %i.nu, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateuINtNtNtBf_3ops12control_flow11ControlFlowuENCINvNtBb_3map12map_try_foldTjB25_ETNtB28_13CrateArrayIdxB25_EuB2Y_NCNvMs_B28_NtB28_11ProjectJson6crates0NCINvNvB1e_3any5checkB4e_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B5X_.exit.i.i.i.i.i.i.i ], [ %i.np, %bb.ep ] ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 376 ; 2 uses
  %i.nv = load ptr, ptr %i.mm, align 8, !noalias !2871, !nonnull !5, !noundef !5 ; 2 uses
  %i.nw = load i64, ptr %i.mn, align 8, !noalias !2871, !noundef !5 ; 2 uses
  %i.nx = invoke { ptr, i64 } @_RNvMs9_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBuf7as_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.nt)
          to label %.noexc237.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc237.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ny = extractvalue { ptr, i64 } %i.nx, 0
  %i.nz = extractvalue { ptr, i64 } %i.nx, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  %.idx209 = shl nuw nsw i64 %i.nw, 4
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.idx209
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i207 = icmp eq i64 %i.nw, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i207, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateuINtNtNtBf_3ops12control_flow11ControlFlowuENCINvNtBb_3map12map_try_foldTjB25_ETNtB28_13CrateArrayIdxB25_EuB2Y_NCNvMs_B28_NtB28_11ProjectJson6crates0NCINvNvB1e_3any5checkB4e_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B5X_.exit.i.i.i.i.i.i.i, label %.lr.ph208

bb.eq:                                            ; preds = %.noexc240.i
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.oc, %i.oa
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateuINtNtNtBf_3ops12control_flow11ControlFlowuENCINvNtBb_3map12map_try_foldTjB25_ETNtB28_13CrateArrayIdxB25_EuB2Y_NCNvMs_B28_NtB28_11ProjectJson6crates0NCINvNvB1e_3any5checkB4e_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B5X_.exit.i.i.i.i.i.i.i, label %.lr.ph208

.lr.ph208:                                        ; preds = %.noexc237.i, %bb.eq
  %i.ob = phi ptr [ %i.oc, %bb.eq ], [ %i.nv, %.noexc237.i ] ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ob, align 8, !alias.scope !2872, !noalias !2873, !nonnull !5, !noundef !5
  %i.od = getelementptr i8, ptr %i.ob, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.od, align 8, !alias.scope !2872, !noalias !2873, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2874
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc238.i unwind label %.loopexit.split-lp.loopexit.i

.noexc238.i:                                      ; preds = %.lr.ph208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2874
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ny, i64 noundef %i.nz)
          to label %.noexc239.i unwind label %.loopexit.split-lp.loopexit.i

.noexc239.i:                                      ; preds = %.noexc238.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2875), !noalias !2876
  call void @llvm.experimental.noalias.scope.decl(metadata !2877), !noalias !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i.i.i.i.i.i.i.i)
  %i.oe = load i64, ptr %i.mo, align 8, !alias.scope !2875, !noalias !2878, !noundef !5 ; 3 uses
  %i.of = load i64, ptr %i.mp, align 8, !alias.scope !2877, !noalias !2879, !noundef !5 ; 2 uses
  %i.og = icmp eq i64 %i.oe, %i.of
  br i1 %i.og, label %bb.er, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc239.i
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2875, !noalias !2878
  br label %bb.es

bb.er:                                            ; preds = %.noexc239.i
  %i.oh = load i8, ptr %i.mq, align 8, !range !38, !alias.scope !2875, !noalias !2878, !noundef !5
  %i.oi = load i8, ptr %i.mr, align 8, !range !38, !alias.scope !2877, !noalias !2879, !noundef !5
  %i.oj = icmp eq i8 %i.oh, %i.oi
  %i.ok = load i8, ptr %i.ms, align 1, !range !38, !alias.scope !2875, !noalias !2878
  %i.ol = icmp eq i8 %i.ok, 2
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.oj, i1 %i.ol, i1 false
  %i.om = load i8, ptr %i.mt, align 1, !range !38, !alias.scope !2877, !noalias !2879
  %i.on = icmp eq i8 %i.om, 2
  %or.cond7.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i, i1 %i.on, i1 false
  %.pre27.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2875, !noalias !2878 ; 3 uses
  br i1 %or.cond7.i.i.i.i.i.i.i.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.et, %bb.er, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.oo = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.pre27.i.i.i.i.i.i.i.i.i, %bb.et ], [ %.pre27.i.i.i.i.i.i.i.i.i, %bb.er ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2880
  %i.op = load i8, ptr %i.mu, align 8, !range !50, !alias.scope !2875, !noalias !2878, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.op, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ev, label %bb.eu

bb.et:                                            ; preds = %bb.er
  %i.oq = load ptr, ptr %i.c, align 8, !alias.scope !2877, !noalias !2879, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.pre27.i.i.i.i.i.i.i.i.i, ptr nonnull %i.oq, i64 %i.oe), !noalias !2881
  %i.or = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.or, label %_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i.i, label %bb.es

_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2874
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB2C_3map12map_try_foldTjB3H_ETNtBL_13CrateArrayIdxB3H_EuB3M_NCNvMs_BL_NtBL_11ProjectJson6crates0NCINvNvB1B_3any5checkB53_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B3M_EB6J_.exit.i.i.i.i.i.i

bb.eu:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 39, i1 false), !noalias !2878
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.es
  %i.os = load i8, ptr %i.mv, align 2, !range !6, !alias.scope !2875, !noalias !2878, !noundef !5
  %i.ot = load i8, ptr %i.mq, align 8, !range !38, !alias.scope !2875, !noalias !2878, !noundef !5
  %i.ou = load i8, ptr %i.ms, align 1, !range !38, !alias.scope !2875, !noalias !2878, !noundef !5
  store ptr %i.oo, ptr %i.b, align 8, !noalias !2880
  store i64 %i.oe, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2880
  store i8 %i.op, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i.i.i.i.i.i, i64 39, i1 false), !noalias !2880
  store i8 %i.ot, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2880
  store i8 %i.ou, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 1, !noalias !2880
  store i8 %i.os, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 2, !noalias !2880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2880
  %i.ov = load ptr, ptr %i.c, align 8, !alias.scope !2877, !noalias !2879, !nonnull !5, !noundef !5
  %i.ow = load i8, ptr %i.mw, align 8, !range !50, !alias.scope !2877, !noalias !2879, !noundef !5 ; 2 uses
  %.not26.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ow, -1
  br i1 %.not26.i.i.i.i.i.i.i.i.i, label %_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 39, i1 false), !noalias !2879
  br label %_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i

_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i: ; preds = %bb.ew, %bb.ev
  %i.ox = load i8, ptr %i.mx, align 2, !range !6, !alias.scope !2877, !noalias !2879, !noundef !5
  %i.oy = load i8, ptr %i.mr, align 8, !range !38, !alias.scope !2877, !noalias !2879, !noundef !5
  %i.oz = load i8, ptr %i.mt, align 1, !range !38, !alias.scope !2877, !noalias !2879, !noundef !5
  store ptr %i.ov, ptr %i.a, align 8, !noalias !2880
  store i64 %i.of, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2880
  store i8 %i.ow, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i.i.i.i.i.i, i64 39, i1 false), !noalias !2880
  store i8 %i.oy, ptr %.sroa.612.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2880
  store i8 %i.oz, ptr %.sroa.713.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 1, !noalias !2880
  store i8 %i.ox, ptr %.sroa.814.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 2, !noalias !2880
  %i.pa = invoke noundef zeroext i1 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %.noexc240.i unwind label %.loopexit.split-lp.loopexit.i

.noexc240.i:                                      ; preds = %_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2880
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2874
  br i1 %i.pa, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB2C_3map12map_try_foldTjB3H_ETNtBL_13CrateArrayIdxB3H_EuB3M_NCNvMs_BL_NtBL_11ProjectJson6crates0NCINvNvB1B_3any5checkB53_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B3M_EB6J_.exit.i.i.i.i.i.i, label %bb.eq

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateuINtNtNtBf_3ops12control_flow11ControlFlowuENCINvNtBb_3map12map_try_foldTjB25_ETNtB28_13CrateArrayIdxB25_EuB2Y_NCNvMs_B28_NtB28_11ProjectJson6crates0NCINvNvB1e_3any5checkB4e_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B5X_.exit.i.i.i.i.i.i.i: ; preds = %bb.eq, %.noexc237.i
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.nu, %i.ns
  br i1 %.not9.i.i.i.i.i.i.i, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB2C_3map12map_try_foldTjB3H_ETNtBL_13CrateArrayIdxB3H_EuB3M_NCNvMs_BL_NtBL_11ProjectJson6crates0NCINvNvB1B_3any5checkB53_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B3M_EB6J_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.ex:                                            ; preds = %.lr.ph.i233.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8, !range !7, !alias.scope !2869, !noalias !2870, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq i64 %i.pc, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3L_QNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0E0E0B4u_.exit.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eo
  %.sroa.02.0.i.i.i.i.i.i = phi ptr [ %i.nn, %bb.eo ], [ %i.pb, %bb.ex ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2882
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i.i, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !alias.scope !2869, !noalias !2870, !nonnull !5, !noundef !5 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i.i, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !alias.scope !2869, !noalias !2870, !noundef !5
  %i.ph = getelementptr inbounds nuw [448 x i8], ptr %i.pe, i64 %i.pg
  store ptr %i.pe, ptr %i.f, align 8, !noalias !2882
  store ptr %i.ph, ptr %.sroa.418.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2882
  store i64 0, ptr %.sroa.519.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2882
  store ptr %.sroa.02.0.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !2882
  store <2 x ptr> %6, ptr %i.my, align 8, !noalias !2882
  %i.pi = invoke noundef zeroext i1 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB30_5ArenaB1P_E4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTINtB30_3IdxB1P_ERB1P_EB4R_uINtNtNtBc_3ops12control_flow11ControlFlowuENCNvMs4_B1R_NtB1R_14CargoWorkspace8packages0NCINvNvB3M_3any5checkB4R_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_00E0E0B5i_EB7i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %.noexc241.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc241.i:                                      ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2882
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB2C_3map12map_try_foldTjB3H_ETNtBL_13CrateArrayIdxB3H_EuB3M_NCNvMs_BL_NtBL_11ProjectJson6crates0NCINvNvB1B_3any5checkB53_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B3M_EB6J_.exit.i.i.i.i.i.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB2C_3map12map_try_foldTjB3H_ETNtBL_13CrateArrayIdxB3H_EuB3M_NCNvMs_BL_NtBL_11ProjectJson6crates0NCINvNvB1B_3any5checkB53_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B3M_EB6J_.exit.i.i.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateuINtNtNtBf_3ops12control_flow11ControlFlowuENCINvNtBb_3map12map_try_foldTjB25_ETNtB28_13CrateArrayIdxB25_EuB2Y_NCNvMs_B28_NtB28_11ProjectJson6crates0NCINvNvB1e_3any5checkB4e_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B5X_.exit.i.i.i.i.i.i.i, %.noexc240.i, %.noexc241.i, %_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i.i, %bb.ep
  %.sroa.01.0.in.i.i.i.i.i.i = phi i1 [ %i.pi, %.noexc241.i ], [ true, %.noexc240.i ], [ false, %bb.ep ], [ true, %_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i.i ], [ false, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateuINtNtNtBf_3ops12control_flow11ControlFlowuENCINvNtBb_3map12map_try_foldTjB25_ETNtB28_13CrateArrayIdxB25_EuB2Y_NCNvMs_B28_NtB28_11ProjectJson6crates0NCINvNvB1e_3any5checkB4e_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B5X_.exit.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.mz, label %.split.i.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0INtB7_5FnMutTRTjRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEEE8call_mutBY_.exit.i.i.i.i

.split.i.i:                                       ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB2C_3map12map_try_foldTjB3H_ETNtBL_13CrateArrayIdxB3H_EuB3M_NCNvMs_BL_NtBL_11ProjectJson6crates0NCINvNvB1B_3any5checkB53_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B3M_EB6J_.exit.i.i.i.i.i.i
  %i.pj = icmp ne i64 %.sroa.7.0.i, %i.nk
  %i.pk = and i1 %i.pj, %.sroa.01.0.in.i.i.i.i.i.i
  br i1 %i.pk, label %bb.ez, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3L_QNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0E0E0B4u_.exit.i.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0INtB7_5FnMutTRTjRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEEE8call_mutBY_.exit.i.i.i.i: ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB2C_3map12map_try_foldTjB3H_ETNtBL_13CrateArrayIdxB3H_EuB3M_NCNvMs_BL_NtBL_11ProjectJson6crates0NCINvNvB1B_3any5checkB53_NCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0s_0E0E0E0B3M_EB6J_.exit.i.i.i.i.i.i
  br i1 %.sroa.01.0.in.i.i.i.i.i.i, label %bb.ez, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3L_QNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0E0E0B4u_.exit.i.i

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3L_QNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0E0E0B4u_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0INtB7_5FnMutTRTjRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEEE8call_mutBY_.exit.i.i.i.i, %.split.i.i, %bb.ex
  %i.pl = add i64 %i.nk, 1
  %i.pm = icmp eq ptr %i.nl, %i.me
  br i1 %i.pm, label %.thread317.i, label %.lr.ph.i233.i

bb.ez:                                            ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0INtB7_5FnMutTRTjRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEEE8call_mutBY_.exit.i.i.i.i, %.split.i.i
  %i.pn = add i64 %i.nk, 1
  %i.po = load i64, ptr %i.nh, align 8, !noundef !5
  %i.pp = icmp eq i64 %i.nk, %i.po
  br i1 %i.pp, label %bb.fa, label %bb.en

.thread317.i:                                     ; preds = %bb.en, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3L_QNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s3_0E0E0B4u_.exit.i.i
  %i.pq = icmp eq ptr %i.ng, %i.mk
  br i1 %i.pq, label %.outer._crit_edge.i, label %bb.em

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2825
  %i.pr = load i64, ptr %i.bh, align 8, !range !7, !noalias !2825, !noundef !5
  %.not178.i = icmp eq i64 %i.pr, -1
  br i1 %.not178.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2825
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.fe unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.fc:                                            ; preds = %bb.fa
  store i64 -1, ptr %i.ag, align 8, !noalias !2825
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fe, %bb.fc
  invoke void @_RNvMs2_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_14FlycheckHandle17restart_workspace(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.065.0386.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.outer.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.fe:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2825
  br label %bb.fd

.outer.i:                                         ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2825
  %i.ps = icmp eq ptr %i.ng, %i.mk
  br i1 %i.ps, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %.outer.i, %bb.fn, %bb.fi, %.outer._crit_edge.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtCs9R0CJ7nmiec_5paths7AbsPathENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.fg unwind label %bb.ff

bb.ff:                                            ; preds = %.loopexit.i
  %i.pt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtCs9R0CJ7nmiec_5paths7AbsPathENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body243.i unwind label %bb.fh

bb.fg:                                            ; preds = %.loopexit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtCs9R0CJ7nmiec_5paths7AbsPathENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtCs9R0CJ7nmiec_5paths7AbsPathEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.ec

bb.fh:                                            ; preds = %bb.ff
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.fi:                                            ; preds = %.outer._crit_edge.i
  %i.pv = load ptr, ptr %i.mf, align 8, !alias.scope !2825, !nonnull !5, !noundef !5
  %i.pw = load i64, ptr %i.mh, align 8, !alias.scope !2825, !noundef !5 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 2 uses
  %.idx395.i = mul nuw nsw i64 %i.pw, 72
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %.idx395.i
  %i.pz = icmp eq i64 %i.pw, 0
  br i1 %i.pz, label %.loopexit.i, label %.lr.ph393.i

.lr.ph393.i:                                      ; preds = %bb.fi, %bb.fn
  %.sroa.070.0391.i = phi ptr [ %i.qa, %bb.fn ], [ %i.px, %bb.fi ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.070.0391.i, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2825
  %i.qb = load i64, ptr %i.bh, align 8, !range !7, !noalias !2825, !noundef !5
  %.not180.i = icmp eq i64 %i.qb, -1
  br i1 %.not180.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph393.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2825
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.fm unwind label %.loopexit323.i

bb.fk:                                            ; preds = %.lr.ph393.i
  store i64 -1, ptr %i.af, align 8, !noalias !2825
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fm, %bb.fk
  invoke void @_RNvMs2_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_14FlycheckHandle17restart_workspace(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.070.0391.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af)
          to label %bb.fn unwind label %.loopexit323.i

bb.fm:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2825
  br label %bb.fl

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2825
  %i.qc = icmp eq ptr %i.qa, %i.py
  br i1 %i.qc, label %.loopexit.i, label %.lr.ph393.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtCs9R0CJ7nmiec_5paths7AbsPathEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2825
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.fp unwind label %bb.fo

bb.fo:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtCs9R0CJ7nmiec_5paths7AbsPathEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.qd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body246.i unwind label %bb.fq

bb.fp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtCs9R0CJ7nmiec_5paths7AbsPathEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.dm

bb.fq:                                            ; preds = %bb.fo
  %i.qe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2825
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.fs unwind label %bb.fr

bb.fr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.qf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body227.i unwind label %bb.ft

bb.fs:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit253.i unwind label %bb.ax

bb.ft:                                            ; preds = %bb.fr
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit253.i: ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2825
  %i.qh = load i64, ptr %i.bh, align 8, !range !7, !alias.scope !2883, !noalias !2825, !noundef !5
  %i.qi = icmp eq i64 %i.qh, -1
  br i1 %i.qi, label %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0B7_.exit, label %bb.fu

bb.fu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit253.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body254.i unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.fu
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0B7_.exit unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.dz, %bb.dj
  %.sroa.0.2.i = phi i8 [ %i.ki, %bb.dj ], [ %i.lj, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2825
  br label %bb.fx

bb.fx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.bi, %bb.j
  %.sroa.0.3.i = phi i8 [ %i.bt, %bb.j ], [ %.sroa.0.2.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit.i ], [ -1, %bb.bi ] ; 2 uses
end_hunk_2
