begin_hunk_0
  call void @_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray7inverseEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 6 uses
  %i.l = load <4 x double>, ptr %i.k, align 8
  %.fr = freeze <4 x double> %i.l
  %i.m = fcmp une <4 x double> %.fr, zeroinitializer
  %i.n = bitcast <4 x i1> %i.m to i4
  %.not = icmp eq i4 %i.n, 0
  br i1 %.not, label %bb.f, label %_ZNK16OpenColorIO_v2_512MatrixOpData7Offsets9isNotNullEv.exit.thread
end_hunk_0
begin_hunk_1
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load <4 x double>, ptr %i.a, align 8
  %.fr = freeze <4 x double> %i.b
  %i.c = fcmp une <4 x double> %.fr, zeroinitializer
  %i.d = bitcast <4 x i1> %i.c to i4
  %.not = icmp eq i4 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge25
end_hunk_1
