Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc.fontc.be6d94869b726918-cgu.01?download=true
inline.NumInlined: 305
inline.NumDeleted: 200
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtNtBI_8registry7sharded8RegistryNtNtB2m_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1H_3env9EnvFilterB2L_EB2L_EEB3Q_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1808
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded8RegistryECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %i.b) #24
          to label %bb.d unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtNtBI_8registry7sharded8RegistryNtNtB1Q_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtBG_3env9EnvFilterB2f_EEB3k_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1808
  tail call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded8RegistryECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9EnvFilterECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(1784) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsz_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(472) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtBE_15StaticDirectiveEECsglDVE6xSTcO_5fontc.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472
  invoke void @_RNvXsz_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(664) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtBE_15StaticDirectiveEECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  invoke void @_RNvXsz_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(664) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit6 unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit unwind label %bb.f

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtBE_15StaticDirectiveEECsglDVE6xSTcO_5fontc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit6: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtBE_15StaticDirectiveEECsglDVE6xSTcO_5fontc.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1152
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit7 unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1216
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1L_5field13CallsiteMatchEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB34_5field13CallsiteMatchEEEECsglDVE6xSTcO_5fontc.exit unwind label %bb.f

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit6
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit7: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1216
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1L_5field13CallsiteMatchEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB34_5field13CallsiteMatchEEEECsglDVE6xSTcO_5fontc.exit8 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB34_5field13CallsiteMatchEEEECsglDVE6xSTcO_5fontc.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit, %bb.e
  %.pn4 = phi { ptr, i32 } [ %i.k, %bb.e ], [ %.pn2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1264
  invoke void @_RNvXs2_CseRHrNAhVgak_12thread_localINtB5_11ThreadLocalINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6CpVowoi7NE_12tracing_core8metadata11LevelFilterEEENtNtNtBV_3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCseRHrNAhVgak_12thread_local11ThreadLocalINtNtB4_4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6CpVowoi7NE_12tracing_core8metadata11LevelFilterEEEECsglDVE6xSTcO_5fontc.exit unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit7
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB34_5field13CallsiteMatchEEEECsglDVE6xSTcO_5fontc.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB34_5field13CallsiteMatchEEEECsglDVE6xSTcO_5fontc.exit8: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1264
  tail call void @_RNvXs2_CseRHrNAhVgak_12thread_localINtB5_11ThreadLocalINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6CpVowoi7NE_12tracing_core8metadata11LevelFilterEEENtNtNtBV_3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %i.l)
  ret void

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB34_5field13CallsiteMatchEEEECsglDVE6xSTcO_5fontc.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core4span2IdINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2R_5field9SpanMatchEEEECsglDVE6xSTcO_5fontc.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBG_3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCseRHrNAhVgak_12thread_local11ThreadLocalINtNtB4_4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6CpVowoi7NE_12tracing_core8metadata11LevelFilterEEEECsglDVE6xSTcO_5fontc.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierINtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive8MatchSetNtNtB34_5field13CallsiteMatchEEEECsglDVE6xSTcO_5fontc.exit
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded8RegistryECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(544) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtCs1c7GmC1ft6u_12sharded_slab5shardINtB5_5ArrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !62, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %.val3.i.i, 0
  br i1 %i.c, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2.i.i = load ptr, ptr %0, align 8, !alias.scope !62, !nonnull !5, !noundef !5
  %i.d = shl nuw nsw i64 %.val3.i.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8) #25
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !62, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs1c7GmC1ft6u_12sharded_slab4pool4PoolNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerEECsglDVE6xSTcO_5fontc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !62, !nonnull !5, !noundef !5
  %i.g = shl nuw nsw i64 %.val1.i.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef 8) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs1c7GmC1ft6u_12sharded_slab4pool4PoolNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerEECsglDVE6xSTcO_5fontc.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs2_CseRHrNAhVgak_12thread_localINtB5_11ThreadLocalINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBV_3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCseRHrNAhVgak_12thread_local11ThreadLocalINtNtB4_4cell7RefCellNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry5stack9SpanStackEEECsglDVE6xSTcO_5fontc.exit unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs1c7GmC1ft6u_12sharded_slab4pool4PoolNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerEECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs2_CseRHrNAhVgak_12thread_localINtB5_11ThreadLocalINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBV_3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %i.i)
  ret void

bb.f:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCseRHrNAhVgak_12thread_local11ThreadLocalINtNtB4_4cell7RefCellNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry5stack9SpanStackEEECsglDVE6xSTcO_5fontc.exit: ; preds = %.body
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCseRHrNAhVgak_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs6CpVowoi7NE_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsglDVE6xSTcO_5fontc(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecINtCseRHrNAhVgak_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBL_NtNtCs6CpVowoi7NE_12tracing_core8metadata11LevelFilterEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1A_4iter8adapters3map3MapINtNtNtB1A_3ops5range5RangejENCINvBX_15allocate_bucketB1v_E0EE9from_iterCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCseRHrNAhVgak_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs6CpVowoi7NE_12tracing_core8metadata11LevelFilterEEEE16into_boxed_sliceCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtCs1c7GmC1ft6u_12sharded_slab4page6SharedNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtBV_3cfg13DefaultConfigEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3d_8adapters3map3MapINtNtNtB3f_3ops5range5RangejENCNvMNtBV_5shardINtB5k_5ShardB1z_B2E_E3new0EECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !73, !noalias !74
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1c7GmC1ft6u_12sharded_slab4page6SharedNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtBZ_3cfg13DefaultConfigEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB3G_3ops5range5RangejENCNvMNtBZ_5shardINtB4T_5ShardB1D_B2I_E3new0EE9from_iterCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  %i.c = call { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs1c7GmC1ft6u_12sharded_slab4page6SharedNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEE16into_boxed_sliceCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSNtNtCs1c7GmC1ft6u_12sharded_slab4page5LocalEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1F_8adapters3map3MapINtNtNtB1H_3ops5range5RangejENCNvMNtBU_5shardINtB3M_5ShardNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtBU_3cfg13DefaultConfigE3news_0EECsglDVE6xSTcO_5fontc(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs1c7GmC1ft6u_12sharded_slab4page5LocalEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB28_3ops5range5RangejENCNvMNtBY_5shardINtB3l_5ShardNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtBY_3cfg13DefaultConfigE3news_0EE9from_iterCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1c7GmC1ft6u_12sharded_slab4page5LocalE16into_boxed_sliceCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs6CpVowoi7NE_12tracing_core4span2IdECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
._crit_edge.i.i.i.i.i:
  %.val = load i64, ptr %0, align 8, !noundef !5  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = xor i64 %.val, 8317987319222330741
  %i.c = xor i64 %.val1, 7237128888997146477      ; 3 uses
  %i.d = xor i64 %.val, 7816392313619706465
  %.val.i = load i64, ptr %1, align 8, !range !14, !noalias !78, !noundef !5 ; 2 uses
  %i.e = xor i64 %.val1, %.val.i
  %i.f = xor i64 %i.e, 8387220255154660723        ; 3 uses
  %i.g = add i64 %i.c, %i.b                       ; 3 uses
  %2 = add i64 %i.f, %i.d                         ; 2 uses
  %3 = tail call noundef i64 @llvm.fshl.i64(i64 %i.c, i64 %i.c, i64 13)
  %4 = xor i64 %3, %i.g                           ; 3 uses
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 16)
  %i.i = xor i64 %2, %i.h                         ; 3 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 32)
  %5 = add i64 %2, %4                             ; 3 uses
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = tail call noundef i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 17)
  %6 = xor i64 %5, %i.l                           ; 3 uses
  %i.m = tail call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 21)
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 32)
  %i.o = xor i64 %i.k, %.val.i
  %i.p = xor i64 %i.k, %i.m
  %i.q = xor i64 %i.p, 576460752303423488         ; 3 uses
  %i.r = add i64 %i.o, %6                         ; 3 uses
  %i.s = add i64 %i.q, %i.n                       ; 2 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 13)
  %i.u = xor i64 %i.r, %i.t                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.w = xor i64 %i.v, %i.s                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.y = add i64 %i.s, %i.u                       ; 3 uses
  %i.z = add i64 %i.w, %i.x                       ; 2 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 17)
  %i.ab = xor i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 21)
  %i.ad = xor i64 %i.ac, %i.z                     ; 3 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32)
  %i.af = xor i64 %i.z, 576460752303423488
  %i.ag = xor i64 %i.ae, 255
  %i.ah = add i64 %i.af, %i.ab                    ; 3 uses
  %i.ai = add i64 %i.ad, %i.ag                    ; 2 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 13)
  %i.ak = xor i64 %i.ah, %i.aj                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 16)
  %i.am = xor i64 %i.al, %i.ai                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.ao = add i64 %i.ak, %i.ai                    ; 3 uses
  %i.ap = add i64 %i.am, %i.an                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 17)
  %i.ar = xor i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 21)
  %i.at = xor i64 %i.as, %i.ap                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.av = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.aw = add i64 %i.at, %i.au                    ; 2 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ay = xor i64 %i.ax, %i.av                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 16)
  %i.ba = xor i64 %i.az, %i.aw                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.bc = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bf = xor i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 13)
  %i.bm = xor i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 16)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 21)
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 32)
  %i.bt = xor i64 %i.br, %i.bq
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = xor i64 %i.bu, %i.bp
  ret i64 %i.bv
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs6CpVowoi7NE_12tracing_core8callsite10IdentifierECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.b = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.d = xor <2 x i64> %i.c, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.d, ptr %i.a, align 16, !alias.scope !85
  %i.e = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.f = xor <2 x i64> %i.e, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.f, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !85
  store <2 x i64> %i.b, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !85
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !85
  call void @_RINvXs3_NtCs6CpVowoi7NE_12tracing_core8callsiteNtB6_10IdentifierNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 16, !alias.scope !86
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !86
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !86 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !86
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !86, !noundef !5
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !86, !noundef !5
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.bq
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs2xcxdQoJA8F_10serde_json5value5ValueEE13new_uninit_inCsglDVE6xSTcO_5fontc() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4249) 728, i64 noundef range(i64 1, 17) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs2xcxdQoJA8F_10serde_json5value5ValueEE13new_uninit_inCsglDVE6xSTcO_5fontc() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4249) 632, i64 noundef range(i64 1, 17) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc4list5BlockNtCs5MxzpKags6U_14tracing_chrome7MessageEE13new_zeroed_inCsglDVE6xSTcO_5fontc() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(3976) ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef 3976, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3976) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsglDVE6xSTcO_5fontc() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
end_hunk_0
