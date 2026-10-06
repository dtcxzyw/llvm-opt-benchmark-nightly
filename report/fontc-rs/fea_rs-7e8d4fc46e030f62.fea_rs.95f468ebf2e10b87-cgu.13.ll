Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.13?download=true
inline.NumInlined: 787
inline.NumDeleted: 330
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringEEECscScJTt9VrQp_6fea_rs:bb.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringEECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_6borrow3CoweEEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_6borrow3CoweEEECscScJTt9VrQp_6fea_rs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_6borrow3CoweEEECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECscScJTt9VrQp_6fea_rs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post4PostECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !123, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECscScJTt9VrQp_6fea_rs.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECscScJTt9VrQp_6fea_rs.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringEEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #35
          to label %common.resume unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECscScJTt9VrQp_6fea_rs.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !7, !alias.scope !124, !noundef !4
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringEEECscScJTt9VrQp_6fea_rs.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringEECscScJTt9VrQp_6fea_rs.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringEECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringEEECscScJTt9VrQp_6fea_rs.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringEEECscScJTt9VrQp_6fea_rs.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringEECscScJTt9VrQp_6fea_rs.exit.i
  ret void

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common9glyph_map8GlyphMapEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECscScJTt9VrQp_6fea_rs.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTtNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECscScJTt9VrQp_6fea_rs.exit unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTtNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdBM_EBS_(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #36
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYBT_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 1
  %i.d = load i32, ptr %0, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %i.g = icmp ult i32 %i.e, %i.f                  ; 2 uses
  %.not16 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.g, label %.preheader, label %.preheader6

.preheader6:                                      ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit, label %.lr.ph12

.lr.ph:                                           ; preds = %.preheader6, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.n, %bb.c ], [ 2, %.preheader6 ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i8
  %3 = add nsw i64 %.sroa.01.0.i8, -1             ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.i = load i32, ptr %i.h, align 1
  %i.j = load i32, ptr %5, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = add nuw nsw i64 %.sroa.01.0.i8, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.thread, label %.lr.ph

.lr.ph12:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i11 = phi i64 [ %i.u, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.1.i11
  %6 = add nsw i64 %.sroa.01.1.i11, -1            ; 2 uses
  %7 = icmp samesign ult i64 %6, %1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  %i.p = load i32, ptr %i.o, align 1
  %i.q = load i32, ptr %8, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.t = icmp ult i32 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit

bb.d:                                             ; preds = %.lr.ph12
  %i.u = add nuw nsw i64 %.sroa.01.1.i11, 1       ; 2 uses
  %exitcond19.not = icmp eq i64 %i.u, %1
  br i1 %exitcond19.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.thread, label %.lr.ph12

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit: ; preds = %.lr.ph, %.lr.ph12, %.preheader6, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader6 ], [ 2, %.preheader ], [ %.sroa.01.1.i11, %.lr.ph12 ], [ %.sroa.01.0.i8, %.lr.ph ] ; 2 uses
  %i.v = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.w, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit
  br i1 %i.g, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit
  %i.x = or i64 %1, 1
  %i.y = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 1
  %i.ab = xor i32 %i.aa, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB17_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(4) null, i32 noundef %i.ab, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i
  %i.ac = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i.epil.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i ], [ %i.aq, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i64 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.ad = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.ah, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.epil = load i32, ptr %i.ae, align 1, !alias.scope !137, !noalias !138
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.epil = load i32, ptr %i.af, align 1, !alias.scope !139, !noalias !140
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i.epil, ptr %i.ae, align 1, !alias.scope !137, !noalias !138
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.epil, ptr %i.af, align 1, !alias.scope !139, !noalias !140
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.thread, %bb.e
  ret void

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.thread
  %i.ag = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ai = icmp eq i64 %i.ag, 1
  br i1 %i.ai, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i.new

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ag, 1152921504606846974
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i.new ], [ %i.aq, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i ]
  %i.aj = xor i64 %.sroa.0.016.i.i, -1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.ah, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ak, align 1, !alias.scope !137, !noalias !138
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.al, align 1, !alias.scope !139, !noalias !140
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.ak, align 1, !alias.scope !137, !noalias !138
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.al, align 1, !alias.scope !139, !noalias !140
  %i.am = xor i64 %.sroa.0.016.i.i, -2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.ah, i64 %i.am ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i32, ptr %i.ao, align 1, !alias.scope !145, !noalias !146
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i32, ptr %i.ap, align 1, !alias.scope !147, !noalias !148
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ao, align 1, !alias.scope !145, !noalias !146
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ap, align 1, !alias.scope !147, !noalias !148
  %i.aq = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCscScJTt9VrQp_6fea_rs.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SBT_20sort_unstable_by_keyNtBV_5LevelNCNvMs0_BV_NtBV_13DiagnosticSet18split_off_warnings0E0EBX_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic7reverseBy_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 88
  %.val5 = load i8, ptr %i.b, align 8, !range !8, !noundef !4 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val6 = load i8, ptr %i.c, align 8, !range !8, !noundef !4
  %i.d = icmp samesign ult i8 %.val5, %.val6      ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.d, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit, label %.lr.ph17.peel

.lr.ph17.peel:                                    ; preds = %.preheader
  %i.e = getelementptr i8, ptr %0, i64 136
  %.val.peel = load i8, ptr %i.e, align 8, !range !8, !noundef !4
  %i.f = icmp samesign ult i8 %.val.peel, %.val5
  br i1 %i.f, label %bb.c, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit

bb.c:                                             ; preds = %.lr.ph17.peel
  %exitcond24.not.peel = icmp eq i64 %1, 3
  br i1 %exitcond24.not.peel, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit.thread, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit

.lr.ph:                                           ; preds = %.preheader11, %bb.d
  %.val4 = phi i8 [ %.val3, %bb.d ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.j, %bb.d ], [ 2, %.preheader11 ] ; 4 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i13
  %3 = add nsw i64 %.sroa.01.0.i13, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %.val3 = load i8, ptr %i.h, align 8, !range !8, !noundef !4 ; 2 uses
  %i.i = icmp samesign ult i8 %.val3, %.val4
  br i1 %i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit.thread, label %.lr.ph

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit: ; preds = %.lr.ph, %.lr.ph17.peel, %bb.c, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ 3, %bb.c ], [ 2, %.lr.ph17.peel ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.k = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.l, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit.thread: ; preds = %bb.d, %bb.c, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit
  br i1 %i.d, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic7reverseBy_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit
  %i.m = or i64 %1, 1
  %i.n = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 1
  %i.q = xor i32 %i.p, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB17_20sort_unstable_by_keyNtB19_5LevelNCNvMs0_B19_NtB19_13DiagnosticSet18split_off_warnings0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, i32 noundef %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic7reverseBy_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic7reverseBy_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEB14_.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SB12_20sort_unstable_by_keyNtB14_5LevelNCNvMs0_B14_NtB14_13DiagnosticSet18split_off_warnings0E0EB16_.exit.thread
  %i.r = lshr i64 %1, 1
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.x, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.t = xor i64 %.sroa.0.017.i.i, -1
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.v = getelementptr [48 x i8], ptr %i.s, i64 %i.t
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscScJTt9VrQp_6fea_rs(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, i64 noundef 6)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEB14_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.x = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.x, %i.r
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic7reverseBy_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SBT_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3d_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3j_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = icmp samesign ult i64 %1, 2
  br i1 %i.g, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord7reverseCscScJTt9VrQp_6fea_rs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 24
  %.val5 = load i32, ptr %i.h, align 8            ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 8
  %.val6 = load i32, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.val5, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.val6, ptr %i.e, align 4
  %i.j = load i32, ptr %i.f, align 4
  %i.k = load i32, ptr %i.e, align 4
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.k)
  %i.n = icmp ult i32 %i.l, %i.m                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.n, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i32 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.v, %bb.c ], [ 2, %.preheader11 ] ; 4 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i13
  %3 = add nsw i64 %.sroa.01.0.i13, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val3 = load i32, ptr %i.p, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.val3, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.val4, ptr %i.c, align 4
  %i.q = load i32, ptr %i.d, align 4
  %i.r = load i32, ptr %i.c, align 4
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.u = icmp ult i32 %i.s, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.u, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i32 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.ad, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i16
  %5 = add nsw i64 %.sroa.01.1.i16, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val = load i32, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.val, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.val2, ptr %i.a, align 4
  %i.y = load i32, ptr %i.b, align 4
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ac = icmp ult i32 %i.aa, %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ac, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.ad = add nuw nsw i64 %.sroa.01.1.i16, 1      ; 2 uses
  %exitcond24.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit.thread, label %.lr.ph17

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.ae = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.af, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit
  br i1 %i.n, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord7reverseCscScJTt9VrQp_6fea_rs.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit
  %i.ag = or i64 %1, 1
  %i.ah = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = xor i32 %i.aj, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB17_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3s_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3y_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord7reverseCscScJTt9VrQp_6fea_rs.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord7reverseCscScJTt9VrQp_6fea_rs.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordECscScJTt9VrQp_6fea_rs.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3n_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3t_.exit.thread
  %i.al = lshr i64 %1, 1
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordECscScJTt9VrQp_6fea_rs.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ar, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordECscScJTt9VrQp_6fea_rs.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.an = xor i64 %.sroa.0.017.i.i, -1
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.ap = getelementptr [16 x i8], ptr %i.am, i64 %i.an
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscScJTt9VrQp_6fea_rs(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef 2)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordECscScJTt9VrQp_6fea_rs.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordECscScJTt9VrQp_6fea_rs.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ar = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord7reverseCscScJTt9VrQp_6fea_rs.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SBT_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMBV_NtBV_15BaseAxisBuilder3new0E0EB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = icmp samesign ult i64 %1, 2
  br i1 %i.g, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord7reverseBC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 56
  %.val5 = load i32, ptr %i.h, align 8            ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 24
  %.val6 = load i32, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.val5, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.val6, ptr %i.e, align 4
  %i.j = load i32, ptr %i.f, align 4
  %i.k = load i32, ptr %i.e, align 4
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.k)
  %i.n = icmp ult i32 %i.l, %i.m                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.n, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i32 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.v, %bb.c ], [ 2, %.preheader11 ] ; 4 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i13
  %3 = add nsw i64 %.sroa.01.0.i13, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %.val3 = load i32, ptr %i.p, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.val3, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.val4, ptr %i.c, align 4
  %i.q = load i32, ptr %i.d, align 4
  %i.r = load i32, ptr %i.c, align 4
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.u = icmp ult i32 %i.s, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.u, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i32 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.ad, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.1.i16
  %5 = add nsw i64 %.sroa.01.1.i16, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %.val = load i32, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.val, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.val2, ptr %i.a, align 4
  %i.y = load i32, ptr %i.b, align 4
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ac = icmp ult i32 %i.aa, %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ac, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.ad = add nuw nsw i64 %.sroa.01.1.i16, 1      ; 2 uses
  %exitcond24.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit.thread, label %.lr.ph17

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.ae = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.af, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit
  br i1 %i.n, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord7reverseBC_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit
  %i.ag = or i64 %1, 1
  %i.ah = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = xor i32 %i.aj, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB17_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB19_NtB19_15BaseAxisBuilder3new0E0EB1f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, i32 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord7reverseBC_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord7reverseBC_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordEB18_.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB6_SB12_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB14_NtB14_15BaseAxisBuilder3new0E0EB1a_.exit.thread
  %i.al = lshr i64 %1, 1
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordEB18_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ar, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordEB18_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.an = xor i64 %.sroa.0.017.i.i, -1
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.ap = getelementptr [32 x i8], ptr %i.am, i64 %i.an
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscScJTt9VrQp_6fea_rs(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordEB18_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordEB18_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ar = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord7reverseBC_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SBT_20sort_unstable_by_keyjNCNvNtB1o_4edit11apply_edits0E0EB1q_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE7reverseB11_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5 = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %.val6 = load i64, ptr %0, align 8, !noundef !4
  %i.c = icmp ult i64 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i13
  %3 = add nsw i64 %.sroa.01.0.i13, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val3 = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ult i64 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.1.i16
  %5 = add nsw i64 %.sroa.01.1.i16, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit.thread, label %.lr.ph17

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE7reverseB11_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB17_20sort_unstable_by_keyjNCNvNtB1C_4edit11apply_edits0E0EB1E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE7reverseB11_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE7reverseB11_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeEEB1x_.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtB1x_4edit11apply_edits0E0EB1z_.exit.thread
  %i.q = lshr i64 %1, 1
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeEEB1x_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.w, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeEEB1x_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.u = getelementptr [40 x i8], ptr %i.r, i64 %i.s
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscScJTt9VrQp_6fea_rs(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 5)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeEEB1x_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeEEB1x_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE7reverseB11_.exit, label %.lr.ph.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !alias.scope !185, !noalias !186, !noundef !4 ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !186, !noalias !185, !noundef !4 ; 2 uses
  %i.f = icmp eq i16 %i.c, %i.e
  %i.g = icmp ult i16 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.i = load i16, ptr %i.h, align 2, !alias.scope !185, !noalias !186, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %1, i64 -6
  %i.k = load i16, ptr %i.j, align 2, !alias.scope !186, !noalias !185, !noundef !4 ; 2 uses
  %i.l = icmp eq i16 %i.i, %i.k
  %i.m = icmp ult i16 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i16, ptr %i.n, align 4, !alias.scope !185, !noalias !186, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %1, i64 -4
  %i.q = load i16, ptr %i.p, align 4, !alias.scope !186, !noalias !185, !noundef !4 ; 2 uses
  %i.r = icmp eq i16 %i.o, %i.q
  %i.s = icmp ult i16 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.u = load i16, ptr %i.t, align 2, !alias.scope !185, !noalias !186, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %1, i64 -2
  %i.w = load i16, ptr %i.v, align 2, !alias.scope !186, !noalias !185, !noundef !4 ; 2 uses
  %i.x = icmp eq i16 %i.u, %i.w
  %i.y = icmp ult i16 %i.u, %i.w
  br i1 %i.x, label %.split, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit

.split:                                           ; preds = %bb.d
  %i.z = load ptr, ptr %1, align 8, !alias.scope !185, !noalias !186, !nonnull !4, !noundef !4 ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8, !alias.scope !186, !noalias !185, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !187, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !187, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !187, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !187, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai)
  %i.aj = tail call i32 @memcmp(ptr nonnull %i.ac, ptr nonnull %i.ag, i64 %spec.store.select.i.i.i.i), !noalias !187 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %i.ae, %i.ai
  %spec.select.i.i.i.i = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.an, label %bb.e, label %bb.f

_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.g, %bb.a ], [ %i.y, %bb.d ], [ %i.s, %bb.c ], [ %i.m, %bb.b ]
  br i1 %.sroa.0.0.i.i.i.i, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge, label %bb.f

_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge: ; preds = %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit
  %.sroa.014.0.copyload.pre = load ptr, ptr %1, align 8
  %.sroa.515.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.sroa.515.0.copyload.pre = load i16, ptr %.sroa.515.0..sroa_idx.phi.trans.insert, align 2
  %.sroa.616.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.616.0.copyload.pre = load i16, ptr %.sroa.616.0..sroa_idx.phi.trans.insert, align 4
  %.sroa.717.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.sroa.717.0.copyload.pre = load i16, ptr %.sroa.717.0..sroa_idx.phi.trans.insert, align 2
  br label %bb.e

bb.e:                                             ; preds = %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge, %.split
  %.sroa.717.0.copyload = phi i16 [ %.sroa.717.0.copyload.pre, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge ], [ %i.u, %.split ] ; 3 uses
  %.sroa.616.0.copyload = phi i16 [ %.sroa.616.0.copyload.pre, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge ], [ %i.o, %.split ] ; 3 uses
  %.sroa.515.0.copyload = phi i16 [ %.sroa.515.0.copyload.pre, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge ], [ %i.i, %.split ] ; 3 uses
  %.sroa.014.0.copyload = phi ptr [ %.sroa.014.0.copyload.pre, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge ], [ %i.z, %.split ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ao = icmp eq ptr %i.a, %0
  br i1 %i.ao, label %.split5._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.split, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit, %.split5._crit_edge
  ret void

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.06 = phi ptr [ %i.a, %.lr.ph ], [ %i.ar, %.backedge ] ; 8 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -8
  %i.at = load i16, ptr %i.as, align 8, !alias.scope !192, !noalias !193, !noundef !4 ; 2 uses
  %i.au = icmp eq i16 %i.c, %i.at
  %i.av = icmp ult i16 %i.c, %i.at
  br i1 %i.au, label %bb.h, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -6
  %i.ax = load i16, ptr %i.aw, align 2, !alias.scope !192, !noalias !193, !noundef !4 ; 2 uses
  %i.ay = icmp eq i16 %.sroa.515.0.copyload, %i.ax
  %i.az = icmp ult i16 %.sroa.515.0.copyload, %i.ax
  br i1 %i.ay, label %bb.i, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -4
  %i.bb = load i16, ptr %i.ba, align 4, !alias.scope !192, !noalias !193, !noundef !4 ; 2 uses
  %i.bc = icmp eq i16 %.sroa.616.0.copyload, %i.bb
  %i.bd = icmp ult i16 %.sroa.616.0.copyload, %i.bb
  br i1 %i.bc, label %bb.j, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -2
  %i.bf = load i16, ptr %i.be, align 2, !alias.scope !192, !noalias !193, !noundef !4 ; 2 uses
  %i.bg = icmp eq i16 %.sroa.717.0.copyload, %i.bf
  %i.bh = icmp ult i16 %.sroa.717.0.copyload, %i.bf
  br i1 %i.bg, label %.split5, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11

.split5:                                          ; preds = %bb.j
  %i.bi = load ptr, ptr %i.ar, align 8, !alias.scope !192, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  %i.bj = load ptr, ptr %i.ap, align 8, !noalias !194, !nonnull !4, !noundef !4
  %i.bk = load i64, ptr %i.aq, align 8, !noalias !194, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !194, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !194, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i9 = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bo)
  %i.bp = tail call i32 @memcmp(ptr nonnull %i.bj, ptr nonnull %i.bm, i64 %spec.store.select.i.i.i.i9), !noalias !194 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i32 %i.bp, 0
end_hunk_0
