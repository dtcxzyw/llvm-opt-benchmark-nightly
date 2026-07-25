inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3AprintDiagnostic0x28llvh0x3A0x3ASMDiagnostic0x20const0x260x2C0x20void0x2A0x29:bb.a
  store i8 %i.ahc, ptr %i.ahd, align 1
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.ahe = shl i32 %i.agy, 2
  %i.ahf = add i32 %.33425, %i.ahe
  %i.ahg = zext i32 %i.ahf to i64
  %.val3873 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ahh = getelementptr inbounds nuw i8, ptr %.val3873, i64 %i.ahg
  store i32 0, ptr %i.ahh, align 1
  %.val3764 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ahi = getelementptr inbounds nuw i8, ptr %.val3764, i64 %i.abi
  %.0.copyload.i4159 = load i32, ptr %i.ahi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4159) #7, !srcloc !19
  %.val3978 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ahj = getelementptr inbounds nuw i8, ptr %.val3978, i64 %i.aaw
  %.0.copyload.i4160 = load i8, ptr %i.ahj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4160) #7, !srcloc !21
  %i.ahk = zext i8 %.0.copyload.i4160 to i32
  %.not3642 = icmp sgt i8 %.0.copyload.i4160, -1  ; 2 uses
  %i.ahl = select i1 %.not3642, i32 %i.ahk, i32 %.0.copyload.i4159
  %i.ahm = icmp ugt i32 %i.ahl, %.103499
  br i1 %i.ahm, label %bb.fm, label %bb.ga

bb.fm:                                            ; preds = %bb.fl
  %.val3763 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ahn = getelementptr inbounds nuw i8, ptr %.val3763, i64 %i.aau
  %.0.copyload.i4161 = load i32, ptr %i.ahn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4161) #7, !srcloc !19
  %i.aho = select i1 %.not3642, i32 %.pre4388, i32 %.0.copyload.i4161
  %i.ahp = add i32 %i.aho, %.103499
  %i.ahq = zext i32 %i.ahp to i64
  %.val4007 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ahr = getelementptr inbounds nuw i8, ptr %.val4007, i64 %i.ahq
  %.0.copyload.i4162 = load i8, ptr %i.ahr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4162) #7, !srcloc !22
  %i.ahs = sext i8 %.0.copyload.i4162 to i32
  %i.aht = load i32, ptr %i.a, align 8, !tbaa !7  ; 4 uses
  %i.ahu = add i32 %i.aht, -16                    ; 2 uses
  store i32 %i.ahu, ptr %i.a, align 8, !tbaa !7
  %i.ahv = zext i32 %i.ahu to i64                 ; 2 uses
  %i.ahw = add nuw nsw i64 %i.ahv, 12             ; 5 uses
  %.val3872 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ahx = getelementptr inbounds nuw i8, ptr %.val3872, i64 %i.ahw
  store i32 1, ptr %i.ahx, align 1
  %.val3977 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ahy = getelementptr inbounds nuw i8, ptr %.val3977, i64 %i.acv
  %.0.copyload.i4163 = load i8, ptr %i.ahy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4163) #7, !srcloc !21
  %.not3643 = icmp sgt i8 %.0.copyload.i4163, -1
  %.val3976 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not3643, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ahz = getelementptr inbounds nuw i8, ptr %.val3976, i64 %i.acu
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 4
  %.0.copyload.i4164 = load i32, ptr %i.aia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4164) #7, !srcloc !19
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.aib = getelementptr inbounds nuw i8, ptr %.val3976, i64 %i.acv
  %.0.copyload.i4165 = load i8, ptr %i.aib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4165) #7, !srcloc !21
  %i.aic = and i8 %.0.copyload.i4165, 127
  %i.aid = zext nneg i8 %i.aic to i32
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.03420 = phi i32 [ %.0.copyload.i4164, %bb.fn ], [ %i.aid, %bb.fo ] ; 6 uses
  %.not3644 = icmp ugt i32 %.103499, %.03420
  br i1 %.not3644, label %bb.fz, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aie = sub nuw i32 %.03420, %.103499          ; 3 uses
  %.val3871 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aif = getelementptr inbounds nuw i8, ptr %.val3871, i64 %i.ahv
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  store i32 %i.aie, ptr %i.aig, align 1
  %i.aih = load i32, ptr %i.a, align 8, !tbaa !7  ; 2 uses
  %i.aii = add i32 %i.aih, -16
  store i32 %i.aii, ptr %i.a, align 8, !tbaa !7
  %i.aij = add i32 %i.aht, -8                     ; 2 uses
  %i.aik = zext i32 %i.aij to i64
  %.val3761 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ail = getelementptr inbounds nuw i8, ptr %.val3761, i64 %i.aik
  %.0.copyload.i4166 = load i32, ptr %i.ail, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4166) #7, !srcloc !19
  %i.aim = add i32 %i.aht, -4                     ; 2 uses
  %i.ain = zext i32 %i.aim to i64
  %.val3760 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aio = getelementptr inbounds nuw i8, ptr %.val3760, i64 %i.ain
  %.0.copyload.i4167 = load i32, ptr %i.aio, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4167) #7, !srcloc !19
  %i.aip = icmp ult i32 %.0.copyload.i4166, %.0.copyload.i4167
  store i32 %i.aih, ptr %i.a, align 8, !tbaa !7
  %i.aiq = select i1 %i.aip, i32 %i.aij, i32 %i.aim
  %i.air = zext i32 %i.aiq to i64
  %.val3759 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ais = getelementptr inbounds nuw i8, ptr %.val3759, i64 %i.air
  %.0.copyload.i4168 = load i32, ptr %i.ais, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4168) #7, !srcloc !19
  %.val3870 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ait = getelementptr inbounds nuw i8, ptr %.val3870, i64 %i.ahw
  store i32 %.0.copyload.i4168, ptr %i.ait, align 1
  %.val3758 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aiu = getelementptr inbounds nuw i8, ptr %.val3758, i64 %i.ahw
  %.0.copyload.i4169 = load i32, ptr %i.aiu, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4169) #7, !srcloc !19
  %.val3975 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aiv = getelementptr inbounds nuw i8, ptr %.val3975, i64 %i.acv
  %.0.copyload.i4170 = load i8, ptr %i.aiv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4170) #7, !srcloc !21
  %.not3645 = icmp sgt i8 %.0.copyload.i4170, -1
  br i1 %.not3645, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %.val3757 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aiw = getelementptr inbounds nuw i8, ptr %.val3757, i64 %i.acu
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  %.0.copyload.i4171 = load i32, ptr %i.aix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4171) #7, !srcloc !19
  %i.aiy = and i32 %.0.copyload.i4171, 2147483647
  %i.aiz = add nsw i32 %i.aiy, -1
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fq, %bb.fr
  %.03419 = phi i32 [ %i.aiz, %bb.fr ], [ 10, %bb.fq ] ; 3 uses
  %i.aja = sub i32 %.0.copyload.i4169, %.03420
  %i.ajb = add i32 %i.aja, %.03419
  %.not3646 = icmp ugt i32 %i.acx, %i.ajb
  br i1 %.not3646, label %bb.fx, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.val3974 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ajc = getelementptr inbounds nuw i8, ptr %.val3974, i64 %i.acv
  %.0.copyload.i4172 = load i8, ptr %i.ajc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4172) #7, !srcloc !21
  %.not3647 = icmp sgt i8 %.0.copyload.i4172, -1
  br i1 %.not3647, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.val3756 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ajd = getelementptr inbounds nuw i8, ptr %.val3756, i64 %i.acu
  %.0.copyload.i4173 = load i32, ptr %i.ajd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4173) #7, !srcloc !19
  br label %bb.fv

bb.fv:                                            ; preds = %bb.ft, %bb.fu
  %.3 = phi i32 [ %.0.copyload.i4173, %bb.fu ], [ %.pre4388, %bb.ft ] ; 3 uses
  %.val3755 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aje = getelementptr inbounds nuw i8, ptr %.val3755, i64 %i.ahw
  %.0.copyload.i4174 = load i32, ptr %i.aje, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4174) #7, !srcloc !19
  %i.ajf = icmp eq i32 %.0.copyload.i4174, %i.acx
  %i.ajg = icmp eq i32 %.0.copyload.i4174, %i.aie
  %or.cond3702 = or i1 %i.ajf, %i.ajg
  br i1 %or.cond3702, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ajh = add i32 %.3, %.103499                  ; 2 uses
  %i.aji = add i32 %i.ajh, %i.acx
  %i.ajj = add i32 %.0.copyload.i4174, %i.ajh
  %i.ajk = sub i32 %i.aie, %.0.copyload.i4174
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x3A0x3Amove0x28char0x2A0x2C0x20char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.aji, i32 noundef %i.ajj, i32 noundef %i.ajk) #7
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fs
  %.neg4328 = add i32 %.03420, %i.acx
  %i.ajl = add i32 %.0.copyload.i4169, %.03419
  %i.ajm = sub i32 %.neg4328, %i.ajl
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fgrow_by0x28unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.pre4388, i32 noundef %.03419, i32 noundef %i.ajm, i32 noundef %.03420, i32 noundef %.103499, i32 noundef %.0.copyload.i4169, i32 noundef %i.acx) #7
  %.val3754 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ajn = getelementptr inbounds nuw i8, ptr %.val3754, i64 %i.acu
  %.0.copyload.i4175 = load i32, ptr %i.ajn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4175) #7, !srcloc !19
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fv, %bb.fx, %bb.fw
  %.23450 = phi i32 [ %.3, %bb.fv ], [ %.0.copyload.i4175, %bb.fx ], [ %.3, %bb.fw ] ; 2 uses
  %i.ajo = add i32 %.23450, %.103499
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x3A0x3Aassign0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20char0x29(ptr noundef nonnull %0, i32 noundef %i.ajo, i32 noundef %i.acx, i32 noundef %i.ahs) #7
  %i.ajp = add i32 %.03420, %i.acx
  %.val3753 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ajq = getelementptr inbounds nuw i8, ptr %.val3753, i64 %i.ahw
  %.0.copyload.i4176 = load i32, ptr %i.ajq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4176) #7, !srcloc !19
  %i.ajr = sub i32 %i.ajp, %.0.copyload.i4176
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fnull_terminate_at0x5Babi0x3Av150070x5D0x28char0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.pre4388, i32 noundef %.23450, i32 noundef %i.ajr) #7
  store i32 %i.aht, ptr %i.a, align 8, !tbaa !7
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fp
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x280x290x20const(ptr noundef nonnull %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.ga:                                            ; preds = %bb.fy, %bb.fl
  %.val3752 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ajs = getelementptr inbounds nuw i8, ptr %.val3752, i64 %i.wu
  %.0.copyload.i4177 = load i32, ptr %i.ajs, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4177) #7, !srcloc !19
  %.val3973 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ajt = getelementptr inbounds nuw i8, ptr %.val3973, i64 %i.ww
  %.0.copyload.i4178 = load i8, ptr %i.ajt, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4178) #7, !srcloc !21
  %i.aju = zext i8 %.0.copyload.i4178 to i32
  %i.ajv = icmp slt i8 %.0.copyload.i4178, 0      ; 2 uses
  %i.ajw = select i1 %i.ajv, i32 %.0.copyload.i4177, i32 %i.aju ; 7 uses
  %i.ajx = add nsw i32 %i.acx, %.103499           ; 3 uses
  %.not3649 = icmp ugt i32 %i.ajw, %i.ajx
  br i1 %.not3649, label %bb.gb, label %.thread4307

bb.gb:                                            ; preds = %bb.ga
  %.val3751 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ajy = getelementptr inbounds nuw i8, ptr %.val3751, i64 %i.pn
  %.0.copyload.i4179 = load i32, ptr %i.ajy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4179) #7, !srcloc !19
  %i.ajz = select i1 %i.ajv, i32 %.0.copyload.i4179, i32 %i.ach ; 2 uses
  %i.aka = sub nuw i32 %i.ajw, %i.ajx             ; 2 uses
  %.not3650 = icmp eq i32 %i.aka, 0
  br i1 %.not3650, label %.thread4307, label %3

3:                                                ; preds = %bb.gb
  %4 = shl i32 %i.ajx, 2
  %5 = add i32 %i.ajz, %4
  %.fr4324 = freeze i32 %5
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gd, %3
  %.113500 = phi i32 [ %.fr4324, %3 ], [ %i.ake, %bb.gd ] ; 4 uses
  %.11 = phi i32 [ %i.aka, %3 ], [ %i.akf, %bb.gd ]
  %i.akb = zext i32 %.113500 to i64
  %.val3750 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.akc = getelementptr inbounds nuw i8, ptr %.val3750, i64 %i.akb
  %.0.copyload.i4180 = load i32, ptr %i.akc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4180) #7, !srcloc !19
  %i.akd = icmp eq i32 %.0.copyload.i4180, 9
  br i1 %i.akd, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ake = add i32 %.113500, 4
  %i.akf = add i32 %.11, -1                       ; 2 uses
  %.not3651 = icmp eq i32 %i.akf, 0
  br i1 %.not3651, label %.thread4307, label %bb.gc

bb.ge:                                            ; preds = %bb.gc
  %i.akg = sub i32 %.113500, %i.ajz
  %i.akh = ashr i32 %i.akg, 2                     ; 2 uses
  %.not3652 = icmp ne i32 %.113500, 0
  %i.aki = icmp ult i32 %i.akh, %i.ajw
  %or.cond4319 = select i1 %.not3652, i1 %i.aki, i1 false
  br i1 %or.cond4319, label %bb.er, label %.thread4307

.thread4307:                                      ; preds = %bb.ep, %bb.gb, %bb.ge, %bb.ga, %bb.gd, %bb.eq, %bb.em
  %.73477 = phi i32 [ %i.ajw, %bb.gd ], [ %i.acf, %bb.eq ], [ %i.ajw, %bb.gb ], [ 0, %bb.em ], [ %i.ajw, %bb.ga ], [ %i.ajw, %bb.ge ], [ %i.acf, %bb.ep ]
  %.63464 = phi i32 [ %.0.copyload.i4177, %bb.gd ], [ %.0.copyload.i4147, %bb.eq ], [ %.0.copyload.i4177, %bb.gb ], [ %.0.copyload.i4147, %bb.em ], [ %.0.copyload.i4177, %bb.ga ], [ %.0.copyload.i4177, %bb.ge ], [ %.0.copyload.i4147, %bb.ep ]
  %.53427.in = phi i8 [ %.0.copyload.i4178, %bb.gd ], [ %.0.copyload.i4148, %bb.eq ], [ %.0.copyload.i4178, %bb.gb ], [ %.0.copyload.i4148, %bb.em ], [ %.0.copyload.i4178, %bb.ga ], [ %.0.copyload.i4178, %bb.ge ], [ %.0.copyload.i4148, %bb.ep ]
  br i1 %.not3617, label %.loopexit4330, label %.preheader

.preheader:                                       ; preds = %.thread4307, %bb.gh
  %.123501 = phi i32 [ %i.akp, %bb.gh ], [ %.63457, %.thread4307 ] ; 2 uses
  %i.akj = zext i32 %.123501 to i64               ; 2 uses
  %.val3749 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.akk = getelementptr inbounds nuw i8, ptr %.val3749, i64 %i.akj
  %.0.copyload.i4181 = load i32, ptr %i.akk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4181) #7, !srcloc !19
  %i.akl = icmp ugt i32 %.0.copyload.i4181, %.23447
  br i1 %i.akl, label %bb.gh, label %bb.gf

bb.gf:                                            ; preds = %.preheader
  %.val3748 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.akm = getelementptr inbounds nuw i8, ptr %.val3748, i64 %i.akj
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 4
  %.0.copyload.i4182 = load i32, ptr %i.akn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4182) #7, !srcloc !19
  %.not3653 = icmp ult i32 %.23447, %.0.copyload.i4182
  br i1 %.not3653, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.ako = sub i32 %.0.copyload.i4182, %.0.copyload.i4181
  br label %.loopexit4330

bb.gh:                                            ; preds = %bb.gf, %.preheader
  %i.akp = add i32 %.123501, 8                    ; 2 uses
  %.not3654 = icmp eq i32 %i.akp, %.83443
  br i1 %.not3654, label %.loopexit4330, label %.preheader

.loopexit4330:                                    ; preds = %bb.gh, %.thread4307, %bb.gg
  %.12 = phi i32 [ %.0.copyload.i4181, %bb.gg ], [ %.23447, %.thread4307 ], [ %.23447, %bb.gh ]
  %.43469 = phi i32 [ %i.ako, %bb.gg ], [ 1, %.thread4307 ], [ 1, %bb.gh ] ; 2 uses
  %.val3747 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.akq = getelementptr inbounds nuw i8, ptr %.val3747, i64 %i.pd
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 12
  %.0.copyload.i4183 = load i32, ptr %i.akr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4183) #7, !srcloc !19
  %i.aks = add i32 %.43469, 16
  %i.akt = tail call i32 @llvm.umax.i32(i32 %i.aks, i32 %.0.copyload.i4183) ; 8 uses
  %.not3655 = icmp ugt i32 %.73477, %i.akt
  br i1 %.not3655, label %bb.gi, label %bb.hf

bb.gi:                                            ; preds = %.loopexit4330
  %i.aku = sdiv i32 %.43469, 2
  %i.akv = add i32 %i.aku, %.12
  %i.akw = lshr i32 %i.akt, 1
  %i.akx = sub i32 %i.akv, %i.akw                 ; 4 uses
  %i.aky = icmp sgt i32 %i.akx, 0
  br i1 %i.aky, label %bb.gj, label %bb.gw

bb.gj:                                            ; preds = %bb.gi
  %i.akz = load i32, ptr %i.a, align 8, !tbaa !7  ; 4 uses
  %i.ala = add i32 %i.akz, -16                    ; 2 uses
  store i32 %i.ala, ptr %i.a, align 8, !tbaa !7
  %i.alb = zext i32 %i.ala to i64                 ; 2 uses
  %i.alc = add nuw nsw i64 %i.alb, 12             ; 3 uses
  %.val3869 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ald = getelementptr inbounds nuw i8, ptr %.val3869, i64 %i.alc
  store i32 %i.akx, ptr %i.ald, align 1
  %i.ale = zext i32 %.pre4388 to i64              ; 3 uses
  %i.alf = add nuw nsw i64 %i.ale, 11             ; 3 uses
  %.val3972 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.alg = getelementptr inbounds nuw i8, ptr %.val3972, i64 %i.alf
  %.0.copyload.i4184 = load i8, ptr %i.alg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4184) #7, !srcloc !21
  %.not3656 = icmp sgt i8 %.0.copyload.i4184, -1
  %.val3971 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not3656, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.alh = getelementptr inbounds nuw i8, ptr %.val3971, i64 %i.ale
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 4
  %.0.copyload.i4185 = load i32, ptr %i.ali, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4185) #7, !srcloc !19
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  %i.alj = getelementptr inbounds nuw i8, ptr %.val3971, i64 %i.alf
  %.0.copyload.i4186 = load i8, ptr %i.alj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4186) #7, !srcloc !21
  %i.alk = and i8 %.0.copyload.i4186, 127
  %i.all = zext nneg i8 %i.alk to i32
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.4 = phi i32 [ %.0.copyload.i4185, %bb.gk ], [ %i.all, %bb.gl ] ; 5 uses
  %.val3970 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.alm = getelementptr inbounds nuw i8, ptr %.val3970, i64 %i.alf
  %.0.copyload.i4187 = load i8, ptr %i.alm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4187) #7, !srcloc !21
  %.not3657 = icmp sgt i8 %.0.copyload.i4187, -1
  br i1 %.not3657, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %.val3745 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aln = getelementptr inbounds nuw i8, ptr %.val3745, i64 %i.ale
  %.0.copyload.i4188 = load i32, ptr %i.aln, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4188) #7, !srcloc !19
  br label %bb.go

bb.go:                                            ; preds = %bb.gm, %bb.gn
  %.5 = phi i32 [ %.0.copyload.i4188, %bb.gn ], [ %.pre4388, %bb.gm ] ; 3 uses
  %.val3868 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.alo = getelementptr inbounds nuw i8, ptr %.val3868, i64 %i.alb
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  store i32 %.4, ptr %i.alp, align 1
  %i.alq = load i32, ptr %i.a, align 8, !tbaa !7  ; 2 uses
  %i.alr = add i32 %i.alq, -16
  store i32 %i.alr, ptr %i.a, align 8, !tbaa !7
  %i.als = add i32 %i.akz, -8                     ; 2 uses
  %i.alt = zext i32 %i.als to i64
  %.val3744 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.alu = getelementptr inbounds nuw i8, ptr %.val3744, i64 %i.alt
  %.0.copyload.i4189 = load i32, ptr %i.alu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4189) #7, !srcloc !19
  %i.alv = add i32 %i.akz, -4                     ; 2 uses
  %i.alw = zext i32 %i.alv to i64
  %.val3743 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.alx = getelementptr inbounds nuw i8, ptr %.val3743, i64 %i.alw
  %.0.copyload.i4190 = load i32, ptr %i.alx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4190) #7, !srcloc !19
  %i.aly = icmp ult i32 %.0.copyload.i4189, %.0.copyload.i4190
  store i32 %i.alq, ptr %i.a, align 8, !tbaa !7
  %i.alz = select i1 %i.aly, i32 %i.als, i32 %i.alv
  %i.ama = zext i32 %i.alz to i64
  %.val3742 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.amb = getelementptr inbounds nuw i8, ptr %.val3742, i64 %i.ama
  %.0.copyload.i4191 = load i32, ptr %i.amb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4191) #7, !srcloc !19
  %.val3867 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.amc = getelementptr inbounds nuw i8, ptr %.val3867, i64 %i.alc
  store i32 %.0.copyload.i4191, ptr %i.amc, align 1
  %.not3658 = icmp eq i32 %.0.copyload.i4191, %.4
  br i1 %.not3658, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.amd = add i32 %.0.copyload.i4191, %.5
  %i.ame = sub i32 %.4, %.0.copyload.i4191
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x3A0x3Amove0x28char0x2A0x2C0x20char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.5, i32 noundef %i.amd, i32 noundef %i.ame) #7
  %.val3741 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.amf = getelementptr inbounds nuw i8, ptr %.val3741, i64 %i.alc
  %.0.copyload.i4192 = load i32, ptr %i.amf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4192) #7, !srcloc !19
  br label %bb.gq

bb.gq:                                            ; preds = %bb.go, %bb.gp
  %.0 = phi i32 [ %.0.copyload.i4192, %bb.gp ], [ %.4, %bb.go ]
  %i.amg = sub i32 %.4, %.0
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fnull_terminate_at0x5Babi0x3Av150070x5D0x28char0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.pre4388, i32 noundef %.5, i32 noundef %i.amg) #7
  store i32 %i.akz, ptr %i.a, align 8, !tbaa !7
  %.val3740 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.amh = getelementptr inbounds nuw i8, ptr %.val3740, i64 %i.wu
  %.0.copyload.i4193 = load i32, ptr %i.amh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4193) #7, !srcloc !19
  %.val3969 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ami = getelementptr inbounds nuw i8, ptr %.val3969, i64 %i.ww
  %.0.copyload.i4194 = load i8, ptr %i.ami, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4194) #7, !srcloc !21
  %i.amj = zext i8 %.0.copyload.i4194 to i32      ; 2 uses
  %sext3659 = shl nuw i32 %i.amj, 24              ; 2 uses
  %i.amk = icmp slt i32 %sext3659, 0              ; 2 uses
  %i.aml = select i1 %i.amk, i32 %.0.copyload.i4193, i32 %i.amj ; 3 uses
  %i.amm = tail call i32 @llvm.umin.i32(i32 %i.aml, i32 %i.akx) ; 2 uses
  %i.amn = sub i32 %i.aml, %i.amm                 ; 4 uses
  %.val3739 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.amo = getelementptr inbounds nuw i8, ptr %.val3739, i64 %i.pn
  %.0.copyload.i4195 = load i32, ptr %i.amo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4195) #7, !srcloc !19
  %i.amp = add i32 %i.pi, -16                     ; 2 uses
  %i.amq = select i1 %i.amk, i32 %.0.copyload.i4195, i32 %i.amp ; 3 uses
  %i.amr = icmp ugt i32 %i.aml, %i.akx
  br i1 %i.amr, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.ams = shl i32 %i.amm, 2
  %i.amt = add i32 %i.ams, %i.amq
  %i.amu = shl i32 %i.amn, 2
  %i.amv = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.amq, i32 noundef %i.amt, i32 noundef %i.amu) #7 ; 0 uses
  %.val3968 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.amw = getelementptr inbounds nuw i8, ptr %.val3968, i64 %i.ww
  %.0.copyload.i4196 = load i8, ptr %i.amw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4196) #7, !srcloc !21
  %i.amx = zext i8 %.0.copyload.i4196 to i32
  %i.amy = shl nuw i32 %i.amx, 24
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gq, %bb.gr
  %.6 = phi i32 [ %i.amy, %bb.gr ], [ %sext3659, %bb.gq ]
  %i.amz = icmp slt i32 %.6, 0
  %.val3866 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %i.amz, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.ana = getelementptr inbounds nuw i8, ptr %.val3866, i64 %i.wu
  store i32 %i.amn, ptr %i.ana, align 1
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.anb = trunc i32 %i.amn to i8
end_hunk_0
