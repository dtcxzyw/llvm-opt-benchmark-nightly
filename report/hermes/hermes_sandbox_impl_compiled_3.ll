inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3AprintStats0x28hermes0x3A0x3AJSONEmitter0x260x29:bb.a
  %i.ky = add i32 %i.b, -568
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitKey0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ky) #8
  %i.kz = sitofp i64 %i.bn to double
  %3 = fdiv double %i.kz, 1.000000e+06
  %4 = sitofp i64 %.0.copyload.i2151 to double
  %5 = fdiv double %4, 1.000000e+06
  %6 = fsub double %3, %5
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitValue0x28double0x29(ptr noundef nonnull %0, i32 noundef %2, double noundef %6) #8
  %i.la = add nuw nsw i64 %i.ab, 120              ; 2 uses
  %.val2144 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.lb = getelementptr inbounds nuw i8, ptr %.val2144, i64 %i.la
end_hunk_0
