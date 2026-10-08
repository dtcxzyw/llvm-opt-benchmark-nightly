Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api-15f02cf232a6f4a0.wasmi_c_api.bb97e6f20a774834-cgu.04?download=true
inline.NumInlined: 212
inline.NumDeleted: 83
begin_hunk_0_@wasm_trap_get_host_info
define noalias noundef ptr @wasm_trap_get_host_info(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind nonlazybind uwtable
define void @wasm_trap_message(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @0, ptr noundef nonnull %i.c)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %.critedge.split-lp

.critedge.split-lp:                               ; preds = %bb.k, %bb.j, %bb.a
  %lpad.critedge.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.critedge

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.l)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsg6ypMx2A1Am_11wasmi_c_api.exit
  %i.m = load i64, ptr %i.h, align 8, !alias.scope !727, !noundef !5 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  call void @llvm.assume(i1 %i.n)
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %i.g, align 8, !alias.scope !727, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %i.j, i64 %i.l, i1 false)
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !727
  br label %bb.d

bb.c:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsg6ypMx2A1Am_11wasmi_c_api.exit
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #26
          to label %.critedge unwind label %bb.m

bb.d:                                             ; preds = %bb.b, %.noexc
  %i.r = phi i64 [ %.pre.i, %bb.b ], [ %i.m, %.noexc ]
  %i.s = add i64 %i.r, %i.l
  store i64 %i.s, ptr %i.h, align 8, !alias.scope !727
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %.val2.i.i = load i64, ptr %i.e, align 8, !alias.scope !728 ; 2 uses
  %i.u = icmp eq i64 %.val2.i.i, 0
  br i1 %i.u, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val3.i.i = load ptr, ptr %i.i, align 8, !alias.scope !729, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !730
  br label %.critedge

bb.g:                                             ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !728 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i, 0
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !729, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !731
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.w = load i64, ptr %i.h, align 8, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.x = load i64, ptr %i.f, align 8, !range !7, !alias.scope !734, !noundef !5
  %i.y = icmp eq i64 %i.x, %i.w
  br i1 %i.y, label %bb.i, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit.thread

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.z = add nuw i64 %i.w, 1                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !736
  %.val12.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !736
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.w, ptr %.val12.i.i.i, i64 noundef %i.z, i64 noundef 1, i64 noundef 1), !noalias !736
  %i.aa = load i64, ptr %i.a, align 8, !range !11, !noalias !736, !noundef !5
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.ab, label %bb.j, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.ac, align 8, !range !12, !noalias !736, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !736
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.af) #27
          to label %.noexc10 unwind label %.critedge.split-lp

.noexc10:                                         ; preds = %bb.j
  unreachable

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.i
  %i.ag = load ptr, ptr %i.ac, align 8, !noalias !736, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !736
  store ptr %i.ag, ptr %i.g, align 8, !alias.scope !736
  %i.ah = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.ah)
  store i64 %i.z, ptr %i.f, align 8, !alias.scope !736
  %.pre = load i64, ptr %i.h, align 8, !alias.scope !737 ; 3 uses
  %i.ai = icmp eq i64 %.pre, %i.z
  br i1 %i.ai, label %bb.k, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit.thread

bb.k:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #24
          to label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit.thread unwind label %.critedge.split-lp

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.k
  %i.aj = phi i64 [ %.pre, %bb.k ], [ %.pre, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit ] ; 2 uses
  %i.ak = load ptr, ptr %i.g, align 8, !alias.scope !737, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1
  %i.am = add i64 %i.aj, 1
  store i64 %i.am, ptr %i.h, align 8, !alias.scope !737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.an = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.l unwind label %.critedge8 ; 2 uses

bb.l:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit.thread
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store i64 %i.ap, ptr %1, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ao, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.m:                                             ; preds = %.critedge, %bb.c
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.critedge8:                                       ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsg6ypMx2A1Am_11wasmi_c_api.exit.thread
  %lpad.critedge = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.critedge8, %.critedge
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #29
  unreachable

.critedge:                                        ; preds = %bb.e, %bb.f, %.critedge.split-lp, %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #26
          to label %bb.n unwind label %bb.m
}

; Function Attrs: nounwind nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @wasm_trap_new(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = invoke { ptr, i64 } @_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t8as_slice(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %2, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !noundef !5
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.h, !prof !10

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.o, %bb.h, %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h)
          to label %bb.i unwind label %bb.b

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 133 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27
          to label %bb.f unwind label %bb.b

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %.not7 = icmp eq i64 %i.l, -1
  br i1 %.not7, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 7 uses
  %.not.i = icmp slt i64 %i.p, 0
  br i1 %.not.i, label %bb.o, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg6ypMx2A1Am_11wasmi_c_api.exit.thread16, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !740
  %i.r = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.p, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !740 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.q, %bb.o
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.t, %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #29
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.m
  %.sroa.4.0.ph = phi i64 [ 1, %bb.m ], [ 0, %bb.k ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.p) #27
          to label %bb.f unwind label %bb.n

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg6ypMx2A1Am_11wasmi_c_api.exit.thread16: ; preds = %bb.l, %bb.p
  %i.u = phi ptr [ %i.r, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.l ]
  store i64 %i.p, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.n, i64 %i.p, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg6ypMx2A1Am_11wasmi_c_api.exit.thread16

bb.q:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg6ypMx2A1Am_11wasmi_c_api.exit.thread16, %bb.j
  %i.v = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCsefoF4u9kbII_5wasmi5errorNtB3_5Error3newNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.w, ptr %i.a, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.x = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #23 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.s, label %bb.v, !prof !14

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.v:                                             ; preds = %bb.r
  store i64 %i.w, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.x
}

; Function Attrs: cold noreturn nounwind nonlazybind uwtable
define noalias noundef nonnull ptr @wasm_trap_origin(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: cold noreturn nounwind nonlazybind uwtable
define noundef i1 @wasm_trap_same(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 73 to ptr))
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: cold noreturn nounwind nonlazybind uwtable
define void @wasm_trap_set_host_info(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 91 to ptr))
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: cold noreturn nounwind nonlazybind uwtable
define void @wasm_trap_set_host_info_with_finalizer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 121 to ptr))
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: cold noreturn nounwind nonlazybind uwtable
define void @wasm_trap_trace(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
