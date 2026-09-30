Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.12?download=true
inline.NumInlined: 1036
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs0_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB6_14ExternalSorter9push_fileINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtB8_7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB2a_13TrigramHasherEEEB8_:bb.a
  %i.u = phi i64 [ %i.q, %bb.d ], [ %.pre.i, %bb.h ] ; 3 uses
  %i.v = load i64, ptr %1, align 8, !range !12, !alias.scope !92, !noalias !93, !noundef !5
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1) #27
          to label %bb.l unwind label %bb.c

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !92, !noalias !93
  br label %bb.f

bb.i:                                             ; preds = %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoItermNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB19_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91
  store i64 %i.t, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.l:                                             ; preds = %bb.f, %bb.g
  %i.x = load ptr, ptr %i.j, align 8, !alias.scope !92, !noalias !93, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.u ; 4 uses
  store i32 %2, ptr %i.y, align 4, !noalias !94
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i8 %i.o, ptr %.sroa.4.0..sroa_idx8, align 4, !noalias !94
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  store i8 %i.p, ptr %.sroa.5.0..sroa_idx9, align 1, !noalias !94
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.n, ptr %.sroa.610.0..sroa_idx, align 4, !noalias !94
  %i.z = add i64 %i.u, 1
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !92, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.m:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItermNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEEB1C_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs3_Cs9oNxn7AafV1_7globsetNtB6_7GlobSet8is_matchReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.d, align 8
  store i64 -1, ptr %i.a, align 8
  call void @_RNvMs7_Cs9oNxn7AafV1_7globsetNtB5_9Candidate8from_cow(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = invoke noundef zeroext i1 @_RNvMs3_Cs9oNxn7AafV1_7globsetNtB5_7GlobSet18is_match_candidate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset9CandidateECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset9CandidateECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore16matched_strippedRNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.k = tail call noundef i64 @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB19_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB2b_E3get0jECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @46), !noalias !97 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8, !noalias !97 ; 2 uses
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB5_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB16_E8get_slowCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.j, i64 noundef %i.k, i64 noundef %i.m)
  br label %_RNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB5_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB16_E3getCsbzNSmZPCnTx_10tgrep_core.exit

bb.e:                                             ; preds = %bb.c
  store atomic i64 1, ptr %i.l release, align 8, !noalias !97
  %i.o = inttoptr i64 %i.k to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %i.p, align 8
  store i64 1, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.r, align 8
  br label %_RNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB5_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB16_E3getCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB5_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB16_E3getCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.t, align 8
  store i64 -1, ptr %i.a, align 8
  invoke void @_RNvMs7_Cs9oNxn7AafV1_7globsetNtB5_9Candidate8from_cow(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #31
  unreachable

bb.g:                                             ; preds = %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.ac, %bb.j ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs22empcGmRho_14regex_automata4util4pool9PoolGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB1w_EECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #28
          to label %bb.r unwind label %bb.q

bb.h:                                             ; preds = %.split35, %.split30.us, %_RNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB5_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB16_E3getCsbzNSmZPCnTx_10tgrep_core.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %_RNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB5_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB16_E3getCsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !align !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.w, align 8, !nonnull !5
  %.sroa.02.0 = select i1 %i.x, ptr %i.aa, ptr %i.ab
  invoke void @_RNvMs3_Cs9oNxn7AafV1_7globsetNtB5_7GlobSet22matches_candidate_into(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.02.0)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.split32.us, %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset9CandidateECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #28
          to label %bb.g unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !align !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.w, align 8, !nonnull !5
  %.sroa.03.0 = select i1 %i.x, ptr %i.af, ptr %i.ag ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ak, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5 ; 2 uses
  %i.aq = icmp eq i64 %i.ak, 0
  br i1 %i.aq, label %.split30.us, label %.split.us

.split.us:                                        ; preds = %bb.k
  br i1 %3, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %.split.us
  %i.ar = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5 ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.an
  br i1 %i.at, label %.split35.us, label %.split32.us

.split35.us:                                      ; preds = %bb.l
  %i.au = getelementptr inbounds nuw [80 x i8], ptr %i.ap, i64 %i.as
  br label %.split35

.split:                                           ; preds = %bb.m
  %i.av = icmp eq ptr %i.ai, %i.aw
  br i1 %i.av, label %.split30.us, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us, %.split
  %.sroa.56.049 = phi ptr [ %i.aw, %.split ], [ %i.al, %.split.us ]
  %i.aw = getelementptr inbounds i8, ptr %.sroa.56.049, i64 -8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.an
  br i1 %i.ay, label %bb.m, label %.split32.us

.split30.us:                                      ; preds = %.split, %bb.k
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset9CandidateECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c)
          to label %.sink.split unwind label %bb.h

bb.m:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.ap, i64 %i.ax ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 73
  %i.bb = load i8, ptr %i.ba, align 1, !range !6, !noundef !5
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.split, label %.split35

.split32.us:                                      ; preds = %.lr.ph, %bb.l
  %.us-phi = phi i64 [ %i.as, %bb.l ], [ %i.ax, %.lr.ph ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #32
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %.split32.us
  unreachable

.split35:                                         ; preds = %bb.m, %.split35.us
  %.us-phi36 = phi ptr [ %i.au, %.split35.us ], [ %i.az, %bb.m ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.us-phi36, i64 72
  %i.be = load i8, ptr %i.bd, align 8, !range !6, !noundef !5
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset9CandidateECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %.split35
  %i.bf = trunc nuw i8 %i.be to i1
  %.23 = select i1 %i.bf, i64 2, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %.split30.us, %bb.o
  %.sroa.5.1.ph = phi ptr [ %.us-phi36, %bb.o ], [ undef, %.split30.us ]
  %.sroa.0.1.ph = phi i64 [ %.23, %bb.o ], [ 0, %.split30.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs22empcGmRho_14regex_automata4util4pool9PoolGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB1w_EECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.a
  %.sroa.5.1 = phi ptr [ undef, %bb.a ], [ %.sroa.5.1.ph, %.sink.split ]
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  %i.bg = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.bh = insertvalue { i64, ptr } %i.bg, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.bh

bb.q:                                             ; preds = %bb.j, %bb.g
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.r:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore27matched_path_or_any_parentsRNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc { ptr, i64 } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore5stripNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 3 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.i = load i8, ptr %i.h, align 2, !range !6, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.j, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc { i64, ptr } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore16matched_strippedRNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.g, i1 noundef zeroext %3) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.k, 1
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %.preheader, label %.loopexit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 75 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
  unreachable

.preheader:                                       ; preds = %bb.c, %bb.e
  %.sroa.6.0 = phi i64 [ %i.q, %bb.e ], [ %i.g, %bb.c ]
  %.sroa.09.0 = phi ptr [ %i.p, %bb.e ], [ %i.f, %bb.c ]
  %i.o = tail call { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.09.0, i64 noundef %.sroa.6.0) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
  %i.r = tail call fastcc { i64, ptr } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore16matched_strippedRNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q, i1 noundef zeroext true) ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0        ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = extractvalue { i64, ptr } %i.r, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a, %bb.c, %bb.f
  %.sroa.7.0 = phi ptr [ %i.m, %bb.c ], [ %i.u, %bb.f ], [ undef, %bb.a ], [ undef, %.preheader ]
  %.sroa.0.0 = phi i64 [ %i.l, %bb.c ], [ %i.s, %bb.f ], [ 0, %bb.a ], [ 0, %.preheader ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore5stripNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.sroa.5.i.i = alloca [39 x i8], align 1        ; 5 uses
  %.sroa.518.i.i = alloca [39 x i8], align 1      ; 5 uses
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 14 uses
  %i.d = alloca [64 x i8], align 8                ; 14 uses
  %i.e = tail call { ptr, i64 } @_RINvNtCs30WoLBgco1_6ignore8pathutil12strip_prefixeECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %.sroa.9.0 = select i1 %.not, i64 %2, i64 %i.g  ; 6 uses
  %.sroa.0.0 = select i1 %.not, ptr %1, ptr %i.f  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val22 = load i64, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !101, !noalias !102, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !102, !noalias !101, !noundef !5 ; 2 uses
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %.pre.i.i = load ptr, ptr %i.d, align 8, !alias.scope !101, !noalias !102
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.q = load i8, ptr %i.p, align 8, !range !103, !alias.scope !101, !noalias !102, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.s = load i8, ptr %i.r, align 8, !range !103, !alias.scope !102, !noalias !101, !noundef !5
  %i.t = icmp eq i8 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.v = load i8, ptr %i.u, align 1, !range !103, !alias.scope !101, !noalias !102
  %i.w = icmp eq i8 %i.v, 2
  %or.cond.i.i = select i1 %i.t, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.y = load i8, ptr %i.x, align 1, !range !103, !alias.scope !102, !noalias !101
  %i.z = icmp eq i8 %i.y, 2
  %or.cond7.i.i = select i1 %or.cond.i.i, i1 %i.z, i1 false
  %.pre27.i.i = load ptr, ptr %i.d, align 8, !alias.scope !101, !noalias !102 ; 3 uses
  br i1 %or.cond7.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %._crit_edge.i.i
  %i.aa = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %.pre27.i.i, %bb.d ], [ %.pre27.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !105, !alias.scope !101, !noalias !102, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ac, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.c, align 8, !alias.scope !102, !noalias !101, !nonnull !5, !noundef !5
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %.pre27.i.i, ptr nonnull %i.ad, i64 %i.l), !noalias !104
  %i.ae = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ae, label %_RNvXs2m_NtCs5Xr050g3D4S_3std4pathNtB6_7PathBufINtNtCsf3Ta7LF998c_4core3cmp9PartialEqRNtB6_4PathE2eq.exit.thread, label %bb.c

_RNvXs2m_NtCs5Xr050g3D4S_3std4pathNtB6_7PathBufINtNtCsf3Ta7LF998c_4core3cmp9PartialEqRNtB6_4PathE2eq.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i.i, i64 39, i1 false), !noalias !102
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %i.ag = load i8, ptr %i.af, align 2, !range !6, !alias.scope !101, !noalias !102, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !range !103, !alias.scope !101, !noalias !102, !noundef !5
end_hunk_0
