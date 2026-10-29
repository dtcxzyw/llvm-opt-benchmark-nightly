Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.11?download=true
inline.NumInlined: 4205
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNSNvYNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableBc_:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2723, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke void @_RNvMs2_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_14FlycheckHandle17restart_workspace(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2723
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer12global_state19GlobalStateSnapshotEBF_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.c)
          to label %bb.o unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.c, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.l ], [ %i.l, %bb.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer12global_state19GlobalStateSnapshotEBF_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.c) #41
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.n, %.body.i
  %.pn8.i = phi { ptr, i32 } [ %i.r, %bb.n ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %0) #41
          to label %common.resume.i unwind label %bb.v

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2723
  %i.s = load i64, ptr %0, align 8, !range !11, !alias.scope !2725, !noundef !5
  %i.t = icmp eq i64 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.t, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck0B7_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume.i:                                  ; preds = %bb.t, %bb.q, %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.x, %bb.t ], [ %i.v, %bb.q ], [ %.pn8.i, %bb.m ]
  resume { ptr, i32 } %common.resume.op.i

bb.s:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck0B7_.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.v:                                             ; preds = %bb.m, %.body.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck0B7_.exit: ; preds = %bb.p, %bb.s
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2817
  %i.bi = invoke { ptr, i64 } @_RNvMNtCs4sl5YdnrCxp_3vfs8vfs_pathNtB2_7VfsPath7as_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %0)
          to label %bb.c unwind label %bb.b       ; 2 uses

.body254.i:                                       ; preds = %bb.fy, %bb.fu, %.body.i, %bb.b
  %.pn189.i = phi { ptr, i32 } [ %.pn185.pn.i, %.body.i ], [ %i.qo, %bb.fu ], [ %i.bj, %bb.b ], [ %i.qs, %bb.fy ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0) #41
          to label %bb.gd unwind label %bb.da

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2817
  invoke void @_RNvXsf_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCsbSS6DM8SDEO_5alloc6borrow7ToOwned8to_owned(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bl)
          to label %bb.g unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %i.bh, align 8, !noalias !2817
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2817
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !alias.scope !2817, !noundef !5
  invoke void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2_10TargetSpec8for_file(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.bf, ptr noundef nonnull align 8 %i.bm, i32 noundef %i.bo)
          to label %bb.h unwind label %bb.au

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !2817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2817
  br label %bb.f

.body.i:                                          ; preds = %bb.gc, %bb.df, %.body220.i, %.body227.i, %bb.au, %bb.at, %bb.aq, %bb.ai, %.body44.i.i, %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %.pn185.pn.i = phi { ptr, i32 } [ %.pn185.i, %bb.gc ], [ %.pn175.i, %.body220.i ], [ %.pn185.i, %.body227.i ], [ %eh.lpad-body54.i.i, %bb.aq ], [ %i.db, %bb.ai ], [ %i.cs, %bb.z ], [ %.pn175.i, %bb.df ], [ %.pn28.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i ], [ %i.dm, %bb.au ], [ %eh.lpad-body45.i.i, %.body44.i.i ], [ %i.cv, %bb.at ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #41
          to label %.body254.i unwind label %bb.da

bb.h:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %i.bf, align 8, !range !17, !noalias !2817, !noundef !5 ; 5 uses
  %i.bq = icmp eq i64 %i.bp, -3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !noalias !2817 ; 4 uses
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2817
  br label %bb.fw

bb.j:                                             ; preds = %bb.h
  %.sroa.584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(183) %.sroa.4.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(183) %.sroa.584.0..sroa_idx.i, i64 183, i1 false)
  %.sroa.4.i.sroa.7.0..sroa.584.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  %.sroa.4.i.sroa.7.0.copyload = load i8, ptr %.sroa.4.i.sroa.7.0..sroa.584.0..sroa_idx.i.sroa_idx, align 8, !noalias !2817 ; 4 uses
  %.sroa.4.i.sroa.8.0..sroa.584.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.sroa.8.0..sroa.584.0..sroa_idx.i.sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2817
  %.not168.i = icmp eq i64 %i.bp, -2
  br i1 %.not168.i, label %bb.ax, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.bt = icmp eq i64 %i.bp, -1
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2818
  store i8 %i.bs, ptr %i.u, align 8, !noalias !2819
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.7.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.sroa.0, i64 79, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2818
  store i64 -1, ptr %i.t, align 8, !noalias !2818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2818
  %.sroa.4.i.sroa.0.47..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.sroa.0, i64 47 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.i.sroa.0.47..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2818
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.ae unwind label %bb.ad, !noalias !2820

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2818
  store i64 %i.bp, ptr %i.v, align 8, !noalias !2819
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 %i.bs, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2819
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(183) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(183) %.sroa.4.i.sroa.0, i64 183, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  store i8 %.sroa.4.i.sroa.7.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !2819
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.sroa.8, i64 7, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.bu, align 8, !noalias !2818 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !2818, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.n, !noalias !2820

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body.i.i unwind label %bb.o, !noalias !2820

bb.o:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2820
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.p, !noalias !2820

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.p, %bb.n
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ca, %bb.p ], [ %i.by, %bb.n ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb) #41
          to label %.body33.i.i unwind label %bb.ac, !noalias !2820

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.q, !noalias !2820

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %.body33.i.i unwind label %bb.r, !noalias !2820

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2820
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.s, !noalias !2820

.body33.i.i:                                      ; preds = %bb.s, %bb.q, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.cg, %bb.s ], [ %i.cd, %bb.q ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf) #41
          to label %.body35.i.i unwind label %bb.ac, !noalias !2820

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %bb.u unwind label %bb.t, !noalias !2820

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body35.i.i unwind label %bb.v, !noalias !2820

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.w, !noalias !2820

bb.v:                                             ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2820
  unreachable

.body35.i.i:                                      ; preds = %bb.w, %bb.t, %.body33.i.i
  %.pn26.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body33.i.i ], [ %i.cl, %bb.w ], [ %i.ci, %bb.t ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.ac, !noalias !2820

bb.w:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body35.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit37.i.i unwind label %bb.x, !noalias !2820

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.x, %.body35.i.i
  %.pn28.i.i = phi { ptr, i32 } [ %i.co, %bb.x ], [ %.pn26.i.i, %.body35.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn) #41
          to label %.body.i unwind label %bb.ac, !noalias !2820

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit37.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !range !7, !alias.scope !2821, !noalias !2818, !noundef !5
  %i.cr = icmp eq i64 %i.cq, -1
  br i1 %i.cr, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit37.i.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i39.i.i unwind label %bb.z, !noalias !2820

bb.z:                                             ; preds = %bb.y
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %.body.i unwind label %bb.aa, !noalias !2820

bb.aa:                                            ; preds = %bb.z
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2820
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i39.i.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %bb.ab unwind label %bb.au, !noalias !2820

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i39.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit37.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2818
  store i64 %i.bp, ptr %i.x, align 8, !noalias !2817
end_hunk_0
