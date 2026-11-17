Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.08?download=true
inline.NumInlined: 2151
inline.NumDeleted: 1036
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0:bb.a

_RNCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0s_0B5_.exit.i.i: ; preds = %.lr.ph.i.split
  %i.ab = load ptr, ptr %i.s, align 8, !noalias !2118, !nonnull !8, !noundef !8
  %i.ac = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef nonnull %i.ab, ptr noundef nonnull readonly align 2 %i.w, i64 noundef range(i64 0, 2305843009213693952) %i.n)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0s_0B5_.exit.i.i
  br i1 %i.ac, label %bb.g, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerNCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0s_0E0B2d_.exit.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerNCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0s_0E0B2d_.exit.i: ; preds = %.lr.ph.i.split, %.noexc
  %i.ad = add i16 %.sroa.025.0, 1
  %i.ae = icmp ugt i64 %i.n, %i.x
  br i1 %i.ae, label %.loopexit35.loopexit, label %.lr.ph.i.split, !llvm.loop !2117

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #34
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.af = trunc i64 %5 to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.h, ptr %i.ag, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.025.0, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.af, ptr %.sroa.10.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %lpad.loopexit.split-lp48, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.j

.loopexit35.loopexit:                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerNCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0s_0E0B2d_.exit.i
  %.pre = load i64, ptr %i.m, align 8
  br label %.loopexit35

.loopexit35:                                      ; preds = %.loopexit35.loopexit, %bb.d
  %i.aj = phi i64 [ %i.n, %bb.d ], [ %.pre, %.loopexit35.loopexit ] ; 2 uses
  %i.ak = icmp ult i64 %i.q, 2305843009213693952
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.an = load i64, ptr %i.c, align 8, !range !31, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ao = icmp ult i64 %i.aj, 2305843009213693952
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aj
  store ptr %i.am, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.an, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.am, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ap, ptr %i.as, align 8
  call void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %6, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = trunc i64 %i.q to i16
  %i.au = trunc i64 %5 to i16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.h, ptr %i.av, align 8
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.at, ptr %.sroa.8.0..sroa_idx7, align 2
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.au, ptr %.sroa.10.0..sroa_idx9, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %.loopexit35, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerEECshxhuDJfZv4T_6fontbe.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0s_0B5_.exit.i.i, %bb.e
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #31
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { ptr, ptr } @_RNvNtCshxhuDJfZv4T_6fontbe4fvar16create_fvar_work() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @31 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { ptr, ptr } @_RNvNtCshxhuDJfZv4T_6fontbe4gasp16create_gasp_work() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @32 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCshxhuDJfZv4T_6fontbe4colrNtB2_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE11read_access(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 12, ptr %i.e, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 11, ptr %i.d, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @45, i64 32, i1 false)
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 4, ptr %i.c, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE17specific_instanceNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE17specific_instanceNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXNtCshxhuDJfZv4T_6fontbe4colrNtB2_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE2id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.a, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCshxhuDJfZv4T_6fontbe4colrNtB2_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE4exec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 25 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 2 uses
  %i.r = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.664 = alloca [32 x i8], align 8          ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 9 uses
  %i.u = alloca [8 x i8], align 8                 ; 12 uses
  %i.v = alloca [96 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 2 uses
  %i.y = alloca [24 x i8], align 8                ; 17 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [96 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 16 uses
  %i.ac = alloca [32 x i8], align 8               ; 16 uses
  %i.ad = alloca [24 x i8], align 8               ; 16 uses
  %i.ae = alloca [24 x i8], align 8               ; 14 uses
  %i.af = alloca [24 x i8], align 8               ; 16 uses
  %i.ag = alloca [8 x i8], align 8                ; 10 uses
  %i.ah = alloca [8 x i8], align 8                ; 16 uses
  %i.ai = alloca [8 x i8], align 8                ; 13 uses
  %i.aj = alloca [8 x i8], align 8                ; 12 uses
  %i.ak = alloca [40 x i8], align 8               ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [40 x i8], align 8               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.an = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ao = icmp ult i64 %i.an, 3
  br i1 %i.ao, label %bb.j, label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe.exit, %bb.ab, %bb.b
  %.sroa.082.0 = phi i8 [ %.sroa.082.1, %bb.b ], [ %.sroa.079.2, %bb.ab ], [ %.sroa.079.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe.exit ]
  %.sroa.079.0 = phi i8 [ %.sroa.079.1, %bb.b ], [ %.sroa.079.2, %bb.ab ], [ %.sroa.079.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe.exit ]
  %.pn194.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.b ], [ %.pn194.pn.pn.pn.pn.pn, %bb.ab ], [ %.pn194.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe.exit ] ; 2 uses
  %i.ap = trunc nuw i8 %.sroa.079.0 to i1
  %i.aq = load i64, ptr %i.am, align 8, !range !10
  %.not.i.i374 = icmp ne i64 %i.aq, 2
  %or.cond.not = select i1 %i.ap, i1 %.not.i.i374, i1 false
  br i1 %or.cond.not, label %bb.iw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit376

bb.b:                                             ; preds = %bb.ih, %bb.eq, %bb.g, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.d, %bb.t, %bb.q, %bb.n, %bb.m
  %.sroa.082.1 = phi i8 [ %.sroa.079.2, %bb.ih ], [ %.sroa.079.2, %bb.eq ], [ %.sroa.079.2, %bb.g ], [ 1, %bb.t ], [ 0, %bb.q ], [ 0, %bb.n ], [ 0, %bb.m ], [ %.sroa.079.2, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i ], [ %.sroa.079.2, %bb.d ]
  %.sroa.079.1 = phi i8 [ %.sroa.079.2, %bb.ih ], [ %.sroa.079.2, %bb.eq ], [ %.sroa.079.2, %bb.g ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.n ], [ 0, %bb.m ], [ %.sroa.079.2, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i ], [ %.sroa.079.2, %bb.d ]
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe.exit

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit
  unreachable

bb.d:                                             ; preds = %bb.r, %bb.t, %bb.a
  %.sroa.079.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.t ], [ 1, %bb.r ] ; 16 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 1872
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 448
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 480
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !2292, !nonnull !8, !noundef !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  invoke void @_RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 4)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 488
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !2292, !nonnull !8, !noundef !8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8 ; 4 uses
  %i.bc = and i64 %i.bb, 8
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = icmp ugt i64 %i.bb, -17
  %or.cond.i.i = or i1 %i.be, %i.bd
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, !prof !20

_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i: ; preds = %.noexc
  %i.bf = add nuw i64 %i.bb, 16
  %i.bg = cmpxchg weak ptr %i.ba, i64 %i.bb, i64 %i.bf acquire monotonic, align 8
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  br i1 %i.bh, label %.noexc232, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, !prof !21

_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %.noexc
  %i.bi = invoke noundef zeroext i1 @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.ba, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %.noexc232 unwind label %bb.b  ; 0 uses

.noexc232:                                        ; preds = %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc232
  %i.bl = atomicrmw add ptr %i.bk, i64 1 monotonic, align 8
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.h, %.noexc232
  %.sroa.0.0.i = phi ptr [ %i.bq, %bb.h ], [ null, %.noexc232 ] ; 2 uses
  %i.bn = atomicrmw add ptr %i.ba, i64 -16 release, align 8
  %i.bo = and i64 %i.bn, -14
  %i.bp = icmp eq i64 %i.bo, 18
  br i1 %i.bp, label %bb.g, label %_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtB6_2ir11ColorGlyphsE7try_getCshxhuDJfZv4T_6fontbe.exit, !prof !22

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ba)
          to label %_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtB6_2ir11ColorGlyphsE7try_getCshxhuDJfZv4T_6fontbe.exit unwind label %bb.b

bb.h:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %i.bj, align 8, !nonnull !8, !noundef !8
  br label %bb.f

bb.i:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.br = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bs = icmp ult i64 %i.br, 3
  br i1 %i.bs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j, %bb.p, %bb.o
  store i64 2, ptr %i.ak, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr null, ptr %i.bt, align 8
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.bu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXNtCshxhuDJfZv4T_6fontbe4colrNtB4_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1B_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bu, label %bb.m [
    i8 0, label %bb.k
    i8 1, label %bb.n
    i8 2, label %bb.n
  ], !prof !34

bb.m:                                             ; preds = %bb.l
  %i.bv = invoke noundef i8 @_RNvMNtCs6CpVowoi7NE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXNtCshxhuDJfZv4T_6fontbe4colrNtB4_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1B_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE)
          to label %bb.o unwind label %bb.b       ; 2 uses

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.o
  %.sroa.010.0 = phi i8 [ %i.bv, %bb.o ], [ %i.bu, %bb.l ], [ %i.bu, %bb.l ]
  %i.bw = load ptr, ptr @_RNvNvXNtCshxhuDJfZv4T_6fontbe4colrNtB4_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1B_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !8, !align !7, !noundef !8
  %i.bx = invoke noundef zeroext i1 @_RNvNtCseSYDGaa5U8h_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bw, i8 noundef %.sroa.010.0)
          to label %bb.p unwind label %bb.b

bb.o:                                             ; preds = %bb.m
  %.not = icmp eq i8 %i.bv, 0
  br i1 %.not, label %bb.k, label %bb.n

bb.p:                                             ; preds = %bb.n
  br i1 %i.bx, label %bb.q, label %bb.k

bb.q:                                             ; preds = %bb.p
  %i.by = load ptr, ptr @_RNvNvXNtCshxhuDJfZv4T_6fontbe4colrNtB4_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1B_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !8, !align !7, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  store i64 1, ptr %i.al, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.498.0..sroa_idx, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %.sroa.599.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  invoke void @_RNvMNtCseSYDGaa5U8h_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %bb.s unwind label %bb.b

bb.r:                                             ; preds = %bb.s, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false)
  %i.cb = load i64, ptr %i.am, align 8, !range !10, !noundef !8
  %.not177 = icmp eq i64 %i.cb, 2
  br i1 %.not177, label %bb.d, label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.r

bb.t:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cc)
          to label %bb.d unwind label %bb.b

_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtB6_2ir11ColorGlyphsE7try_getCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.f, %bb.g
  %.not178 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not178, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtB6_2ir11ColorGlyphsE7try_getCshxhuDJfZv4T_6fontbe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %.sroa.0.0.i, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 400
  %i.ce = getelementptr inbounds nuw i8, ptr %i.at, i64 432
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !2293, !nonnull !8, !noundef !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  invoke void @_RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 4)
          to label %.noexc239 unwind label %bb.ac

.noexc239:                                        ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 440
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !2293, !nonnull !8, !noundef !8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 5 uses
  %i.ck = load atomic i64, ptr %i.cj monotonic, align 8 ; 4 uses
  %i.cl = and i64 %i.ck, 8
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = icmp ugt i64 %i.ck, -17
  %or.cond.i.i234 = or i1 %i.cn, %i.cm
  br i1 %or.cond.i.i234, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i236, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i235, !prof !20

_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i235: ; preds = %.noexc239
  %i.co = add nuw i64 %i.ck, 16
  %i.cp = cmpxchg weak ptr %i.cj, i64 %i.ck, i64 %i.co acquire monotonic, align 8
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  br i1 %i.cq, label %.noexc240, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i236, !prof !21

_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i236: ; preds = %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i235, %.noexc239
end_hunk_0
begin_hunk_1_@_RNvXNtCshxhuDJfZv4T_6fontbe4colrNtB2_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE4exec:bb.a
  %i.ks = load ptr, ptr %i.et, align 8, !alias.scope !2334, !nonnull !8, !noundef !8
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !2330
  %i.ku = add i64 %i.kb, 1
  store i64 %i.ku, ptr %i.eu, align 8, !alias.scope !2334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2331
  br label %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit

bb.ck:                                            ; preds = %bb.ch
  %i.kv = getelementptr i8, ptr %i.ke, i64 -16
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !2331, !nonnull !8, !noundef !8 ; 5 uses
  %i.kx = load i16, ptr %i.kw, align 4, !range !24, !alias.scope !2336, !noalias !2331, !noundef !8
  %i.ky = icmp eq i16 %i.kx, 0
  br i1 %i.ky, label %bb.cl, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.cl:                                            ; preds = %bb.ck
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.la = load i16, ptr %i.kz, align 2, !alias.scope !2336, !noalias !2331, !noundef !8
  %i.lb = extractelement <2 x i16> %i.ka, i64 0
  %i.lc = icmp eq i16 %i.la, %i.lb
  br i1 %i.lc, label %bb.cm, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.cm:                                            ; preds = %bb.cl
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.le = load i16, ptr %i.ld, align 4, !alias.scope !2336, !noalias !2331, !noundef !8
  %i.lf = extractelement <2 x i16> %i.ka, i64 1
  %i.lg = icmp eq i16 %i.le, %i.lf
  br i1 %i.lg, label %bb.cn, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.cn:                                            ; preds = %bb.cm
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kw, i64 6
  %i.li = load i16, ptr %i.lh, align 2, !alias.scope !2336, !noalias !2331, !noundef !8
  %i.lj = icmp eq i16 %i.li, %.sroa.513.0.extract.trunc.i
  br i1 %i.lj, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.cn
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ll = load i16, ptr %i.lk, align 4, !alias.scope !2336, !noalias !2331, !noundef !8
  %i.lm = icmp eq i16 %i.ll, %.sroa.614.0.extract.trunc.i
  br i1 %i.lm, label %bb.co, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.co:                                            ; preds = %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i
  store i16 %i.jb, ptr %i.kf, align 2, !noalias !2331
  br label %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit

bb.cp:                                            ; preds = %bb.ca
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #34
          to label %bb.cq unwind label %.loopexit.split-lp502.loopexit.split-lp

bb.cq:                                            ; preds = %bb.dh, %bb.dd, %bb.cp, %bb.an
  unreachable

_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit: ; preds = %bb.co, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  %i.ln = load ptr, ptr %i.u, align 8, !alias.scope !2339, !nonnull !8, !noundef !8
  %i.lo = atomicrmw add ptr %i.ln, i64 -1 release, align 8, !noalias !2339
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.cr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259

bb.cr:                                            ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259 unwind label %.loopexit493

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259: ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259, %bb.db, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit280, %bb.ar
  %i.lq = icmp eq ptr %i.fr, %i.fa
  br i1 %i.lq, label %._crit_edge539, label %bb.ap

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit250: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit272, %bb.cy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit250
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body261.thread unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.dw

bb.cv:                                            ; preds = %bb.ct
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.cw:                                            ; preds = %bb.iw, %bb.ip, %bb.el, %bb.dj, %bb.bg, %bb.ai, %bb.af, %bb.ab, %.critedge204, %bb.io, %.thread434, %.critedge203, %.critedge, %.critedge205, %bb.ix, %.thread392, %.body285.thread, %.body281.thread, %.body261.thread, %.thread, %.critedge207.thread401, %bb.ay
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body266

.body266:                                         ; preds = %bb.di, %bb.cw
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

.thread391:                                       ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr18colr_v0_compatible.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.lu = load ptr, ptr %i.ai, align 8, !nonnull !8, !noundef !8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ly = load ptr, ptr %i.gc, align 8, !nonnull !8, !noundef !8
  store ptr %i.ly, ptr %i.z, align 8
  invoke fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.lx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.016.0536, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef 1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae)
          to label %bb.cx unwind label %.loopexit493

bb.cx:                                            ; preds = %.thread391
  %i.lz = load i64, ptr %i.aa, align 8, !range !33, !noundef !8 ; 2 uses
  %.not184 = icmp eq i64 %i.lz, -1
  br i1 %.not184, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.4109.sroa.0.0.copyload = load i48, ptr %i.fh, align 8
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(82) %.sroa.5113.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(82) %.sroa.5110.0..sroa_idx, i64 82, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %i.lz, ptr %0, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i48 %.sroa.4109.sroa.0.0.copyload, ptr %.sroa.4112.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cs

bb.cz:                                            ; preds = %bb.cx
  %.sroa.0170.0.copyload = load i48, ptr %i.fh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ma = load i64, ptr %i.ea, align 8, !alias.scope !2340, !noundef !8 ; 3 uses
  %i.mb = load i64, ptr %i.af, align 8, !range !31, !alias.scope !2340, !noundef !8
  %i.mc = icmp eq i64 %i.ma, %i.mb
  br i1 %i.mc, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9BaseGlyphE8grow_oneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #35
          to label %bb.db unwind label %.loopexit493

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.md = load ptr, ptr %i.dz, align 8, !alias.scope !2340, !nonnull !8, !noundef !8
  %i.me = getelementptr inbounds nuw [6 x i8], ptr %i.md, i64 %i.ma
  store i48 %.sroa.0170.0.copyload, ptr %i.me, align 2
  %i.mf = add i64 %i.ma, 1
  store i64 %i.mf, ptr %i.ea, align 8, !alias.scope !2340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.backedge

._crit_edge703:                                   ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.mg = load ptr, ptr %i.gc, align 8, !nonnull !8, !noundef !8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load i64, ptr %i.mh, align 8, !noundef !8 ; 3 uses
  %i.mj = icmp ult i64 %i.mi, 576460752303423488
  call void @llvm.assume(i1 %i.mj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.mi, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.dc unwind label %.loopexit493

bb.dc:                                            ; preds = %._crit_edge703
  %i.mk = load i64, ptr %i.g, align 8, !range !11, !noundef !8
  %i.ml = trunc nuw i64 %i.mk to i1
  br i1 %i.ml, label %bb.dd, label %bb.de, !prof !22

bb.dd:                                            ; preds = %bb.dc
  %i.mm = load i64, ptr %i.fc, align 8, !range !30, !noundef !8
  %i.mn = load i64, ptr %i.fd, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.mm, i64 %i.mn) #34
          to label %bb.cq unwind label %.loopexit.split-lp494

bb.de:                                            ; preds = %bb.dc
  %i.mo = load i64, ptr %i.fc, align 8, !range !31, !noundef !8 ; 2 uses
  %i.mp = load ptr, ptr %i.fd, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.mq = icmp samesign ule i64 %i.mi, %i.mo
  call void @llvm.assume(i1 %i.mq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.mo, ptr %i.y, align 8
  store ptr %i.mp, ptr %i.fe, align 8
  store i64 0, ptr %i.ff, align 8
  %i.mr = load ptr, ptr %i.gc, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !noundef !8 ; 2 uses
  %.idx540 = shl nuw nsw i64 %i.mv, 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.idx540
  %i.mx = icmp eq i64 %i.mv, 0
  br i1 %i.mx, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.de, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe.exit
  %i.my = phi i64 [ %i.no, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe.exit ], [ 0, %bb.de ] ; 3 uses
  %.sroa.025.0535 = phi ptr [ %i.mz, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe.exit ], [ %i.mt, %bb.de ] ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.025.0535, i64 16 ; 2 uses
  store ptr %.sroa.025.0535, ptr %i.x, align 8, !captures !2341
  %i.na = load i64, ptr %.sroa.025.0535, align 8, !range !32, !noundef !8
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %bb.df, label %bb.dh, !prof !23

._crit_edge.loopexit:                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe.exit
  %.pre = load ptr, ptr %i.fe, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.de
  %i.nc = phi i64 [ %i.no, %._crit_edge.loopexit ], [ 0, %bb.de ]
  %i.nd = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.mp, %bb.de ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ne = load ptr, ptr %i.ai, align 8, !nonnull !8, !noundef !8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  invoke fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.nh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.016.0536, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.nd, i64 noundef %i.nc, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %.lr.ph
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.025.0535, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !nonnull !8, !noundef !8
  %i.nk = load i64, ptr %i.y, align 8, !range !31, !alias.scope !2342, !noundef !8
  %i.nl = icmp eq i64 %i.my, %i.nk
  br i1 %i.nl, label %bb.dg, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe.exit

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8grow_oneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #35
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.dg, %bb.df
  %i.nm = load ptr, ptr %i.fe, align 8, !alias.scope !2342, !nonnull !8, !noundef !8
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.my
  store ptr %i.nj, ptr %i.nn, align 8, !noalias !2343, !captures !2341
  %i.no = add i64 %i.my, 1                        ; 3 uses
  store i64 %i.no, ptr %i.ff, align 8, !alias.scope !2342
  %i.np = icmp eq ptr %i.mz, %i.mw
  br i1 %i.np, label %._crit_edge.loopexit, label %.lr.ph

bb.dh:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.x, ptr %i.w, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs3v5ql5U6hxj_6fontir2ir5PaintNtB6_5Debug3fmtCshxhuDJfZv4T_6fontbe, ptr %.sroa.4117.0..sroa_idx, align 8
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @47, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #34
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dr, %._crit_edge, %bb.dg, %bb.dh
  %lpad.loopexit.split-lp545 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body266 unwind label %bb.dk

bb.dj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.thread unwind label %bb.cw

bb.dk:                                            ; preds = %bb.di
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.dl:                                            ; preds = %._crit_edge
  %i.ns = load i64, ptr %i.v, align 8, !range !33, !noundef !8 ; 2 uses
  %.not183 = icmp eq i64 %i.ns, -1
  br i1 %.not183, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.sroa.4122.sroa.0.0.copyload = load i48, ptr %i.fg, align 8
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(82) %.sroa.5126.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(82) %.sroa.5123.0..sroa_idx, i64 82, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.ns, ptr %0, align 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i48 %.sroa.4122.sroa.0.0.copyload, ptr %.sroa.4125.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.do unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.thread unwind label %bb.dp

bb.do:                                            ; preds = %bb.dm
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit272 unwind label %.loopexit.split-lp494

bb.dp:                                            ; preds = %bb.dn
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.dq:                                            ; preds = %bb.dl
  %.sroa.0175.0.copyload = load i48, ptr %i.fg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.nv = load i64, ptr %i.ea, align 8, !alias.scope !2344, !noundef !8 ; 3 uses
  %i.nw = load i64, ptr %i.af, align 8, !range !31, !alias.scope !2344, !noundef !8
  %i.nx = icmp eq i64 %i.nv, %i.nw
  br i1 %i.nx, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9BaseGlyphE8grow_oneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #35
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %i.ny = load ptr, ptr %i.dz, align 8, !alias.scope !2344, !nonnull !8, !noundef !8
  %i.nz = getelementptr inbounds nuw [6 x i8], ptr %i.ny, i64 %i.nv
  store i48 %.sroa.0175.0.copyload, ptr %i.nz, align 2
  %i.oa = add i64 %i.nv, 1
  store i64 %i.oa, ptr %i.ea, align 8, !alias.scope !2344
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.du unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ob = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.thread unwind label %bb.dv

bb.du:                                            ; preds = %bb.ds
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit280 unwind label %.loopexit493

bb.dv:                                            ; preds = %bb.dt
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit280: ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.backedge

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit272: ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cs

.body261:                                         ; preds = %bb.hu, %bb.dw, %.thread, %bb.aq
  %.sroa.094.4 = phi i8 [ 0, %bb.aq ], [ %.sroa.094.2383, %.thread ], [ 0, %bb.hu ], [ %.sroa.093.4, %bb.dw ] ; 2 uses
  %.sroa.093.3 = phi i8 [ 0, %bb.aq ], [ %.sroa.093.2384, %.thread ], [ 0, %bb.hu ], [ %.sroa.093.4, %bb.dw ] ; 2 uses
  %.sroa.077.1 = phi i8 [ %.sroa.077.7415, %bb.aq ], [ %.sroa.077.0385, %.thread ], [ %.sroa.077.6, %bb.hu ], [ %.sroa.077.2, %bb.dw ] ; 2 uses
  %.sroa.075.1 = phi i8 [ %.sroa.075.4417, %bb.aq ], [ %.sroa.075.0386, %.thread ], [ %.sroa.075.6, %bb.hu ], [ %.sroa.075.2, %bb.dw ]
  %.pn190 = phi { ptr, i32 } [ %.pn421, %bb.aq ], [ %.pn.pn.pn387, %.thread ], [ %i.vx, %bb.hu ], [ %i.oe, %bb.dw ] ; 2 uses
  %i.od = trunc nuw i8 %.sroa.075.1 to i1
  br i1 %i.od, label %.body261.thread, label %.body281

bb.dw:                                            ; preds = %bb.hv, %bb.cu
  %.sroa.093.4 = phi i8 [ 0, %bb.hv ], [ 1, %bb.cu ] ; 2 uses
  %.sroa.077.2 = phi i8 [ %.sroa.077.6, %bb.hv ], [ 1, %bb.cu ]
  %.sroa.075.2 = phi i8 [ %.sroa.075.6, %bb.hv ], [ 1, %bb.cu ]
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.body261

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBK_6tables4colr5PaintKj4_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables4colr5PaintKj4_EEECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.dx

bb.dx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipEECshxhuDJfZv4T_6fontbe.exit
  %i.of = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBR_6tables4colr5PaintKj4_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %.body281.thread unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.og = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables4colr5PaintKj4_EEECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipEECshxhuDJfZv4T_6fontbe.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBR_6tables4colr5PaintKj4_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9LayerListECshxhuDJfZv4T_6fontbe.exit unwind label %bb.dz

.body281:                                         ; preds = %bb.hy, %bb.dz, %.body261.thread, %.body261
  %.sroa.094.6 = phi i8 [ %.sroa.094.4, %.body261 ], [ %.sroa.094.4471, %.body261.thread ], [ 0, %bb.hy ], [ %.sroa.093.6, %bb.dz ] ; 2 uses
  %.sroa.093.5 = phi i8 [ %.sroa.093.3, %.body261 ], [ %.sroa.093.3472, %.body261.thread ], [ 0, %bb.hy ], [ %.sroa.093.6, %bb.dz ] ; 2 uses
  %.sroa.077.3 = phi i8 [ %.sroa.077.1, %.body261 ], [ %.sroa.077.1473, %.body261.thread ], [ %.sroa.077.6, %bb.hy ], [ %.sroa.077.4, %bb.dz ]
  %.pn192 = phi { ptr, i32 } [ %.pn190, %.body261 ], [ %.pn190474, %.body261.thread ], [ %i.wa, %bb.hy ], [ %i.oi, %bb.dz ] ; 2 uses
  %i.oh = trunc nuw i8 %.sroa.077.3 to i1
  br i1 %i.oh, label %.body281.thread, label %.body285

bb.dz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables4colr5PaintKj4_EEECshxhuDJfZv4T_6fontbe.exit.i345, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables4colr5PaintKj4_EEECshxhuDJfZv4T_6fontbe.exit.i
  %.sroa.093.6 = phi i8 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables4colr5PaintKj4_EEECshxhuDJfZv4T_6fontbe.exit.i345 ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables4colr5PaintKj4_EEECshxhuDJfZv4T_6fontbe.exit.i ] ; 2 uses
  %.sroa.077.4 = phi i8 [ %.sroa.077.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables4colr5PaintKj4_EEECshxhuDJfZv4T_6fontbe.exit.i345 ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables4colr5PaintKj4_EEECshxhuDJfZv4T_6fontbe.exit.i ]
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body281

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9LayerListECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables4colr5PaintKj4_EEECshxhuDJfZv4T_6fontbe.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.eb unwind label %bb.ea

bb.ea:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9LayerListECshxhuDJfZv4T_6fontbe.exit
  %i.oj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body285.thread unwind label %bb.ec

bb.eb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9LayerListECshxhuDJfZv4T_6fontbe.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.al

bb.ec:                                            ; preds = %bb.ea
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.ee unwind label %bb.ed

bb.ed:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintEECshxhuDJfZv4T_6fontbe.exit
  %i.ol = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.thread392 unwind label %bb.ef

bb.ee:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintEECshxhuDJfZv4T_6fontbe.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ed
  %i.om = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.eg:                                            ; preds = %.body285.thread, %.body285
  %.sroa.094.8 = phi i8 [ %.sroa.094.0452, %.body285.thread ], [ %.sroa.094.0, %.body285 ]
  %.pn194.pn = phi { ptr, i32 } [ %.pn194453, %.body285.thread ], [ %.pn194, %.body285 ] ; 2 uses
  %i.on = trunc nuw i8 %.sroa.094.8 to i1
  br i1 %i.on, label %.thread392, label %.body291

bb.eh:                                            ; preds = %bb.ee
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.thread392

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9BaseGlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.ej unwind label %bb.ei

bb.ei:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerEECshxhuDJfZv4T_6fontbe.exit
  %i.op = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvXNtCshxhuDJfZv4T_6fontbe4colrNtB2_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE4exec:bb.a
  %i.we = icmp eq i64 %i.wd, 1
  br i1 %i.we, label %bb.ia, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit353

bb.ia:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintEECshxhuDJfZv4T_6fontbe.exit359
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit353 unwind label %bb.aj

bb.ib:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9LayerListECshxhuDJfZv4T_6fontbe.exit351
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.id unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.wf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body291 unwind label %bb.ie

bb.id:                                            ; preds = %bb.ib
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintEECshxhuDJfZv4T_6fontbe.exit359 unwind label %bb.al

bb.ie:                                            ; preds = %bb.ic
  %i.wg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit353: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintEECshxhuDJfZv4T_6fontbe.exit359, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %i.wh = load ptr, ptr %i.ah, align 8, !alias.scope !2383, !nonnull !8, !noundef !8
  %i.wi = atomicrmw add ptr %i.wh, i64 -1 release, align 8, !noalias !2383
  %i.wj = icmp eq i64 %i.wi, 1
  br i1 %i.wj, label %bb.if, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit361

bb.if:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit353
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit361 unwind label %bb.ag

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit361: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit353, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.wk = load ptr, ptr %i.ai, align 8, !alias.scope !2386, !nonnull !8, !noundef !8
  %i.wl = atomicrmw add ptr %i.wk, i64 -1 release, align 8, !noalias !2386
  %i.wm = icmp eq i64 %i.wl, 1
  br i1 %i.wm, label %bb.ig, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe.exit363

bb.ig:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit361
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe.exit363 unwind label %bb.ac

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe.exit363: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit361, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  %i.wn = load ptr, ptr %i.aj, align 8, !alias.scope !2389, !nonnull !8, !noundef !8
  %i.wo = atomicrmw add ptr %i.wn, i64 -1 release, align 8, !noalias !2389
  %i.wp = icmp eq i64 %i.wo, 1
  br i1 %i.wp, label %bb.ih, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe.exit365

bb.ih:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe.exit363
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe.exit365 unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe.exit365: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe.exit363, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.wq = trunc nuw i8 %.sroa.079.2 to i1
  %i.wr = load i64, ptr %i.am, align 8, !range !10
  %.not.i.i = icmp ne i64 %i.wr, 2
  %or.cond487.not = select i1 %i.wq, i1 %.not.i.i, i1 false
  br i1 %or.cond487.not, label %bb.ii, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373

bb.ii:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe.exit365
  %i.ws = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ws)
          to label %.thread439 unwind label %.thread440

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit376: ; preds = %bb.iw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe.exit
  %i.wt = trunc nuw i8 %.sroa.082.0 to i1
  br i1 %i.wt, label %bb.ix, label %common.resume

.thread440:                                       ; preds = %bb.ii, %bb.iq
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

.thread439:                                       ; preds = %bb.ii
  %.pr = load i64, ptr %i.am, align 8, !alias.scope !2390 ; 2 uses
  %.not.i.i367 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i367, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373, label %bb.ij

bb.ij:                                            ; preds = %.thread439
  %i.wv = load i64, ptr %i.ws, align 8, !range !15, !alias.scope !2391, !noundef !8
  %i.ww = invoke noundef zeroext i1 @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef %i.wv)
          to label %bb.il unwind label %bb.ik     ; 0 uses

bb.ik:                                            ; preds = %bb.ij
  %i.wx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am) #31
          to label %common.resume unwind label %bb.in

bb.il:                                            ; preds = %bb.ij
  call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %i.wy = icmp eq i64 %.pr, 0
  br i1 %i.wy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.wz = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  %i.xa = load ptr, ptr %i.wz, align 8, !alias.scope !2398, !nonnull !8, !noundef !8
  %i.xb = atomicrmw add ptr %i.xa, i64 -1 release, align 8, !noalias !2399
  %i.xc = icmp eq i64 %i.xb, 1
  br i1 %i.xc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373

bb.in:                                            ; preds = %bb.ik
  %i.xd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit376, %bb.ix, %bb.is, %bb.ik
  %common.resume.op = phi { ptr, i32 } [ %i.xo, %bb.is ], [ %i.wx, %bb.ik ], [ %.pn194.pn.pn.pn.pn.pn.pn.pn444, %bb.ix ], [ %.pn194.pn.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit376 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373.sink.split: ; preds = %bb.im, %bb.iu
  %.sink652 = phi ptr [ %i.xq, %bb.iu ], [ %i.wz, %bb.im ]
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink652) #35
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373.sink.split, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe.exit365, %.thread439, %bb.il, %bb.im, %bb.er, %.thread446, %bb.it, %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  ret void

.thread434:                                       ; preds = %.body314, %.body319, %.body334, %bb.ff, %bb.ga, %bb.fq
  %.pn422 = phi { ptr, i32 } [ %i.py, %bb.ff ], [ %i.qm, %bb.fq ], [ %i.rb, %bb.ga ], [ %eh.lpad-body.i.i.i, %.body314 ], [ %eh.lpad-body.i.i.i318, %.body319 ], [ %eh.lpad-body.i.i.i333, %.body334 ] ; 2 uses
  %.sroa.073.2420 = phi i8 [ 1, %bb.ff ], [ 1, %bb.fq ], [ 0, %bb.ga ], [ 1, %.body314 ], [ 1, %.body319 ], [ 0, %.body334 ] ; 2 uses
  %.sroa.075.4418 = phi i8 [ 1, %bb.ff ], [ 0, %bb.fq ], [ %.sroa.075.6, %bb.ga ], [ 1, %.body314 ], [ 0, %.body319 ], [ %.sroa.075.6, %.body334 ] ; 2 uses
  %.sroa.077.7416 = phi i8 [ 0, %bb.ff ], [ %.sroa.077.6, %bb.fq ], [ %.sroa.077.6, %bb.ga ], [ 0, %.body314 ], [ %.sroa.077.6, %.body319 ], [ %.sroa.077.6, %.body334 ] ; 2 uses
  %.val228 = load ptr, ptr %i.l, align 8, !align !7, !noundef !8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6WnK4nVnpEz_11write_fonts7offsets20NullableOffsetMarkerINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtBG_6tables4colr9BaseGlyphEKj4_EECshxhuDJfZv4T_6fontbe(ptr %.val228) #31
          to label %bb.io unwind label %bb.cw

bb.io:                                            ; preds = %.thread434
  %i.xe = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val229 = load ptr, ptr %i.xe, align 8, !align !7, !noundef !8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6WnK4nVnpEz_11write_fonts7offsets20NullableOffsetMarkerINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtBG_6tables4colr5LayerEKj4_EECshxhuDJfZv4T_6fontbe(ptr %.val229) #31
          to label %.critedge unwind label %bb.cw

.critedge:                                        ; preds = %bb.io
  %i.xf = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val224 = load ptr, ptr %i.xf, align 8, !align !7, !noundef !8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6WnK4nVnpEz_11write_fonts7offsets20NullableOffsetMarkerNtNtNtBG_6tables4colr13BaseGlyphListKj4_EECshxhuDJfZv4T_6fontbe(ptr %.val224) #31
          to label %.critedge203 unwind label %bb.cw

.critedge203:                                     ; preds = %.critedge
  %i.xg = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val226 = load ptr, ptr %i.xg, align 8, !align !7, !noundef !8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6WnK4nVnpEz_11write_fonts7offsets20NullableOffsetMarkerNtNtNtBG_6tables4colr9LayerListKj4_EECshxhuDJfZv4T_6fontbe(ptr %.val226) #31
          to label %.critedge204 unwind label %bb.cw

.critedge204:                                     ; preds = %.critedge203
  %i.xh = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val230 = load ptr, ptr %i.xh, align 8, !align !7, !noundef !8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6WnK4nVnpEz_11write_fonts7offsets20NullableOffsetMarkerNtNtNtBG_6tables4colr8ClipListKj4_EECshxhuDJfZv4T_6fontbe(ptr %.val230) #31
          to label %.critedge205 unwind label %bb.cw

.critedge205:                                     ; preds = %.critedge204
  %i.xi = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.val = load ptr, ptr %i.xi, align 8, !align !7, !noundef !8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6WnK4nVnpEz_11write_fonts7offsets20NullableOffsetMarkerNtNtNtBG_6tables10variations16DeltaSetIndexMapKj4_EECshxhuDJfZv4T_6fontbe(ptr %.val) #31
          to label %.critedge206 unwind label %bb.cw

.critedge206:                                     ; preds = %.critedge205
  %i.xj = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.val218 = load ptr, ptr %i.xj, align 8, !align !7, !noundef !8 ; 2 uses
  %i.xk = icmp eq ptr %.val218, null
  br i1 %i.xk, label %bb.aq, label %bb.ip

bb.ip:                                            ; preds = %.critedge206
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations18ItemVariationStoreEECshxhuDJfZv4T_6fontbe(ptr nonnull %.val218)
          to label %bb.aq unwind label %bb.cw

.critedge207.thread401:                           ; preds = %bb.ey, %.critedge207.thread405
  %eh.lpad-body311404 = phi { ptr, i32 } [ %i.po, %.critedge207.thread405 ], [ %i.pn, %bb.ey ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9BaseGlyphEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #31
          to label %.thread unwind label %bb.cw

.thread:                                          ; preds = %.loopexit493, %.loopexit.split-lp494, %.critedge207, %.critedge207.thread401, %bb.et, %bb.dt, %bb.dn, %bb.dj, %.body251, %bb.bg, %bb.ay, %bb.aq
  %.pn.pn.pn387 = phi { ptr, i32 } [ %.pn421, %bb.aq ], [ %i.gv, %bb.ay ], [ %i.ob, %bb.dt ], [ %eh.lpad-body252, %.body251 ], [ %lpad.loopexit.split-lp545, %bb.dj ], [ %i.nt, %bb.dn ], [ %eh.lpad-body311404, %.critedge207.thread401 ], [ %eh.lpad-body252, %bb.bg ], [ %i.pj, %bb.et ], [ %i.pq, %.critedge207 ], [ %lpad.loopexit495, %.loopexit493 ], [ %lpad.loopexit.split-lp496, %.loopexit.split-lp494 ]
  %.sroa.075.0386 = phi i8 [ %.sroa.075.4417, %bb.aq ], [ 1, %bb.ay ], [ 1, %bb.dt ], [ 1, %.body251 ], [ 1, %bb.dj ], [ 1, %bb.dn ], [ 1, %.critedge207.thread401 ], [ 1, %bb.bg ], [ 1, %bb.et ], [ 1, %.critedge207 ], [ 1, %.loopexit493 ], [ 1, %.loopexit.split-lp494 ]
  %.sroa.077.0385 = phi i8 [ %.sroa.077.7415, %bb.aq ], [ 1, %bb.ay ], [ 1, %bb.dt ], [ 1, %.body251 ], [ 1, %bb.dj ], [ 1, %bb.dn ], [ 1, %.critedge207.thread401 ], [ 1, %bb.bg ], [ 1, %bb.et ], [ 1, %.critedge207 ], [ 1, %.loopexit493 ], [ 1, %.loopexit.split-lp494 ]
  %.sroa.093.2384 = phi i8 [ 0, %bb.aq ], [ 1, %bb.ay ], [ 1, %bb.dt ], [ 1, %.body251 ], [ 1, %bb.dj ], [ 1, %bb.dn ], [ 0, %.critedge207.thread401 ], [ 1, %bb.bg ], [ 1, %bb.et ], [ 0, %.critedge207 ], [ 1, %.loopexit493 ], [ 1, %.loopexit.split-lp494 ]
  %.sroa.094.2383 = phi i8 [ 0, %bb.aq ], [ 1, %bb.ay ], [ 1, %bb.dt ], [ 1, %.body251 ], [ 1, %bb.dj ], [ 1, %bb.dn ], [ 0, %.critedge207.thread401 ], [ 1, %bb.bg ], [ 0, %bb.et ], [ 0, %.critedge207 ], [ 1, %.loopexit493 ], [ %.sroa.094.3.ph, %.loopexit.split-lp494 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #31
          to label %.body261 unwind label %bb.cw

.body261.thread:                                  ; preds = %bb.ct, %.body261
  %.pn190474 = phi { ptr, i32 } [ %.pn190, %.body261 ], [ %i.lr, %bb.ct ]
  %.sroa.077.1473 = phi i8 [ %.sroa.077.1, %.body261 ], [ 1, %bb.ct ]
  %.sroa.093.3472 = phi i8 [ %.sroa.093.3, %.body261 ], [ 1, %bb.ct ]
  %.sroa.094.4471 = phi i8 [ %.sroa.094.4, %.body261 ], [ 1, %bb.ct ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9LayerListECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac) #31
          to label %.body281 unwind label %bb.cw

.body281.thread:                                  ; preds = %bb.dx, %.body281
  %.pn192481 = phi { ptr, i32 } [ %.pn192, %.body281 ], [ %i.of, %bb.dx ]
  %.sroa.093.5480 = phi i8 [ %.sroa.093.5, %.body281 ], [ 1, %bb.dx ]
  %.sroa.094.6479 = phi i8 [ %.sroa.094.6, %.body281 ], [ 1, %bb.dx ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #31
          to label %.body285 unwind label %bb.cw

.body285.thread:                                  ; preds = %bb.ea, %.body285
  %.pn194453 = phi { ptr, i32 } [ %.pn194, %.body285 ], [ %i.oj, %bb.ea ]
  %.sroa.094.0452 = phi i8 [ %.sroa.094.0, %.body285 ], [ 1, %bb.ea ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #31
          to label %bb.eg unwind label %bb.cw

.thread392:                                       ; preds = %bb.ed, %bb.eh, %bb.eg
  %.pn194.pn395 = phi { ptr, i32 } [ %.pn194.pn, %bb.eg ], [ %i.oo, %bb.eh ], [ %i.ol, %bb.ed ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9BaseGlyphEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #31
          to label %.body291 unwind label %bb.cw

bb.iq:                                            ; preds = %bb.er
  %i.xl = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.xl)
          to label %.thread446 unwind label %.thread440

.thread446:                                       ; preds = %bb.iq
  %.pr447 = load i64, ptr %i.am, align 8, !alias.scope !2400 ; 2 uses
  %.not.i.i372 = icmp eq i64 %.pr447, 2
  br i1 %.not.i.i372, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373, label %bb.ir

bb.ir:                                            ; preds = %.thread446
  %i.xm = load i64, ptr %i.xl, align 8, !range !15, !alias.scope !2401, !noundef !8
  %i.xn = invoke noundef zeroext i1 @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef %i.xm)
          to label %bb.it unwind label %bb.is     ; 0 uses

bb.is:                                            ; preds = %bb.ir
  %i.xo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am) #31
          to label %common.resume unwind label %bb.iv

bb.it:                                            ; preds = %bb.ir
  call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  %i.xp = icmp eq i64 %.pr447, 0
  br i1 %i.xp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.xq = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  %i.xr = load ptr, ptr %i.xq, align 8, !alias.scope !2408, !nonnull !8, !noundef !8
  %i.xs = atomicrmw add ptr %i.xr, i64 -1 release, align 8, !noalias !2409
  %i.xt = icmp eq i64 %i.xs, 1
  br i1 %i.xt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit373

bb.iv:                                            ; preds = %bb.is
  %i.xu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.iw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe.exit
  %i.xv = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.xv)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit376 unwind label %bb.cw

bb.ix:                                            ; preds = %.thread440, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit376
  %.pn194.pn.pn.pn.pn.pn.pn.pn444 = phi { ptr, i32 } [ %i.wu, %.thread440 ], [ %.pn194.pn.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit376 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40) %i.am) #31
          to label %common.resume unwind label %bb.cw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXNtCshxhuDJfZv4T_6fontbe4fvarNtB2_8FvarWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE11read_access(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 24)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 4, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXNtCshxhuDJfZv4T_6fontbe4fvarNtB2_8FvarWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE2id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.a, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCshxhuDJfZv4T_6fontbe4fvarNtB2_8FvarWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE4exec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [2 x i8], align 2                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.q = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.r = icmp ult i64 %i.q, 3
  br i1 %i.r, label %bb.d, label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit: ; preds = %.body, %bb.af, %bb.b
  %.pn = phi { ptr, i32 } [ %i.u, %bb.b ], [ %eh.lpad-body, %bb.af ], [ %eh.lpad-body, %.body ] ; 2 uses
  %.sroa.016.0 = phi i8 [ %.sroa.016.1, %bb.b ], [ %.sroa.014.2, %bb.af ], [ %.sroa.014.2, %.body ]
  %.sroa.014.0 = phi i8 [ %.sroa.014.1, %bb.b ], [ %.sroa.014.2, %bb.af ], [ %.sroa.014.2, %.body ]
  %i.s = trunc nuw i8 %.sroa.014.0 to i1
  %i.t = load i64, ptr %i.p, align 8, !range !10
  %.not.i.i48 = icmp ne i64 %i.t, 2
  %or.cond.not = select i1 %i.s, i1 %.not.i.i48, i1 false
  br i1 %or.cond.not, label %bb.bp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit50

bb.b:                                             ; preds = %.invoke, %bb.n, %bb.k, %bb.h, %bb.g, %bb.c
  %.sroa.016.1 = phi i8 [ %.sroa.014.2, %.invoke ], [ 0, %bb.g ], [ %.sroa.014.2, %bb.c ], [ 1, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ]
  %.sroa.014.1 = phi i8 [ %.sroa.014.2, %.invoke ], [ 0, %bb.g ], [ %.sroa.014.2, %bb.c ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit

bb.c:                                             ; preds = %bb.l, %bb.n, %bb.a
  %.sroa.014.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %bb.l ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1872
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = invoke noundef nonnull ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtNtB6_2ir15static_metadata14StaticMetadataE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
          to label %bb.o unwind label %bb.b       ; 7 uses

bb.d:                                             ; preds = %bb.a
  %i.z = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aa = icmp ult i64 %i.z, 3
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  store i64 2, ptr %i.n, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %i.ab, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.ac = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXNtCshxhuDJfZv4T_6fontbe4fvarNtB4_8FvarWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1B_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ac, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !34

bb.g:                                             ; preds = %bb.f
  %i.ad = invoke noundef i8 @_RNvMNtCs6CpVowoi7NE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXNtCshxhuDJfZv4T_6fontbe4fvarNtB4_8FvarWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1B_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE)
          to label %bb.i unwind label %bb.b       ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.010.0 = phi i8 [ %i.ad, %bb.i ], [ %i.ac, %bb.f ], [ %i.ac, %bb.f ]
  %i.ae = load ptr, ptr @_RNvNvXNtCshxhuDJfZv4T_6fontbe4fvarNtB4_8FvarWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1B_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !8, !align !7, !noundef !8
  %i.af = invoke noundef zeroext i1 @_RNvNtCseSYDGaa5U8h_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ae, i8 noundef %.sroa.010.0)
          to label %bb.j unwind label %bb.b

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.ad, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.af, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr @_RNvNvXNtCshxhuDJfZv4T_6fontbe4fvarNtB4_8FvarWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1B_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !8, !align !7, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i64 1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
end_hunk_2
begin_hunk_3_@llvm.smin.v2i16
!2141 = distinct !{!2141, !2140, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration6WorkIdEBF_: argument 0"}
!2142 = distinct !{!2142, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe"}
!2143 = distinct !{!2143, !2142, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe: argument 0"}
!2144 = distinct !{!2144, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe"}
!2145 = distinct !{!2145, !2144, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe: argument 0"}
!2146 = distinct !{!2146, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe"}
!2147 = distinct !{!2147, !2146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe: argument 0"}
!2148 = distinct !{!2148, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe"}
!2149 = distinct !{!2149, !2148, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe: argument 0"}
!2150 = distinct !{!2150, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2151 = distinct !{!2151, !2150, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2152 = distinct !{!2152, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe"}
!2153 = distinct !{!2153, !2152, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe: argument 0"}
!2154 = distinct !{!2154, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe"}
!2155 = distinct !{!2155, !2154, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe: argument 0"}
!2156 = distinct !{!2156, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe"}
!2157 = distinct !{!2157, !2156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe: argument 0"}
!2158 = distinct !{!2158, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe"}
!2159 = distinct !{!2159, !2158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe: argument 0"}
!2160 = distinct !{!2160, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2161 = distinct !{!2161, !2160, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2162 = distinct !{!2162, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_"}
!2163 = distinct !{!2163, !2162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_: argument 0"}
!2164 = distinct !{!2164, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!2165 = distinct !{!2165, !2164, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!2166 = distinct !{!2166, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_"}
!2167 = distinct !{!2167, !2166, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_: argument 0"}
!2168 = distinct !{!2168, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!2169 = distinct !{!2169, !2168, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!2170 = distinct !{!2170, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintE8push_mutCshxhuDJfZv4T_6fontbe"}
!2171 = distinct !{!2171, !2170, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintE8push_mutCshxhuDJfZv4T_6fontbe: argument 0"}
!2172 = distinct !{!2172, !2170, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintE8push_mutCshxhuDJfZv4T_6fontbe: argument 1"}
!2173 = distinct !{!2173, i1 true, !"_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip"}
!2174 = distinct !{!2174, !2173, !"_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip: argument 0"}
!2175 = distinct !{!2175, !2173, !"_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip: argument 1"}
!2176 = distinct !{!2176, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe"}
!2177 = distinct !{!2177, !2176, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe: argument 0"}
!2178 = distinct !{!2178, !2176, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe: argument 1"}
!2179 = distinct !{!2179, i1 true, !"_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!2180 = distinct !{!2180, !2179, !"_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!2181 = distinct !{!2181, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_"}
!2182 = distinct !{!2182, !2181, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_: argument 0"}
!2183 = distinct !{!2183, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!2184 = distinct !{!2184, !2183, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!2185 = distinct !{!2185, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9BaseGlyphE8push_mutCshxhuDJfZv4T_6fontbe"}
!2186 = distinct !{!2186, !2185, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9BaseGlyphE8push_mutCshxhuDJfZv4T_6fontbe: argument 0"}
!2187 = distinct !{!2187, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe"}
!2188 = distinct !{!2188, !2187, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe: argument 0"}
!2189 = distinct !{!2189, !2187, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE8push_mutCshxhuDJfZv4T_6fontbe: argument 1"}
!2190 = distinct !{!2190, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9BaseGlyphE8push_mutCshxhuDJfZv4T_6fontbe"}
!2191 = distinct !{!2191, !2190, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9BaseGlyphE8push_mutCshxhuDJfZv4T_6fontbe: argument 0"}
!2192 = distinct !{!2192, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe"}
!2193 = distinct !{!2193, !2192, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe: argument 0"}
!2194 = distinct !{!2194, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2195 = distinct !{!2195, !2194, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2196 = distinct !{!2196, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe"}
!2197 = distinct !{!2197, !2196, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe: argument 0"}
!2198 = distinct !{!2198, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2199 = distinct !{!2199, !2198, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2200 = distinct !{!2200, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe"}
!2201 = distinct !{!2201, !2200, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe: argument 0"}
!2202 = distinct !{!2202, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2203 = distinct !{!2203, !2202, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2204 = distinct !{!2204, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe"}
!2205 = distinct !{!2205, !2204, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe: argument 0"}
!2206 = distinct !{!2206, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2207 = distinct !{!2207, !2206, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2208 = distinct !{!2208, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe"}
!2209 = distinct !{!2209, !2208, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe: argument 0"}
!2210 = distinct !{!2210, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2211 = distinct !{!2211, !2210, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2212 = distinct !{!2212, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr13BaseGlyphListE3newCshxhuDJfZv4T_6fontbe"}
!2213 = distinct !{!2213, !2212, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr13BaseGlyphListE3newCshxhuDJfZv4T_6fontbe: argument 0"}
!2214 = distinct !{!2214, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9LayerListE3newCshxhuDJfZv4T_6fontbe"}
!2215 = distinct !{!2215, !2214, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9LayerListE3newCshxhuDJfZv4T_6fontbe: argument 0"}
!2216 = distinct !{!2216, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr8ClipListE3newCshxhuDJfZv4T_6fontbe"}
!2217 = distinct !{!2217, !2216, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr8ClipListE3newCshxhuDJfZv4T_6fontbe: argument 0"}
!2218 = distinct !{!2218, i1 true, !"_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrE3setB14_"}
!2219 = distinct !{!2219, !2218, !"_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrE3setB14_: argument 0"}
!2220 = distinct !{!2220, !2218, !"_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrE3setB14_: argument 1"}
!2221 = distinct !{!2221, i1 true, !"_RNvXs6a_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_4ColrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!2222 = distinct !{!2222, !2221, !"_RNvXs6a_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_4ColrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!2223 = distinct !{!2223, !2221, !"_RNvXs6a_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_4ColrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!2224 = distinct !{!2224, i1 true, !"_RNvXs6B_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_13BaseGlyphListNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!2225 = distinct !{!2225, !2224, !"_RNvXs6B_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_13BaseGlyphListNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!2226 = distinct !{!2226, !2224, !"_RNvXs6B_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_13BaseGlyphListNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!2227 = distinct !{!2227, i1 true, !"_RNvXs6T_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_9LayerListNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!2228 = distinct !{!2228, !2227, !"_RNvXs6T_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_9LayerListNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!2229 = distinct !{!2229, !2227, !"_RNvXs6T_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_9LayerListNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!2230 = distinct !{!2230, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEE3newCshxhuDJfZv4T_6fontbe"}
!2231 = distinct !{!2231, !2230, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEE3newCshxhuDJfZv4T_6fontbe: argument 0"}
!2232 = distinct !{!2232, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEEECshxhuDJfZv4T_6fontbe"}
!2233 = distinct !{!2233, !2232, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEEECshxhuDJfZv4T_6fontbe: argument 0"}
!2234 = distinct !{!2234, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEECshxhuDJfZv4T_6fontbe"}
!2235 = distinct !{!2235, !2234, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEECshxhuDJfZv4T_6fontbe: argument 0"}
!2236 = distinct !{!2236, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2237 = distinct !{!2237, !2236, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2238 = distinct !{!2238, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEEECshxhuDJfZv4T_6fontbe"}
!2239 = distinct !{!2239, !2238, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEEECshxhuDJfZv4T_6fontbe: argument 0"}
!2240 = distinct !{!2240, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEECshxhuDJfZv4T_6fontbe"}
!2241 = distinct !{!2241, !2240, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrEECshxhuDJfZv4T_6fontbe: argument 0"}
!2242 = distinct !{!2242, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2243 = distinct !{!2243, !2242, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2244 = distinct !{!2244, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe"}
!2245 = distinct !{!2245, !2244, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe: argument 0"}
!2246 = distinct !{!2246, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2247 = distinct !{!2247, !2246, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2248 = distinct !{!2248, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe"}
!2249 = distinct !{!2249, !2248, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe: argument 0"}
!2250 = distinct !{!2250, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2251 = distinct !{!2251, !2250, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2252 = distinct !{!2252, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe"}
!2253 = distinct !{!2253, !2252, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesEECshxhuDJfZv4T_6fontbe: argument 0"}
!2254 = distinct !{!2254, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2255 = distinct !{!2255, !2254, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2256 = distinct !{!2256, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe"}
!2257 = distinct !{!2257, !2256, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsEECshxhuDJfZv4T_6fontbe: argument 0"}
!2258 = distinct !{!2258, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2259 = distinct !{!2259, !2258, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir11ColorGlyphsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2260 = distinct !{!2260, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe"}
!2261 = distinct !{!2261, !2260, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe: argument 0"}
!2262 = distinct !{!2262, i1 true, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!2263 = distinct !{!2263, !2262, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!2264 = distinct !{!2264, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe"}
!2265 = distinct !{!2265, !2264, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe: argument 0"}
!2266 = distinct !{!2266, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe"}
!2267 = distinct !{!2267, !2266, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe: argument 0"}
!2268 = distinct !{!2268, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe"}
!2269 = distinct !{!2269, !2268, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe: argument 0"}
!2270 = distinct !{!2270, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe"}
!2271 = distinct !{!2271, !2270, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe: argument 0"}
!2272 = distinct !{!2272, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe"}
!2273 = distinct !{!2273, !2272, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe: argument 0"}
!2274 = distinct !{!2274, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2275 = distinct !{!2275, !2274, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2276 = distinct !{!2276, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe"}
!2277 = distinct !{!2277, !2276, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe: argument 0"}
!2278 = distinct !{!2278, i1 true, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!2279 = distinct !{!2279, !2278, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!2280 = distinct !{!2280, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe"}
!2281 = distinct !{!2281, !2280, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe: argument 0"}
!2282 = distinct !{!2282, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe"}
!2283 = distinct !{!2283, !2282, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe: argument 0"}
!2284 = distinct !{!2284, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe"}
!2285 = distinct !{!2285, !2284, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe: argument 0"}
!2286 = distinct !{!2286, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe"}
!2287 = distinct !{!2287, !2286, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe: argument 0"}
!2288 = distinct !{!2288, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe"}
!2289 = distinct !{!2289, !2288, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe: argument 0"}
!2290 = distinct !{!2290, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2291 = distinct !{!2291, !2290, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2292 = !{!2121}
!2293 = !{!2123}
!2294 = !{!2125}
!2295 = !{!2127}
!2296 = !{!2127, !2125}
!2297 = !{!2129}
!2298 = !{!2131}
!2299 = !{!2131, !2129}
!2300 = !{!2133}
!2301 = !{!2135}
!2302 = !{!2135, !2133}
!2303 = !{!2137}
!2304 = !{!2139}
!2305 = !{!2141}
!2306 = !{!2141, !2139}
!2307 = !{!2143}
!2308 = !{!2145}
!2309 = !{!2147}
!2310 = !{!2147, !2145, !2143, !2141, !2139}
!2311 = !{!2149}
!2312 = !{!2151}
!2313 = !{!2151, !2149, !2147, !2145, !2143, !2141, !2139}
!2314 = !{!2153}
!2315 = !{!2155}
!2316 = !{!2157}
!2317 = !{!2157, !2155, !2153, !2141, !2139}
!2318 = !{!2159}
!2319 = !{!2161}
!2320 = !{!2161, !2159, !2157, !2155, !2153, !2141, !2139}
!2321 = !{!2163}
!2322 = !{!2165}
!2323 = !{!2165, !2163}
!2324 = !{!2167}
!2325 = !{!2169}
!2326 = !{!2169, !2167}
!2327 = !{!2171}
!2328 = !{!2172}
!2329 = !{!2174}
!2330 = !{!2175}
!2331 = !{!2174, !2175}
!2332 = !{!2177}
!2333 = !{!2178}
!2334 = !{!2177, !2174}
!2335 = !{!2178, !2175}
!2336 = !{!2180}
!2337 = !{!2182}
!2338 = !{!2184}
!2339 = !{!2184, !2182}
!2340 = !{!2186}
!2341 = !{!"address", !"read_provenance"}
!2342 = !{!2188}
!2343 = !{!2189}
!2344 = !{!2191}
!2345 = !{!2193}
!2346 = !{!2195}
!2347 = !{!2195, !2193}
!2348 = !{!2197}
!2349 = !{!2199}
!2350 = !{!2199, !2197}
!2351 = !{!2201}
!2352 = !{!2203}
!2353 = !{!2203, !2201}
!2354 = !{!2205}
!2355 = !{!2207}
!2356 = !{!2207, !2205}
!2357 = !{!2209}
!2358 = !{!2211}
!2359 = !{!2211, !2209}
!2360 = !{!2213}
!2361 = !{!2215}
!2362 = !{!2217}
!2363 = !{!2219}
!2364 = !{!2220}
!2365 = !{!2222}
!2366 = !{!2222, !2223, !2220}
!2367 = !{!2225}
!2368 = !{!2226}
!2369 = !{!2228}
!2370 = !{!2229}
!2371 = !{!2228, !2229, !2222, !2223, !2220}
!2372 = !{!2219, !2220}
!2373 = !{!2231, !2220}
!2374 = !{!2233}
!2375 = !{!2237, !2235, !2233, !2220}
!2376 = !{!2239}
!2377 = !{!2243, !2241, !2239, !2220}
!2378 = !{!2245}
!2379 = !{!2247}
!2380 = !{!2247, !2245}
!2381 = !{!2249}
!2382 = !{!2251}
!2383 = !{!2251, !2249}
!2384 = !{!2253}
!2385 = !{!2255}
!2386 = !{!2255, !2253}
!2387 = !{!2257}
!2388 = !{!2259}
!2389 = !{!2259, !2257}
!2390 = !{!2261}
!2391 = !{!2263, !2261}
!2392 = !{!2265}
!2393 = !{!2267}
!2394 = !{!2269}
!2395 = !{!2271}
!2396 = !{!2273}
!2397 = !{!2275}
!2398 = !{!2275, !2273, !2271, !2269, !2267, !2265, !2261}
!2399 = !{!2275, !2273, !2271, !2269, !2267, !2265}
!2400 = !{!2277}
!2401 = !{!2279, !2277}
!2402 = !{!2281}
!2403 = !{!2283}
!2404 = !{!2285}
!2405 = !{!2287}
!2406 = !{!2289}
!2407 = !{!2291}
!2408 = !{!2291, !2289, !2287, !2285, !2283, !2281, !2277}
!2409 = !{!2291, !2289, !2287, !2285, !2283, !2281}
!2410 = distinct !{!2410, i1 true, !"_RNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvar"}
!2411 = distinct !{!2411, !2410, !"_RNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvar: argument 0"}
!2412 = distinct !{!2412, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata13NamedInstanceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars_0EB2G_"}
!2413 = distinct !{!2413, !2412, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata13NamedInstanceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars_0EB2G_: argument 0"}
!2414 = distinct !{!2414, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe"}
!2415 = distinct !{!2415, !2414, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe: argument 0"}
!2416 = distinct !{!2416, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2417 = distinct !{!2417, !2416, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2418 = distinct !{!2418, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe"}
!2419 = distinct !{!2419, !2418, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe: argument 0"}
!2420 = distinct !{!2420, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2421 = distinct !{!2421, !2420, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2422 = distinct !{!2422, i1 true, !"_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarE3setB14_"}
!2423 = distinct !{!2423, !2422, !"_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarE3setB14_: argument 0"}
!2424 = distinct !{!2424, !2422, !"_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarE3setB14_: argument 1"}
!2425 = distinct !{!2425, i1 true, !"_RNvXst_NtNtCs6WnK4nVnpEz_11write_fonts6tables4fvarNtB5_18AxisInstanceArraysNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!2426 = distinct !{!2426, !2425, !"_RNvXst_NtNtCs6WnK4nVnpEz_11write_fonts6tables4fvarNtB5_18AxisInstanceArraysNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!2427 = distinct !{!2427, !2425, !"_RNvXst_NtNtCs6WnK4nVnpEz_11write_fonts6tables4fvarNtB5_18AxisInstanceArraysNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!2428 = distinct !{!2428, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEE3newCshxhuDJfZv4T_6fontbe"}
!2429 = distinct !{!2429, !2428, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEE3newCshxhuDJfZv4T_6fontbe: argument 0"}
!2430 = distinct !{!2430, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEEECshxhuDJfZv4T_6fontbe"}
!2431 = distinct !{!2431, !2430, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEEECshxhuDJfZv4T_6fontbe: argument 0"}
!2432 = distinct !{!2432, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEECshxhuDJfZv4T_6fontbe"}
!2433 = distinct !{!2433, !2432, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEECshxhuDJfZv4T_6fontbe: argument 0"}
!2434 = distinct !{!2434, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2435 = distinct !{!2435, !2434, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2436 = distinct !{!2436, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEEECshxhuDJfZv4T_6fontbe"}
!2437 = distinct !{!2437, !2436, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEEECshxhuDJfZv4T_6fontbe: argument 0"}
!2438 = distinct !{!2438, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEECshxhuDJfZv4T_6fontbe"}
!2439 = distinct !{!2439, !2438, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarEECshxhuDJfZv4T_6fontbe: argument 0"}
!2440 = distinct !{!2440, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2441 = distinct !{!2441, !2440, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2442 = distinct !{!2442, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe"}
!2443 = distinct !{!2443, !2442, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe: argument 0"}
!2444 = distinct !{!2444, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2445 = distinct !{!2445, !2444, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2446 = distinct !{!2446, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe"}
!2447 = distinct !{!2447, !2446, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe: argument 0"}
!2448 = distinct !{!2448, i1 true, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!2449 = distinct !{!2449, !2448, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!2450 = distinct !{!2450, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe"}
!2451 = distinct !{!2451, !2450, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe: argument 0"}
!2452 = distinct !{!2452, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe"}
!2453 = distinct !{!2453, !2452, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe: argument 0"}
!2454 = distinct !{!2454, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe"}
!2455 = distinct !{!2455, !2454, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe: argument 0"}
!2456 = distinct !{!2456, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe"}
!2457 = distinct !{!2457, !2456, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe: argument 0"}
!2458 = distinct !{!2458, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe"}
!2459 = distinct !{!2459, !2458, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe: argument 0"}
!2460 = distinct !{!2460, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2461 = distinct !{!2461, !2460, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2462 = !{!2411}
!2463 = !{!2413}
!2464 = !{!2417, !2415}
!2465 = !{!2419}
!2466 = !{!2421}
!2467 = !{!2421, !2419}
!2468 = !{!2423}
!2469 = !{!2424}
!2470 = !{!2426}
!2471 = !{!2427}
!2472 = !{!2427, !2424}
!2473 = !{!2423, !2424}
!2474 = !{!2429, !2424}
!2475 = !{!2431}
!2476 = !{!2435, !2433, !2431}
!2477 = !{!2437}
!2478 = !{!2441, !2439, !2437}
!2479 = !{!2415}
!2480 = !{!2417}
!2481 = !{!2443}
!2482 = !{!2445}
!2483 = !{!2445, !2443}
!2484 = !{!2447}
!2485 = !{!2449, !2447}
!2486 = !{!2451}
!2487 = !{!2453}
!2488 = !{!2455}
!2489 = !{!2457}
!2490 = !{!2459}
!2491 = !{!2461}
!2492 = !{!2461, !2459, !2457, !2455, !2453, !2451, !2447}
!2493 = !{!2461, !2459, !2457, !2455, !2453, !2451}
!2494 = distinct !{!2494, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe"}
!2495 = distinct !{!2495, !2494, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe: argument 0"}
!2496 = distinct !{!2496, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2497 = distinct !{!2497, !2496, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2498 = distinct !{!2498, i1 true, !"_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp9GaspRange11sort_by_keytNCNvXNtCshxhuDJfZv4T_6fontbe4gaspNtB1I_8GaspWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB1K_13orchestration7ContextNtB3g_9AnyWorkIdNtNtB1K_5error5ErrorE4exec0EB1K_"}
!2499 = distinct !{!2499, !2498, !"_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp9GaspRange11sort_by_keytNCNvXNtCshxhuDJfZv4T_6fontbe4gaspNtB1I_8GaspWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB1K_13orchestration7ContextNtB3g_9AnyWorkIdNtNtB1K_5error5ErrorE4exec0EB1K_: argument 0"}
!2500 = distinct !{!2500, i1 true, !"_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp9GaspRangeNCINvMB2_SBH_11sort_by_keytNCNvXNtCshxhuDJfZv4T_6fontbe4gaspNtB26_8GaspWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB28_13orchestration7ContextNtB3E_9AnyWorkIdNtNtB28_5error5ErrorE4exec0E0EB28_"}
!2501 = distinct !{!2501, !2500, !"_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp9GaspRangeNCINvMB2_SBH_11sort_by_keytNCNvXNtCshxhuDJfZv4T_6fontbe4gaspNtB26_8GaspWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB28_13orchestration7ContextNtB3E_9AnyWorkIdNtNtB28_5error5ErrorE4exec0E0EB28_: argument 0"}
!2502 = distinct !{!2502, i1 true, !"_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspE3setB14_"}
!2503 = distinct !{!2503, !2502, !"_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspE3setB14_: argument 0"}
!2504 = distinct !{!2504, !2502, !"_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspE3setB14_: argument 1"}
!2505 = distinct !{!2505, i1 true, !"_RNvXsf_NtNtCs6WnK4nVnpEz_11write_fonts6tables4gaspNtB5_4GaspNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!2506 = distinct !{!2506, !2505, !"_RNvXsf_NtNtCs6WnK4nVnpEz_11write_fonts6tables4gaspNtB5_4GaspNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!2507 = distinct !{!2507, !2505, !"_RNvXsf_NtNtCs6WnK4nVnpEz_11write_fonts6tables4gaspNtB5_4GaspNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!2508 = distinct !{!2508, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEE3newCshxhuDJfZv4T_6fontbe"}
!2509 = distinct !{!2509, !2508, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEE3newCshxhuDJfZv4T_6fontbe: argument 0"}
!2510 = distinct !{!2510, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEEECshxhuDJfZv4T_6fontbe"}
!2511 = distinct !{!2511, !2510, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEEECshxhuDJfZv4T_6fontbe: argument 0"}
!2512 = distinct !{!2512, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEECshxhuDJfZv4T_6fontbe"}
!2513 = distinct !{!2513, !2512, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEECshxhuDJfZv4T_6fontbe: argument 0"}
!2514 = distinct !{!2514, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2515 = distinct !{!2515, !2514, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2516 = distinct !{!2516, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEEECshxhuDJfZv4T_6fontbe"}
!2517 = distinct !{!2517, !2516, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEEECshxhuDJfZv4T_6fontbe: argument 0"}
!2518 = distinct !{!2518, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEECshxhuDJfZv4T_6fontbe"}
!2519 = distinct !{!2519, !2518, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspEECshxhuDJfZv4T_6fontbe: argument 0"}
!2520 = distinct !{!2520, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2521 = distinct !{!2521, !2520, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2522 = distinct !{!2522, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe"}
!2523 = distinct !{!2523, !2522, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe: argument 0"}
!2524 = distinct !{!2524, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2525 = distinct !{!2525, !2524, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2526 = distinct !{!2526, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe"}
!2527 = distinct !{!2527, !2526, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe: argument 0"}
!2528 = distinct !{!2528, i1 true, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!2529 = distinct !{!2529, !2528, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!2530 = distinct !{!2530, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe"}
!2531 = distinct !{!2531, !2530, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe: argument 0"}
!2532 = distinct !{!2532, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe"}
!2533 = distinct !{!2533, !2532, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe: argument 0"}
!2534 = distinct !{!2534, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe"}
!2535 = distinct !{!2535, !2534, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe: argument 0"}
!2536 = distinct !{!2536, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe"}
!2537 = distinct !{!2537, !2536, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe: argument 0"}
!2538 = distinct !{!2538, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe"}
!2539 = distinct !{!2539, !2538, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe: argument 0"}
!2540 = distinct !{!2540, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!2541 = distinct !{!2541, !2540, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!2542 = distinct !{!2542, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe"}
!2543 = distinct !{!2543, !2542, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe: argument 0"}
end_hunk_3
