Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/build_script_build.build_script_build.b3eec25cf19f7dd8-cgu.0?download=true
inline.NumInlined: 247
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build:bb.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys6os_str5bytes3BufECsfrMbUeuvm3s_18build_script_build.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECsfrMbUeuvm3s_18build_script_build(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.01.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.01.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.32.0.copyload.i.i = load i64, ptr %.sroa.32.0..sroa_idx.i.i, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.212.0..sroa_idx.i.i, align 8
  %.sroa.212.sroa.2.0..sroa.212.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.212.sroa.2.0..sroa.212.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.212.sroa.3.0..sroa.212.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.212.sroa.3.0..sroa.212.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink28.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.32.0.copyload.sink.i.i = phi i64 [ %.sroa.32.0.copyload.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink28.i.i, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink28.i.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.32.0.copyload.sink.i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  call fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB17_EE10dying_nextCsfrMbUeuvm3s_18build_script_build(ptr noalias align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECsfrMbUeuvm3s_18build_script_build.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8
  invoke fastcc void @_RNvMsT_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsfrMbUeuvm3s_18build_script_build(ptr nonnull %i.e, i64 %.sroa.23.0.copyload.i.i.i.i)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.b) #19
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECsfrMbUeuvm3s_18build_script_build.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs5Xr050g3D4S_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsfrMbUeuvm3s_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !9
  tail call void asm sideeffect "", "~{memory}"() #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCs5Xr050g3D4S_3std2rt10lang_startuE0CsfrMbUeuvm3s_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCs5Xr050g3D4S_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsfrMbUeuvm3s_18build_script_build(ptr %i.a) #23
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCs5Xr050g3D4S_3std2rt10lang_startuE0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuE9call_once6vtableCsfrMbUeuvm3s_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCs5Xr050g3D4S_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsfrMbUeuvm3s_18build_script_build(ptr readonly %i.a) #23
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCsfrMbUeuvm3s_18build_script_build4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [200 x i8], align 8               ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 16 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [200 x i8], align 8               ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [104 x i8], align 8               ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 3 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 3 uses
  %i.u = alloca [32 x i8], align 8                ; 3 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [24 x i8], align 8                ; 3 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr nonnull @14, ptr nonnull inttoptr (i64 65 to ptr))
  call void @_RNvNtNtNtCs5Xr050g3D4S_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.w, ptr nonnull @15, i64 7)
  %i.y = load i64, ptr %i.w, align 8
  %.not.i = icmp eq i64 %i.y, -1
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE6unwrapCsfrMbUeuvm3s_18build_script_build.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr nonnull align 8 @17) #24
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE6unwrapCsfrMbUeuvm3s_18build_script_build.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @_RNvNvNtCs5Xr050g3D4S_3std3env3var5inner(ptr nonnull sret([32 x i8]) align 8 %i.u, ptr nonnull @18, i64 23)
          to label %_RINvNtCs5Xr050g3D4S_3std3env3varReECsfrMbUeuvm3s_18build_script_build.exit unwind label %bb.c

.body15:                                          ; preds = %bb.ep, %bb.cz, %bb.e, %bb.c, %.body49
  %.pn13 = phi { ptr, i32 } [ %.pn.pn, %.body49 ], [ %i.ld, %bb.cz ], [ %i.ad, %bb.e ], [ %i.z, %bb.c ], [ %i.mz, %bb.ep ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build(ptr align 8 %i.x) #19
          to label %common.resume unwind label %bb.et

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i101, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE6unwrapCsfrMbUeuvm3s_18build_script_build.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body15

_RINvNtCs5Xr050g3D4S_3std3env3varReECsfrMbUeuvm3s_18build_script_build.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE6unwrapCsfrMbUeuvm3s_18build_script_build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_RINvNtCs5Xr050g3D4S_3std3env3varReECsfrMbUeuvm3s_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr nonnull @53, i64 43, ptr nonnull %i.n, ptr nonnull align 8 @52, ptr nonnull align 8 @19) #25
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std3env8VarErrorECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.n) #19
          to label %.body15 unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

.body49:                                          ; preds = %bb.en, %bb.dt, %bb.dp, %bb.by, %bb.br, %bb.bo, %bb.bm, %bb.bh, %bb.bd, %.body.i, %.thread125, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eu
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.eu ], [ %lpad.thr_comm, %.thread125 ], [ %i.mx, %bb.en ], [ %lpad.loopexit.split-lp399, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lk, %bb.dp ], [ %i.gz, %bb.br ], [ %.pn.i, %.body.i ], [ %i.lo, %bb.dt ], [ %i.gr, %bb.bh ], [ %i.go, %bb.bd ], [ %i.gv, %bb.bm ], [ %i.gw, %bb.bo ], [ %i.hj, %bb.by ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build(ptr align 8 %i.v) #19
          to label %.body15 unwind label %bb.et

bb.h:                                             ; preds = %_RINvNtCs5Xr050g3D4S_3std3env3varReECsfrMbUeuvm3s_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val35 = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val36 = load i64, ptr %i.ag, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.not.i47 = icmp ult i64 %.val36, 2
  %spec.select.i = select i1 %.not.i47, i64 0, i64 89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !30
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgkdYJAOlkeX_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.j, i64 %spec.select.i, i1 zeroext false, i64 1, i64 1)
          to label %.noexc unwind label %.thread125, !noalias !30

.noexc:                                           ; preds = %bb.h
  %i.ah = load i64, ptr %i.j, align 8, !noalias !30
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !30 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.ai, label %bb.i, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfrMbUeuvm3s_18build_script_build.exit.i

bb.i:                                             ; preds = %.noexc
  %i.am = load i64, ptr %i.al, align 8, !noalias !30
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 %i.ak, i64 %i.am) #25
          to label %.noexc48 unwind label %.thread125, !noalias !30

.noexc48:                                         ; preds = %bb.i
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %.noexc
  %i.an = load ptr, ptr %i.al, align 8, !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !30
  store i64 %i.ak, ptr %i.l, align 8, !noalias !30
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr %i.an, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !30
  %.sroa.313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  invoke void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.k, ptr nonnull @20, i64 89, ptr nonnull @21, i64 2)
          to label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcherCsfrMbUeuvm3s_18build_script_build.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !30

_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcherCsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfrMbUeuvm3s_18build_script_build.exit.i
  %.sroa.055.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !30
  %.sroa.256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.256.0.copyload.i = load i64, ptr %.sroa.256.0..sroa_idx.i, align 8, !noalias !30
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.458.0.copyload.i = load i64, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !30 ; 3 uses
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.559.0.copyload.i = load i64, ptr %.sroa.559.0..sroa_idx.i, align 8, !noalias !30 ; 2 uses
  %.sroa.660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.660.0.copyload.i = load i64, ptr %.sroa.660.0..sroa_idx.i, align 8, !noalias !30
  %.sroa.862.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.862.0.copyload.i = load i64, ptr %.sroa.862.0..sroa_idx.i, align 8, !noalias !30
  %.sroa.1064.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.1064.0.copyload.i = load ptr, ptr %.sroa.1064.0..sroa_idx.i, align 8, !noalias !30 ; 9 uses
  %.sroa.1165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.1165.0.copyload.i = load i64, ptr %.sroa.1165.0..sroa_idx.i, align 8, !noalias !30 ; 16 uses
  %.sroa.1266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.1266.0.copyload.i = load ptr, ptr %.sroa.1266.0..sroa_idx.i, align 8, !noalias !30 ; 4 uses
  %.sroa.1367.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.1367.0.copyload.i = load i64, ptr %.sroa.1367.0..sroa_idx.i, align 8, !noalias !30 ; 13 uses
  %.sroa.1016.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.458.0.copyload.i to i8
  %i.ao = and i64 %.sroa.458.0.copyload.i, 65536
  %.not89.i = icmp eq i64 %i.ao, 0
  %.not43.i.i.i = icmp eq ptr %.sroa.1064.0.copyload.i, null ; 2 uses
  %i.ap = add i64 %.sroa.1367.0.copyload.i, -1    ; 3 uses
  %.sroa.1016.sroa.6.0.insert.insert.i = and i64 %.sroa.458.0.copyload.i, -256 ; 2 uses
  %.not.i35.i = icmp eq i64 %.val36, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.av, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcherCsfrMbUeuvm3s_18build_script_build.exit.i
  %.sroa.212.0.i = phi i64 [ %.sroa.256.0.copyload.i, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcherCsfrMbUeuvm3s_18build_script_build.exit.i ], [ %.sroa.212.2.i, %bb.av ] ; 18 uses
  %.sroa.19.0.i = phi i64 [ %.sroa.660.0.copyload.i, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcherCsfrMbUeuvm3s_18build_script_build.exit.i ], [ %.sroa.19.1.i, %bb.av ] ; 6 uses
  %.sroa.2921.0.i = phi i64 [ %.sroa.862.0.copyload.i, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcherCsfrMbUeuvm3s_18build_script_build.exit.i ], [ %.sroa.2921.2.i, %bb.av ] ; 5 uses
  %.sroa.1016.sroa.0.0.i = phi i8 [ %.sroa.1016.sroa.0.0.extract.trunc.i, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcherCsfrMbUeuvm3s_18build_script_build.exit.i ], [ %.sroa.1016.sroa.0.1.i, %bb.av ] ; 8 uses
  %.sroa.04.0.i = phi i64 [ 0, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcherCsfrMbUeuvm3s_18build_script_build.exit.i ], [ %.sroa.770.1.i, %bb.av ] ; 6 uses
  switch i64 %.sroa.055.0.copyload.i, label %bb.k [
    i64 2, label %bb.ab
    i64 1, label %bb.aa
    i64 0, label %.preheader47.i.i
  ]

.preheader47.i.i:                                 ; preds = %bb.j
  br i1 %.not89.i, label %.lr.ph182.i.i, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  unreachable

.loopexit.i.i:                                    ; preds = %bb.z, %bb.y, %bb.x
  %.sroa.01.0.i.i.i = phi i64 [ 2, %bb.y ], [ %..i.i.i, %bb.z ], [ 1, %bb.x ]
  %i.aq = add i64 %.sroa.01.0.i.i.i, %.sroa.212.1.i
  br label %.lr.ph182.i.i

.lr.ph182.i.i:                                    ; preds = %.preheader47.i.i, %.loopexit.i.i
  %.sroa.212.1.i = phi i64 [ %i.aq, %.loopexit.i.i ], [ %.sroa.212.0.i, %.preheader47.i.i ] ; 14 uses
  %i.ar = phi i8 [ %i.au, %.loopexit.i.i ], [ %.sroa.1016.sroa.0.0.i, %.preheader47.i.i ] ; 2 uses
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  %i.at = and i8 %i.ar, 1
  %i.au = xor i8 %i.at, 1                         ; 3 uses
  %i.av = icmp eq i64 %.sroa.212.1.i, 0
  br i1 %i.av, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph182.i.i
  %.not.i.i.i.i = icmp ult i64 %.sroa.212.1.i, %.sroa.1165.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.m, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.l
  %i.aw = icmp ne i64 %.sroa.212.1.i, %.sroa.1165.0.copyload.i
  %or.cond.i.i.i = select i1 %i.aw, i1 true, i1 %.not43.i.i.i
  br i1 %or.cond.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %.sroa.212.1.i
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !31
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i

_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.i.i.i: ; preds = %.lr.ph182.i.i
  br i1 %.not43.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i

_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i: ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.i.i.i, %bb.m, %.split.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %.sroa.212.1.i ; 4 uses
  %i.bb = icmp samesign eq i64 %.sroa.212.1.i, %.sroa.1165.0.copyload.i
  br i1 %i.bb, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bd = load i8, ptr %i.ba, align 1, !noalias !31 ; 5 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = and i8 %i.bd, 31
  %i.bg = zext nneg i8 %i.bf to i32               ; 3 uses
  %i.bh = add nuw nsw i64 %.sroa.212.1.i, 1
  %i.bi = icmp samesign eq i64 %i.bh, %.sroa.1165.0.copyload.i
  br i1 %i.bi, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit15.thread.i.i.i.i, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bj = zext nneg i8 %i.bd to i32
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bl = load i8, ptr %i.bc, align 1, !noalias !31
  %i.bm = shl nuw nsw i32 %i.bg, 6
  %i.bn = and i8 %i.bl, 63
  %i.bo = zext nneg i8 %i.bn to i32               ; 2 uses
  %i.bp = or disjoint i32 %i.bm, %i.bo
  %i.bq = icmp samesign ugt i8 %i.bd, -33
  br i1 %i.bq, label %bb.r, label %bb.v

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit15.thread.i.i.i.i: ; preds = %bb.o
  call fastcc void @_RNvNvNtCsf3Ta7LF998c_4core4hint21unreachable_unchecked18precondition_checkCsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 @6) #22, !noalias !31
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.br = add nuw nsw i64 %.sroa.212.1.i, 2
  %i.bs = icmp samesign eq i64 %i.br, %.sroa.1165.0.copyload.i
  br i1 %i.bs, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit17.thread.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bu = load i8, ptr %i.bk, align 1, !noalias !31
  %i.bv = shl nuw nsw i32 %i.bo, 6
  %i.bw = and i8 %i.bu, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx            ; 2 uses
  %i.bz = shl nuw nsw i32 %i.bg, 12
  %i.ca = or disjoint i32 %i.by, %i.bz
  %i.cb = icmp samesign ugt i8 %i.bd, -17
  br i1 %i.cb, label %bb.t, label %bb.v

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit17.thread.i.i.i.i: ; preds = %bb.r
  call fastcc void @_RNvNvNtCsf3Ta7LF998c_4core4hint21unreachable_unchecked18precondition_checkCsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 @7) #22, !noalias !31
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.cc = add nuw nsw i64 %.sroa.212.1.i, 3
  %i.cd = icmp samesign eq i64 %i.cc, %.sroa.1165.0.copyload.i
  br i1 %i.cd, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit19.thread.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i8, ptr %i.bt, align 1, !noalias !31
  %i.cf = shl nuw nsw i32 %i.bg, 18
  %i.cg = and i32 %i.cf, 1835008
  %i.ch = shl nuw nsw i32 %i.by, 6
  %i.ci = and i8 %i.ce, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = or disjoint i32 %i.ck, %i.cg
  br label %bb.v

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit19.thread.i.i.i.i: ; preds = %bb.t
  call fastcc void @_RNvNvNtCsf3Ta7LF998c_4core4hint21unreachable_unchecked18precondition_checkCsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 @8) #22, !noalias !31
  unreachable

_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i: ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.i.i.i, %bb.m, %.split.i.i.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr %.sroa.1064.0.copyload.i, i64 %.sroa.1165.0.copyload.i, i64 %.sroa.212.1.i, i64 %.sroa.1165.0.copyload.i, ptr nonnull align 8 @61) #24
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !31

.noexc.i:                                         ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i
  unreachable

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.p
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.bp, %bb.q ], [ %i.ca, %bb.s ], [ %i.cl, %bb.u ], [ %i.bj, %bb.p ] ; 3 uses
  br i1 %i.as, label %.loopexit49.i.i, label %bb.x

bb.w:                                             ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i
  br i1 %i.as, label %.loopexit49.i.i, label %.loopexit.i

bb.x:                                             ; preds = %bb.v
  %i.cm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 128
  br i1 %i.cm, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 2048
  br i1 %i.cn, label %.loopexit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 65536
  %..i.i.i = select i1 %i.co, i64 3, i64 4
  br label %.loopexit.i.i

bb.aa:                                            ; preds = %bb.j
  %.not.i.i = icmp ult i64 %.sroa.212.0.i, %.sroa.1165.0.copyload.i
  br i1 %.not.i.i, label %bb.ac, label %.loopexit.i

bb.ab:                                            ; preds = %bb.j
  %i.cp = icmp eq i64 %.sroa.2921.0.i, -1
  %i.cq = add i64 %.sroa.19.0.i, %i.ap            ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %.sroa.1165.0.copyload.i ; 2 uses
  br i1 %i.cp, label %bb.al, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.cs = sub nuw i64 %.sroa.1165.0.copyload.i, %.sroa.212.0.i ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %.sroa.212.0.i ; 2 uses
  %i.cu = icmp ult i64 %i.cs, 16
  br i1 %i.cu, label %.lr.ph.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %bb.ad
  %.sroa.04.09.i.i.i = phi i64 [ %i.cy, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.04.09.i.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !32
  %i.cx = icmp eq i8 %i.cw, %.sroa.1016.sroa.0.0.i
  br i1 %i.cx, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.cy = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  %exitcond.not.i5.i.i = icmp eq i64 %i.cy, %i.cs
  br i1 %exitcond.not.i5.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i: ; preds = %bb.ac
  %i.cz = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 %.sroa.1016.sroa.0.0.i, ptr %i.ct, i64 %i.cs)
          to label %.noexc27.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !32 ; 2 uses

.noexc27.i:                                       ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i
  %i.da = extractvalue { i64, i64 } %i.cz, 0
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37_crit_edge.i.i, label %.loopexit.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37_crit_edge.i.i: ; preds = %.noexc27.i
  %i.dc = extractvalue { i64, i64 } %i.cz, 1
  br label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i: ; preds = %.lr.ph.i.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37_crit_edge.i.i
  %.sroa.5.1.i40.i.i = phi i64 [ %i.dc, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37_crit_edge.i.i ], [ %.sroa.04.09.i.i.i, %.lr.ph.i.i.i ]
  %i.dd = add i64 %.sroa.5.1.i40.i.i, %.sroa.212.0.i ; 2 uses
  %i.de = add i64 %i.dd, 1                        ; 2 uses
  br label %.loopexit49.i.i

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.cr, label %.lr.ph.i6.i.preheader.i, label %.loopexit.i

.lr.ph.i6.i.preheader.i:                          ; preds = %bb.ae
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i64
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.1016.sroa.6.0.insert.insert.i, %.sroa.1016.sroa.0.0.insert.ext.i ; 2 uses
  %i.df = sub i64 %.sroa.1367.0.copyload.i, %.sroa.1016.sroa.0.0.insert.insert.i
  %invariant.op = sub i64 1, %.sroa.212.0.i
  br label %.lr.ph.i6.i.i

.lr.ph.i6.i.i:                                    ; preds = %.sink.split.i.i.i, %.lr.ph.i6.i.preheader.i
  %i.dg = phi i64 [ %.sink.i11.i.i, %.sink.split.i.i.i ], [ %.sroa.2921.0.i, %.lr.ph.i6.i.preheader.i ] ; 3 uses
  %i.dh = phi i64 [ %i.ds, %.sink.split.i.i.i ], [ %i.cq, %.lr.ph.i6.i.preheader.i ]
  %i.di = phi i64 [ %.ph.i.i.i, %.sink.split.i.i.i ], [ %.sroa.19.0.i, %.lr.ph.i6.i.preheader.i ] ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %i.dh
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !33
  %i.dl = and i8 %i.dk, 63
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %.sroa.559.0.copyload.i
  %.not.i7.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i7.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i6.i.i
  %i.dp = add i64 %i.di, %.sroa.1367.0.copyload.i
  br label %.sink.split.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i6.i.i
  %i.dq = call i64 @llvm.umax.i64(i64 %.sroa.212.0.i, i64 %i.dg) ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.1064.0.copyload.i, i64 %i.di ; 2 uses
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 %.sroa.1367.0.copyload.i)
  %exitcond.not.i10.i.i372.not = icmp ult i64 %i.dq, %.sroa.1367.0.copyload.i
  br i1 %exitcond.not.i10.i.i372.not, label %.lr.ph, label %.preheader44.i.i.preheader

.sink.split.i.i.i:                                ; preds = %bb.ak, %bb.aj, %bb.af
  %.sink.i11.i.i = phi i64 [ 0, %bb.ak ], [ %i.df, %bb.aj ], [ 0, %bb.af ]
  %.ph.i.i.i = phi i64 [ %i.ej, %bb.ak ], [ %i.ee, %bb.aj ], [ %i.dp, %bb.af ] ; 2 uses
  %i.ds = add i64 %.ph.i.i.i, %i.ap               ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.sroa.1165.0.copyload.i
  br i1 %i.dt, label %.lr.ph.i6.i.i, label %.loopexit.i

bb.ah:                                            ; preds = %.lr.ph
  %i.du = add nuw i64 %.sroa.02.0.i9.i.i373, 1    ; 2 uses
  %exitcond.not.i10.i.i = icmp eq i64 %i.du, %umax.i.i.i
  br i1 %exitcond.not.i10.i.i, label %.preheader44.i.i.preheader, label %.lr.ph

.preheader44.i.i.preheader:                       ; preds = %bb.ah, %bb.ag
  %i.dv = icmp ult i64 %i.dg, %.sroa.212.0.i
  br i1 %i.dv, label %.lr.ph375, label %.preheader44.i.i.preheader._crit_edge

.preheader44.i.i:                                 ; preds = %bb.ai
  %i.dw = icmp ult i64 %i.dg, %i.dy
  br i1 %i.dw, label %.lr.ph375, label %.preheader44.i.i.preheader._crit_edge

.preheader44.i.i.preheader._crit_edge:            ; preds = %.preheader44.i.i.preheader, %.preheader44.i.i
  %i.dx = add i64 %i.di, %.sroa.1367.0.copyload.i ; 2 uses
  br label %.loopexit49.i.i

.lr.ph375:                                        ; preds = %.preheader44.i.i.preheader, %.preheader44.i.i
  %.sroa.2.0.i.i.i374 = phi i64 [ %i.dy, %.preheader44.i.i ], [ %.sroa.212.0.i, %.preheader44.i.i.preheader ]
  %i.dy = add i64 %.sroa.2.0.i.i.i374, -1         ; 6 uses
  %i.dz = icmp ult i64 %i.dy, %.sroa.1367.0.copyload.i
  br i1 %i.dz, label %bb.ai, label %.invoke.i

bb.ai:                                            ; preds = %.lr.ph375
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.1266.0.copyload.i, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !33
  %i.ec = getelementptr i8, ptr %i.dr, i64 %i.dy
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !33
  %.not17.i.i.i = icmp eq i8 %i.eb, %i.ed
  br i1 %.not17.i.i.i, label %.preheader44.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = add i64 %i.di, %.sroa.1016.sroa.0.0.insert.insert.i
  br label %.sink.split.i.i.i

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %.sroa.02.0.i9.i.i373 = phi i64 [ %i.du, %bb.ah ], [ %i.dq, %bb.ag ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.1266.0.copyload.i, i64 %.sroa.02.0.i9.i.i373
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !33
  %i.eh = getelementptr i8, ptr %i.dr, i64 %.sroa.02.0.i9.i.i373
  %i.ei = load i8, ptr %i.eh, align 1, !noalias !33
  %.not18.i.i.i = icmp eq i8 %i.eg, %i.ei
  br i1 %.not18.i.i.i, label %bb.ah, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.di, %invariant.op
  %i.ej = add i64 %.reass.i.reass.reass, %.sroa.02.0.i9.i.i373
  br label %.sink.split.i.i.i

bb.al:                                            ; preds = %bb.ab
  br i1 %i.cr, label %.lr.ph.i15.i.preheader.i, label %.loopexit.i

.lr.ph.i15.i.preheader.i:                         ; preds = %bb.al
  %umax.i18.i.i = call i64 @llvm.umax.i64(i64 %.sroa.212.0.i, i64 %.sroa.1367.0.copyload.i)
  %i.ek = add i64 %.sroa.212.0.i, -1              ; 2 uses
  %.first_iter.i.i = icmp ult i64 %i.ek, %.sroa.1367.0.copyload.i
  %.first_iter.i.fr.i = freeze i1 %.first_iter.i.i
  %.sroa.1016.sroa.0.0.insert.ext27.i = zext i8 %.sroa.1016.sroa.0.0.i to i64
  %.sroa.1016.sroa.0.0.insert.insert29.i = or disjoint i64 %.sroa.1016.sroa.6.0.insert.insert.i, %.sroa.1016.sroa.0.0.insert.ext27.i
  %exitcond.not.i20.i.i377.not = icmp ult i64 %.sroa.212.0.i, %.sroa.1367.0.copyload.i
  %invariant.op499 = sub i64 1, %.sroa.212.0.i
  %.not41.i.us.i380 = icmp eq i64 %.sroa.212.0.i, 0 ; 2 uses
  br label %.lr.ph.i15.i.i

.lr.ph.i15.i.i:                                   ; preds = %bb.ao, %.lr.ph.i15.i.preheader.i
  %i.el = phi i64 [ %i.ev, %bb.ao ], [ %i.cq, %.lr.ph.i15.i.preheader.i ]
  %i.em = phi i64 [ %.sink.i.i, %bb.ao ], [ %.sroa.19.0.i, %.lr.ph.i15.i.preheader.i ] ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !noalias !34
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.er, %.sroa.559.0.copyload.i
  %.not.i16.i.i = icmp eq i64 %i.es, 0
  br i1 %.not.i16.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.i15.i.i
  %i.et = add i64 %i.em, %.sroa.1367.0.copyload.i
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i15.i.i
  %i.eu = getelementptr i8, ptr %.sroa.1064.0.copyload.i, i64 %i.em ; 2 uses
  br i1 %exitcond.not.i20.i.i377.not, label %.lr.ph379, label %.preheader.preheader.i.i

bb.ao:                                            ; preds = %bb.aq, %.split136.us.i, %bb.am
  %.sink.i.i = phi i64 [ %i.fk, %bb.aq ], [ %i.fd, %.split136.us.i ], [ %i.et, %bb.am ] ; 2 uses
  %i.ev = add i64 %.sink.i.i, %i.ap               ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %.sroa.1165.0.copyload.i
  br i1 %i.ew, label %.lr.ph.i15.i.i, label %.loopexit.i

bb.ap:                                            ; preds = %.lr.ph379
  %i.ex = add nuw i64 %.sroa.02.0.i19.i.i378, 1   ; 2 uses
  %exitcond.not.i20.i.i = icmp eq i64 %i.ex, %umax.i18.i.i
  br i1 %exitcond.not.i20.i.i, label %.preheader.preheader.i.i, label %.lr.ph379

.preheader.preheader.i.i:                         ; preds = %bb.ap, %bb.an
  br i1 %.first_iter.i.fr.i, label %.preheader.i26.us.i.preheader, label %.preheader.preheader.i.split.i

.preheader.i26.us.i.preheader:                    ; preds = %.preheader.preheader.i.i
  br i1 %.not41.i.us.i380, label %.split.us.i, label %.lr.ph382

.preheader.i26.us.i:                              ; preds = %.lr.ph382
  %.not41.i.us.i = icmp eq i64 %i.ey, 0
  br i1 %.not41.i.us.i, label %.split.us.i, label %.lr.ph382

.lr.ph382:                                        ; preds = %.preheader.i26.us.i.preheader, %.preheader.i26.us.i
  %.sroa.2.0.i22.i.us.i381 = phi i64 [ %i.ey, %.preheader.i26.us.i ], [ %.sroa.212.0.i, %.preheader.i26.us.i.preheader ]
  %i.ey = add i64 %.sroa.2.0.i22.i.us.i381, -1    ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.1266.0.copyload.i, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !34
  %i.fb = getelementptr i8, ptr %i.eu, i64 %i.ey
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !34
  %.not17.i23.i.us.i = icmp eq i8 %i.fa, %i.fc
  br i1 %.not17.i23.i.us.i, label %.preheader.i26.us.i, label %.split136.us.i

.split136.us.i:                                   ; preds = %.lr.ph382
  %i.fd = add i64 %.sroa.1016.sroa.0.0.insert.insert29.i, %i.em
  br label %bb.ao

.preheader.preheader.i.split.i:                   ; preds = %.preheader.preheader.i.i
  br i1 %.not41.i.us.i380, label %.split.us.i, label %.invoke.i

.split.us.i:                                      ; preds = %.preheader.i26.us.i.preheader, %.preheader.i26.us.i, %.preheader.preheader.i.split.i
  %i.fe = add i64 %i.em, %.sroa.1367.0.copyload.i ; 2 uses
  br label %.loopexit49.i.i

.invoke.i:                                        ; preds = %.preheader.preheader.i.split.i, %.lr.ph375
  %i.ff = phi i64 [ %i.dy, %.lr.ph375 ], [ %i.ek, %.preheader.preheader.i.split.i ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 %i.ff, i64 %.sroa.1367.0.copyload.i, ptr nonnull align 8 @3) #24
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.lr.ph379:                                        ; preds = %bb.an, %bb.ap
  %.sroa.02.0.i19.i.i378 = phi i64 [ %i.ex, %bb.ap ], [ %.sroa.212.0.i, %bb.an ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.1266.0.copyload.i, i64 %.sroa.02.0.i19.i.i378
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !34
  %i.fi = getelementptr i8, ptr %i.eu, i64 %.sroa.02.0.i19.i.i378
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !34
  %.not18.i21.i.i = icmp eq i8 %i.fh, %i.fj
  br i1 %.not18.i21.i.i, label %bb.ap, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph379
  %.reass259.i.reass.reass = add i64 %i.em, %invariant.op499
  %i.fk = add i64 %.reass259.i.reass.reass, %.sroa.02.0.i19.i.i378
  br label %bb.ao

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %.loopexit49.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i, %.loopexit.i, %.invoke.i, %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfrMbUeuvm3s_18build_script_build.exit.i
  %lpad.loopexit.split-lp399 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build(ptr align 8 %i.l) #19
          to label %.body49 unwind label %bb.aw, !noalias !30

.loopexit.i:                                      ; preds = %bb.al, %bb.ae, %.noexc27.i, %bb.aa, %bb.w, %.preheader47.i.i, %bb.ad, %.sink.split.i.i.i, %bb.ao
  %i.fl = getelementptr inbounds nuw i8, ptr @20, i64 %.sroa.04.0.i
  %gepdiff90.i = sub nuw nsw i64 89, %.sroa.04.0.i ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3TflR1YWh2n_9addr2line(ptr nonnull align 8 %i.l, i64 %gepdiff90.i)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !30

.noexc31.i:                                       ; preds = %.loopexit.i
  %.not.i30.i = icmp eq i64 %.sroa.04.0.i, 89
  br i1 %.not.i30.i, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %.noexc31.i
  %i.fm = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fn = load ptr, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !30
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fo, ptr nonnull readonly align 1 %i.fl, i64 %gepdiff90.i, i1 false), !noalias !30
  br label %bb.ax

.loopexit49.i.i:                                  ; preds = %bb.v, %.split.us.i, %.preheader44.i.i.preheader._crit_edge, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i, %bb.w
  %.sroa.212.2.i = phi i64 [ %i.de, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %.sroa.212.0.i, %.split.us.i ], [ %.sroa.1165.0.copyload.i, %bb.w ], [ %.sroa.212.0.i, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.212.1.i, %bb.v ]
  %.sroa.19.1.i = phi i64 [ %.sroa.19.0.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %i.fe, %.split.us.i ], [ %.sroa.19.0.i, %bb.w ], [ %i.dx, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.19.0.i, %bb.v ]
  %.sroa.2921.2.i = phi i64 [ %.sroa.2921.0.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ -1, %.split.us.i ], [ %.sroa.2921.0.i, %bb.w ], [ 0, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.2921.0.i, %bb.v ]
  %.sroa.1016.sroa.0.1.i = phi i8 [ %.sroa.1016.sroa.0.0.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %.sroa.1016.sroa.0.0.i, %.split.us.i ], [ %i.au, %bb.w ], [ %.sroa.1016.sroa.0.0.i, %.preheader44.i.i.preheader._crit_edge ], [ %i.au, %bb.v ]
  %.sroa.269.1.i = phi i64 [ %i.dd, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %i.em, %.split.us.i ], [ %.sroa.1165.0.copyload.i, %bb.w ], [ %i.di, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.212.1.i, %bb.v ] ; 2 uses
  %.sroa.770.1.i = phi i64 [ %i.de, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %i.fe, %.split.us.i ], [ %.sroa.1165.0.copyload.i, %bb.w ], [ %i.dx, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.212.1.i, %bb.v ]
  %i.fp = getelementptr inbounds nuw i8, ptr @20, i64 %.sroa.04.0.i
  %gepdiff.i = sub nuw nsw i64 %.sroa.269.1.i, %.sroa.04.0.i ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3TflR1YWh2n_9addr2line(ptr nonnull align 8 %i.l, i64 %gepdiff.i)
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !30

.noexc33.i:                                       ; preds = %.loopexit49.i.i
  %.not.i32.i = icmp eq i64 %.sroa.269.1.i, %.sroa.04.0.i
  br i1 %.not.i32.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc33.i
  %i.fq = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fr = load ptr, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !30
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fs, ptr nonnull readonly align 1 %i.fp, i64 %gepdiff.i, i1 false), !noalias !30
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.noexc33.i
  %i.ft = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fu = add i64 %i.ft, %gepdiff.i
  store i64 %i.fu, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3TflR1YWh2n_9addr2line(ptr nonnull align 8 %i.l, i64 %.val36)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !30

.noexc36.i:                                       ; preds = %bb.at
  br i1 %.not.i35.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.noexc36.i
  %i.fv = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fw = load ptr, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !30
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr readonly align 1 %.val35, i64 %.val36, i1 false), !noalias !30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.noexc36.i
  %i.fy = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fz = add i64 %i.fy, %.val36
  store i64 %i.fz, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  br label %bb.j

bb.aw:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !30
  unreachable

.thread125:                                       ; preds = %.invoke, %bb.h, %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i94, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build.exit.i, %bb.dd, %bb.dn, %bb.dm, %bb.de, %bb.dl, %bb.dk, %bb.cv, %bb.dj, %bb.di, %bb.bk, %bb.dh, %_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build.exit.i, %bb.dg, %.loopexit.i61, %bb.df
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body49

bb.ax:                                            ; preds = %.noexc31.i, %bb.ar
  %i.gb = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.gc = add i64 %i.gb, %gepdiff90.i
  store i64 %i.gc, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val37 = load ptr, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val38 = load i64, ptr %i.ge, align 8
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.s, ptr %.val37, i64 %.val38, ptr nonnull @22, i64 10)
          to label %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsfrMbUeuvm3s_18build_script_build.exit unwind label %bb.eu

_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsfrMbUeuvm3s_18build_script_build.exit: ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i = load ptr, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val2.i = load i64, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val3.i = load ptr, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val4.i = load i64, ptr %i.gi, align 8
  %i.gj = invoke ptr @_RNvNvNtCs5Xr050g3D4S_3std2fs5write5inner(ptr %.val.i, i64 %.val2.i, ptr %.val3.i, i64 %.val4.i)
          to label %bb.az unwind label %bb.ay     ; 2 uses

bb.ay:                                            ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsfrMbUeuvm3s_18build_script_build.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.r) #19
          to label %.body.i unwind label %bb.bf

bb.az:                                            ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsfrMbUeuvm3s_18build_script_build.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.r)
          to label %.body.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i.i: ; preds = %bb.az
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit.i unwind label %bb.bc

.body.i:                                          ; preds = %bb.bc, %bb.ba, %bb.ay
  %.pn.i = phi { ptr, i32 } [ %i.gk, %bb.ay ], [ %i.gn, %bb.bc ], [ %i.gl, %bb.ba ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.s) #19
          to label %.body49 unwind label %bb.bf

bb.bc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build.exit.i unwind label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.s)
          to label %.body49 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.s)
          to label %_RINvNtCs5Xr050g3D4S_3std2fs5writeNtNtB4_4path7PathBufNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit unwind label %.thread125

bb.bf:                                            ; preds = %.body.i, %bb.ay
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs5Xr050g3D4S_3std2fs5writeNtNtB4_4path7PathBufNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i18 = icmp eq ptr %i.gj, null
  br i1 %.not.i18, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCs5Xr050g3D4S_3std2fs5writeNtNtB4_4path7PathBufNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit
  store ptr %i.gj, ptr %i.m, align 8
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr nonnull @53, i64 43, ptr nonnull %i.m, ptr nonnull align 8 @54, ptr nonnull align 8 @23) #25
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.m) #19
          to label %.body49 unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bk:                                            ; preds = %_RINvNtCs5Xr050g3D4S_3std2fs5writeNtNtB4_4path7PathBufNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtNtNtCs5Xr050g3D4S_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull @12, i64 5)
          to label %.noexc62 unwind label %.thread125

.noexc62:                                         ; preds = %bb.bk
  %i.gt = load i64, ptr %i.i, align 8, !noalias !35 ; 2 uses
  %.not.i.i56 = icmp eq i64 %i.gt, -1
  br i1 %.not.i.i56, label %.thread129, label %bb.bl

bb.bl:                                            ; preds = %.noexc62
  %.sroa.4.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.226.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx23.i, i64 16, i1 false)
  store i64 %i.gt, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i.i = load ptr, ptr %.sroa.226.0..sroa_idx.i, align 8, !noalias !36
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i = load i64, ptr %i.gu, align 8, !noalias !36
  invoke void @_RNvMs_NtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6commonNtB4_7Command3new(ptr nonnull sret([200 x i8]) align 8 %i.b, ptr %.val.i.i, i64 %.val1.i.i)
          to label %bb.bn unwind label %bb.bm, !noalias !36

bb.bm:                                            ; preds = %bb.bl
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.e) #19
          to label %.body49 unwind label %bb.bq, !noalias !36

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.f, ptr noundef nonnull align 8 dereferenceable(200) %i.b, i64 200, i1 false)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.e)
          to label %_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build.exit.i unwind label %bb.bo, !noalias !36

bb.bo:                                            ; preds = %bb.bn
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.e)
          to label %.body49 unwind label %bb.bp, !noalias !36

bb.bp:                                            ; preds = %bb.bo
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !36
  unreachable

bb.bq:                                            ; preds = %bb.bm
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !36
  unreachable

_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.e)
          to label %.noexc66 unwind label %.thread125, !noalias !36

.noexc66:                                         ; preds = %_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.f, ptr nonnull @13, i64 9)
          to label %_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3argReECsfrMbUeuvm3s_18build_script_build.exit.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bw, %_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3argReECsfrMbUeuvm3s_18build_script_build.exit.i, %.noexc66
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std7process7CommandECsfrMbUeuvm3s_18build_script_build(ptr align 8 %i.f) #19
          to label %.body49 unwind label %bb.cu

_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3argReECsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %.noexc66
  invoke void @_RNvMsi_NtCs5Xr050g3D4S_3std7processNtB5_7Command6output(ptr nonnull sret([56 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.bs unwind label %bb.br

bb.bs:                                            ; preds = %_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3argReECsfrMbUeuvm3s_18build_script_build.exit.i
  %i.ha = load i64, ptr %i.g, align 8, !noalias !37 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, -1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.hb, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %.val.i.i.i.i = load ptr, ptr %i.hc, align 8, !noalias !37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.hd = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.he = and i64 %i.hd, 3
  switch i64 %i.he, label %default.unreachable [
    i64 2, label %bb.cv
    i64 3, label %bb.bu
    i64 0, label %bb.cv
    i64 1, label %bb.bw
  ]

default.unreachable:                              ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bt
  %i.hf = icmp uge ptr %.val.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.hg = and i64 %i.hd, 1095216660480
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.hg, 1095216660480
  %.not.i.i.i.i.i.i.i = or i1 %i.hf, %.not3.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bv, label %bb.cv

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @_RNvNvNtCsf3Ta7LF998c_4core4hint21unreachable_unchecked18precondition_checkCsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 @10) #22, !noalias !39
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.hh = getelementptr i8, ptr %.val.i.i.i.i, i64 -1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.hh, ptr %i.hi, align 8, !alias.scope !38, !noalias !37
  store i8 3, ptr %i.a, align 8, !alias.scope !38, !noalias !37
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.hi)
          to label %bb.cv unwind label %bb.br, !noalias !37

bb.bx:                                            ; preds = %bb.bs
  %.sroa.234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.234.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.hc, i64 48, i1 false)
  store i64 %i.ha, ptr %i.h, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std7process7CommandECsfrMbUeuvm3s_18build_script_build(ptr align 8 %i.f)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.ce, %bb.cc, %bb.bz, %bb.bx
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std7process6OutputECsfrMbUeuvm3s_18build_script_build(ptr align 8 %i.h) #19
          to label %.body49 unwind label %bb.cu

bb.bz:                                            ; preds = %bb.bx
  %.val.i59 = load ptr, ptr %.sroa.234.0..sroa_idx.i, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val15.i = load i64, ptr %i.hk, align 8
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %.val.i59, i64 %.val15.i)
          to label %bb.ca unwind label %bb.by

bb.ca:                                            ; preds = %bb.bz
  %i.hl = load i64, ptr %i.d, align 8
  %i.hm = trunc nuw i64 %i.hl to i1
  br i1 %i.hm, label %.invoke, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not.i19.i = icmp eq ptr %i.ho, null
  br i1 %.not.i19.i, label %.invoke, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hq = load i64, ptr %i.hp, align 8            ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !40
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.hq, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !40
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ho, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !40
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.hq, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !40
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !40
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.hq, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !40
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 46, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !40
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 46, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !40
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 1, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !40
  %i.hr = invoke fastcc { ptr, i64 } @_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build(ptr align 8 %i.c)
          to label %bb.cd unwind label %bb.by     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.hs = extractvalue { ptr, i64 } %i.hr, 0      ; 3 uses
  %i.ht = extractvalue { ptr, i64 } %i.hr, 1
  %.not.i.i.i = icmp ne ptr %i.hs, null
  %i.hu = icmp eq i64 %i.ht, 7
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.hu, i1 false
  br i1 %or.cond.i.i, label %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionReENtNtB7_3cmp9PartialEq2neCsfrMbUeuvm3s_18build_script_build.exit.i, label %.invoke

_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionReENtNtB7_3cmp9PartialEq2neCsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %bb.cd
  %i.hv = load i32, ptr %i.hs, align 1
  %i.hw = xor i32 %i.hv, 1953723762
  %i.hx = getelementptr i8, ptr %i.hs, i64 3
  %i.hy = load i32, ptr %i.hx, align 1
  %i.hz = xor i32 %i.hy, 824206196
  %i.ia = or i32 %i.hw, %i.hz
  %i.ib = icmp ne i32 %i.ia, 0
  %i.ic = zext i1 %i.ib to i32
  %.not.i60 = icmp eq i32 %i.ic, 0
  br i1 %.not.i60, label %bb.ce, label %.invoke

bb.ce:                                            ; preds = %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionReENtNtB7_3cmp9PartialEq2neCsfrMbUeuvm3s_18build_script_build.exit.i
  %i.id = invoke fastcc { ptr, i64 } @_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build(ptr align 8 %i.c)
          to label %bb.cf unwind label %bb.by     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %i.ie = extractvalue { ptr, i64 } %i.id, 0      ; 4 uses
  %i.if = extractvalue { ptr, i64 } %i.id, 1      ; 2 uses
  %.not.i20.i = icmp eq ptr %i.ie, null
  br i1 %.not.i20.i, label %.invoke, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  switch i64 %i.if, label %thread-pre-split.i.i.i.i [
    i64 0, label %.loopexit.i61
    i64 1, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.ig = load i8, ptr %i.ie, align 1             ; 2 uses
  switch i8 %i.ig, label %bb.ci [
    i8 43, label %.loopexit.i61
    i8 45, label %.loopexit.i61
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.cg
  %.pr.i.i.i.i = load i8, ptr %i.ie, align 1
  br label %bb.ci

bb.ci:                                            ; preds = %thread-pre-split.i.i.i.i, %bb.ch
  %i.ih = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.ig, %bb.ch ]
  %cond.i.i.i.i = icmp eq i8 %i.ih, 43            ; 2 uses
  %i.ii = sext i1 %cond.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i = add i64 %i.if, %i.ii      ; 10 uses
  %.sroa.0.0.idx.i.i.i.i = zext i1 %cond.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sroa.0.0.idx.i.i.i.i ; 9 uses
  %i.ij = icmp ult i64 %.sroa.15.0.i.i.i.i, 9
  br i1 %i.ij, label %.preheader.i.i.i.i, label %.preheader60.i.i.i.i.preheader

.preheader.i.i.i.i:                               ; preds = %bb.ci
  %.not5668.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i, 0
  br i1 %.not5668.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader60.i.i.i.i:                             ; preds = %bb.cl
  %.not55.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not55.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader60.i.i.i.i.preheader

.loopexit.i.i.i.i:                                ; preds = %.preheader60.i.i.i.i, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %.preheader.i.i.i.i
  %.sroa.045.1.i.i.i.i = phi i32 [ %i.kz, %bb.ct ], [ 0, %.preheader.i.i.i.i ], [ %i.jb, %bb.cm ], [ %i.jj, %bb.cn ], [ %i.jq, %bb.co ], [ %i.jx, %bb.cp ], [ %i.ke, %bb.cq ], [ %i.kl, %bb.cr ], [ %i.ks, %bb.cs ], [ %i.ix, %.preheader60.i.i.i.i ]
  %i.ik = zext i32 %.sroa.045.1.i.i.i.i to i64
  %i.il = shl nuw i64 %i.ik, 32
  br label %.loopexit.i61

.preheader60.i.i.i.i.preheader:                   ; preds = %bb.ci, %.preheader60.i.i.i.i
  %.sroa.0.1.i.i.i.i387 = phi ptr [ %i.im, %.preheader60.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.ci ] ; 2 uses
  %.sroa.15.1.i.i.i.i386 = phi i64 [ %i.in, %.preheader60.i.i.i.i ], [ %.sroa.15.0.i.i.i.i, %bb.ci ]
  %.sroa.045.0.i.i.i.i385 = phi i32 [ %i.ix, %.preheader60.i.i.i.i ], [ 0, %bb.ci ]
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i387, i64 1
  %i.in = add i64 %.sroa.15.1.i.i.i.i386, -1      ; 2 uses
  %i.io = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i.i.i385, i32 10) ; 2 uses
  %i.ip = extractvalue { i32, i1 } %i.io, 0       ; 2 uses
  %i.iq = extractvalue { i32, i1 } %i.io, 1
  %i.ir = load i8, ptr %.sroa.0.1.i.i.i.i387, align 1 ; 2 uses
  br i1 %i.iq, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.preheader60.i.i.i.i.preheader
  %i.is = zext i8 %i.ir to i32
  %i.it = add nsw i32 %i.is, -48                  ; 2 uses
  %i.iu = icmp ult i32 %i.it, 10
  br i1 %i.iu, label %bb.cl, label %.loopexit.i61

bb.ck:                                            ; preds = %.preheader60.i.i.i.i.preheader
  %i.iv = add i8 %i.ir, -48
  %i.iw = icmp ult i8 %i.iv, 10
  %spec.select.i.i.i.i = select i1 %i.iw, i64 513, i64 257
  br label %.loopexit.i61

bb.cl:                                            ; preds = %bb.cj
  %i.ix = add i32 %i.it, %i.ip                    ; 3 uses
  %i.iy = icmp ult i32 %i.ix, %i.ip
  br i1 %i.iy, label %.loopexit.i61, label %.preheader60.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.iz = load i8, ptr %.sroa.0.0.i.i.i.i, align 1
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add nsw i32 %i.ja, -48                  ; 3 uses
  %i.jc = icmp ult i32 %i.jb, 10
  br i1 %i.jc, label %bb.cm, label %.loopexit.i61

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i
  %.not56.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i, 1
  br i1 %.not56.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.cm
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = zext i8 %i.je to i32
  %i.jg = add nsw i32 %i.jf, -48                  ; 2 uses
  %i.jh = icmp ult i32 %i.jg, 10
  br i1 %i.jh, label %bb.cn, label %.loopexit.i61

bb.cn:                                            ; preds = %.lr.ph.i.i.i.i.1
  %i.ji = mul nuw nsw i32 %i.jb, 10
  %i.jj = add nuw nsw i32 %i.jg, %i.ji            ; 2 uses
  %.not56.i.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i.i, 2
  br i1 %.not56.i.i.i.i.1, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %bb.cn
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 2
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = zext i8 %i.jl to i32
  %i.jn = add nsw i32 %i.jm, -48                  ; 2 uses
  %i.jo = icmp ult i32 %i.jn, 10
  br i1 %i.jo, label %bb.co, label %.loopexit.i61

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.2
  %i.jp = mul nuw nsw i32 %i.jj, 10
  %i.jq = add nuw nsw i32 %i.jn, %i.jp            ; 2 uses
  %.not56.i.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i.i, 3
  br i1 %.not56.i.i.i.i.2, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %bb.co
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 3
end_hunk_0
begin_hunk_1_@_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB17_EE10dying_nextCsfrMbUeuvm3s_18build_script_build:bb.a
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1J_EE10take_frontCsfrMbUeuvm3s_18build_script_build.exit.thread8.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.013.i, %_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1J_EE10take_frontCsfrMbUeuvm3s_18build_script_build.exit.thread8.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 544, i64 640
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.0.lcssa.i.i, i64 %..i3.i.i, i64 8) #18, !noalias !67
  br label %_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit

_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit: ; preds = %bb.b, %_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1J_EE10take_frontCsfrMbUeuvm3s_18build_script_build.exit.i, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = load i64, ptr %1, align 8, !noalias !68
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1J_EE10init_frontCsfrMbUeuvm3s_18build_script_build.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !68 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %.not.i.i1, label %bb.f, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.e
  %.sroa.28.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !noalias !69
  %.sroa.39.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.39.0.copyload.i.pre.i = load i64, ptr %.sroa.39.0..sroa_idx.i.phi.trans.insert.i, align 8, !noalias !69
  br label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !68 ; 5 uses
  %.sroa.012.015.i.i = load ptr, ptr %i.al, align 8, !noalias !68 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.loopexit.i, label %.lr.ph.i.i3.preheader

.lr.ph.i.i3.preheader:                            ; preds = %bb.f
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i3.prol.loopexit, label %.lr.ph.i.i3.prol

.lr.ph.i.i3.prol:                                 ; preds = %.lr.ph.i.i3.preheader, %.lr.ph.i.i3.prol
  %.sroa.012.017.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i3.prol ], [ %.sroa.012.015.i.i, %.lr.ph.i.i3.preheader ]
  %.sroa.010.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i3.prol ], [ %i.an, %.lr.ph.i.i3.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i3.prol ], [ 0, %.lr.ph.i.i3.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.prol, i64 544
  %i.aq = add i64 %.sroa.010.016.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !68 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i3.prol.loopexit, label %.lr.ph.i.i3.prol, !llvm.loop !52

.lr.ph.i.i3.prol.loopexit:                        ; preds = %.lr.ph.i.i3.prol, %.lr.ph.i.i3.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i3.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i3.prol ]
  %.sroa.012.017.i.i.unr = phi ptr [ %.sroa.012.015.i.i, %.lr.ph.i.i3.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i3.prol ]
  %.sroa.010.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i3.preheader ], [ %i.aq, %.lr.ph.i.i3.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %.loopexit.i, label %.lr.ph.i.i3

.lr.ph.i.i3:                                      ; preds = %.lr.ph.i.i3.prol.loopexit, %.lr.ph.i.i3
  %.sroa.012.017.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i3 ], [ %.sroa.012.017.i.i.unr, %.lr.ph.i.i3.prol.loopexit ]
  %.sroa.010.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i3 ], [ %.sroa.010.016.i.i.unr, %.lr.ph.i.i3.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i, i64 544
  %.sroa.012.0.i.i = load ptr, ptr %i.as, align 8, !noalias !68
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 544
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !68
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 544
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !68
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 544
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !68
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 544
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !68
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 544
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !68
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 544
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !68
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 544
  %i.ba = add i64 %.sroa.010.016.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !68 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.loopexit.i, label %.lr.ph.i.i3

.loopexit.i:                                      ; preds = %.lr.ph.i.i3.prol.loopexit, %.lr.ph.i.i3, %bb.f
  %.sroa.012.0.lcssa.i.i = phi ptr [ %.sroa.012.015.i.i, %bb.f ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i3.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i3 ] ; 3 uses
  store ptr %.sroa.012.0.lcssa.i.i, ptr %i.aj, align 8, !noalias !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !68
  %.not14.i.i = icmp eq ptr %.sroa.012.0.lcssa.i.i, null
  br i1 %.not14.i.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %.loopexit.i
  tail call fastcc void @_RNvNvNtCsf3Ta7LF998c_4core4hint21unreachable_unchecked18precondition_checkCsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 @55) #22, !noalias !68
  unreachable

.thread.i:                                        ; preds = %.loopexit.i, %..thread_crit_edge.i
  %.sroa.39.0.copyload.i.i = phi i64 [ %.sroa.39.0.copyload.i.pre.i, %..thread_crit_edge.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.sroa.28.0.copyload.i.i = phi i64 [ %.sroa.28.0.copyload.i.pre.i, %..thread_crit_edge.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %..thread_crit_edge.i ], [ %.sroa.012.0.lcssa.i.i, %.loopexit.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 538
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !70
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.39.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.i
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %.sroa.07.0.copyload.i.i, %.thread.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.bx, %bb.i ], [ %.sroa.28.0.copyload.i.i, %.thread.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !71 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bh = zext i16 %i.bz to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.thread.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.39.0.copyload.i.i, %.thread.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.28.0.copyload.i.i, %.thread.i ], [ %i.bx, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %.thread.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.thread7.i.i.i, label %bb.h

_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.thread7.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 552
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter49 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.sroa.019.0.in.i.i.i.i.i.prol = phi ptr [ %i.bm, %.prol.preheader ], [ %i.bl, %bb.h ]
  %.sroa.021.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.021.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.prol.preheader ], [ 0, %bb.h ]
  %.sroa.021.0.i.i.i.i.i.prol = add i64 %.sroa.021.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.019.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.019.0.in.i.i.i.i.i.prol, align 8, !noalias !72 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.sroa.019.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi ptr [ %i.bl, %bb.h ], [ %i.bm, %.prol.preheader ]
  %.sroa.021.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.021.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bn = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bn, label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.019.0.in.i.i.i.i.i = phi ptr [ %i.bw, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.021.0.in.i.i.i.i.i = phi i64 [ %.sroa.021.0.i.i.i.i.i.7, %.new ], [ %.sroa.021.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.i.i.i.i.i = load ptr, ptr %.sroa.019.0.in.i.i.i.i.i, align 8, !noalias !72
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.i.i.i.i, i64 544
  %.sroa.019.0.i.i.i.i.i.1 = load ptr, ptr %i.bo, align 8, !noalias !72
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.i.i.i.i.1, i64 544
  %.sroa.019.0.i.i.i.i.i.2 = load ptr, ptr %i.bp, align 8, !noalias !72
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.i.i.i.i.2, i64 544
  %.sroa.019.0.i.i.i.i.i.3 = load ptr, ptr %i.bq, align 8, !noalias !72
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.i.i.i.i.3, i64 544
  %.sroa.019.0.i.i.i.i.i.4 = load ptr, ptr %i.br, align 8, !noalias !72
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.i.i.i.i.4, i64 544
  %.sroa.019.0.i.i.i.i.i.5 = load ptr, ptr %i.bs, align 8, !noalias !72
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.i.i.i.i.5, i64 544
  %.sroa.019.0.i.i.i.i.i.6 = load ptr, ptr %i.bt, align 8, !noalias !72
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.i.i.i.i.6, i64 544
  %.sroa.021.0.i.i.i.i.i.7 = add i64 %.sroa.021.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.019.0.i.i.i.i.i.7 = load ptr, ptr %i.bu, align 8, !noalias !72 ; 2 uses
  %i.bv = icmp eq i64 %.sroa.021.0.i.i.i.i.i.7, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.i.i.i.i.7, i64 544
  br i1 %i.bv, label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.i.i.i, label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bx = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 536
  %i.bz = load i16, ptr %i.by, align 8, !noalias !71 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.039.i.i.i.i, i64 %..i.i.i.i.i, i64 8) #18, !noalias !73
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 538
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !70
  %i.cc = icmp ult i16 %i.bz, %i.cb
  br i1 %i.cc, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.039.i.i.i.i, i64 %..i34.i.i.i.i, i64 8) #18, !noalias !73
  br label %bb.j

_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.i.i.i: ; preds = %.new, %.prol.loopexit
  %.sroa.019.0.i.i.i.i.i.lcssa = phi ptr [ %.sroa.019.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.019.0.i.i.i.i.i.7, %.new ] ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %.sroa.019.0.i.i.i.i.i.lcssa, null
  br i1 %.not.i.i.i2, label %bb.j, label %_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit

bb.j:                                             ; preds = %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.i.i.i, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr nonnull align 8 @11) #24
          to label %.noexc.i.i unwind label %bb.k, !noalias !74

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1J_EE10init_frontCsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr nonnull align 8 @1) #24, !noalias !68
  unreachable

_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit: ; preds = %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.thread7.i.i.i, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.i.i.i
  %.sroa.0.018.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.thread7.i.i.i ], [ %.sroa.019.0.i.i.i.i.i.lcssa, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.i.i.i ]
  %.sroa.5.016.i.i.i = phi i64 [ %i.bj, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.thread7.i.i.i ], [ 0, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit.i.i.i ]
  %.sroa.39.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.018.i.i.i, ptr %i.aj, align 8, !noalias !69
  store i64 0, ptr %i.al, align 8, !noalias !69
  store i64 %.sroa.5.016.i.i.i, ptr %.sroa.39.0..sroa_idx.i.i, align 8, !noalias !69
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit, %_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build.exit
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvNtCsf3Ta7LF998c_4core4hint21unreachable_unchecked18precondition_checkCsfrMbUeuvm3s_18build_script_build(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_nounwind_fmt(ptr nonnull @56, ptr nonnull inttoptr (i64 399 to ptr), i1 zeroext false, ptr align 8 %0) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtB6_5Debug3fmtCsfrMbUeuvm3s_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXs7_NtNtCs5Xr050g3D4S_3std3ffi6os_strNtB5_8OsStringNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build(ptr nofree nonnull align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCsfrMbUeuvm3s_18build_script_build.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val.i = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !noalias !77 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !noalias !77 ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.m = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.an, %bb.g ] ; 5 uses
  %i.n = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.aj, %bb.g ] ; 4 uses
  %i.o = load i64, ptr %i.e, align 8, !noalias !77
  %.not.i.i = icmp ugt i64 %i.m, %i.o
  br i1 %.not.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !noalias !77
  %i.q = sub nuw i64 %i.m, %i.n                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.s = load i8, ptr %i.l, align 8, !noalias !77 ; 2 uses
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %i.u = getelementptr i8, ptr %i.k, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !noalias !77 ; 2 uses
  %i.x = icmp ult i64 %i.q, 16
  br i1 %i.x, label %.preheader.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.m, %i.n
  br i1 %.not.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.e
  %.sroa.04.09.i.i.i = phi i64 [ %i.ab, %bb.e ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.04.09.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !noalias !77
  %i.aa = icmp eq i8 %i.z, %i.w
  br i1 %i.aa, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.q
  br i1 %exitcond.not.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i, label %.lr.ph.i.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i: ; preds = %bb.d
  %i.ac = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 %i.w, ptr %i.r, i64 %i.q), !noalias !77 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15_crit_edge.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread.loopexit19_crit_edge.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread.loopexit19_crit_edge.i.i: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i
  %.pre44.pre.i.i = load i64, ptr %i.g, align 8, !noalias !77
  br label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15_crit_edge.i.i: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i
  %i.af = extractvalue { i64, i64 } %i.ac, 1
  %.pre.i.i = load i64, ptr %i.f, align 8, !noalias !77
  %.pre43.i.i = load i8, ptr %i.l, align 8, !noalias !77 ; 2 uses
  %.pre46.i.i = zext i8 %.pre43.i.i to i64
  br label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15.i.i: ; preds = %.lr.ph.i.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre46.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15_crit_edge.i.i ], [ %i.t, %.lr.ph.i.i.i ] ; 4 uses
  %i.ag = phi i8 [ %.pre43.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15_crit_edge.i.i ], [ %i.s, %.lr.ph.i.i.i ]
  %i.ah = phi i64 [ %.pre.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15_crit_edge.i.i ], [ %i.n, %.lr.ph.i.i.i ]
  %.sroa.5.1.i18.i.i = phi i64 [ %i.af, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15_crit_edge.i.i ], [ %.sroa.04.09.i.i.i, %.lr.ph.i.i.i ]
  %i.ai = add i64 %i.ah, 1
  %i.aj = add i64 %i.ai, %.sroa.5.1.i18.i.i       ; 7 uses
  store i64 %i.aj, ptr %i.f, align 8, !noalias !77
  %.not11.i.i = icmp ult i64 %i.aj, %.pre-phi.i.i
  br i1 %.not11.i.i, label %bb.g, label %bb.f

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i: ; preds = %.preheader.i.i.i, %bb.e, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread.loopexit19_crit_edge.i.i
  %i.ak = phi i64 [ %i.m, %bb.e ], [ %.pre44.pre.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread.loopexit19_crit_edge.i.i ], [ %i.m, %.preheader.i.i.i ]
  store i64 %i.ak, ptr %i.f, align 8, !noalias !77
  br label %.loopexit.i

bb.f:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15.i.i
  %i.al = sub nuw i64 %i.aj, %.pre-phi.i.i        ; 2 uses
  %i.am = load i64, ptr %i.e, align 8, !noalias !77
  %.not12.i.i = icmp ugt i64 %i.aj, %i.am
  br i1 %.not12.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.j, %bb.f, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread15.i.i
  %i.an = load i64, ptr %i.g, align 8, !noalias !77 ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.aj
  br i1 %i.ao, label %.loopexit.i, label %bb.c

bb.h:                                             ; preds = %bb.f
  %i.ap = icmp ult i8 %i.ag, 5
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 0, i64 %.pre-phi.i.i, i64 4, ptr nonnull align 8 @57) #24, !noalias !77
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.d, align 8, !noalias !77
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.al
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ar, ptr nonnull %i.k, i64 %.pre-phi.i.i), !noalias !77
  %i.as = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.as, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsfrMbUeuvm3s_18build_script_build.exit.i, label %bb.g

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %bb.j
  %i.at = load i64, ptr %0, align 8               ; 2 uses
  %i.au = sub nuw i64 %i.al, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.at
  store i64 %i.aj, ptr %0, align 8
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCsfrMbUeuvm3s_18build_script_build.exit

.loopexit.i:                                      ; preds = %bb.g, %bb.c, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i, %bb.b
  %i.aw = load i8, ptr %i.a, align 1
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCsfrMbUeuvm3s_18build_script_build.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  store i8 1, ptr %i.a, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = trunc nuw i8 %i.az to i1
  %.pre.i2.i = load i64, ptr %0, align 8          ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.pre.i2.i
  %or.cond.not.i.i = select i1 %i.ba, i1 true, i1 %.not.i3.i
  br i1 %or.cond.not.i.i, label %._crit_edge.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCsfrMbUeuvm3s_18build_script_build.exit

._crit_edge.i.i:                                  ; preds = %bb.k
  %.val.i.i = load ptr, ptr %i.d, align 8
  %i.bb = sub nuw i64 %.pre2.i.i, %.pre.i2.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pre.i2.i
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCsfrMbUeuvm3s_18build_script_build.exit

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCsfrMbUeuvm3s_18build_script_build.exit: ; preds = %bb.a, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsfrMbUeuvm3s_18build_script_build.exit.i, %.loopexit.i, %bb.k, %._crit_edge.i.i
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ %i.au, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsfrMbUeuvm3s_18build_script_build.exit.i ], [ %i.bb, %._crit_edge.i.i ], [ undef, %bb.k ], [ undef, %.loopexit.i ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.av, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsfrMbUeuvm3s_18build_script_build.exit.i ], [ %i.bc, %._crit_edge.i.i ], [ null, %bb.k ], [ null, %.loopexit.i ]
  %i.bd = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.be = insertvalue { ptr, i64 } %i.bd, i64 %.sroa.4.0.i, 1
  ret { ptr, i64 } %i.be
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXsm_NtCs5Xr050g3D4S_3std3envNtB5_8VarErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsfrMbUeuvm3s_18build_script_build(ptr align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %i.c = call zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @60, i64 10, ptr nonnull %i.a, ptr nonnull align 8 @59)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @58, i64 10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr sret([24 x i8]) align 8, ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6commonNtB4_7Command3arg(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6commonNtB4_7Command3new(ptr sret([200 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3TflR1YWh2n_9addr2line(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64, i64, ptr align 8) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare ptr @_RNvNvNtCs5Xr050g3D4S_3std2fs5write5inner(ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtCs5Xr050g3D4S_3std2rt19lang_start_internal(ptr, ptr align 8, i64, ptr, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs5Xr050g3D4S_3std3env3var5inner(ptr sret([32 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCs5Xr050g3D4S_3std3sys3env4unix6getenv(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common13cstring_arrayNtB5_12CStringArrayNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCs5Xr050g3D4S_3std7processNtB5_7Command6output(ptr sret([56 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr, ptr) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr, i64, ptr, ptr align 8, ptr align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCsf3Ta7LF998c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgkdYJAOlkeX_5gimli(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8, ptr, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgkdYJAOlkeX_5gimli(ptr align 8, i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs7_NtNtCs5Xr050g3D4S_3std3ffi6os_strNtB5_8OsStringNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @close(i32) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs3TflR1YWh2n_9addr2line(ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr sret([104 x i8]) align 8, ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr, i64, i64, i64, ptr align 8) unnamed_addr #7

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #15 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCsfrMbUeuvm3s_18build_script_build4main, ptr %i.a, align 8
  %i.c = call i64 @_RNvNtCs5Xr050g3D4S_3std2rt19lang_start_internal(ptr nonnull %i.a, ptr nonnull align 8 @4, i64 %i.b, ptr %1, i8 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { inlinehint }
attributes #22 = { inlinehint nounwind }
attributes #23 = { noinline }
attributes #24 = { noinline noreturn }
attributes #25 = { noreturn }
attributes #26 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!5 = !{}
!6 = distinct !{!6, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfrMbUeuvm3s_18build_script_build"}
!7 = distinct !{!7, !6, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfrMbUeuvm3s_18build_script_build: argument 0"}
!8 = !{!7}
!9 = distinct !{null}
!10 = distinct !{!10, i1 true, !"_RINvMs3_NtCsgCecv3eZDcN_5alloc3stre7replaceReECsfrMbUeuvm3s_18build_script_build"}
!11 = distinct !{!11, !10, !"_RINvMs3_NtCsgCecv3eZDcN_5alloc3stre7replaceReECsfrMbUeuvm3s_18build_script_build: argument 0"}
!12 = distinct !{!12, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsfrMbUeuvm3s_18build_script_build"}
!13 = distinct !{!13, !12, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsfrMbUeuvm3s_18build_script_build: argument 0"}
!14 = distinct !{!14, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsfrMbUeuvm3s_18build_script_build"}
!15 = distinct !{!15, !14, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsfrMbUeuvm3s_18build_script_build: argument 0"}
!16 = distinct !{!16, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsfrMbUeuvm3s_18build_script_build"}
!17 = distinct !{!17, !16, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsfrMbUeuvm3s_18build_script_build: argument 0"}
!18 = distinct !{!18, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsfrMbUeuvm3s_18build_script_build"}
!19 = distinct !{!19, !18, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsfrMbUeuvm3s_18build_script_build: argument 0"}
!20 = distinct !{!20, i1 true, !"_RNvXsJ_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtB7_3ops9try_trait3Try6branchCsfrMbUeuvm3s_18build_script_build"}
!21 = distinct !{!21, !20, !"_RNvXsJ_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtB7_3ops9try_trait3Try6branchCsfrMbUeuvm3s_18build_script_build: argument 0"}
!22 = distinct !{!22, i1 true, !"_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build"}
!23 = distinct !{!23, !22, !"_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build: argument 0"}
!24 = distinct !{!24, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs5Xr050g3D4S_3std7process6OutputNtNtNtB4_2io5error5ErrorE2okCsfrMbUeuvm3s_18build_script_build"}
!25 = distinct !{!25, !24, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs5Xr050g3D4S_3std7process6OutputNtNtNtB4_2io5error5ErrorE2okCsfrMbUeuvm3s_18build_script_build: argument 0"}
!26 = distinct !{!26, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfrMbUeuvm3s_18build_script_build"}
!27 = distinct !{!27, !26, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfrMbUeuvm3s_18build_script_build: argument 0"}
!28 = distinct !{!28, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core3stre5splitcECsfrMbUeuvm3s_18build_script_build"}
!29 = distinct !{!29, !28, !"_RINvMNtCsf3Ta7LF998c_4core3stre5splitcECsfrMbUeuvm3s_18build_script_build: argument 0"}
!30 = !{!11}
!31 = !{!15, !13, !11}
!32 = !{!13, !11}
!33 = !{!17, !13, !11}
!34 = !{!19, !13, !11}
!35 = !{!21}
!36 = !{!23}
!37 = !{!25}
!38 = !{!27}
!39 = !{!27, !25}
!40 = !{!29}
!41 = distinct !{!41, i1 true, !"_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1J_EE10take_frontCsfrMbUeuvm3s_18build_script_build"}
!42 = distinct !{!42, !41, !"_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1J_EE10take_frontCsfrMbUeuvm3s_18build_script_build: argument 0"}
!43 = distinct !{!43, !65}
!44 = distinct !{!44, i1 true, !"_RINvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1s_ENtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build"}
!45 = distinct !{!45, !44, !"_RINvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1s_ENtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build: argument 0"}
!46 = distinct !{!46, i1 true, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1r_ENtB19_14LeafOrInternalE6ascendCsfrMbUeuvm3s_18build_script_build"}
!47 = distinct !{!47, !46, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1r_ENtB19_14LeafOrInternalE6ascendCsfrMbUeuvm3s_18build_script_build: argument 0"}
!48 = distinct !{!48, i1 true, !"_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build"}
!49 = distinct !{!49, !48, !"_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build: argument 0"}
!50 = distinct !{!50, i1 true, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1R_ENtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B2z_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECsfrMbUeuvm3s_18build_script_build"}
!51 = distinct !{!51, !50, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1R_ENtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B2z_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECsfrMbUeuvm3s_18build_script_build: argument 0"}
!52 = distinct !{!52, !65}
!53 = distinct !{!53, i1 true, !"_RNCINvMsm_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1U_ENtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0CsfrMbUeuvm3s_18build_script_build"}
!54 = distinct !{!54, !53, !"_RNCINvMsm_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1U_ENtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0CsfrMbUeuvm3s_18build_script_build: argument 0"}
!55 = distinct !{!55, i1 true, !"_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build"}
!56 = distinct !{!56, !55, !"_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build: argument 0"}
!57 = distinct !{!57, i1 true, !"_RINvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1s_ENtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build"}
!58 = distinct !{!58, !57, !"_RINvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1s_ENtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECsfrMbUeuvm3s_18build_script_build: argument 0"}
!59 = distinct !{!59, i1 true, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1r_ENtB19_14LeafOrInternalE6ascendCsfrMbUeuvm3s_18build_script_build"}
!60 = distinct !{!60, !59, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1r_ENtB19_14LeafOrInternalE6ascendCsfrMbUeuvm3s_18build_script_build: argument 0"}
!61 = distinct !{!61, i1 true, !"_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1R_ENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfrMbUeuvm3s_18build_script_build"}
!62 = distinct !{!62, !61, !"_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB1R_ENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfrMbUeuvm3s_18build_script_build: argument 0"}
!63 = distinct !{!63, !65}
!64 = !{!42}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!47, !45}
!67 = !{!45}
!68 = !{!49}
!69 = !{!51, !49}
!70 = !{!56, !54, !51, !49}
!71 = !{!60, !58, !56, !54, !51, !49}
!72 = !{!62, !56, !54, !51, !49}
!73 = !{!58, !56, !54, !51, !49}
!74 = !{!54, !51, !49}
!75 = distinct !{!75, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsfrMbUeuvm3s_18build_script_build"}
!76 = distinct !{!76, !75, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsfrMbUeuvm3s_18build_script_build: argument 0"}
!77 = !{!76}
end_hunk_1
