Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.06?download=true
inline.NumInlined: 5464
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCslLuZgPVt6hg_3ide12fetch_crates9CrateInfouEECs6u1mgJOKDyY_13rust_analyzer:bb.a
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i

.body.i:                                          ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #44
          to label %common.resume.i unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.f, %bb.e, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !range !16, !alias.scope !513, !noundef !7
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide12fetch_crates9CrateInfoECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i1.i = load i64, ptr %i.i, align 8, !alias.scope !514 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i1.i, 0
  br i1 %i.m, label %common.resume.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i.i2.i = load ptr, ptr %i.n, align 8, !alias.scope !515, !nonnull !7, !noundef !7
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i2.i, i64 noundef %.val2.i.i.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !516
  br label %common.resume.i

bb.j:                                             ; preds = %bb.g
  %.val.i.i.i4.i = load i64, ptr %i.i, align 8, !alias.scope !514 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i.i4.i, 0
  br i1 %i.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide12fetch_crates9CrateInfoECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i5.i = load ptr, ptr %i.p, align 8, !alias.scope !515, !nonnull !7, !noundef !7
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i5.i, i64 noundef %.val.i.i.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !517
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide12fetch_crates9CrateInfoECs6u1mgJOKDyY_13rust_analyzer.exit

common.resume.i:                                  ; preds = %bb.i, %bb.h, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ %i.c, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide12fetch_crates9CrateInfoECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.j, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !526 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !527, !nonnull !7, !noundef !7
  %i.d = mul nuw i64 %.val2.i, 80
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !528
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEECs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !526 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !527, !nonnull !7, !noundef !7
  %i.g = mul nuw i64 %.val.i, 80
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !529
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !538 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !539, !nonnull !7, !noundef !7
  %i.d = mul nuw i64 %.val2.i, 448
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !540
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEECs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !538 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !539, !nonnull !7, !noundef !7
  %i.g = mul nuw i64 %.val.i, 448
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !541
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !547, !noundef !7 ; 2 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !alias.scope !547 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  %i.e = icmp eq i64 %.promoted.i, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !alias.scope !548, !noalias !549, !noundef !7
  %i.g = icmp ugt i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !548, !noalias !549, !nonnull !7
  %.sink11.i.i = select i1 %i.g, ptr %i.i, ptr %i.h
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %.lr.ph.i
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.k, %.noexc ] ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.k, ptr %i.b, align 8, !alias.scope !547
  %i.l = getelementptr inbounds nuw [152 x i8], ptr %.sink11.i.i, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.l, i64 152, i1 false)
  %.pr.i = load i64, ptr %i.a, align 8, !noalias !547
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %.loopexit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.b
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  %i.m = icmp eq i64 %i.k, %i.d
  br i1 %i.m, label %.loopexit, label %bb.b

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(160) %0) #44
          to label %bb.e unwind label %bb.d

.loopexit:                                        ; preds = %.noexc, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !547
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(160) %0)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.b = load i64, ptr %0, align 8, !alias.scope !560, !noundef !7 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(152) %i.d)
  br label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit

common.resume.i:                                  ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !560, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !560, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !560
  store i64 %i.b, ptr %i.a, align 8, !noalias !560
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.i, align 8, !noalias !560
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.j, align 8, !noalias !560
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.d, !noalias !560

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !561, !noalias !560 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i, 0
  br i1 %i.l, label %common.resume.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val3.i.i = load ptr, ptr %i.i, align 8, !alias.scope !562, !noalias !560, !nonnull !7, !noundef !7
  %i.m = mul nuw i64 %.val2.i.i, 152
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !563
  br label %common.resume.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !561, !noalias !560 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i, 0
  br i1 %i.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !562, !noalias !560, !nonnull !7, !noundef !7
  %i.o = mul nuw i64 %.val.i.i, 152
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !564
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  br label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit

_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b, %.lr.ph3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5Rangej2_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !575, !noundef !7 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5Rangej2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !575, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !575, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !575
  store i64 %i.c, ptr %i.a, align 8, !noalias !575
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !575
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8, !noalias !575
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c, !noalias !575

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !576, !noalias !575 ; 2 uses
  %i.k = icmp eq i64 %.val2.i.i, 0
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !577, !noalias !575, !nonnull !7, !noundef !7
  %i.l = shl nuw i64 %.val2.i.i, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !578
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i2.i = load i64, ptr %i.a, align 8, !alias.scope !576, !noalias !575 ; 2 uses
  %i.m = icmp eq i64 %.val.i2.i, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !577, !noalias !575, !nonnull !7, !noundef !7
  %i.n = shl nuw i64 %.val.i2.i, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !579
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !575
  br label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5Rangej2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit

_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5Rangej2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecARNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !584, !noundef !7 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecARNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !584, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !584, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !584
  store i64 %i.c, ptr %i.a, align 8, !noalias !584
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !584
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8, !noalias !584
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c, !noalias !584

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !585, !noalias !584 ; 2 uses
  %i.k = icmp eq i64 %.val2.i.i, 0
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !585, !noalias !584, !nonnull !7, !noundef !7
  %i.l = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !584
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i2.i = load i64, ptr %i.a, align 8, !alias.scope !585, !noalias !584 ; 2 uses
  %i.m = icmp eq i64 %.val.i2.i, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !585, !noalias !584, !nonnull !7, !noundef !7
  %i.n = shl nuw i64 %.val.i2.i, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !584
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !584
  br label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecARNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit

_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecARNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !7
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.f, %bb.e
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !598 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !599, !nonnull !7, !noundef !7
  %i.e = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !600
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !598 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !599, !nonnull !7, !noundef !7
  %i.h = shl nuw i64 %.val.i.i.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !601
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !610 ; 2 uses
  %i.d = icmp eq i64 %.val2.i, 0
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !611, !nonnull !7, !noundef !7
  %i.f = mul nuw i64 %.val2.i, 200
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !612
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEECs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %0, align 8, !alias.scope !610 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !611, !nonnull !7, !noundef !7
  %i.i = mul nuw i64 %.val.i, 200
end_hunk_0
