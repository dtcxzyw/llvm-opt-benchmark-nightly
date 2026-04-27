inline.NumInlined: 403
inline.NumDeleted: 202
begin_hunk_0_@_ZN6Assimp11MDCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.kl = load i16, ptr %i.kk, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %.0222411, i64 104
  %i.kn = load i32, ptr %i.km, align 1
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %i.kp = sext i16 %i.kl to i32
  %i.kq = load i32, ptr %i.ep, align 1            ; 3 uses
  %i.kr = shl nsw i32 %i.kp, 2
  %i.ks = mul i32 %i.kr, %i.kq
  %i.kt = zext i32 %i.ks to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.kt, 3
  %9 = getelementptr inbounds nuw i8, ptr %.0222411, i64 %.idx
  %i.ku = getelementptr inbounds nuw i8, ptr %9, i64 %i.ko ; 6 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.0222411, i64 120 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 1
  %i.kx = zext i32 %i.kw to i64                   ; 4 uses
  %i.ky = zext i32 %i.kq to i64                   ; 2 uses
  %10 = add nuw nsw i64 %i.kt, %i.ky
  %i.kz = shl nuw nsw i64 %10, 3
  %i.la = add nuw nsw i64 %i.kz, %i.ko
  %i.lb = icmp samesign ugt i64 %i.la, %i.kx
  br i1 %i.lb, label %bb.ax, label %bb.bf

end_hunk_0
