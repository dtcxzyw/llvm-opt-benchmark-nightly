Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.03?download=true
inline.NumInlined: 1332
inline.NumDeleted: 266
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvCsbNLsQi0JuJ4_5tgrep34reject_unsupported_discovery_flags:bb.a
bb.ai:                                            ; preds = %_RNvMs_CsbNLsQi0JuJ4_5tgrepNtB4_3Cli27unsupported_discovery_flags.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dr, i64 noundef %i.dn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 2)
          to label %bb.ao unwind label %bb.an

bb.aj:                                            ; preds = %_RNvMs_CsbNLsQi0JuJ4_5tgrepNtB4_3Cli27unsupported_discovery_flags.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.aj
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.am:                                            ; preds = %bb.ap, %bb.an
  %.pn = phi { ptr, i32 } [ %i.du, %bb.an ], [ %i.dw, %bb.ap ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %common.resume unwind label %bb.at

bb.an:                                            ; preds = %bb.ar, %bb.aq, %bb.ai
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr %.sroa.42.0..sroa_idx, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.dv, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @92, ptr noundef nonnull %i.c)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %bb.am unwind label %bb.at

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ar unwind label %bb.an

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvNtCs5Xr050g3D4S_3std7process4exit(i32 noundef 2) #26
          to label %bb.as unwind label %bb.an

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ap, %bb.am
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCsbNLsQi0JuJ4_5tgrep4main() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.g, align 8
  store i64 1, ptr %i.c, align 8
  store i64 33554432, ptr %i.f, align 8
  call void @_RINvMNtNtCs5Xr050g3D4S_3std6thread7builderNtB3_7Builder15spawn_uncheckedNvCsbNLsQi0JuJ4_5tgrep7run_cliuEB1a_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.h = load ptr, ptr %i.d, align 8, !alias.scope !268, !noundef !5
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtCs5Xr050g3D4S_3std6thread11join_handle10JoinHandleuENtNtNtB4_2io5error5ErrorE6expectCsbNLsQi0JuJ4_5tgrep.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !269
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !268, !nonnull !5, !noundef !5
  store ptr %i.k, ptr %i.a, align 8, !noalias !269
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 29, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #26
          to label %bb.d unwind label %bb.c, !noalias !269

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %bb.f unwind label %bb.e, !noalias !269

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !269
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.l

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtCs5Xr050g3D4S_3std6thread11join_handle10JoinHandleuENtNtNtB4_2io5error5ErrorE6expectCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = call { ptr, ptr } @_RNvMs1_NtNtCs5Xr050g3D4S_3std6thread9lifecycleINtB5_9JoinInneruE4joinCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtCs5Xr050g3D4S_3std6thread11join_handle10JoinHandleuENtNtNtB4_2io5error5ErrorE6expectCsbNLsQi0JuJ4_5tgrep.exit
  ret void

bb.g:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtCs5Xr050g3D4S_3std6thread11join_handle10JoinHandleuENtNtNtB4_2io5error5ErrorE6expectCsbNLsQi0JuJ4_5tgrep.exit
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbNLsQi0JuJ4_5tgrep(ptr nonnull %i.o, ptr %i.p)
  call void @_RNvNtCs5Xr050g3D4S_3std7process4exit(i32 noundef 2) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCsbNLsQi0JuJ4_5tgrep7run_cli() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [176 x i8], align 8               ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.9.i = alloca [40 x i8], align 8          ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [624 x i8], align 8              ; 64 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 10 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 8 uses
  %i.ai = alloca [16 x i8], align 8               ; 8 uses
  %i.aj = alloca [8 x i8], align 8                ; 3 uses
  %i.ak = alloca [56 x i8], align 8               ; 6 uses
  %i.al = alloca [712 x i8], align 8              ; 4 uses
  %i.am = alloca [40 x i8], align 8               ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 4 uses
  %i.ao = alloca [56 x i8], align 8               ; 7 uses
  %i.ap = alloca [56 x i8], align 8               ; 10 uses
  %i.aq = alloca [712 x i8], align 8              ; 10 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [48 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 9 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 9 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [624 x i8], align 8              ; 67 uses
  %i.az = alloca [24 x i8], align 8               ; 9 uses
  %i.ba = alloca [24 x i8], align 8               ; 9 uses
  %i.bb = alloca [48 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 9 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [104 x i8], align 8              ; 19 uses
  %i.bf = alloca [24 x i8], align 8               ; 9 uses
  %i.bg = alloca [24 x i8], align 8               ; 9 uses
  %i.bh = alloca [88 x i8], align 16              ; 16 uses
  %i.bi = alloca [24 x i8], align 8               ; 9 uses
  %i.bj = alloca [24 x i8], align 8               ; 9 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [72 x i8], align 8               ; 17 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [32 x i8], align 8               ; 6 uses
  %i.br = alloca [912 x i8], align 8              ; 8 uses
  %i.bs = alloca [912 x i8], align 8              ; 165 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @_RNvNtCs5Xr050g3D4S_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bq)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !342
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %.sink.sroa.gep452 = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  invoke void @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder7builder7commandNtB3_7Command3newReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 5)
          to label %.noexc.i unwind label %bb.aa, !noalias !341

.noexc.i:                                         ; preds = %bb.a
  invoke fastcc void @_RNvXs4_CsbNLsQi0JuJ4_5tgrepNtB5_3CliNtNtCs1L7Mk9ubPba_12clap_builder6derive4Args12augment_args(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.aq, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.al)
          to label %bb.b unwind label %bb.aa, !noalias !341

bb.b:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false), !noalias !340
  invoke void @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1w_3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.an)
          to label %bb.e unwind label %bb.d, !noalias !341

bb.c:                                             ; preds = %.body.i, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.bt, %bb.d ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder7command7CommandECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(712) %i.aq) #22
          to label %common.resume unwind label %bb.z, !noalias !341

bb.d:                                             ; preds = %.invoke.i, %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !341
  %i.bu = load i64, ptr %i.ao, align 8, !range !10, !noalias !341, !noundef !5 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !341 ; 2 uses
  br i1 %i.bv, label %_RINvMs_CsbNLsQi0JuJ4_5tgrepNtB5_3Cli19try_parse_args_fromNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtBX_3ffi6os_str8OsStringEB5_.exit.thread, label %bb.f

_RINvMs_CsbNLsQi0JuJ4_5tgrepNtB5_3Cli19try_parse_args_fromNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtBX_3ffi6os_str8OsStringEB5_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !341
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder7command7CommandECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(712) %i.aq), !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.ab

bb.f:                                             ; preds = %bb.e
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.521.0..sroa_idx.i, i64 40, i1 false), !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !341
  store i64 %i.bu, ptr %i.ap, align 8, !noalias !341
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.bx, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !341
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !341, !align !12, !noundef !5 ; 4 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !341, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cd = icmp eq i64 %i.cb, 5
  br i1 %i.cd, label %bb.k, label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %bb.p, %bb.o, %bb.k, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !343
  invoke fastcc void @_RNvXsH_NtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ap) #25
          to label %.noexc35.i unwind label %bb.m, !noalias !341

.noexc35.i:                                       ; preds = %.critedge.i
  invoke fastcc void @_RNvXs3_CsbNLsQi0JuJ4_5tgrepNtB5_3CliNtNtCs1L7Mk9ubPba_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(912) %i.br, ptr noalias nofree noundef align 8 dereferenceable(56) %i.ak)
          to label %bb.i unwind label %bb.h, !noalias !344

bb.h:                                             ; preds = %.noexc35.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11arg_matches10ArgMatchesECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ak) #22
          to label %.body.i unwind label %bb.j, !noalias !345

bb.i:                                             ; preds = %.noexc35.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11arg_matches10ArgMatchesECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ak)
          to label %bb.t unwind label %bb.m, !noalias !341

bb.j:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !345
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !341, !nonnull !5, !noundef !5 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = xor i32 %i.ci, 1987208563
  %i.ck = getelementptr i8, ptr %i.ch, i64 4
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32
  %i.cn = xor i32 %i.cm, 101
  %i.co = or i32 %i.cj, %i.cn
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !341
  invoke void @_RINvMs0_NtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeEB1E_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 10)
          to label %bb.n unwind label %bb.m, !noalias !341

bb.m:                                             ; preds = %bb.x, %bb.v, %bb.u, %bb.q, %bb.n, %bb.l, %bb.i, %.critedge.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cs, %bb.m ], [ %i.ce, %bb.h ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11arg_matches10ArgMatchesECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ap) #22
          to label %bb.c unwind label %bb.z, !noalias !341

bb.n:                                             ; preds = %bb.l
  %i.ct = invoke noundef ptr @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeEEB1T_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.am)
          to label %bb.o unwind label %bb.m, !noalias !341 ; 2 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !341
  %.not27.i = icmp eq ptr %i.ct, null
  br i1 %.not27.i, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val.i = load i8, ptr %i.ct, align 1, !range !14, !noalias !341, !noundef !5
  %.not45.i = icmp eq i8 %.val.i, 0
  br i1 %.not45.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = invoke noundef i8 @_RNvMNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 12)
          to label %bb.r unwind label %bb.m, !noalias !341

bb.r:                                             ; preds = %bb.q
  %i.cv = icmp eq i8 %i.cu, 2
  br i1 %i.cv, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  %.val32.i = load ptr, ptr %i.cw, align 8, !noalias !341, !nonnull !5, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %.val33.i = load i64, ptr %i.cx, align 8, !noalias !341, !noundef !5
  %i.cy = call fastcc noundef align 8 ptr @_RINvMs2_NtNtCs1L7Mk9ubPba_12clap_builder7builder7commandNtB6_7Command19find_subcommand_mutReECsbNLsQi0JuJ4_5tgrep(ptr nonnull %.val32.i, i64 %.val33.i) ; 2 uses
  %.not28.i = icmp eq ptr %i.cy, null
  br i1 %.not28.i, label %bb.v, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !343
  br label %.invoke.i

bb.u:                                             ; preds = %bb.s
  %i.cz = invoke noundef nonnull align 8 ptr @_RINvMNtCs1L7Mk9ubPba_12clap_builder5errorNtB3_5Error3rawReECsbNLsQi0JuJ4_5tgrep(i8 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 52)
          to label %bb.x unwind label %bb.m, !noalias !341

bb.v:                                             ; preds = %bb.s
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
          to label %bb.w unwind label %bb.m, !noalias !341

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.da = invoke noundef nonnull align 8 ptr @_RNvMNtCs1L7Mk9ubPba_12clap_builder5errorNtB2_5Error6formatCsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.cy)
          to label %bb.y unwind label %bb.m

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.da, ptr %i.db, align 8, !alias.scope !340
  store i64 2, ptr %i.br, align 8, !alias.scope !340
end_hunk_0
begin_hunk_1_@_RNvCsbNLsQi0JuJ4_5tgrep7run_cli:bb.a

bb.er:                                            ; preds = %bb.eo, %bb.en
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.es:                                            ; preds = %bb.en
  %i.pf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pf, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !362
  store i64 1, ptr %i.n, align 8, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !362
  br label %bb.ep

bb.et:                                            ; preds = %bb.eo
  %i.pg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !362
  store i64 2, ptr %i.n, align 8, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !362
  br label %bb.ep

bb.eu:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !362
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pc)
          to label %bb.ez unwind label %bb.ey, !noalias !363

bb.ev:                                            ; preds = %bb.ep
  store i64 -1, ptr %i.m, align 8, !noalias !362
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ez, %bb.ev
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ay, i64 602
  %i.pi = load <4 x i8>, ptr %i.ph, align 2, !alias.scope !364
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.pk = load i64, ptr %i.pj, align 8, !range !16, !alias.scope !364, !noundef !5 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.pm = load i64, ptr %i.pl, align 8, !alias.scope !364
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ay, i64 606
  %i.po = load i8, ptr %i.pn, align 2, !range !14, !alias.scope !364, !noundef !5
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ay, i64 607
  %i.pq = load i8, ptr %i.pp, align 1, !range !14, !alias.scope !364, !noundef !5
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ay, i64 608
  %i.ps = load i8, ptr %i.pr, align 8, !range !14, !alias.scope !364, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !362
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ay, i64 520 ; 2 uses
  %i.pu = load i64, ptr %i.pt, align 8, !range !10, !alias.scope !364, !noundef !5
  %.not25.i.i = icmp eq i64 %i.pu, -1
  br i1 %.not25.i.i, label %bb.fb, label %bb.fa

bb.ex:                                            ; preds = %bb.fd, %bb.ey
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i.i, %bb.fd ], [ %i.pv, %bb.ey ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6output11PathDisplayEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #22
          to label %bb.eq unwind label %bb.ft, !noalias !363

bb.ey:                                            ; preds = %bb.eu
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ez:                                            ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !362
  br label %bb.ew

bb.fa:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !362
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pt)
          to label %bb.ff unwind label %bb.fe, !noalias !363

bb.fb:                                            ; preds = %bb.ew
  store i64 -1, ptr %i.l, align 8, !noalias !362
  br label %bb.fc

bb.fc:                                            ; preds = %bb.ff, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !362
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ay, i64 400
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pw)
          to label %bb.fi unwind label %bb.fh, !noalias !363

bb.fd:                                            ; preds = %bb.fg, %bb.fe
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.fg ], [ %i.px, %bb.fe ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #22
          to label %bb.ex unwind label %bb.ft, !noalias !363

bb.fe:                                            ; preds = %bb.fa
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.ff:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !362
  br label %bb.fc

bb.fg:                                            ; preds = %bb.fj, %bb.fh
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.fj ], [ %i.py, %bb.fh ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #22
          to label %bb.fd unwind label %bb.ft, !noalias !363

bb.fh:                                            ; preds = %bb.fc
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fi:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !362
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ay, i64 424
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pz)
          to label %bb.fl unwind label %bb.fk, !noalias !363

bb.fj:                                            ; preds = %bb.fp, %bb.fk
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.fp ], [ %i.qa, %bb.fk ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #22
          to label %bb.fg unwind label %bb.ft, !noalias !363

bb.fk:                                            ; preds = %bb.fi
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fl:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !362
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ay, i64 544 ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 8, !range !10, !alias.scope !364, !noundef !5
  %.not26.i.i = icmp eq i64 %i.qc, -1
  br i1 %.not26.i.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !362
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qb)
          to label %bb.fr unwind label %bb.fq, !noalias !363

bb.fn:                                            ; preds = %bb.fl
  store i64 -1, ptr %i.i, align 8, !noalias !362
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fr, %bb.fn
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ay, i64 568
  %i.qe = load i8, ptr %i.qd, align 8, !range !18, !alias.scope !364, !noundef !5 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ay, i64 569
  %i.qg = load i8, ptr %i.qf, align 1, !range !365, !alias.scope !364
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.qi = load i64, ptr %i.qh, align 8, !range !16, !alias.scope !364, !noundef !5 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  %i.qk = load i64, ptr %i.qj, align 8, !alias.scope !364
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ay, i64 609
  %i.qm = load i8, ptr %i.ql, align 1, !range !14, !alias.scope !364, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !362
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ay, i64 448
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qn)
          to label %_RNvXs3_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptionsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i unwind label %bb.fs, !noalias !363

bb.fp:                                            ; preds = %bb.fs, %bb.fq
  %.pn.i.i = phi { ptr, i32 } [ %i.qp, %bb.fs ], [ %i.qo, %bb.fq ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #22
          to label %bb.fj unwind label %bb.ft, !noalias !363

bb.fq:                                            ; preds = %bb.fm
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fr:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !362
  br label %bb.fo

bb.fs:                                            ; preds = %bb.fo
  %i.qp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #22
          to label %bb.fp unwind label %bb.ft, !noalias !363

bb.ft:                                            ; preds = %bb.fs, %bb.fp, %bb.fj, %bb.fg, %bb.fd, %bb.ex, %bb.eq, %bb.ej, %bb.eg, %bb.ed, %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.dl
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !363
  unreachable

_RNvXs3_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptionsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i: ; preds = %bb.fo
  %i.qr = trunc nuw i64 %i.qi to i1
  %.sroa.519.0.i.i = select i1 %i.qr, i64 %i.qk, i64 undef
  %.not27.i.i = icmp eq i8 %i.qe, 2
  %.sroa.517.0.i.i = select i1 %.not27.i.i, i8 undef, i8 %i.qg
  %i.qs = trunc nuw i64 %i.pk to i1
  %.sroa.515.0.i.i = select i1 %i.qs, i64 %i.pm, i64 undef
  %i.qt = trunc nuw i64 %i.oz to i1
  %.sroa.513.0.i.i = select i1 %i.qt, i64 %i.pb, i64 undef
  %i.qu = trunc nuw i64 %i.ov to i1
  %.sroa.511.0.i.i = select i1 %i.qu, i64 %i.ox, i64 undef
  %i.qv = trunc nuw i64 %i.of to i1
  %.sroa.59.0.i.i = select i1 %i.qv, i64 %i.oh, i64 undef
  %i.qw = trunc nuw i64 %i.no to i1
  %.sroa.56.0.i.i = select i1 %i.qw, i64 %i.nq, i64 undef
  %i.qx = trunc nuw i64 %i.nk to i1
  %.sroa.54.0.i.i = select i1 %i.qx, i64 %i.nm, i64 undef
  %i.qy = trunc nuw i64 %i.ng to i1
  %.sroa.52.0.i.i = select i1 %i.qy, i64 %i.ni, i64 undef
  %i.qz = trunc nuw i64 %i.mk to i1
  %.sroa.5.0.i.i = select i1 %i.qz, i64 %i.mm, i64 undef
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ay, i64 610
  %0 = getelementptr inbounds nuw i8, ptr %i.ay, i64 614
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.rc = load i64, ptr %i.rb, align 8, !range !16, !alias.scope !364, !noundef !5 ; 2 uses
  %i.rd = trunc nuw i64 %i.rc to i1
  %i.re = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.rf = load i64, ptr %i.re, align 8, !alias.scope !364
  %.sroa.521.0.i.i = select i1 %i.rd, i64 %i.rf, i64 undef
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ay, i64 617
  %i.rh = load i8, ptr %i.rg, align 1, !range !14, !alias.scope !364, !noundef !5
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ri, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !366
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ac, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rj, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !366
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ac, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rk, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !366
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ac, i64 570
  store <8 x i8> %i.mj, ptr %i.rl, align 2, !alias.scope !360, !noalias !359
  store i64 %i.mk, ptr %i.ac, align 8, !alias.scope !360, !noalias !359
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.5.0.i.i, ptr %i.rm, align 8, !alias.scope !360, !noalias !359
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ac, i64 578
  store <4 x i8> %i.mo, ptr %i.rn, align 2, !alias.scope !360, !noalias !359
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ro, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !366
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ac, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rp, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !366
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ac, i64 582
  store i8 %i.mv, ptr %i.rq, align 2, !alias.scope !360, !noalias !359
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ac, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rr, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !366
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ac, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rs, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !366
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ac, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rt, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !366
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ac, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ru, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !366
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ac, i64 583
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ng, ptr %i.rw, align 8, !alias.scope !360, !noalias !359
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %.sroa.52.0.i.i, ptr %i.rx, align 8, !alias.scope !360, !noalias !359
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %i.nk, ptr %i.ry, align 8, !alias.scope !360, !noalias !359
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 %.sroa.54.0.i.i, ptr %i.rz, align 8, !alias.scope !360, !noalias !359
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.no, ptr %i.sa, align 8, !alias.scope !360, !noalias !359
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 %.sroa.56.0.i.i, ptr %i.sb, align 8, !alias.scope !360, !noalias !359
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ac, i64 618
  store i8 %i.ns, ptr %i.sc, align 2, !alias.scope !360, !noalias !359
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ac, i64 619
  store i8 %i.nu, ptr %i.sd, align 1, !alias.scope !360, !noalias !359
  store <8 x i8> %i.nv, ptr %i.rv, align 1, !alias.scope !360, !noalias !359
  %i.se = getelementptr inbounds nuw i8, ptr %i.ac, i64 591
  store <4 x i8> %i.nx, ptr %i.se, align 1, !alias.scope !360, !noalias !359
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ac, i64 595
  store i8 %i.nz, ptr %i.sf, align 1, !alias.scope !360, !noalias !359
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !366
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store i64 %i.of, ptr %i.sh, align 8, !alias.scope !360, !noalias !359
  %i.si = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i64 %.sroa.59.0.i.i, ptr %i.si, align 8, !alias.scope !360, !noalias !359
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ac, i64 596
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  store i64 %i.ok, ptr %i.sk, align 8, !alias.scope !360, !noalias !359
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  store ptr %i.om, ptr %i.sl, align 8, !alias.scope !360, !noalias !359
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ac, i64 598
  store <4 x i8> %i.on, ptr %i.sj, align 4, !alias.scope !360, !noalias !359
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ac, i64 600
  store i8 %i.op, ptr %i.sn, align 8, !alias.scope !360, !noalias !359
  %i.so = getelementptr inbounds nuw i8, ptr %i.ac, i64 601
  store i8 %i.or, ptr %i.so, align 1, !alias.scope !360, !noalias !359
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ac, i64 620
  store i8 %i.ot, ptr %i.sp, align 4, !alias.scope !360, !noalias !359
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store i64 %i.ov, ptr %i.sq, align 8, !alias.scope !360, !noalias !359
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store i64 %.sroa.511.0.i.i, ptr %i.sr, align 8, !alias.scope !360, !noalias !359
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store i64 %i.oz, ptr %i.ss, align 8, !alias.scope !360, !noalias !359
  %i.st = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store i64 %.sroa.513.0.i.i, ptr %i.st, align 8, !alias.scope !360, !noalias !359
  %i.su = getelementptr inbounds nuw i8, ptr %i.ac, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.su, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !366
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ac, i64 602
  store <4 x i8> %i.pi, ptr %i.sv, align 2, !alias.scope !360, !noalias !359
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store i64 %i.pk, ptr %i.sw, align 8, !alias.scope !360, !noalias !359
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  store i64 %.sroa.515.0.i.i, ptr %i.sx, align 8, !alias.scope !360, !noalias !359
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ac, i64 606
  store i8 %i.po, ptr %i.sy, align 2, !alias.scope !360, !noalias !359
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ac, i64 607
  store i8 %i.pq, ptr %i.sz, align 1, !alias.scope !360, !noalias !359
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ac, i64 608
  store i8 %i.ps, ptr %i.ta, align 8, !alias.scope !360, !noalias !359
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ac, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tb, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !366
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ac, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tc, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !366
  %i.td = getelementptr inbounds nuw i8, ptr %i.ac, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.td, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !366
  %i.te = getelementptr inbounds nuw i8, ptr %i.ac, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.te, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !366
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ac, i64 568
  store i8 %i.qe, ptr %i.tf, align 8, !alias.scope !360, !noalias !359
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ac, i64 569
  store i8 %.sroa.517.0.i.i, ptr %i.tg, align 1, !alias.scope !360, !noalias !359
  %i.th = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store i64 %i.qi, ptr %i.th, align 8, !alias.scope !360, !noalias !359
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store i64 %.sroa.519.0.i.i, ptr %i.ti, align 8, !alias.scope !360, !noalias !359
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ac, i64 609
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ac, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tk, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !366
  %1 = load <4 x i8>, ptr %i.ra, align 2, !alias.scope !364
  %2 = load <4 x i8>, ptr %0, align 2
  %3 = shufflevector <4 x i8> %1, <4 x i8> %2, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %4 = insertelement <8 x i8> %3, i8 %i.qm, i64 0
  store <8 x i8> %4, ptr %i.tj, align 1, !alias.scope !360, !noalias !359
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  store i64 %i.rc, ptr %i.tl, align 8, !alias.scope !360, !noalias !359
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  store i64 %.sroa.521.0.i.i, ptr %i.tm, align 8, !alias.scope !360, !noalias !359
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ac, i64 617
  store i8 %i.rh, ptr %i.tn, align 1, !alias.scope !360, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !359
  invoke fastcc void @_RNvCsbNLsQi0JuJ4_5tgrep22normalize_search_paths(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.lu, i64 noundef range(i64 0, 384307168202282326) %i.lw)
          to label %bb.fv unwind label %bb.fu, !noalias !367

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetEEB1r_.exit.i: ; preds = %.loopexit.split-lp.i, %bb.fu
  %.pn11.i = phi { ptr, i32 } [ %i.to, %bb.fu ], [ %.pn9.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6search13SearchOptionsEBF_(ptr noalias nofree noundef align 8 dereferenceable(624) %i.ac) #22
          to label %.body161 unwind label %bb.gl

bb.fu:                                            ; preds = %bb.gk, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i, %_RNvXs3_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptionsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetEEB1r_.exit.i

bb.fv:                                            ; preds = %_RNvXs3_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptionsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8, !noalias !359, !nonnull !5, !noundef !5 ; 4 uses
  %i.tr = load i64, ptr %i.ab, align 8, !range !6, !noalias !359, !noundef !5
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.tt = load i64, ptr %i.ts, align 8, !noalias !359, !noundef !5 ; 3 uses
  %i.tu = icmp ult i64 %i.tt, 192153584101141163
  call void @llvm.assume(i1 %i.tu)
  %.idx.i = mul nuw nsw i64 %i.tt, 48
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 %.idx.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !359
  store ptr %i.tq, ptr %i.aa, align 8, !noalias !359
  %.sroa.5.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  store ptr %i.tq, ptr %.sroa.5.0..sroa_idx.i155, align 8, !noalias !359
  %.sroa.6.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.tr, ptr %.sroa.6.0..sroa_idx.i156, align 8, !noalias !359
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  store ptr %i.tv, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.tw = icmp eq i64 %i.tt, 0
  br i1 %i.tw, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.lr.ph.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.lr.ph.i: ; preds = %bb.fv
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fx
  %.pn9.i = phi { ptr, i32 } [ %.pn.i158, %bb.fx ], [ %lpad.loopexit.split-lp449, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetEEB1r_.exit.i unwind label %bb.gl

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i159, %bb.gj
  %lpad.loopexit.split-lp449 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.i: ; preds = %.backedge.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.lr.ph.i
  %i.ua = phi ptr [ %i.tq, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.lr.ph.i ], [ %i.ur, %.backedge.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 48
  store ptr %i.ub, ptr %.sroa.5.0..sroa_idx.i155, align 8, !alias.scope !368, !noalias !359
  %.sroa.0.0.copyload18.i = load i64, ptr %i.ua, align 8, !noalias !368 ; 2 uses
  %.sroa.9.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx19.i, i64 40, i1 false), !noalias !368
  %.not.i157 = icmp eq i64 %.sroa.0.0.copyload18.i, -1
  br i1 %.not.i157, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i, label %bb.fw

bb.fw:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !359
  store i64 %.sroa.0.0.copyload18.i, ptr %i.z, align 8, !noalias !359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !359
  %i.uc = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !359, !nonnull !5, !noundef !5
  %i.ud = load i64, ptr %i.tx, align 8, !noalias !359, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !359
  invoke void @_RINvNtCs5Xr050g3D4S_3std2fs8metadataRNtNtB4_4path4PathECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uc, i64 noundef %i.ud)
          to label %bb.fz unwind label %bb.fy

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i: ; preds = %.backedge.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.i, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetEEB1r_.exit17.i unwind label %bb.fu

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetEEB1r_.exit17.i: ; preds = %bb.gk, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i
  %.sroa.0.0.i = phi ptr [ %i.uw, %bb.gk ], [ null, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !359
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6search13SearchOptionsEBF_(ptr noalias nofree noundef align 8 dereferenceable(624) %i.ac)
          to label %bb.gn unwind label %bb.gm

bb.fx:                                            ; preds = %bb.gg, %bb.fy
  %.pn.i158 = phi { ptr, i32 } [ %i.ue, %bb.fy ], [ %i.ut, %bb.gg ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsbNLsQi0JuJ4_5tgrep12SearchTargetEBD_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.z) #22
          to label %.loopexit.split-lp.i unwind label %bb.gl

bb.fy:                                            ; preds = %bb.gh, %bb.ge, %bb.gd, %bb.gc, %bb.fw
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fz:                                            ; preds = %bb.fw
  %i.uf = load i64, ptr %i.x, align 8, !range !9, !noalias !359, !noundef !5
  %.val13.i = load ptr, ptr %i.ty, align 8, !noalias !359 ; 4 uses
  %.not.i15.i = icmp eq i64 %i.uf, 2
  br i1 %.not.i15.i, label %bb.ga, label %bb.ge

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !369
  %i.ug = ptrtoint ptr %.val13.i to i64           ; 2 uses
  %i.uh = and i64 %i.ug, 3
  switch i64 %i.uh, label %default.unreachable [
    i64 2, label %bb.gd
    i64 3, label %bb.gb
    i64 0, label %bb.gd
    i64 1, label %bb.gc
  ], !prof !13

bb.gb:                                            ; preds = %bb.ga
  %i.ui = icmp ult ptr %.val13.i, inttoptr (i64 188978561024 to ptr)
  %i.uj = and i64 %i.ug, 1095216660480
  %i.uk = icmp ne i64 %i.uj, 1095216660480
  call void @llvm.assume(i1 %i.ui)
  call void @llvm.assume(i1 %i.uk)
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.ul = getelementptr i8, ptr %.val13.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ul) ]
  store ptr %i.ul, ptr %i.tz, align 8, !alias.scope !370, !noalias !369
  store i8 3, ptr %i.a, align 8, !alias.scope !370, !noalias !369
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.tz)
          to label %bb.gd unwind label %bb.fy

bb.gd:                                            ; preds = %bb.gc, %bb.gb, %bb.ga, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !359
  %i.um = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !359, !nonnull !5, !noundef !5
  %i.un = load i64, ptr %i.tx, align 8, !noalias !359, !noundef !5
  %i.uo = load i8, ptr %i.sm, align 2, !range !14, !noalias !359, !noundef !5
  %i.up = trunc nuw i8 %i.uo to i1
  invoke fastcc void @_RNvCsbNLsQi0JuJ4_5tgrep19report_missing_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.um, i64 noundef %i.un, i1 noundef zeroext %i.up)
          to label %.invoke.i159 unwind label %bb.fy

bb.ge:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !359
  invoke fastcc void @_RNvMs0_CsbNLsQi0JuJ4_5tgrepNtB5_12SearchTarget7display(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z)
          to label %bb.gf unwind label %bb.fy

.backedge.i:                                      ; preds = %.invoke.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.uq = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !371, !noalias !359, !nonnull !5, !noundef !5
  %i.ur = load ptr, ptr %.sroa.5.0..sroa_idx.i155, align 8, !alias.scope !371, !noalias !359, !nonnull !5, !noundef !5 ; 2 uses
  %i.us = icmp eq ptr %i.ur, %i.uq
  br i1 %i.us, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsbNLsQi0JuJ4_5tgrep12SearchTargetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBY_.exit.i

bb.gf:                                            ; preds = %bb.ge
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6output11PathDisplayEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.sg)
          to label %bb.gh unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ut = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !359
  br label %bb.fx

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !359
  %i.uu = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !359, !nonnull !5, !noundef !5
  %i.uv = load i64, ptr %i.tx, align 8, !noalias !359, !noundef !5
  %i.uw = invoke noundef ptr @_RNvNtCsbNLsQi0JuJ4_5tgrep6search10list_files(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uu, i64 noundef %i.uv, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.038.0, i64 %.sroa.539.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(624) %i.ac)
          to label %bb.gi unwind label %bb.fy     ; 2 uses

bb.gi:                                            ; preds = %bb.gh
  %.not8.i = icmp eq ptr %i.uw, null
  br i1 %.not8.i, label %.invoke.i159, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
end_hunk_1
