inline.NumInlined: 8639
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28llvh0x3A0x3Aformatv_object_base0x20const0x260x29:bb.a
  %.0.copyload.i1270 = load i32, ptr %i.lz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1270) #8, !srcloc !14
  %i.ma = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i1270, i32 noundef %.4) ; 0 uses
  %i.mb = sub i32 %i.fw, %i.iy
  br label %bb.at

bb.at:                                            ; preds = %bb.bd, %._crit_edge1390
end_hunk_0
begin_hunk_1_@w2c_hermes_llvh0x3A0x3Asys0x3A0x3Apath0x3A0x3Aappend0x28llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x260x2C0x20llvh0x3A0x3Asys0x3A0x3Apath0x3A0x3AStyle0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3ATwine0x20const0x260x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1739) #8, !srcloc !14
  %i.ks = tail call i32 @llvm.umin.i32(i32 %.01370, i32 %.0.copyload.i1739) ; 2 uses
  %i.kt = add i32 %i.ks, %.0.copyload.i1738
  %i.ku = sub i32 %.0.copyload.i1739, %i.ks       ; 5 uses
  %.val1518 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1518, i64 %i.hd
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
end_hunk_1
begin_hunk_2_@w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aindent0x28unsigned0x20int0x29:bb.a
  %.0 = phi i32 [ %i.d, %.preheader ], [ %2, %bb.a ] ; 2 uses
  %i.b = tail call i32 @llvm.umin.i32(i32 %.0, i32 79) ; 2 uses
  %i.c = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef %0, i32 noundef %1, i32 noundef 70272, i32 noundef %i.b) ; 0 uses
  %i.d = sub i32 %.0, %i.b                        ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %.preheader

end_hunk_2
begin_hunk_3_@w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AshlSlowCase0x28unsigned0x20int0x29:bb.a
bb.h:                                             ; preds = %bb.b
  %i.ck = shl nuw nsw i32 %i.k, 3
  %i.cl = add i32 %.0.copyload.i348, %i.ck
  %i.cm = sub nsw i32 %i.j, %i.k
  %i.cn = shl nsw i32 %i.cm, 3
  %i.co = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.cl, i32 noundef %.0.copyload.i348, i32 noundef %i.cn) ; 0 uses
  br label %.loopexit

end_hunk_3
begin_hunk_4_@w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcShiftRight0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = lshr i32 %3, 6                           ; 2 uses
  %i.b = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.a) ; 10 uses
  %i.c = sub i32 %2, %i.b                         ; 3 uses
  %i.d = and i32 %3, 63                           ; 3 uses
  %.not266 = icmp eq i32 %i.d, 0
  br i1 %.not266, label %bb.f, label %bb.c
end_hunk_4
begin_hunk_5_@w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcShiftLeft0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29:bb.a
bb.h:                                             ; preds = %bb.b
  %i.cc = shl nuw nsw i32 %i.b, 3
  %i.cd = add i32 %i.cc, %1
  %i.ce = sub i32 %2, %i.b
  %i.cf = shl i32 %i.ce, 3
  %i.cg = tail call i32 @w2c_hermes_memmove(ptr noundef %0, i32 noundef %i.cd, i32 noundef %1, i32 noundef %i.cf) ; 0 uses
  br label %.loopexit
end_hunk_5
