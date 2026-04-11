inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3AprintStats0x28hermes0x3A0x3AJSONEmitter0x260x29:bb.a
  %i.ky = add i32 %i.b, -568
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitKey0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ky) #8
  %i.kz = sitofp i64 %i.bn to double
  %3 = sitofp i64 %.0.copyload.i2151 to double
  %4 = insertelement <2 x double> poison, double %i.kz, i64 0
  %5 = insertelement <2 x double> %4, double %3, i64 1
  %6 = fdiv <2 x double> %5, splat (double 1.000000e+06) ; 2 uses
  %shift = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %6, %shift
  %7 = extractelement <2 x double> %foldExtExtBinop, i64 0
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitValue0x28double0x29(ptr noundef nonnull %0, i32 noundef %2, double noundef %7) #8
  %i.la = add nuw nsw i64 %i.ab, 120              ; 2 uses
  %.val2144 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.lb = getelementptr inbounds nuw i8, ptr %.val2144, i64 %i.la
end_hunk_0
