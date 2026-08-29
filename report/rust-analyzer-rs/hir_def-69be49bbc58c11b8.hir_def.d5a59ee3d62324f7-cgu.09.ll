Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.09?download=true
inline.NumInlined: 2294
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_RNvMs_NtNtCsileJQcQObtj_7hir_def7nameres14mod_resolutionNtB4_7DirPath9join_attr:bb.a
  br i1 %.not.i, label %bb.m, label %.split.i

.split.i:                                         ; preds = %bb.l
  %i.ab = icmp eq i64 %2, 2
  br i1 %i.ab, label %bb.p, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !3901, !noundef !295
  %i.ae = icmp sgt i8 %i.ad, -65
  br i1 %i.ae, label %bb.p, label %bb.q

bb.n:                                             ; preds = %_RNvMs_NtNtCsileJQcQObtj_7hir_def7nameres14mod_resolutionNtB4_7DirPath6parent.exit.thread, %bb.p
  %.sroa.9.0 = phi i64 [ %i.an, %bb.p ], [ %2, %_RNvMs_NtNtCsileJQcQObtj_7hir_def7nameres14mod_resolutionNtB4_7DirPath6parent.exit.thread ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.p ], [ %1, %_RNvMs_NtNtCsileJQcQObtj_7hir_def7nameres14mod_resolutionNtB4_7DirPath6parent.exit.thread ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.af = icmp samesign ult i64 %.sroa.9.0, 16
  br i1 %i.af, label %.preheader.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit

.preheader.i.i:                                   ; preds = %bb.n
  %.not.i.i = icmp eq i64 %.sroa.9.0, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.o
  %.sroa.01.05.i.i = phi i64 [ %i.aj, %bb.o ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.01.05.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !3904, !noundef !295
  %i.ai = icmp eq i8 %i.ah, 92
  br i1 %i.ai, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread16, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.aj = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aj, %.sroa.9.0
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.n
  %i.ak = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 92, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.9.0)
  %i.al = extractvalue { i64, i64 } %i.ak, 0
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread16, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

bb.p:                                             ; preds = %bb.m, %.split.i
  %i.an = add i64 %2, -2
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.n

bb.q:                                             ; preds = %bb.m, %.split.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #42
  unreachable

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread16: ; preds = %.lr.ph.i.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3909
  store i8 92, ptr %i.c, align 1, !noalias !3909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3909
  store i8 47, ptr %i.b, align 1, !noalias !3909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3909
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.9.0
  store ptr %.sroa.0.0, ptr %i.a, align 8, !noalias !3909
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !3909
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ar, align 8, !noalias !3909
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.as, align 8, !noalias !3909
  call void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3909
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !295, !noundef !295
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !295
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %bb.o, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, %.preheader.i.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread16
  %.sink24 = phi ptr [ %i.au, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread16 ], [ %.sroa.0.0, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ], [ %.sroa.0.0, %.preheader.i.i ], [ %.sroa.0.0, %bb.o ]
  %.sink = phi i64 [ %i.aw, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread16 ], [ %.sroa.9.0, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ], [ %.sroa.9.0, %.preheader.i.i ], [ %.sroa.9.0, %bb.o ]
  %.merged.i.i14 = phi i1 [ true, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread16 ], [ false, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ], [ false, %.preheader.i.i ], [ false, %bb.o ] ; 2 uses
  store ptr %.sink24, ptr %i.f, align 8, !captures !3752
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.ay, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.428.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @180, ptr noundef nonnull %i.d)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsileJQcQObtj_7hir_def.exit unwind label %bb.r

bb.r:                                             ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.merged.i.i14, label %bb.w, label %common.resume

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsileJQcQObtj_7hir_def.exit: ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.merged.i.i14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsileJQcQObtj_7hir_def.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsileJQcQObtj_7hir_def.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.t:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsileJQcQObtj_7hir_def.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsileJQcQObtj_7hir_def.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.w, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.u ], [ %i.az, %bb.w ], [ %i.az, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsileJQcQObtj_7hir_def.exit: ; preds = %bb.t
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.s

bb.w:                                             ; preds = %bb.r
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #45
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE9normalizeCsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.b, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 5 uses
  switch i8 %.sroa.4.0.copyload, label %.preheader.preheader [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i128, ptr %1, align 16, !alias.scope !3913, !noundef !295 ; 6 uses
  %i.d = icmp eq i128 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 16
  br label %bb.c

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread: ; preds = %.preheader.preheader
  %i.f = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.c, i1 true)
  %i.g = trunc nuw nsw i128 %i.f to i64
  %i.h = sub nuw nsw i64 128, %i.g
  %.not41204 = icmp eq i8 %3, 0
  br label %bb.d

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %.preheader.preheader
  %.not41 = icmp eq i8 %3, 0
  br i1 %.not41, label %.thread141, label %bb.d

bb.c:                                             ; preds = %.split.i, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76, %bb.ae, %bb.aj, %bb.ah, %bb.b
  ret void

bb.d:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %.not41207 = phi i1 [ %.not41204, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 2 uses
  %.sroa.0.0.i206 = phi i64 [ %i.h, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = load i32, ptr %i.i, align 16, !noundef !295 ; 8 uses
  %i.k = trunc nuw nsw i64 %.sroa.0.0.i206 to i32
  %i.l = add nsw i32 %i.k, -11
  %i.m = tail call i32 @llvm.sadd.sat.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 15
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -14) ; 4 uses
  %i.o = icmp slt i32 %spec.store.select1, %i.j
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !range !3756, !noundef !295 ; 2 uses
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.an, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.r = icmp sgt i32 %spec.store.select1, %i.j
  br i1 %i.r, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.e
  br i1 %.not41207, label %bb.al, label %bb.ak, !prof !7

bb.i:                                             ; preds = %bb.g
  %i.s = sub i32 %spec.store.select1, %i.j        ; 4 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3919)
  %i.u = add nsw i64 %i.t, -1                     ; 2 uses
  %i.v = icmp ult i64 %i.u, 128                   ; 3 uses
  %.sroa.010.0.i.i = select i1 %i.v, i128 %i.c, i128 0 ; 2 uses
  %i.w = and i64 %i.u, 127
  %i.x = zext nneg i64 %i.w to i128
  %i.y = shl nuw i128 1, %i.x                     ; 2 uses
  %i.z = and i128 %.sroa.010.0.i.i, %i.y
  %.not.i.i = icmp eq i128 %i.z, 0                ; 3 uses
  %i.aa = add i128 %i.y, -1
  %i.ab = and i128 %.sroa.010.0.i.i, %i.aa
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.idx = select i1 %i.v, i64 0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ag = phi ptr [ %i.ae, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.val.i.i.i = load i128, ptr %i.ag, align 16, !alias.scope !3921, !noalias !3924, !noundef !295
  %i.ah = icmp eq i128 %.val.i.i.i, 0
  br i1 %i.ah, label %bb.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.k, %bb.j
  %spec.select.i.i47 = select i1 %.not.i.i, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %.thread16.i.i, %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i
  %.sroa.09.0.i17.i = phi i8 [ 1, %bb.l ], [ %spec.select.i.i47, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i ], [ 3, %.thread16.i.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i ] ; 4 uses
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.s) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, !prof !314

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %i.ak = extractvalue { i32, i1 } %i.ai, 0       ; 2 uses
  store i32 %i.ak, ptr %i.i, align 16, !alias.scope !3919, !noalias !3916
  %i.al = and i64 %i.t, 127
  %i.am = and i32 %i.s, 127
  %.not12.i = icmp eq i32 %i.am, 0
  %i.an = zext nneg i64 %i.al to i128
  %.not11.us.i = icmp ult i32 %i.s, 128
  %i.ao = select i1 %.not12.i, i128 0, i128 %i.an
  %.sink = lshr i128 %i.c, %i.ao
  %spec.select208 = select i1 %.not11.us.i, i128 %.sink, i128 0 ; 2 uses
  store i128 %spec.select208, ptr %1, align 16, !alias.scope !3916, !noalias !3919
  br i1 %.not41207, label %.thread, label %bb.n

bb.m:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #42, !noalias !3927
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.sroa.012.0 = phi i8 [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %spec.store.select, %bb.o ], [ 1, %bb.n ]
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i206, i64 %i.t)
  br label %bb.p

bb.n:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.aq = icmp eq i8 %.sroa.09.0.i17.i, 0
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %.sroa.09.0.i17.i, 2
  %spec.store.select = select i1 %i.ar, i8 3, i8 %.sroa.09.0.i17.i
  br label %.thread

bb.p:                                             ; preds = %bb.g, %.thread
  %i.as = phi i32 [ %i.ak, %.thread ], [ %i.j, %bb.g ]
  %i.at = phi i128 [ %spec.select208, %.thread ], [ %i.c, %bb.g ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %i.ap, %.thread ], [ %.sroa.0.0.i206, %bb.g ] ; 6 uses
  %i.au = phi i8 [ %.sroa.012.0, %.thread ], [ %3, %bb.g ] ; 4 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3928)
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !3928 ; 4 uses
  %spec.select.i.i.i = icmp ugt i8 %.sroa.4.0.copyload, 1
  %i.aw = icmp eq i8 %.sroa.4.0.copyload, 3
  br i1 %spec.select.i.i.i, label %bb.s, label %bb.r, !prof !3931

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 61, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #42, !noalias !3928
  unreachable

bb.s:                                             ; preds = %bb.q
  switch i8 %2, label %default.unreachable200 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
    i8 4, label %bb.v
  ]

default.unreachable200:                           ; preds = %bb.an, %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  switch i8 %i.au, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139 [
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.s
  %i.ax = xor i8 %.sroa.4.0.copyload.i, 1
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

bb.v:                                             ; preds = %bb.s
  %i.ay = icmp eq i8 %i.au, 2
  br i1 %i.ay, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.aw, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = trunc i128 %i.at to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

bb.y:                                             ; preds = %bb.v
  %i.ba = icmp eq i8 %i.au, 3
  %i.bb = zext i1 %i.ba to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit: ; preds = %bb.s, %bb.u, %bb.x, %bb.y
  %.sroa.0.0.i48 = phi i8 [ %i.bb, %bb.y ], [ %.sroa.4.0.copyload.i, %bb.s ], [ %i.az, %bb.x ], [ %i.ax, %bb.u ]
  %i.bc = trunc i8 %.sroa.0.0.i48 to i1
  br i1 %i.bc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139

bb.z:                                             ; preds = %bb.p
  %i.bd = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.bd, label %.thread141, label %bb.aj

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread: ; preds = %bb.t, %bb.v, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
  %i.be = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.be, label %bb.aa, label %.lr.ph.i

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139: ; preds = %bb.w, %bb.t, %bb.s, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
  %.sroa.016.1 = phi i64 [ %.sroa.016.0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit ], [ %i.bl, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53 ], [ %.sroa.016.0, %bb.s ], [ %.sroa.016.0, %bb.t ], [ %.sroa.016.0, %bb.w ] ; 3 uses
  %i.bf = icmp eq i64 %.sroa.016.1, 11
  br i1 %i.bf, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread
  store i32 -14, ptr %i.i, align 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, %bb.aa
  %i.bg = phi i32 [ %i.as, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread ], [ -14, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bh = add i128 %i.at, 1                       ; 4 uses
  store i128 %i.bh, ptr %1, align 16, !alias.scope !3932
  %i.bi = icmp eq i128 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53

bb.ab:                                            ; preds = %.lr.ph.i
  store i128 1, ptr %i.a, align 16
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @122, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #42
  unreachable

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.bh, i1 true) ; 2 uses
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = sub nuw nsw i64 128, %i.bk
  %i.bm = icmp eq i128 %i.bj, 116
  br i1 %i.bm, label %bb.ac, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139

bb.ac:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53
  %i.bn = icmp eq i32 %i.bg, 15
  br i1 %i.bn, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60

bb.ad:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
  %i.bo = icmp ult i64 %.sroa.016.1, 11
  br i1 %i.bo, label %bb.ag, label %bb.af, !prof !3935

bb.ae:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bp, align 16
  br label %bb.c

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.bq = icmp eq i64 %.sroa.016.1, 0
  br i1 %i.bq, label %.thread151, label %bb.ah

.thread151:                                       ; preds = %bb.ag
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.not.i56 = icmp ne i8 %.sroa.4.0.copyload.i, 0
  %spec.select160 = zext i1 %.not.i56 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @184, i64 21, i1 false)
  store i8 %spec.select160, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.496.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @184, i64 22), i64 10, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 24, ptr %i.br, align 16
  br label %bb.c

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60: ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  %i.bs = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 1) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %bb.ai, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, !prof !314

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  %i.bu = extractvalue { i32, i1 } %i.bs, 0
  store i32 %i.bu, ptr %i.i, align 16, !alias.scope !3939, !noalias !3936
  %i.bv = lshr i128 %i.bh, 1
  store i128 %i.bv, ptr %1, align 16, !alias.scope !3936, !noalias !3939
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bw, align 16
  br label %bb.c

bb.ai:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #42, !noalias !3941
  unreachable

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76: ; preds = %bb.ac
  %.not.i77 = icmp ne i8 %.sroa.4.0.copyload.i, 0
  %spec.select161 = zext i1 %.not.i77 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 20, ptr %i.bx, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @196, i64 21, i1 false)
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select161, ptr %.sroa.4123.0..sroa_idx, align 1
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5124.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @196, i64 22), i64 10, i1 false)
  br label %bb.c

.thread141:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, %bb.z
  %.sroa.3.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.not.i81 = icmp ne i8 %.sroa.3.0.copyload, 0
  %spec.select162 = zext i1 %.not.i81 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @184, i64 21, i1 false)
  store i8 %spec.select162, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.490.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @184, i64 22), i64 10, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.z, %.thread141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.by, align 16
  br label %bb.c

bb.ak:                                            ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee4LossBM_ECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @124, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #42
  unreachable

bb.al:                                            ; preds = %bb.h
  %i.bz = sub i32 %i.j, %spec.store.select1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  %i.ca = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.j, i32 %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.am, label %.split.i, !prof !314

.split.i:                                         ; preds = %bb.al
  %i.cc = extractvalue { i32, i1 } %i.ca, 0
  store i32 %i.cc, ptr %i.i, align 16, !alias.scope !3945, !noalias !3942
  %i.cd = and i32 %i.bz, 127
  %i.ce = and i32 %i.bz, 127
  %.not18.i = icmp eq i32 %i.ce, 0
  %.not189 = icmp ult i32 %i.bz, 128
  %narrow = select i1 %.not18.i, i32 0, i32 %i.cd
  %i.cf = zext nneg i32 %narrow to i128
  %.sink211 = shl i128 %i.c, %i.cf
  %spec.select210 = select i1 %.not189, i128 %.sink211, i128 0
  store i128 %spec.select210, ptr %1, align 16, !alias.scope !3942, !noalias !3945
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.cg, align 16
  br label %bb.c

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #42, !noalias !3947
  unreachable

bb.an:                                            ; preds = %bb.f
  switch i8 %2, label %default.unreachable200 [
    i8 2, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
    i8 1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88
    i8 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
    i8 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88
    i8 4, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
  ]

bb.ao:                                            ; preds = %bb.f
  %i.ch = and i8 %2, 6
  %switch = icmp eq i8 %i.ch, 2
  br i1 %switch, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split: ; preds = %bb.an, %bb.ao, %bb.an, %bb.an
  br label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88: ; preds = %bb.an, %bb.ao, %bb.an, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
  %.sroa.034.0168 = phi i8 [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 2, %bb.an ]
  %.sroa.399.0164 = phi i32 [ 16, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 15, %bb.an ], [ 15, %bb.ao ], [ 15, %bb.an ]
  %.sroa.0101.0 = phi i128 [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 2047, %bb.an ], [ 2047, %bb.ao ], [ 2047, %bb.an ]
  %.sroa.5103.1 = phi i8 [ 20, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 16, %bb.an ], [ 16, %bb.ao ], [ 16, %bb.an ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.5103.1, ptr %i.ci, align 16
  store i128 %.sroa.0101.0, ptr %0, align 16
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.399.0164, ptr %.sroa.4106.0..sroa_idx, align 16
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.034.0168, ptr %.sroa.5107.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.p, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @196, i64 22), i64 10, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE9normalizeCsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.b, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 5 uses
  switch i8 %.sroa.4.0.copyload, label %.preheader.preheader [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i128, ptr %1, align 16, !alias.scope !3948, !noundef !295 ; 6 uses
  %i.d = icmp eq i128 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 16
  br label %bb.c

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread: ; preds = %.preheader.preheader
  %i.f = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.c, i1 true)
  %i.g = trunc nuw nsw i128 %i.f to i64
  %i.h = sub nuw nsw i64 128, %i.g
  %.not41204 = icmp eq i8 %3, 0
  br label %bb.d

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %.preheader.preheader
  %.not41 = icmp eq i8 %3, 0
  br i1 %.not41, label %.thread141, label %bb.d

bb.c:                                             ; preds = %.split.i, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76, %bb.ae, %bb.aj, %bb.ah, %bb.b
  ret void

bb.d:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %.not41207 = phi i1 [ %.not41204, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 2 uses
  %.sroa.0.0.i206 = phi i64 [ %i.h, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = load i32, ptr %i.i, align 16, !noundef !295 ; 8 uses
  %i.k = trunc nuw nsw i64 %.sroa.0.0.i206 to i32
  %i.l = add nsw i32 %i.k, -113
  %i.m = tail call i32 @llvm.sadd.sat.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 16383
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -16382) ; 4 uses
  %i.o = icmp slt i32 %spec.store.select1, %i.j
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !range !3756, !noundef !295 ; 2 uses
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.an, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.r = icmp sgt i32 %spec.store.select1, %i.j
  br i1 %i.r, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.e
  br i1 %.not41207, label %bb.al, label %bb.ak, !prof !7

bb.i:                                             ; preds = %bb.g
  %i.s = sub i32 %spec.store.select1, %i.j        ; 4 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3954)
  %i.u = add nsw i64 %i.t, -1                     ; 2 uses
  %i.v = icmp ult i64 %i.u, 128                   ; 3 uses
  %.sroa.010.0.i.i = select i1 %i.v, i128 %i.c, i128 0 ; 2 uses
  %i.w = and i64 %i.u, 127
  %i.x = zext nneg i64 %i.w to i128
  %i.y = shl nuw i128 1, %i.x                     ; 2 uses
  %i.z = and i128 %.sroa.010.0.i.i, %i.y
  %.not.i.i = icmp eq i128 %i.z, 0                ; 3 uses
  %i.aa = add i128 %i.y, -1
  %i.ab = and i128 %.sroa.010.0.i.i, %i.aa
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.idx = select i1 %i.v, i64 0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ag = phi ptr [ %i.ae, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.val.i.i.i = load i128, ptr %i.ag, align 16, !alias.scope !3956, !noalias !3959, !noundef !295
  %i.ah = icmp eq i128 %.val.i.i.i, 0
  br i1 %i.ah, label %bb.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.k, %bb.j
  %spec.select.i.i47 = select i1 %.not.i.i, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %.thread16.i.i, %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i
  %.sroa.09.0.i17.i = phi i8 [ 1, %bb.l ], [ %spec.select.i.i47, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i ], [ 3, %.thread16.i.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i ] ; 4 uses
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.s) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, !prof !314

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %i.ak = extractvalue { i32, i1 } %i.ai, 0       ; 2 uses
  store i32 %i.ak, ptr %i.i, align 16, !alias.scope !3954, !noalias !3951
  %i.al = and i64 %i.t, 127
  %i.am = and i32 %i.s, 127
  %.not12.i = icmp eq i32 %i.am, 0
  %i.an = zext nneg i64 %i.al to i128
  %.not11.us.i = icmp ult i32 %i.s, 128
  %i.ao = select i1 %.not12.i, i128 0, i128 %i.an
  %.sink = lshr i128 %i.c, %i.ao
  %spec.select208 = select i1 %.not11.us.i, i128 %.sink, i128 0 ; 2 uses
  store i128 %spec.select208, ptr %1, align 16, !alias.scope !3951, !noalias !3954
  br i1 %.not41207, label %.thread, label %bb.n

bb.m:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #42, !noalias !3962
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.sroa.012.0 = phi i8 [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %spec.store.select, %bb.o ], [ 1, %bb.n ]
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i206, i64 %i.t)
  br label %bb.p

bb.n:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.aq = icmp eq i8 %.sroa.09.0.i17.i, 0
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %.sroa.09.0.i17.i, 2
  %spec.store.select = select i1 %i.ar, i8 3, i8 %.sroa.09.0.i17.i
  br label %.thread

bb.p:                                             ; preds = %bb.g, %.thread
  %i.as = phi i32 [ %i.ak, %.thread ], [ %i.j, %bb.g ]
  %i.at = phi i128 [ %spec.select208, %.thread ], [ %i.c, %bb.g ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %i.ap, %.thread ], [ %.sroa.0.0.i206, %bb.g ] ; 6 uses
  %i.au = phi i8 [ %.sroa.012.0, %.thread ], [ %3, %bb.g ] ; 4 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3963)
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !3963 ; 4 uses
  %spec.select.i.i.i = icmp ugt i8 %.sroa.4.0.copyload, 1
  %i.aw = icmp eq i8 %.sroa.4.0.copyload, 3
  br i1 %spec.select.i.i.i, label %bb.s, label %bb.r, !prof !3931

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 61, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #42, !noalias !3963
  unreachable

bb.s:                                             ; preds = %bb.q
  switch i8 %2, label %default.unreachable200 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
    i8 4, label %bb.v
  ]

default.unreachable200:                           ; preds = %bb.an, %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  switch i8 %i.au, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139 [
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.s
  %i.ax = xor i8 %.sroa.4.0.copyload.i, 1
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

bb.v:                                             ; preds = %bb.s
  %i.ay = icmp eq i8 %i.au, 2
  br i1 %i.ay, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.aw, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = trunc i128 %i.at to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

bb.y:                                             ; preds = %bb.v
  %i.ba = icmp eq i8 %i.au, 3
  %i.bb = zext i1 %i.ba to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit: ; preds = %bb.s, %bb.u, %bb.x, %bb.y
  %.sroa.0.0.i48 = phi i8 [ %i.bb, %bb.y ], [ %.sroa.4.0.copyload.i, %bb.s ], [ %i.az, %bb.x ], [ %i.ax, %bb.u ]
  %i.bc = trunc i8 %.sroa.0.0.i48 to i1
  br i1 %i.bc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139

bb.z:                                             ; preds = %bb.p
  %i.bd = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.bd, label %.thread141, label %bb.aj

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread: ; preds = %bb.t, %bb.v, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
  %i.be = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.be, label %bb.aa, label %.lr.ph.i

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139: ; preds = %bb.w, %bb.t, %bb.s, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
  %.sroa.016.1 = phi i64 [ %.sroa.016.0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit ], [ %i.bl, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53 ], [ %.sroa.016.0, %bb.s ], [ %.sroa.016.0, %bb.t ], [ %.sroa.016.0, %bb.w ] ; 3 uses
  %i.bf = icmp eq i64 %.sroa.016.1, 113
  br i1 %i.bf, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread
  store i32 -16382, ptr %i.i, align 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, %bb.aa
  %i.bg = phi i32 [ %i.as, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread ], [ -16382, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bh = add i128 %i.at, 1                       ; 4 uses
  store i128 %i.bh, ptr %1, align 16, !alias.scope !3966
  %i.bi = icmp eq i128 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53

bb.ab:                                            ; preds = %.lr.ph.i
  store i128 1, ptr %i.a, align 16
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @122, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #42
  unreachable

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.bh, i1 true) ; 2 uses
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = sub nuw nsw i64 128, %i.bk
  %i.bm = icmp eq i128 %i.bj, 14
  br i1 %i.bm, label %bb.ac, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139

bb.ac:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53
  %i.bn = icmp eq i32 %i.bg, 16383
  br i1 %i.bn, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60

bb.ad:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
  %i.bo = icmp ult i64 %.sroa.016.1, 113
  br i1 %i.bo, label %bb.ag, label %bb.af, !prof !3935

bb.ae:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bp, align 16
  br label %bb.c

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.bq = icmp eq i64 %.sroa.016.1, 0
  br i1 %i.bq, label %.thread151, label %bb.ah

.thread151:                                       ; preds = %bb.ag
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.not.i56 = icmp ne i8 %.sroa.4.0.copyload.i, 0
  %spec.select160 = zext i1 %.not.i56 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @211, i64 21, i1 false)
  store i8 %spec.select160, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.496.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @211, i64 22), i64 10, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 24, ptr %i.br, align 16
  br label %bb.c

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60: ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3972)
  %i.bs = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 1) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %bb.ai, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, !prof !314

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  %i.bu = extractvalue { i32, i1 } %i.bs, 0
  store i32 %i.bu, ptr %i.i, align 16, !alias.scope !3972, !noalias !3969
  %i.bv = lshr i128 %i.bh, 1
  store i128 %i.bv, ptr %1, align 16, !alias.scope !3969, !noalias !3972
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bw, align 16
  br label %bb.c

bb.ai:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #42, !noalias !3974
  unreachable

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76: ; preds = %bb.ac
  %.not.i77 = icmp ne i8 %.sroa.4.0.copyload.i, 0
  %spec.select161 = zext i1 %.not.i77 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 20, ptr %i.bx, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @213, i64 21, i1 false)
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select161, ptr %.sroa.4123.0..sroa_idx, align 1
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5124.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @213, i64 22), i64 10, i1 false)
  br label %bb.c

.thread141:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, %bb.z
  %.sroa.3.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.not.i81 = icmp ne i8 %.sroa.3.0.copyload, 0
  %spec.select162 = zext i1 %.not.i81 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @211, i64 21, i1 false)
  store i8 %spec.select162, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.490.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @211, i64 22), i64 10, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.z, %.thread141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.by, align 16
  br label %bb.c

bb.ak:                                            ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee4LossBM_ECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @124, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #42
  unreachable

bb.al:                                            ; preds = %bb.h
  %i.bz = sub i32 %i.j, %spec.store.select1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3978)
  %i.ca = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.j, i32 %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.am, label %.split.i, !prof !314

.split.i:                                         ; preds = %bb.al
  %i.cc = extractvalue { i32, i1 } %i.ca, 0
  store i32 %i.cc, ptr %i.i, align 16, !alias.scope !3978, !noalias !3975
  %i.cd = and i32 %i.bz, 127
  %i.ce = and i32 %i.bz, 127
  %.not18.i = icmp eq i32 %i.ce, 0
  %.not189 = icmp ult i32 %i.bz, 128
  %narrow = select i1 %.not18.i, i32 0, i32 %i.cd
  %i.cf = zext nneg i32 %narrow to i128
  %.sink211 = shl i128 %i.c, %i.cf
  %spec.select210 = select i1 %.not189, i128 %.sink211, i128 0
  store i128 %spec.select210, ptr %1, align 16, !alias.scope !3975, !noalias !3978
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.cg, align 16
  br label %bb.c

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #42, !noalias !3980
  unreachable

bb.an:                                            ; preds = %bb.f
  switch i8 %2, label %default.unreachable200 [
    i8 2, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
    i8 1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88
    i8 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
    i8 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88
    i8 4, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
  ]

bb.ao:                                            ; preds = %bb.f
  %i.ch = and i8 %2, 6
  %switch = icmp eq i8 %i.ch, 2
  br i1 %switch, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split: ; preds = %bb.an, %bb.ao, %bb.an, %bb.an
  br label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88: ; preds = %bb.an, %bb.ao, %bb.an, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
  %.sroa.034.0168 = phi i8 [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 2, %bb.an ]
  %.sroa.399.0164 = phi i32 [ 16384, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 16383, %bb.an ], [ 16383, %bb.ao ], [ 16383, %bb.an ]
  %.sroa.0101.0 = phi i128 [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 10384593717069655257060992658440191, %bb.an ], [ 10384593717069655257060992658440191, %bb.ao ], [ 10384593717069655257060992658440191, %bb.an ]
  %.sroa.5103.1 = phi i8 [ 20, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 16, %bb.an ], [ 16, %bb.ao ], [ 16, %bb.an ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.5103.1, ptr %i.ci, align 16
  store i128 %.sroa.0101.0, ptr %0, align 16
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.399.0164, ptr %.sroa.4106.0..sroa_idx, align 16
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.034.0168, ptr %.sroa.5107.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.p, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @213, i64 22), i64 10, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE9normalizeCsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.b, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 5 uses
  switch i8 %.sroa.4.0.copyload, label %.preheader.preheader [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i128, ptr %1, align 16, !alias.scope !3981, !noundef !295 ; 6 uses
  %i.d = icmp eq i128 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 16
  br label %bb.c

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread: ; preds = %.preheader.preheader
  %i.f = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.c, i1 true)
  %i.g = trunc nuw nsw i128 %i.f to i64
  %i.h = sub nuw nsw i64 128, %i.g
  %.not41204 = icmp eq i8 %3, 0
  br label %bb.d

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %.preheader.preheader
  %.not41 = icmp eq i8 %3, 0
  br i1 %.not41, label %.thread141, label %bb.d

bb.c:                                             ; preds = %.split.i, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76, %bb.ae, %bb.aj, %bb.ah, %bb.b
  ret void

bb.d:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %.not41207 = phi i1 [ %.not41204, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 2 uses
  %.sroa.0.0.i206 = phi i64 [ %i.h, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = load i32, ptr %i.i, align 16, !noundef !295 ; 8 uses
  %i.k = trunc nuw nsw i64 %.sroa.0.0.i206 to i32
  %i.l = add nsw i32 %i.k, -53
  %i.m = tail call i32 @llvm.sadd.sat.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 1023
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -1022) ; 4 uses
  %i.o = icmp slt i32 %spec.store.select1, %i.j
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !range !3756, !noundef !295 ; 2 uses
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.an, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.r = icmp sgt i32 %spec.store.select1, %i.j
  br i1 %i.r, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.e
  br i1 %.not41207, label %bb.al, label %bb.ak, !prof !7

bb.i:                                             ; preds = %bb.g
  %i.s = sub i32 %spec.store.select1, %i.j        ; 4 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  %i.u = add nsw i64 %i.t, -1                     ; 2 uses
  %i.v = icmp ult i64 %i.u, 128                   ; 3 uses
  %.sroa.010.0.i.i = select i1 %i.v, i128 %i.c, i128 0 ; 2 uses
  %i.w = and i64 %i.u, 127
  %i.x = zext nneg i64 %i.w to i128
  %i.y = shl nuw i128 1, %i.x                     ; 2 uses
  %i.z = and i128 %.sroa.010.0.i.i, %i.y
  %.not.i.i = icmp eq i128 %i.z, 0                ; 3 uses
  %i.aa = add i128 %i.y, -1
  %i.ab = and i128 %.sroa.010.0.i.i, %i.aa
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.idx = select i1 %i.v, i64 0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ag = phi ptr [ %i.ae, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.val.i.i.i = load i128, ptr %i.ag, align 16, !alias.scope !3989, !noalias !3992, !noundef !295
  %i.ah = icmp eq i128 %.val.i.i.i, 0
  br i1 %i.ah, label %bb.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.k, %bb.j
  %spec.select.i.i47 = select i1 %.not.i.i, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %.thread16.i.i, %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i
  %.sroa.09.0.i17.i = phi i8 [ 1, %bb.l ], [ %spec.select.i.i47, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i ], [ 3, %.thread16.i.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i ] ; 4 uses
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.s) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, !prof !314

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %i.ak = extractvalue { i32, i1 } %i.ai, 0       ; 2 uses
  store i32 %i.ak, ptr %i.i, align 16, !alias.scope !3987, !noalias !3984
  %i.al = and i64 %i.t, 127
  %i.am = and i32 %i.s, 127
  %.not12.i = icmp eq i32 %i.am, 0
  %i.an = zext nneg i64 %i.al to i128
  %.not11.us.i = icmp ult i32 %i.s, 128
  %i.ao = select i1 %.not12.i, i128 0, i128 %i.an
  %.sink = lshr i128 %i.c, %i.ao
  %spec.select208 = select i1 %.not11.us.i, i128 %.sink, i128 0 ; 2 uses
  store i128 %spec.select208, ptr %1, align 16, !alias.scope !3984, !noalias !3987
  br i1 %.not41207, label %.thread, label %bb.n

bb.m:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #42, !noalias !3995
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.sroa.012.0 = phi i8 [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %spec.store.select, %bb.o ], [ 1, %bb.n ]
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i206, i64 %i.t)
  br label %bb.p

bb.n:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.aq = icmp eq i8 %.sroa.09.0.i17.i, 0
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %.sroa.09.0.i17.i, 2
  %spec.store.select = select i1 %i.ar, i8 3, i8 %.sroa.09.0.i17.i
  br label %.thread

bb.p:                                             ; preds = %bb.g, %.thread
  %i.as = phi i32 [ %i.ak, %.thread ], [ %i.j, %bb.g ]
  %i.at = phi i128 [ %spec.select208, %.thread ], [ %i.c, %bb.g ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %i.ap, %.thread ], [ %.sroa.0.0.i206, %bb.g ] ; 6 uses
  %i.au = phi i8 [ %.sroa.012.0, %.thread ], [ %3, %bb.g ] ; 4 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !3996 ; 4 uses
  %spec.select.i.i.i = icmp ugt i8 %.sroa.4.0.copyload, 1
  %i.aw = icmp eq i8 %.sroa.4.0.copyload, 3
  br i1 %spec.select.i.i.i, label %bb.s, label %bb.r, !prof !3931

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 61, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #42, !noalias !3996
  unreachable

bb.s:                                             ; preds = %bb.q
  switch i8 %2, label %default.unreachable200 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
    i8 4, label %bb.v
  ]

default.unreachable200:                           ; preds = %bb.an, %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  switch i8 %i.au, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139 [
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.s
  %i.ax = xor i8 %.sroa.4.0.copyload.i, 1
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

bb.v:                                             ; preds = %bb.s
  %i.ay = icmp eq i8 %i.au, 2
  br i1 %i.ay, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.aw, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = trunc i128 %i.at to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

bb.y:                                             ; preds = %bb.v
  %i.ba = icmp eq i8 %i.au, 3
  %i.bb = zext i1 %i.ba to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit: ; preds = %bb.s, %bb.u, %bb.x, %bb.y
  %.sroa.0.0.i48 = phi i8 [ %i.bb, %bb.y ], [ %.sroa.4.0.copyload.i, %bb.s ], [ %i.az, %bb.x ], [ %i.ax, %bb.u ]
  %i.bc = trunc i8 %.sroa.0.0.i48 to i1
  br i1 %i.bc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139

bb.z:                                             ; preds = %bb.p
  %i.bd = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.bd, label %.thread141, label %bb.aj

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread: ; preds = %bb.t, %bb.v, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
  %i.be = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.be, label %bb.aa, label %.lr.ph.i

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139: ; preds = %bb.w, %bb.t, %bb.s, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
  %.sroa.016.1 = phi i64 [ %.sroa.016.0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit ], [ %i.bl, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53 ], [ %.sroa.016.0, %bb.s ], [ %.sroa.016.0, %bb.t ], [ %.sroa.016.0, %bb.w ] ; 3 uses
  %i.bf = icmp eq i64 %.sroa.016.1, 53
  br i1 %i.bf, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread
  store i32 -1022, ptr %i.i, align 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, %bb.aa
  %i.bg = phi i32 [ %i.as, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread ], [ -1022, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bh = add i128 %i.at, 1                       ; 4 uses
  store i128 %i.bh, ptr %1, align 16, !alias.scope !3999
  %i.bi = icmp eq i128 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53

bb.ab:                                            ; preds = %.lr.ph.i
  store i128 1, ptr %i.a, align 16
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @122, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #42
  unreachable

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.bh, i1 true) ; 2 uses
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = sub nuw nsw i64 128, %i.bk
  %i.bm = icmp eq i128 %i.bj, 74
  br i1 %i.bm, label %bb.ac, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139

bb.ac:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53
  %i.bn = icmp eq i32 %i.bg, 1023
  br i1 %i.bn, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60

bb.ad:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
  %i.bo = icmp ult i64 %.sroa.016.1, 53
  br i1 %i.bo, label %bb.ag, label %bb.af, !prof !3935

bb.ae:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bp, align 16
  br label %bb.c

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.bq = icmp eq i64 %.sroa.016.1, 0
  br i1 %i.bq, label %.thread151, label %bb.ah

.thread151:                                       ; preds = %bb.ag
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.not.i56 = icmp ne i8 %.sroa.4.0.copyload.i, 0
  %spec.select160 = zext i1 %.not.i56 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @214, i64 21, i1 false)
  store i8 %spec.select160, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.496.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @214, i64 22), i64 10, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 24, ptr %i.br, align 16
  br label %bb.c

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60: ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4005)
  %i.bs = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 1) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %bb.ai, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, !prof !314

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  %i.bu = extractvalue { i32, i1 } %i.bs, 0
  store i32 %i.bu, ptr %i.i, align 16, !alias.scope !4005, !noalias !4002
  %i.bv = lshr i128 %i.bh, 1
  store i128 %i.bv, ptr %1, align 16, !alias.scope !4002, !noalias !4005
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bw, align 16
  br label %bb.c

bb.ai:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #42, !noalias !4007
  unreachable

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76: ; preds = %bb.ac
  %.not.i77 = icmp ne i8 %.sroa.4.0.copyload.i, 0
  %spec.select161 = zext i1 %.not.i77 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 20, ptr %i.bx, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @216, i64 21, i1 false)
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select161, ptr %.sroa.4123.0..sroa_idx, align 1
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5124.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @216, i64 22), i64 10, i1 false)
  br label %bb.c

.thread141:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, %bb.z
  %.sroa.3.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.not.i81 = icmp ne i8 %.sroa.3.0.copyload, 0
  %spec.select162 = zext i1 %.not.i81 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @214, i64 21, i1 false)
  store i8 %spec.select162, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.490.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @214, i64 22), i64 10, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.z, %.thread141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.by, align 16
  br label %bb.c

bb.ak:                                            ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee4LossBM_ECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @124, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #42
  unreachable

bb.al:                                            ; preds = %bb.h
  %i.bz = sub i32 %i.j, %spec.store.select1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  %i.ca = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.j, i32 %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.am, label %.split.i, !prof !314

.split.i:                                         ; preds = %bb.al
  %i.cc = extractvalue { i32, i1 } %i.ca, 0
  store i32 %i.cc, ptr %i.i, align 16, !alias.scope !4011, !noalias !4008
  %i.cd = and i32 %i.bz, 127
  %i.ce = and i32 %i.bz, 127
  %.not18.i = icmp eq i32 %i.ce, 0
  %.not189 = icmp ult i32 %i.bz, 128
  %narrow = select i1 %.not18.i, i32 0, i32 %i.cd
  %i.cf = zext nneg i32 %narrow to i128
  %.sink211 = shl i128 %i.c, %i.cf
  %spec.select210 = select i1 %.not189, i128 %.sink211, i128 0
  store i128 %spec.select210, ptr %1, align 16, !alias.scope !4008, !noalias !4011
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.cg, align 16
  br label %bb.c

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #42, !noalias !4013
  unreachable

bb.an:                                            ; preds = %bb.f
  switch i8 %2, label %default.unreachable200 [
    i8 2, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
    i8 1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88
    i8 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
    i8 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88
    i8 4, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
  ]

bb.ao:                                            ; preds = %bb.f
  %i.ch = and i8 %2, 6
  %switch = icmp eq i8 %i.ch, 2
  br i1 %switch, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split: ; preds = %bb.an, %bb.ao, %bb.an, %bb.an
  br label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88: ; preds = %bb.an, %bb.ao, %bb.an, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
  %.sroa.034.0168 = phi i8 [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 2, %bb.an ]
  %.sroa.399.0164 = phi i32 [ 1024, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 1023, %bb.an ], [ 1023, %bb.ao ], [ 1023, %bb.an ]
  %.sroa.0101.0 = phi i128 [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 9007199254740991, %bb.an ], [ 9007199254740991, %bb.ao ], [ 9007199254740991, %bb.an ]
  %.sroa.5103.1 = phi i8 [ 20, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7DoubleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 16, %bb.an ], [ 16, %bb.ao ], [ 16, %bb.an ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.5103.1, ptr %i.ci, align 16
  store i128 %.sroa.0101.0, ptr %0, align 16
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.399.0164, ptr %.sroa.4106.0..sroa_idx, align 16
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.034.0168, ptr %.sroa.5107.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.p, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @216, i64 22), i64 10, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE9normalizeCsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.b, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 5 uses
  switch i8 %.sroa.4.0.copyload, label %.preheader.preheader [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i128, ptr %1, align 16, !alias.scope !4014, !noundef !295 ; 6 uses
  %i.d = icmp eq i128 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 16
  br label %bb.c

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread: ; preds = %.preheader.preheader
  %i.f = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.c, i1 true)
  %i.g = trunc nuw nsw i128 %i.f to i64
  %i.h = sub nuw nsw i64 128, %i.g
  %.not41204 = icmp eq i8 %3, 0
  br label %bb.d

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %.preheader.preheader
  %.not41 = icmp eq i8 %3, 0
  br i1 %.not41, label %.thread141, label %bb.d

bb.c:                                             ; preds = %.split.i, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76, %bb.ae, %bb.aj, %bb.ah, %bb.b
  ret void

bb.d:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %.not41207 = phi i1 [ %.not41204, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 2 uses
  %.sroa.0.0.i206 = phi i64 [ %i.h, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = load i32, ptr %i.i, align 16, !noundef !295 ; 8 uses
  %i.k = trunc nuw nsw i64 %.sroa.0.0.i206 to i32
  %i.l = add nsw i32 %i.k, -24
  %i.m = tail call i32 @llvm.sadd.sat.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 127
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -126) ; 4 uses
  %i.o = icmp slt i32 %spec.store.select1, %i.j
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !range !3756, !noundef !295 ; 2 uses
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.an, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.r = icmp sgt i32 %spec.store.select1, %i.j
  br i1 %i.r, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.e
  br i1 %.not41207, label %bb.al, label %bb.ak, !prof !7

bb.i:                                             ; preds = %bb.g
  %i.s = sub i32 %spec.store.select1, %i.j        ; 4 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4020)
  %i.u = add nsw i64 %i.t, -1                     ; 2 uses
  %i.v = icmp ult i64 %i.u, 128                   ; 3 uses
  %.sroa.010.0.i.i = select i1 %i.v, i128 %i.c, i128 0 ; 2 uses
  %i.w = and i64 %i.u, 127
  %i.x = zext nneg i64 %i.w to i128
  %i.y = shl nuw i128 1, %i.x                     ; 2 uses
  %i.z = and i128 %.sroa.010.0.i.i, %i.y
  %.not.i.i = icmp eq i128 %i.z, 0                ; 3 uses
  %i.aa = add i128 %i.y, -1
  %i.ab = and i128 %.sroa.010.0.i.i, %i.aa
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.idx = select i1 %i.v, i64 0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ag = phi ptr [ %i.ae, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.val.i.i.i = load i128, ptr %i.ag, align 16, !alias.scope !4022, !noalias !4025, !noundef !295
  %i.ah = icmp eq i128 %.val.i.i.i, 0
  br i1 %i.ah, label %bb.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.k, %bb.j
  %spec.select.i.i47 = select i1 %.not.i.i, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %.thread16.i.i, %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i
  %.sroa.09.0.i17.i = phi i8 [ 1, %bb.l ], [ %spec.select.i.i47, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.i.i ], [ 3, %.thread16.i.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECsileJQcQObtj_7hir_def.exit.thread.i.i ] ; 4 uses
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.s) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, !prof !314

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %i.ak = extractvalue { i32, i1 } %i.ai, 0       ; 2 uses
  store i32 %i.ak, ptr %i.i, align 16, !alias.scope !4020, !noalias !4017
  %i.al = and i64 %i.t, 127
  %i.am = and i32 %i.s, 127
  %.not12.i = icmp eq i32 %i.am, 0
  %i.an = zext nneg i64 %i.al to i128
  %.not11.us.i = icmp ult i32 %i.s, 128
  %i.ao = select i1 %.not12.i, i128 0, i128 %i.an
  %.sink = lshr i128 %i.c, %i.ao
  %spec.select208 = select i1 %.not11.us.i, i128 %.sink, i128 0 ; 2 uses
  store i128 %spec.select208, ptr %1, align 16, !alias.scope !4017, !noalias !4020
  br i1 %.not41207, label %.thread, label %bb.n

bb.m:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #42, !noalias !4028
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.sroa.012.0 = phi i8 [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %spec.store.select, %bb.o ], [ 1, %bb.n ]
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i206, i64 %i.t)
  br label %bb.p

bb.n:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.aq = icmp eq i8 %.sroa.09.0.i17.i, 0
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %.sroa.09.0.i17.i, 2
  %spec.store.select = select i1 %i.ar, i8 3, i8 %.sroa.09.0.i17.i
  br label %.thread

bb.p:                                             ; preds = %bb.g, %.thread
  %i.as = phi i32 [ %i.ak, %.thread ], [ %i.j, %bb.g ]
  %i.at = phi i128 [ %spec.select208, %.thread ], [ %i.c, %bb.g ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %i.ap, %.thread ], [ %.sroa.0.0.i206, %bb.g ] ; 6 uses
  %i.au = phi i8 [ %.sroa.012.0, %.thread ], [ %3, %bb.g ] ; 4 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4029)
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !4029 ; 4 uses
  %spec.select.i.i.i = icmp ugt i8 %.sroa.4.0.copyload, 1
  %i.aw = icmp eq i8 %.sroa.4.0.copyload, 3
  br i1 %spec.select.i.i.i, label %bb.s, label %bb.r, !prof !3931

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 61, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #42, !noalias !4029
  unreachable

bb.s:                                             ; preds = %bb.q
  switch i8 %2, label %default.unreachable200 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
    i8 4, label %bb.v
  ]

default.unreachable200:                           ; preds = %bb.an, %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  switch i8 %i.au, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139 [
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.s
  %i.ax = xor i8 %.sroa.4.0.copyload.i, 1
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

bb.v:                                             ; preds = %bb.s
  %i.ay = icmp eq i8 %i.au, 2
  br i1 %i.ay, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.aw, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = trunc i128 %i.at to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

bb.y:                                             ; preds = %bb.v
  %i.ba = icmp eq i8 %i.au, 3
  %i.bb = zext i1 %i.ba to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit: ; preds = %bb.s, %bb.u, %bb.x, %bb.y
  %.sroa.0.0.i48 = phi i8 [ %i.bb, %bb.y ], [ %.sroa.4.0.copyload.i, %bb.s ], [ %i.az, %bb.x ], [ %i.ax, %bb.u ]
  %i.bc = trunc i8 %.sroa.0.0.i48 to i1
  br i1 %i.bc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139

bb.z:                                             ; preds = %bb.p
  %i.bd = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.bd, label %.thread141, label %bb.aj

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread: ; preds = %bb.t, %bb.v, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
  %i.be = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.be, label %bb.aa, label %.lr.ph.i

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139: ; preds = %bb.w, %bb.t, %bb.s, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit
  %.sroa.016.1 = phi i64 [ %.sroa.016.0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit ], [ %i.bl, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53 ], [ %.sroa.016.0, %bb.s ], [ %.sroa.016.0, %bb.t ], [ %.sroa.016.0, %bb.w ] ; 3 uses
  %i.bf = icmp eq i64 %.sroa.016.1, 24
  br i1 %i.bf, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread
  store i32 -126, ptr %i.i, align 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread, %bb.aa
  %i.bg = phi i32 [ %i.as, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread ], [ -126, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bh = add i128 %i.at, 1                       ; 4 uses
  store i128 %i.bh, ptr %1, align 16, !alias.scope !4032
  %i.bi = icmp eq i128 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53

bb.ab:                                            ; preds = %.lr.ph.i
  store i128 1, ptr %i.a, align 16
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @122, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #42
  unreachable

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.bh, i1 true) ; 2 uses
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = sub nuw nsw i64 128, %i.bk
  %i.bm = icmp eq i128 %i.bj, 103
  br i1 %i.bm, label %bb.ac, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139

bb.ac:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53
  %i.bn = icmp eq i32 %i.bg, 127
  br i1 %i.bn, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60

bb.ad:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
  %i.bo = icmp ult i64 %.sroa.016.1, 24
  br i1 %i.bo, label %bb.ag, label %bb.af, !prof !3935

bb.ae:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSE20round_away_from_zeroCsileJQcQObtj_7hir_def.exit.thread139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bp, align 16
  br label %bb.c

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.bq = icmp eq i64 %.sroa.016.1, 0
  br i1 %i.bq, label %.thread151, label %bb.ah

.thread151:                                       ; preds = %bb.ag
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.not.i56 = icmp ne i8 %.sroa.4.0.copyload.i, 0
  %spec.select160 = zext i1 %.not.i56 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @217, i64 21, i1 false)
  store i8 %spec.select160, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.496.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @217, i64 22), i64 10, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 24, ptr %i.br, align 16
  br label %bb.c

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60: ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4038)
  %i.bs = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 1) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %bb.ai, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, !prof !314

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  %i.bu = extractvalue { i32, i1 } %i.bs, 0
  store i32 %i.bu, ptr %i.i, align 16, !alias.scope !4038, !noalias !4035
  %i.bv = lshr i128 %i.bh, 1
  store i128 %i.bv, ptr %1, align 16, !alias.scope !4035, !noalias !4038
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bw, align 16
  br label %bb.c

bb.ai:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #42, !noalias !4040
  unreachable

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit76: ; preds = %bb.ac
  %.not.i77 = icmp ne i8 %.sroa.4.0.copyload.i, 0
  %spec.select161 = zext i1 %.not.i77 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 20, ptr %i.bx, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @219, i64 21, i1 false)
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select161, ptr %.sroa.4123.0..sroa_idx, align 1
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5124.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @219, i64 22), i64 10, i1 false)
  br label %bb.c

.thread141:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, %bb.z
  %.sroa.3.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.not.i81 = icmp ne i8 %.sroa.3.0.copyload, 0
  %spec.select162 = zext i1 %.not.i81 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @217, i64 21, i1 false)
  store i8 %spec.select162, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.490.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @217, i64 22), i64 10, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.z, %.thread141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.by, align 16
  br label %bb.c

bb.ak:                                            ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee4LossBM_ECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @124, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #42
  unreachable

bb.al:                                            ; preds = %bb.h
  %i.bz = sub i32 %i.j, %spec.store.select1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4044)
  %i.ca = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.j, i32 %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.am, label %.split.i, !prof !314

.split.i:                                         ; preds = %bb.al
  %i.cc = extractvalue { i32, i1 } %i.ca, 0
  store i32 %i.cc, ptr %i.i, align 16, !alias.scope !4044, !noalias !4041
  %i.cd = and i32 %i.bz, 127
  %i.ce = and i32 %i.bz, 127
  %.not18.i = icmp eq i32 %i.ce, 0
  %.not189 = icmp ult i32 %i.bz, 128
  %narrow = select i1 %.not18.i, i32 0, i32 %i.cd
  %i.cf = zext nneg i32 %narrow to i128
  %.sink211 = shl i128 %i.c, %i.cf
  %spec.select210 = select i1 %.not189, i128 %.sink211, i128 0
  store i128 %spec.select210, ptr %1, align 16, !alias.scope !4041, !noalias !4044
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.cg, align 16
  br label %bb.c

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #42, !noalias !4046
  unreachable

bb.an:                                            ; preds = %bb.f
  switch i8 %2, label %default.unreachable200 [
    i8 2, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
    i8 1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88
    i8 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
    i8 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88
    i8 4, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
  ]

bb.ao:                                            ; preds = %bb.f
  %i.ch = and i8 %2, 6
  %switch = icmp eq i8 %i.ch, 2
  br i1 %switch, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split: ; preds = %bb.an, %bb.ao, %bb.an, %bb.an
  br label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88: ; preds = %bb.an, %bb.ao, %bb.an, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split
  %.sroa.034.0168 = phi i8 [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 2, %bb.an ]
  %.sroa.399.0164 = phi i32 [ 128, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 127, %bb.an ], [ 127, %bb.ao ], [ 127, %bb.an ]
  %.sroa.0101.0 = phi i128 [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 16777215, %bb.an ], [ 16777215, %bb.ao ], [ 16777215, %bb.an ]
  %.sroa.5103.1 = phi i8 [ 20, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_7SingleSENtB7_5Float9copy_signCsileJQcQObtj_7hir_def.exit88.sink.split ], [ 16, %bb.an ], [ 16, %bb.ao ], [ 16, %bb.an ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.5103.1, ptr %i.ci, align 16
  store i128 %.sroa.0101.0, ptr %0, align 16
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.399.0164, ptr %.sroa.4106.0..sroa_idx, align 16
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.034.0168, ptr %.sroa.5107.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.p, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @219, i64 22), i64 10, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsl_NtCsileJQcQObtj_7hir_def10import_mapNtB5_9ImportMap2of(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %2, ptr %i.b, align 4, !noalias !4047
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.c, align 4, !noalias !4047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4047
  store ptr %0, ptr %i.a, align 8, !noalias !4047
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8, !noalias !4047
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8, !noalias !4047
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4047
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4047
  %i.f = call noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCsileJQcQObtj_7hir_def10import_map9ImportMapDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_B1W_B1U_2of3of_0E0B1T_EB1Y_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @245, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !295
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !295 ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, label %bb.b

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 40) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, %bb.a
  ret void

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.g) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsileJQcQObtj_7hir_def3hir3PatE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !295
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !295 ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, label %bb.b

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 56) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, %bb.a
  ret void

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.g) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsileJQcQObtj_7hir_def3hir4ExprE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !295
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !295 ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, label %bb.b

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 16, i64 noundef 48) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, %bb.a
  ret void

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.g) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsileJQcQObtj_7hir_def3hir5LabelE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !295
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !295 ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, label %bb.b

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 8) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, %bb.a
  ret void

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.g) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsileJQcQObtj_7hir_def3hir7BindingE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !295
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !295 ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, label %bb.b

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 16) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, %bb.a
  ret void

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.g) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope10ScopeEntryE13shrink_to_fitBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !295
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !295 ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, label %bb.b

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 16) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, %bb.a
  ret void

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.g) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataE13shrink_to_fitBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !295
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !295 ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, label %bb.b

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 32) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, %bb.a
  ret void

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.g) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataE13shrink_to_fitBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #5 {
end_hunk_0
