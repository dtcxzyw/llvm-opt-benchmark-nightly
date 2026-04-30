inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@constants:bb.a
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aoq, i64 32
  store double %i.apn, ptr %i.apo, align 8, !tbaa !8
  %i.app = getelementptr inbounds nuw i8, ptr %i.aou, i64 24
  %i.apq = load double, ptr %i.app, align 8, !tbaa !8 ; 3 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aox, i64 24
  store double %i.apq, ptr %i.apr, align 8, !tbaa !8
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aou, i64 32
  store double %i.apq, ptr %i.aps, align 8, !tbaa !8
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aox, i64 32
  store double %i.apq, ptr %i.apt, align 8, !tbaa !8
  %i.apu = getelementptr i8, ptr %i.c, i64 40
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !16 ; 5 uses
  %i.apw = load double, ptr %i.aos, align 8, !tbaa !8
end_hunk_0
