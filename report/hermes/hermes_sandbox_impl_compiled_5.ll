inline.NumInlined: 16806
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bn, %bb.af
  %.01642 = phi i1 [ true, %bb.af ], [ %.not1698, %bb.bn ] ; 13 uses
  %.21614 = phi i32 [ %.11613, %bb.af ], [ %i.mw, %bb.bn ] ; 2 uses
  %.0 = phi i32 [ %.11616, %bb.af ], [ %i.mv, %bb.bn ] ; 2 uses
  %.01642.not = xor i1 %.01642, true
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  br label %bb.bn

bb.ba:                                            ; preds = %bb.aj
  %i.jl = select i1 %.01642, i64 59699, i64 59700 ; 5 uses
  %i.jm = select i1 %.01642, i32 6, i32 5         ; 3 uses
  %.val1755 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1755, i64 %i.bq
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.jz = zext i8 %.0.copyload.i1935 to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1870, i64 %i.jy
  store i16 %i.jz, ptr %i.ka, align 1
  %.val1832 = load ptr, ptr %i.d, align 8, !tbaa !18
  %5 = getelementptr inbounds nuw i8, ptr %.val1832, i64 %i.jl
  %i.kb = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.0.copyload.i1936 = load i8, ptr %i.kb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1936) #8, !srcloc !21
  %.val1869 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1869, i64 %i.jy
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  store i16 %i.kc, ptr %i.ke, align 1
  %.val1831 = load ptr, ptr %i.d, align 8, !tbaa !18
  %6 = getelementptr inbounds nuw i8, ptr %.val1831, i64 %i.jl
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 2
  %.0.copyload.i1937 = load i8, ptr %i.kf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1937) #8, !srcloc !21
  %.val1868 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1868, i64 %i.jy
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store i16 %i.kg, ptr %i.ki, align 1
  %.val1830 = load ptr, ptr %i.d, align 8, !tbaa !18
  %7 = getelementptr inbounds nuw i8, ptr %.val1830, i64 %i.jl
  %i.kj = getelementptr inbounds nuw i8, ptr %7, i64 3
  %.0.copyload.i1938 = load i8, ptr %i.kj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1938) #8, !srcloc !21
  %.val1867 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1867, i64 %i.jy
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 6
  store i16 %i.kk, ptr %i.km, align 1
  %.val1829 = load ptr, ptr %i.d, align 8, !tbaa !18
  %8 = getelementptr inbounds nuw i8, ptr %.val1829, i64 %i.jl
  %i.kn = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.0.copyload.i1939 = load i8, ptr %i.kn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1939) #8, !srcloc !21
  %.val1866 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  br label %bb.bn

bb.bf:                                            ; preds = %bb.aj
  %i.kw = select i1 %.01642, i64 59692, i64 59693 ; 5 uses
  %i.kx = select i1 %.01642, i32 6, i32 5         ; 3 uses
  %.val1751 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ky = getelementptr inbounds nuw i8, ptr %.val1751, i64 %i.bq
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.lk = zext i8 %.0.copyload.i1945 to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1864, i64 %i.lj
  store i16 %i.lk, ptr %i.ll, align 1
  %.val1826 = load ptr, ptr %i.d, align 8, !tbaa !18
  %9 = getelementptr inbounds nuw i8, ptr %.val1826, i64 %i.kw
  %i.lm = getelementptr inbounds nuw i8, ptr %9, i64 1
  %.0.copyload.i1946 = load i8, ptr %i.lm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1946) #8, !srcloc !21
  %.val1863 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.lo = getelementptr inbounds nuw i8, ptr %.val1863, i64 %i.lj
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  store i16 %i.ln, ptr %i.lp, align 1
  %.val1825 = load ptr, ptr %i.d, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %.val1825, i64 %i.kw
  %i.lq = getelementptr inbounds nuw i8, ptr %10, i64 2
  %.0.copyload.i1947 = load i8, ptr %i.lq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1947) #8, !srcloc !21
  %.val1862 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_8
begin_hunk_9_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.ls = getelementptr inbounds nuw i8, ptr %.val1862, i64 %i.lj
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store i16 %i.lr, ptr %i.lt, align 1
  %.val1824 = load ptr, ptr %i.d, align 8, !tbaa !18
  %11 = getelementptr inbounds nuw i8, ptr %.val1824, i64 %i.kw
  %i.lu = getelementptr inbounds nuw i8, ptr %11, i64 3
  %.0.copyload.i1948 = load i8, ptr %i.lu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1948) #8, !srcloc !21
  %.val1861 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_9
begin_hunk_10_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.lw = getelementptr inbounds nuw i8, ptr %.val1861, i64 %i.lj
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 6
  store i16 %i.lv, ptr %i.lx, align 1
  %.val1823 = load ptr, ptr %i.d, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %.val1823, i64 %i.kw
  %i.ly = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.0.copyload.i1949 = load i8, ptr %i.ly, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1949) #8, !srcloc !21
  %.val1860 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_10
