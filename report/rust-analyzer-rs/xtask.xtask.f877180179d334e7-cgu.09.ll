Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.09?download=true
inline.NumInlined: 569
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs8generate:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !730
  store ptr %i.ba, ptr %i.s, align 8, !noalias !730
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr %i.ba, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !730
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.bb, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !730
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store ptr %i.bf, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !730
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.thread.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i: ; preds = %bb.h
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.i

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

.body10.i:                                        ; preds = %bb.bh, %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECslkzCjlEuW1f_5xtask.exit.i35.i, %bb.i
  %eh.lpad-body11.i = phi { ptr, i32 } [ %i.bs, %bb.i ], [ %i.jh, %bb.bh ], [ %i.cb, %bb.p ], [ %.pn.pn.pn.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECslkzCjlEuW1f_5xtask.exit.i35.i ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufEECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.cn, !noalias !730

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.cj, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i
  %i.bt = phi ptr [ %i.ba, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i ], [ %i.ko, %bb.cj ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.bu, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !731, !noalias !730
  %.sroa.0.0.copyload40.i = load i64, ptr %i.bt, align 8, !noalias !732 ; 2 uses
  %.sroa.8.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx41.i, i64 16, i1 false), !noalias !732
  %.not.i8 = icmp eq i64 %.sroa.0.0.copyload40.i, -1
  br i1 %.not.i8, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !730
  store i64 %.sroa.0.0.copyload40.i, ptr %i.r, align 8, !noalias !730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !730
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !734
  invoke void @_RINvNtCscAsMj0W7j8b_3std2fs14read_to_stringRNtNtB4_4path7PathBufECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.n unwind label %bb.m, !noalias !735

.body.i.i:                                        ; preds = %bb.bf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i29.i, %bb.m
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.jf, %bb.bf ], [ %i.bx, %bb.m ], [ %.pn.pn.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i29.i ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECslkzCjlEuW1f_5xtask.exit.i35.i unwind label %bb.k, !noalias !730

bb.k:                                             ; preds = %.body.i.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body22.i unwind label %bb.l, !noalias !730

bb.l:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !730
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECslkzCjlEuW1f_5xtask.exit.i35.i: ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body10.i unwind label %bb.bm, !noalias !730

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i.i, %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %bb.j
  %i.by = load i64, ptr %i.p, align 8, !range !7, !noalias !734, !noundef !6 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  %i.ca = load ptr, ptr %i.bh, align 8, !noalias !734 ; 3 uses
  br i1 %i.bz, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !734
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.p, !noalias !730

bb.p:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body10.i unwind label %bb.q, !noalias !730

bb.q:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !730
  unreachable

bb.r:                                             ; preds = %bb.n
  %.sroa.518.0.copyload.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !734 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !734
  store i64 %i.by, ptr %i.q, align 8, !noalias !734
  store ptr %i.ca, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !734
  store i64 %.sroa.518.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !734
  invoke void @_RNvMs_NtCslkzCjlEuW1f_5xtask7codegenNtB4_12CommentBlock7extract(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @334, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %.sroa.518.0.copyload.i.i)
          to label %bb.v unwind label %bb.u, !noalias !730

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i: ; preds = %.body46.i.i, %bb.u
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %.pn.pn.i.i, %.body46.i.i ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i29.i unwind label %bb.s, !noalias !730

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body22.i unwind label %bb.t, !noalias !730

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !730
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i29.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i.i unwind label %bb.bm, !noalias !730

bb.u:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i

bb.v:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %i.bi, align 8, !noalias !734, !nonnull !6, !noundef !6 ; 4 uses
  %i.ch = load i64, ptr %i.o, align 8, !range !12, !noalias !734, !noundef !6
  %i.ci = load i64, ptr %i.bj, align 8, !noalias !734, !noundef !6 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 144115188075855872
  call void @llvm.assume(i1 %i.cj)
  %.idx.i.i = shl nuw nsw i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !734
  store ptr %i.cg, ptr %i.n, align 8, !noalias !734
  store ptr %i.cg, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !734
  store i64 %i.ch, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !734
  store ptr %i.ck, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.cl = icmp eq i64 %i.ci, 0
  br i1 %i.cl, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i

.body46.i.i:                                      ; preds = %bb.by, %bb.bt, %bb.w
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.jx, %bb.bt ], [ %i.cm, %bb.w ], [ %.pn56.i.i, %bb.by ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i unwind label %bb.bm, !noalias !730

bb.w:                                             ; preds = %bb.bu
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i: ; preds = %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i
  %i.cn = phi ptr [ %i.ka, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i ], [ %i.cg, %bb.v ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  store ptr %i.co, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !alias.scope !736, !noalias !734
  %.sroa.0.0.copyload48.i.i = load i64, ptr %i.cn, align 8, !noalias !737 ; 2 uses
  %.sroa.7.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx49.i.i, i64 56, i1 false), !noalias !737
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload48.i.i, -1
  br i1 %.not.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !734
  store i64 %.sroa.0.0.copyload48.i.i, ptr %i.m, align 8, !noalias !734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i.i, i64 56, i1 false), !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !734
  %i.cp = load ptr, ptr %i.bk, align 8, !noalias !734, !nonnull !6, !noundef !6
  %i.cq = load i64, ptr %i.bl, align 8, !noalias !734, !noundef !6
  %i.cr = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq), !noalias !738 ; 2 uses
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0      ; 14 uses
  %i.ct = extractvalue { ptr, i64 } %i.cr, 1      ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct ; 8 uses
  %i.cv = icmp samesign eq i64 %i.ct, 0
  br i1 %i.cv, label %.loopexit23.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.x, %bb.ag
  %i.cw = phi ptr [ %i.ef, %bb.ag ], [ %i.cs, %bb.x ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 3 uses
  %i.cy = load i8, ptr %i.cw, align 1, !alias.scope !739, !noalias !740, !noundef !6 ; 5 uses
  %i.cz = icmp sgt i8 %i.cy, -1
  br i1 %i.cz, label %bb.y, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.da = and i8 %i.cy, 31
  %i.db = zext nneg i8 %i.da to i32               ; 3 uses
  %i.dc = icmp ne ptr %i.cx, %i.cu
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 2 ; 3 uses
  %i.de = load i8, ptr %i.cx, align 1, !alias.scope !739, !noalias !740, !noundef !6
  %i.df = shl nuw nsw i32 %i.db, 6
  %i.dg = and i8 %i.de, 63
  %i.dh = zext nneg i8 %i.dg to i32               ; 2 uses
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = icmp samesign ugt i8 %i.cy, -33
  br i1 %i.dj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dk = zext nneg i8 %i.cy to i32
  br label %bb.z

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i
  %i.dl = icmp ne ptr %i.dd, %i.cu
  call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 3 ; 3 uses
  %i.dn = load i8, ptr %i.dd, align 1, !alias.scope !739, !noalias !740, !noundef !6
  %i.do = shl nuw nsw i32 %i.dh, 6
  %i.dp = and i8 %i.dn, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.do, %i.dq            ; 2 uses
  %i.ds = shl nuw nsw i32 %i.db, 12
  %i.dt = or disjoint i32 %i.dr, %i.ds
  %i.du = icmp samesign ugt i8 %i.cy, -17
  br i1 %i.du, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i, label %bb.z

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i
  %i.dv = icmp ne ptr %i.dm, %i.cu
  call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.dx = load i8, ptr %i.dm, align 1, !alias.scope !739, !noalias !740, !noundef !6
  %i.dy = shl nuw nsw i32 %i.db, 18
  %i.dz = and i32 %i.dy, 1835008
  %i.ea = shl nuw nsw i32 %i.dr, 6
  %i.eb = and i8 %i.dx, 63
  %i.ec = zext nneg i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.ea, %i.ec
  %i.ee = or disjoint i32 %i.ed, %i.dz
  br label %bb.z

bb.z:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i, %bb.y, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i
  %i.ef = phi ptr [ %i.dm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i ], [ %i.dw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i ], [ %i.dd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i ], [ %i.cx, %bb.y ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i = phi i32 [ %i.dt, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i ], [ %i.ee, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i ], [ %i.di, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i ], [ %i.dk, %bb.y ] ; 8 uses
  %i.eg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.eg)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, label %bb.aa [
    i32 32, label %bb.al
    i32 13, label %bb.al
    i32 12, label %bb.al
    i32 11, label %bb.al
    i32 10, label %bb.al
    i32 9, label %bb.al
  ]

bb.aa:                                            ; preds = %bb.z
  %i.eh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 133
  br i1 %i.eh, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 8
  switch i32 %i.ei, label %bb.ag [
    i32 0, label %bb.ae
    i32 22, label %bb.ac
    i32 32, label %bb.af
    i32 48, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ej = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 5760
  %i.ek = zext i1 %i.ej to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.el = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 12288
  %i.em = zext i1 %i.el to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.en = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 255
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !741, !noundef !6
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ab
  %i.er = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 255
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !noalias !741, !noundef !6
  %i.ev = lshr i8 %i.eu, 1
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.em, %bb.ad ], [ %i.eq, %bb.ae ], [ %i.ek, %bb.ac ], [ %i.ev, %bb.af ]
  %i.ew = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ew, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i, %bb.ab, %bb.aa
  %i.ex = icmp eq ptr %i.ef, %i.cu
  br i1 %i.ex, label %.loopexit23.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit23.i.i.i:                                ; preds = %bb.ag, %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %.loopexit23.i.i.i
  %i.ey = phi ptr [ %i.gh, %bb.ak ], [ %i.cs, %.loopexit23.i.i.i ] ; 6 uses
  %.not.i.not.not.not.i.not.i.i.i = icmp eq ptr %i.ey, %i.cu
  br i1 %.not.i.not.not.not.i.not.i.i.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 3 uses
  %i.fa = load i8, ptr %i.ey, align 1, !noalias !742, !noundef !6 ; 5 uses
  %i.fb = icmp sgt i8 %i.fa, -1
  br i1 %i.fb, label %bb.aj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i: ; preds = %bb.ai
  %i.fc = and i8 %i.fa, 31
  %i.fd = zext nneg i8 %i.fc to i32               ; 3 uses
  %i.fe = icmp ne ptr %i.ez, %i.cu
  call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 3 uses
  %i.fg = load i8, ptr %i.ez, align 1, !noalias !742, !noundef !6
  %i.fh = shl nuw nsw i32 %i.fd, 6
  %i.fi = and i8 %i.fg, 63
  %i.fj = zext nneg i8 %i.fi to i32               ; 2 uses
  %i.fk = or disjoint i32 %i.fh, %i.fj
  %i.fl = icmp samesign ugt i8 %i.fa, -33
  br i1 %i.fl, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fm = zext nneg i8 %i.fa to i32
  br label %bb.ak

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i
  %i.fn = icmp ne ptr %i.ff, %i.cu
  call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 3 ; 3 uses
  %i.fp = load i8, ptr %i.ff, align 1, !noalias !742, !noundef !6
  %i.fq = shl nuw nsw i32 %i.fj, 6
  %i.fr = and i8 %i.fp, 63
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fq, %i.fs            ; 2 uses
  %i.fu = shl nuw nsw i32 %i.fd, 12
  %i.fv = or disjoint i32 %i.ft, %i.fu
  %i.fw = icmp samesign ugt i8 %i.fa, -17
  br i1 %i.fw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i, label %bb.ak

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i
  %i.fx = icmp ne ptr %i.fo, %i.cu
  call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fz = load i8, ptr %i.fo, align 1, !noalias !742, !noundef !6
  %i.ga = shl nuw nsw i32 %i.fd, 18
  %i.gb = and i32 %i.ga, 1835008
  %i.gc = shl nuw nsw i32 %i.ft, 6
  %i.gd = and i8 %i.fz, 63
  %i.ge = zext nneg i8 %i.gd to i32
  %i.gf = or disjoint i32 %i.gc, %i.ge
  %i.gg = or disjoint i32 %i.gf, %i.gb
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i, %bb.aj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i
  %i.gh = phi ptr [ %i.fo, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i ], [ %i.fy, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i ], [ %i.ff, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i ], [ %i.ez, %bb.aj ]
  %spec.select.i.ph.i.i.i.i = phi i32 [ %i.fv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i ], [ %i.gg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i ], [ %i.fk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i ], [ %i.fm, %bb.aj ]
  %i.gi = add nsw i32 %spec.select.i.ph.i.i.i.i, -65
  %.sroa.0.0.i.i.i.i.i.i = icmp ult i32 %i.gi, 26
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.ay, label %bb.ah

bb.al:                                            ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !743
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 49, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !730

.noexc.i.i:                                       ; preds = %bb.al
  %i.gj = load i64, ptr %i.e, align 8, !range !9, !noalias !743, !noundef !6
  %i.gk = trunc nuw i64 %i.gj to i1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !range !15, !noalias !743, !noundef !6 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.gk, label %bb.bd, label %bb.be, !prof !13

bb.am:                                            ; preds = %bb.ah
  %i.go = icmp samesign ult i64 %i.ct, 64
  br i1 %i.go, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = and i64 %i.ct, 9223372036854775744
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.gp ; 3 uses
  %i.gr = and i64 %i.ct, 63                       ; 2 uses
  br label %.lr.ph.i.i.i.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i.i, i64 64 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.gq
  br i1 %i.gt, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ao, %bb.an
  %.sroa.01.028.i.i.i.i.i = phi ptr [ %i.gs, %bb.ao ], [ %i.cs, %bb.an ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i.i.i.i, align 1, !alias.scope !744, !noalias !745
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i.i.i.i = load <2 x i64>, ptr %i.gu, align 1, !alias.scope !744, !noalias !746
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i.i.i.i = load <2 x i64>, ptr %i.gv, align 1, !alias.scope !744, !noalias !747
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i.i.i.i = load <2 x i64>, ptr %i.gw, align 1, !alias.scope !744, !noalias !748
  %i.gx = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.gy = or <2 x i64> %i.gx, %.sroa.0.0.copyload.i10.i.i.i.i.i
  %i.gz = or <2 x i64> %i.gy, %.sroa.0.0.copyload.i11.i.i.i.i.i
  %i.ha = bitcast <2 x i64> %i.gz to <16 x i8>
  %i.hb = icmp slt <16 x i8> %i.ha, zeroinitializer
  %i.hc = bitcast <16 x i1> %i.hb to i16
  %i.hd = icmp eq i16 %i.hc, 0
  br i1 %i.hd, label %bb.ao, label %.loopexit.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gr
  %i.hf = icmp samesign eq i64 %i.gr, 0
  br i1 %i.hf, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.lr.ph

bb.ap:                                            ; preds = %.lr.ph
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hi, i64 1 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.he
  br i1 %i.hh, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i.i.i.i, %bb.ap
  %i.hi = phi ptr [ %i.hg, %bb.ap ], [ %i.gq, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i.i = load i8, ptr %i.hi, align 1, !alias.scope !744, !noalias !749, !noundef !6
  %i.hj = icmp sgt i8 %.val.i.i.i.i.i.i, -1
  br i1 %i.hj, label %bb.ap, label %.loopexit.i.i.i

bb.aq:                                            ; preds = %bb.am
  %i.hk = and i64 %i.ct, 56                       ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.hk ; 7 uses
  %i.hm = and i64 %i.ct, 7                        ; 7 uses
  %.not.i.i.i.i80 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i80, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i

1:                                                ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.hk, 8
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.1

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.1: ; preds = %1
  %2 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.012.0.copyload.i.i.i.i.1 = load i64, ptr %2, align 1, !alias.scope !750, !noalias !738
  %3 = and i64 %.sroa.012.0.copyload.i.i.i.i.1, -9187201950435737472
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %.loopexit.i.i.i

5:                                                ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.1
  %.not.i.i.i.i.1 = icmp eq i64 %i.hk, 16
  br i1 %.not.i.i.i.i.1, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.2

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.2: ; preds = %5
  %6 = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.012.0.copyload.i.i.i.i.2 = load i64, ptr %6, align 1, !alias.scope !750, !noalias !738
  %7 = and i64 %.sroa.012.0.copyload.i.i.i.i.2, -9187201950435737472
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %.loopexit.i.i.i

9:                                                ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.2
  %.not.i.i.i.i.2 = icmp eq i64 %i.hk, 24
  br i1 %.not.i.i.i.i.2, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.3

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.3: ; preds = %9
  %10 = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.012.0.copyload.i.i.i.i.3 = load i64, ptr %10, align 1, !alias.scope !750, !noalias !738
  %11 = and i64 %.sroa.012.0.copyload.i.i.i.i.3, -9187201950435737472
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %.loopexit.i.i.i

13:                                               ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.3
  %.not.i.i.i.i.3 = icmp eq i64 %i.hk, 32
  br i1 %.not.i.i.i.i.3, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.4

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.4: ; preds = %13
  %14 = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %.sroa.012.0.copyload.i.i.i.i.4 = load i64, ptr %14, align 1, !alias.scope !750, !noalias !738
  %15 = and i64 %.sroa.012.0.copyload.i.i.i.i.4, -9187201950435737472
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %.loopexit.i.i.i

17:                                               ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.4
  %.not.i.i.i.i.4 = icmp eq i64 %i.hk, 40
  br i1 %.not.i.i.i.i.4, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.5

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.5: ; preds = %17
  %18 = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %.sroa.012.0.copyload.i.i.i.i.5 = load i64, ptr %18, align 1, !alias.scope !750, !noalias !738
  %19 = and i64 %.sroa.012.0.copyload.i.i.i.i.5, -9187201950435737472
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %.loopexit.i.i.i

21:                                               ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.5
  %.not.i.i.i.i.5 = icmp eq i64 %i.hk, 48
  br i1 %.not.i.i.i.i.5, label %._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %21
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %.sroa.012.0.copyload.i.i.i.i.6 = load i64, ptr %i.hn, align 1, !alias.scope !750, !noalias !738
  %22 = and i64 %.sroa.012.0.copyload.i.i.i.i.6, -9187201950435737472
  %.not.i.i.i.i.a = icmp eq i64 %22, 0
  br i1 %.not.i.i.i.i.a, label %._crit_edge, label %.loopexit.i.i.i

._crit_edge:                                      ; preds = %1, %5, %9, %13, %17, %21, %bb.ar, %bb.aq
  %i.ho = icmp samesign eq i64 %i.hm, 0
  br i1 %i.ho, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.lr.ph84

bb.as:                                            ; preds = %.lr.ph84
  %i.hp = icmp samesign eq i64 %i.hm, 1
  br i1 %i.hp, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.lr.ph84.1

.lr.ph84.1:                                       ; preds = %bb.as
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  %.val.i.i.i.i.i.1 = load i8, ptr %i.hq, align 1, !alias.scope !750, !noalias !751, !noundef !6
  %i.hr = icmp sgt i8 %.val.i.i.i.i.i.1, -1
  br i1 %i.hr, label %bb.at, label %.loopexit.i.i.i

bb.at:                                            ; preds = %.lr.ph84.1
  %i.hs = icmp samesign eq i64 %i.hm, 2
  br i1 %i.hs, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.lr.ph84.2

.lr.ph84.2:                                       ; preds = %bb.at
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %.val.i.i.i.i.i.2 = load i8, ptr %i.ht, align 1, !alias.scope !750, !noalias !751, !noundef !6
  %i.hu = icmp sgt i8 %.val.i.i.i.i.i.2, -1
  br i1 %i.hu, label %bb.au, label %.loopexit.i.i.i

bb.au:                                            ; preds = %.lr.ph84.2
  %i.hv = icmp samesign eq i64 %i.hm, 3
  br i1 %i.hv, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.lr.ph84.3

.lr.ph84.3:                                       ; preds = %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 3
  %.val.i.i.i.i.i.3 = load i8, ptr %i.hw, align 1, !alias.scope !750, !noalias !751, !noundef !6
  %i.hx = icmp sgt i8 %.val.i.i.i.i.i.3, -1
  br i1 %i.hx, label %bb.av, label %.loopexit.i.i.i

bb.av:                                            ; preds = %.lr.ph84.3
  %i.hy = icmp samesign eq i64 %i.hm, 4
  br i1 %i.hy, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.lr.ph84.4

.lr.ph84.4:                                       ; preds = %bb.av
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %.val.i.i.i.i.i.4 = load i8, ptr %i.hz, align 1, !alias.scope !750, !noalias !751, !noundef !6
  %i.ia = icmp sgt i8 %.val.i.i.i.i.i.4, -1
  br i1 %i.ia, label %bb.aw, label %.loopexit.i.i.i

bb.aw:                                            ; preds = %.lr.ph84.4
  %i.ib = icmp samesign eq i64 %i.hm, 5
  br i1 %i.ib, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.lr.ph84.5

.lr.ph84.5:                                       ; preds = %bb.aw
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hl, i64 5
  %.val.i.i.i.i.i.5 = load i8, ptr %i.ic, align 1, !alias.scope !750, !noalias !751, !noundef !6
  %i.id = icmp sgt i8 %.val.i.i.i.i.i.5, -1
  br i1 %i.id, label %bb.ax, label %.loopexit.i.i.i

bb.ax:                                            ; preds = %.lr.ph84.5
  %i.ie = icmp samesign eq i64 %i.hm, 6
  br i1 %i.ie, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.lr.ph84.6

.lr.ph84.6:                                       ; preds = %bb.ax
  %i.if = getelementptr inbounds nuw i8, ptr %i.hl, i64 6
  %.val.i.i.i.i.i.6 = load i8, ptr %i.if, align 1, !alias.scope !750, !noalias !751, !noundef !6
  %i.ig = icmp sgt i8 %.val.i.i.i.i.i.6, -1
  br i1 %i.ig, label %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, label %.loopexit.i.i.i

.lr.ph84:                                         ; preds = %._crit_edge
  %.val.i.i.i.i.i = load i8, ptr %i.hl, align 1, !alias.scope !750, !noalias !751, !noundef !6
  %i.ih = icmp sgt i8 %.val.i.i.i.i.i, -1
  br i1 %i.ih, label %bb.as, label %.loopexit.i.i.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i: ; preds = %bb.aq
  %.sroa.012.0.copyload.i.i.i.i = load i64, ptr %i.cs, align 1, !alias.scope !750, !noalias !738
  %i.ii = and i64 %.sroa.012.0.copyload.i.i.i.i, -9187201950435737472
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %1, label %.loopexit.i.i.i

bb.ay:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !743
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 48, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc33.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !730

.noexc33.i.i:                                     ; preds = %bb.ay
  %i.ik = load i64, ptr %i.d, align 8, !range !9, !noalias !743, !noundef !6
  %i.il = trunc nuw i64 %i.ik to i1
  %i.im = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.in = load i64, ptr %i.im, align 8, !range !15, !noalias !743, !noundef !6 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.il, label %bb.bb, label %bb.bc, !prof !13

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.2, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.3, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.4, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i.i.i.5, %bb.ar, %.lr.ph84, %.lr.ph84.1, %.lr.ph84.2, %.lr.ph84.3, %.lr.ph84.4, %.lr.ph84.5, %.lr.ph84.6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !743
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 42, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc34.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !730

.noexc34.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ip = load i64, ptr %i.c, align 8, !range !9, !noalias !743, !noundef !6
  %i.iq = trunc nuw i64 %i.ip to i1
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !range !15, !noalias !743, !noundef !6 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.iq, label %bb.az, label %bb.ba, !prof !13

bb.az:                                            ; preds = %.noexc34.i.i
  %i.iu = load i64, ptr %i.it, align 8, !noalias !743
  br label %.invoke.i.i

bb.ba:                                            ; preds = %.noexc34.i.i
  %i.iv = load ptr, ptr %i.it, align 8, !noalias !743, !nonnull !6, !noundef !6 ; 2 uses
  %i.iw = icmp samesign ugt i64 %i.is, 41
  call void @llvm.assume(i1 %i.iw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.iv, ptr noundef nonnull align 1 dereferenceable(42) @261, i64 42, i1 false), !noalias !738
  br label %bb.bj

bb.bb:                                            ; preds = %.noexc33.i.i
  %i.ix = load i64, ptr %i.io, align 8, !noalias !743
  br label %.invoke.i.i

bb.bc:                                            ; preds = %.noexc33.i.i
  %i.iy = load ptr, ptr %i.io, align 8, !noalias !743, !nonnull !6, !noundef !6 ; 2 uses
  %i.iz = icmp samesign ugt i64 %i.in, 47
  call void @llvm.assume(i1 %i.iz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.iy, ptr noundef nonnull align 1 dereferenceable(48) @262, i64 48, i1 false), !noalias !738
  br label %bb.bj

bb.bd:                                            ; preds = %.noexc.i.i
  %i.ja = load i64, ptr %i.gn, align 8, !noalias !743
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.bd, %bb.bb, %bb.az
  %i.jb = phi i64 [ %i.gm, %bb.bd ], [ %i.in, %bb.bb ], [ %i.is, %bb.az ]
  %i.jc = phi i64 [ %i.ja, %bb.bd ], [ %i.ix, %bb.bb ], [ %i.iu, %bb.az ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.jb, i64 %i.jc) #29
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !730

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.be:                                            ; preds = %.noexc.i.i
  %i.jd = load ptr, ptr %i.gn, align 8, !noalias !743, !nonnull !6, !noundef !6 ; 2 uses
  %i.je = icmp samesign ugt i64 %i.gm, 48
  call void @llvm.assume(i1 %i.je)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.jd, ptr noundef nonnull align 1 dereferenceable(49) @263, i64 49, i1 false), !noalias !738
  br label %bb.bj

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit39.i.i unwind label %bb.u, !noalias !730

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit39.i.i: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !734
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i.i unwind label %bb.bf, !noalias !730

bb.bf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit39.i.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i.i unwind label %bb.bg, !noalias !730

bb.bg:                                            ; preds = %bb.bf
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !730
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit39.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.m, !noalias !730

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !734
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.bh, !noalias !730

bb.bh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body10.i unwind label %bb.bi, !noalias !730

bb.bi:                                            ; preds = %bb.bh
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !730
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i, %bb.o
  %.sroa.0.0.i.i = phi ptr [ %i.ca, %bb.o ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i ] ; 2 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RNvNvMNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docsNtB4_10Diagnostic7collect12collect_file.exit.i unwind label %bb.i, !noalias !730

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i, %.invoke.i.i, %.loopexit.i.i.i, %bb.ay, %bb.al
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bj:                                            ; preds = %bb.be, %bb.bc, %bb.ba
  %.sroa.11.0.ph.i.i = phi i64 [ 48, %bb.bc ], [ 42, %bb.ba ], [ 49, %bb.be ]
  %.sroa.8.0.ph.i.i = phi ptr [ %i.iy, %bb.bc ], [ %i.iv, %bb.ba ], [ %i.jd, %bb.be ]
  %.sroa.050.0.ph.i.i = phi i64 [ %i.in, %bb.bc ], [ %i.is, %bb.ba ], [ %i.gm, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !734
  store i64 %.sroa.050.0.ph.i.i, ptr %i.k, align 8, !noalias !734
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.8.0.ph.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !734
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.11.0.ph.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !734
  store ptr %i.l, ptr %i.j, align 8, !noalias !734
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsr_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !734
  %i.jj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.jj, align 8, !noalias !734
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !734
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @335, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #29
          to label %bb.bl unwind label %bb.bk, !noalias !730

_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i: ; preds = %bb.ap, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %.lr.ph84.6, %._crit_edge.i.i.i.i.i, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !734
  %i.jk = load ptr, ptr %i.bn, align 8, !noalias !734, !nonnull !6, !noundef !6
  %i.jl = load i64, ptr %i.bo, align 8, !noalias !734, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !734
  invoke void @_RINvNtCsbSS6DM8SDEO_5alloc3str17join_generic_copyehNtNtB4_6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jk, i64 noundef %i.jl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 1)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !730

bb.bk:                                            ; preds = %bb.bj
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #26
          to label %.loopexit.split-lp.i.i unwind label %bb.bm, !noalias !730

bb.bl:                                            ; preds = %bb.bj
  unreachable

bb.bm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i, %bb.by, %bb.bw, %bb.bk, %.body46.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i29.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECslkzCjlEuW1f_5xtask.exit.i35.i
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body22.i

.body22.i:                                        ; preds = %bb.ca, %bb.bx, %bb.bm, %bb.s, %bb.k
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !730
  unreachable

bb.bn:                                            ; preds = %_RNvNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs24is_valid_diagnostic_name.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !734
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.bo unwind label %bb.bw, !noalias !730

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !734
  %i.jo = load i64, ptr %i.bp, align 8, !noalias !734, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !734
  store i64 %i.jo, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !734
  %i.jp = load i64, ptr %i.at, align 8, !alias.scope !752, !noalias !730, !noundef !6 ; 3 uses
  %i.jq = load i64, ptr %i.u, align 8, !range !12, !alias.scope !752, !noalias !730, !noundef !6
  %i.jr = icmp eq i64 %i.jp, %i.jq
  br i1 %i.jr, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bs unwind label %bb.bq, !noalias !753

bb.bq:                                            ; preds = %bb.bp
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h) #26
          to label %.body43.i.i unwind label %bb.br, !noalias !730

bb.br:                                            ; preds = %bb.bq
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !730
  unreachable

bb.bs:                                            ; preds = %bb.bp, %bb.bo
  %i.ju = load ptr, ptr %i.as, align 8, !alias.scope !752, !noalias !730, !nonnull !6, !noundef !6
  %i.jv = getelementptr inbounds nuw [80 x i8], ptr %i.ju, i64 %i.jp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.jv, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !730
  %i.jw = add i64 %i.jp, 1
  store i64 %i.jw, ptr %i.at, align 8, !alias.scope !752, !noalias !730
end_hunk_0
