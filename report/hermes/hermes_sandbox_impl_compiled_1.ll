Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
bb.op:                                            ; preds = %bb.oo
  %i.div = sub i32 %.0.copyload.i51731, %.0.copyload.i51732
  br label %bb.oq

bb.oq:                                            ; preds = %bb.ox, %bb.op
  %.944260 = phi i32 [ %.0.copyload.i51736, %bb.op ], [ %i.dkl, %bb.ox ] ; 2 uses
  %i.diw = zext i32 %.944260 to i64               ; 2 uses
  %.val48932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dix = getelementptr inbounds nuw i8, ptr %.val48932, i64 %i.diw
  %.0.copyload.i51738 = load i32, ptr %i.dix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51738) #7, !srcloc !19
  %.val48931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.diy = getelementptr inbounds nuw i8, ptr %.val48931, i64 %i.diw
  %i.diz = getelementptr inbounds nuw i8, ptr %i.diy, i64 4
  %.0.copyload.i51739 = load i32, ptr %i.diz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51739) #7, !srcloc !19
  %i.dja = and i32 %.0.copyload.i51739, 2147483647
  %.not45609 = icmp eq i32 %i.dja, 0
  %i.djb = select i1 %.not45609, i32 0, i32 %i.div
  %i.djc = add i32 %i.djb, %.0.copyload.i51738    ; 2 uses
  %.val48930 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.djd = getelementptr inbounds nuw i8, ptr %.val48930, i64 %i.cra
  %.0.copyload.i51740 = load i32, ptr %i.djd, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51740) #7, !srcloc !19
  %.val48929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dje = getelementptr inbounds nuw i8, ptr %.val48929, i64 %i.dif
  %.0.copyload.i51741 = load i32, ptr %i.dje, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51741) #7, !srcloc !19
  %i.djf = icmp ult i32 %.0.copyload.i51740, %.0.copyload.i51741
  br i1 %i.djf, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %i.djg = zext i32 %.0.copyload.i51740 to i64    ; 2 uses
  %.val50253 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.djh = getelementptr inbounds nuw i8, ptr %.val50253, i64 %i.djg
  %i.dji = getelementptr inbounds nuw i8, ptr %i.djh, i64 4
  store i32 %.0.copyload.i51739, ptr %i.dji, align 1
  %.val50252 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.djj = getelementptr inbounds nuw i8, ptr %.val50252, i64 %i.djg
  store i32 %i.djc, ptr %i.djj, align 1
  %i.djk = add i32 %.0.copyload.i51740, 8
  %.val50251 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.djl = getelementptr inbounds nuw i8, ptr %.val50251, i64 %i.cra
  store i32 %i.djk, ptr %i.djl, align 1
  br label %bb.ox

bb.os:                                            ; preds = %bb.oq
  %.val48928 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.djm = getelementptr inbounds nuw i8, ptr %.val48928, i64 %i.cqx
  %.0.copyload.i51742 = load i32, ptr %i.djm, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51742) #7, !srcloc !19
  %i.djn = sub i32 %.0.copyload.i51740, %.0.copyload.i51742 ; 3 uses
  %i.djo = ashr i32 %i.djn, 3
  %i.djp = add nsw i32 %i.djo, 1                  ; 2 uses
  %i.djq = icmp ugt i32 %i.djp, 536870911
  br i1 %i.djq, label %.loopexit54664, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.djr = sub i32 %.0.copyload.i51741, %.0.copyload.i51742 ; 2 uses
  %i.djs = ashr i32 %i.djr, 2
  %i.djt = tail call i32 @llvm.umax.i32(i32 %i.djs, i32 %i.djp)
  %i.dju = icmp ugt i32 %i.djr, 2147483639
  %i.djv = select i1 %i.dju, i32 536870911, i32 %i.djt ; 3 uses
  %.not45610 = icmp eq i32 %i.djv, 0
  br i1 %.not45610, label %._crit_edge55825, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.djw = icmp ugt i32 %i.djv, 536870911
  br i1 %i.djw, label %.loopexit54653, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.djx = shl nuw i32 %i.djv, 3                  ; 2 uses
  %i.djy = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.djx) #7
  br label %._crit_edge55825

._crit_edge55825:                                 ; preds = %bb.ot, %bb.ov
  %.pre-phi55927 = phi i32 [ %i.djx, %bb.ov ], [ 0, %bb.ot ]
  %.18 = phi i32 [ %i.djy, %bb.ov ], [ 0, %bb.ot ] ; 2 uses
  %i.djz = and i32 %i.djn, -8
  %i.dka = add i32 %.18, %i.djz                   ; 2 uses
  %i.dkb = zext i32 %i.dka to i64                 ; 2 uses
  %.val50250 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkc = getelementptr inbounds nuw i8, ptr %.val50250, i64 %i.dkb
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.dkc, i64 4
  store i32 %.0.copyload.i51739, ptr %i.dkd, align 1
  %.val50249 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dke = getelementptr inbounds nuw i8, ptr %.val50249, i64 %i.dkb
  store i32 %i.djc, ptr %i.dke, align 1
  %i.dkf = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.18, i32 noundef %.0.copyload.i51742, i32 noundef %i.djn) #7 ; 2 uses
  %i.dkg = add i32 %i.dkf, %.pre-phi55927
  %.val50248 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkh = getelementptr inbounds nuw i8, ptr %.val50248, i64 %i.dif
  store i32 %i.dkg, ptr %i.dkh, align 1
  %i.dki = add i32 %i.dka, 8
  %.val50247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkj = getelementptr inbounds nuw i8, ptr %.val50247, i64 %i.cra
  store i32 %i.dki, ptr %i.dkj, align 1
  %.val50246 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkk = getelementptr inbounds nuw i8, ptr %.val50246, i64 %i.cqx
  store i32 %i.dkf, ptr %i.dkk, align 1
  %.not45611 = icmp eq i32 %.0.copyload.i51742, 0
  br i1 %.not45611, label %bb.ox, label %bb.ow

bb.ow:                                            ; preds = %._crit_edge55825
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i51742) #7
  br label %bb.ox

bb.ox:                                            ; preds = %._crit_edge55825, %bb.ow, %bb.or
  %i.dkl = add i32 %.944260, 8                    ; 2 uses
  %.not45612 = icmp eq i32 %i.dkl, %.0.copyload.i51737
  br i1 %.not45612, label %.loopexit54727, label %bb.oq

.loopexit54727:                                   ; preds = %bb.ox, %bb.oo
  %i.dkm = add i32 %i.b, -992
  %.val48927 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkn = getelementptr inbounds nuw i8, ptr %.val48927, i64 %i.dhu
  %.0.copyload.i51743 = load i32, ptr %i.dkn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51743) #7, !srcloc !19
  %.val48926 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dko = getelementptr inbounds nuw i8, ptr %.val48926, i64 %i.cxs
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dko, i64 12
  %.0.copyload.i51744 = load i32, ptr %i.dkp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51744) #7, !srcloc !19
  %.val48925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkq = getelementptr inbounds nuw i8, ptr %.val48925, i64 %i.cxw
  %.0.copyload.i51745 = load i32, ptr %i.dkq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51745) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x3A0x3Ainsert0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x20const0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.dkm, i32 noundef %.0.copyload.i51743, i32 noundef %.0.copyload.i51744, i32 noundef %.0.copyload.i51745) #7
  br label %bb.oy

bb.oy:                                            ; preds = %.loopexit54727, %bb.oj
  %.val48924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkr = getelementptr inbounds nuw i8, ptr %.val48924, i64 %i.cxs
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkr, i64 12
  %.0.copyload.i51746 = load i32, ptr %i.dks, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51746) #7, !srcloc !19
  %.not45615 = icmp eq i32 %.0.copyload.i51746, 0
  br i1 %.not45615, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %.val50245 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkt = getelementptr inbounds nuw i8, ptr %.val50245, i64 %i.cxw
  store i32 %.0.copyload.i51746, ptr %i.dkt, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i51746) #7
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %.val48923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dku = getelementptr inbounds nuw i8, ptr %.val48923, i64 %i.cxs
  %.0.copyload.i51747 = load i32, ptr %i.dku, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51747) #7, !srcloc !19
  %.not45616 = icmp eq i32 %.0.copyload.i51747, 0
  br i1 %.not45616, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %.val50244 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkv = getelementptr inbounds nuw i8, ptr %.val50244, i64 %i.dgd
  store i32 %.0.copyload.i51747, ptr %i.dkv, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i51747) #7
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa
  %.not45617 = icmp eq i32 %.2843862, 0
  br i1 %.not45617, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.2843862) #7
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc
  %.val48922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dkw = getelementptr inbounds nuw i8, ptr %.val48922, i64 %i.cqx
  %.0.copyload.i51748 = load i32, ptr %i.dkw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51748) #7, !srcloc !19
  br i1 %.not45579, label %.loopexit54724, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.dkx = icmp ugt i32 %i.crf, 357913941
  br i1 %i.dkx, label %.loopexit54653, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.dky = mul nuw i32 %i.crf, 12                 ; 3 uses
  %i.dkz = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dky) #7 ; 3 uses
  %i.dla = add i32 %i.dkz, %i.dky
  %i.dlb = zext nneg i32 %i.crf to i64
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pn, %bb.pg
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.pn ], [ 0, %bb.pg ] ; 2 uses
  %.1044261 = phi i32 [ %.1144262, %bb.pn ], [ %i.dkz, %bb.pg ] ; 4 uses
  %.2443960 = phi i32 [ %.2543961, %bb.pn ], [ %i.dkz, %bb.pg ] ; 6 uses
  %.443593 = phi i32 [ %i.dmp, %bb.pn ], [ %i.cre, %bb.pg ] ; 2 uses
  %.643321 = phi i32 [ %.743322, %bb.pn ], [ %i.dla, %bb.pg ] ; 3 uses
  %i.dlc = shl i32 %.443593, 3
  %i.dld = add i32 %i.dlc, %.0.copyload.i51748
  %i.dle = zext i32 %i.dld to i64
  %.val50592 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dlf = getelementptr inbounds nuw i8, ptr %.val50592, i64 %i.dle
  %.0.copyload.i51749 = load i64, ptr %i.dlf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i51749) #7, !srcloc !20
  %i.dlg = trunc nuw nsw i64 %indvars.iv to i32
  %i.dlh = shl i32 %i.dlg, 4
  %i.dli = add i32 %i.dlh, %.1343744
  %i.dlj = zext i32 %i.dli to i64
  %.val48921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dlk = getelementptr inbounds nuw i8, ptr %.val48921, i64 %i.dlj
  %i.dll = getelementptr inbounds nuw i8, ptr %i.dlk, i64 12
  %.0.copyload.i51750 = load i32, ptr %i.dll, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51750) #7, !srcloc !19
  %i.dlm = icmp ult i32 %.1044261, %.643321
  br i1 %i.dlm, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  %i.dln = zext i32 %.1044261 to i64              ; 2 uses
  %.val51014 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dlo = getelementptr inbounds nuw i8, ptr %.val51014, i64 %i.dln
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlo, i64 4
  store i64 %.0.copyload.i51749, ptr %i.dlp, align 1
  %.val50243 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dlq = getelementptr inbounds nuw i8, ptr %.val50243, i64 %i.dln
  store i32 %.0.copyload.i51750, ptr %i.dlq, align 1
  br label %bb.pn

bb.pj:                                            ; preds = %bb.ph
  %i.dlr = sub i32 %.1044261, %.2443960
  %.fr = freeze i32 %i.dlr                        ; 4 uses
  %i.dls = sdiv i32 %.fr, 12                      ; 2 uses
  %i.dlt = srem i32 %.fr, 12
  %i.dlu = add nsw i32 %i.dls, 1                  ; 2 uses
  %i.dlv = icmp ugt i32 %i.dlu, 357913941
  br i1 %i.dlv, label %.loopexit54653, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.dlw = sub i32 %.643321, %.2443960
  %i.dlx = sdiv i32 %i.dlw, 12                    ; 2 uses
  %i.dly = shl nsw i32 %i.dlx, 1
  %i.dlz = tail call i32 @llvm.umax.i32(i32 %i.dly, i32 %i.dlu)
  %i.dma = icmp ugt i32 %i.dlx, 178956969
  %i.dmb = select i1 %i.dma, i32 357913941, i32 %i.dlz ; 2 uses
  %i.dmc = icmp ugt i32 %i.dmb, 357913941
  br i1 %i.dmc, label %.loopexit54653, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.dmd = mul nuw i32 %i.dmb, 12                 ; 2 uses
  %i.dme = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dmd) #7 ; 2 uses
  %i.dmf = mul nsw i32 %i.dls, 12
  %i.dmg = add i32 %i.dme, %i.dmf                 ; 4 uses
  %i.dmh = zext i32 %i.dmg to i64                 ; 2 uses
  %.val51013 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dmi = getelementptr inbounds nuw i8, ptr %.val51013, i64 %i.dmh
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.dmi, i64 4
  store i64 %.0.copyload.i51749, ptr %i.dmj, align 1
  %.val50242 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dmk = getelementptr inbounds nuw i8, ptr %.val50242, i64 %i.dmh
  store i32 %.0.copyload.i51750, ptr %i.dmk, align 1
  %i.dml = sub i32 %i.dlt, %.fr
  %i.dmm = add i32 %i.dml, %i.dmg
  %i.dmn = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.dmm, i32 noundef %.2443960, i32 noundef %.fr) #7 ; 2 uses
  %i.dmo = add i32 %i.dme, %i.dmd                 ; 2 uses
  %.not45618 = icmp eq i32 %.2443960, 0
  br i1 %.not45618, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.2443960) #7
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pl, %bb.pm, %bb.pi
  %.1144262.in = phi i32 [ %.1044261, %bb.pi ], [ %i.dmg, %bb.pm ], [ %i.dmg, %bb.pl ]
  %.2543961 = phi i32 [ %.2443960, %bb.pi ], [ %i.dmn, %bb.pm ], [ %i.dmn, %bb.pl ] ; 2 uses
  %.743322 = phi i32 [ %.643321, %bb.pi ], [ %i.dmo, %bb.pm ], [ %i.dmo, %bb.pl ]
  %.1144262 = add i32 %.1144262.in, 12
  %i.dmp = add nsw i32 %.443593, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not45619 = icmp eq i64 %indvars.iv.next, %i.dlb
  br i1 %.not45619, label %.loopexit54724, label %bb.ph

.loopexit54724:                                   ; preds = %bb.pn, %bb.pe
  %.pre-phi55852 = phi i32 [ 0, %bb.pe ], [ %i.dky, %bb.pn ] ; 2 uses
  %.2643962 = phi i32 [ 0, %bb.pe ], [ %.2543961, %bb.pn ] ; 7 uses
  %i.dmq = mul i32 %i.cux, -12                    ; 2 uses
  %i.dmr = add i32 %.2643962, %i.dmq
  %i.dms = mul i32 %i.cvc, 12                     ; 3 uses
  %i.dmt = add i32 %.2643962, %i.dms              ; 2 uses
  %i.dmu = sub i32 %i.dms, %i.dmq                 ; 2 uses
  %i.dmv = sdiv i32 %i.dmu, 12
  %.off = add i32 %i.dmu, 11
  %.not45620 = icmp ult i32 %.off, 23
  %i.dmw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dmv, i1 true)
  %i.dmx = shl nuw nsw i32 %i.dmw, 1
  %i.dmy = sub nuw nsw i32 62, %i.dmx
  %i.dmz = select i1 %.not45620, i32 -2, i32 %i.dmy
  %i.dna = select i1 %i.cvl, i32 0, i32 %i.dmz
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %i.dmr, i32 noundef %i.dmt, i32 noundef %i.dna) #7
  %i.dnb = mul i32 %i.cvp, 12                     ; 3 uses
  %i.dnc = add i32 %.2643962, %i.dnb              ; 2 uses
  %i.dnd = sub i32 %i.dnb, %i.dms                 ; 2 uses
  %i.dne = sdiv i32 %i.dnd, 12
  %.off45622 = add i32 %i.dnd, 11
  %.not45621 = icmp ult i32 %.off45622, 23
  %i.dnf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dne, i1 true)
  %i.dng = shl nuw nsw i32 %i.dnf, 1
  %i.dnh = sub nuw nsw i32 62, %i.dng
  %i.dni = select i1 %.not45621, i32 -2, i32 %i.dnh
  %i.dnj = select i1 %i.cvx, i32 0, i32 %i.dni
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %i.dmt, i32 noundef %i.dnc, i32 noundef %i.dnj) #7
  %i.dnk = add i32 %.2643962, %.pre-phi55852
  %i.dnl = sub i32 %.pre-phi55852, %i.dnb         ; 2 uses
  %i.dnm = sdiv i32 %i.dnl, 12
  %.off45624 = add i32 %i.dnl, 11
  %.not45623 = icmp ult i32 %.off45624, 23
  %i.dnn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dnm, i1 true)
  %i.dno = shl nuw nsw i32 %i.dnn, 1
  %i.dnp = sub nuw nsw i32 62, %i.dno
  %i.dnq = select i1 %.not45623, i32 -2, i32 %i.dnp
  %i.dnr = select i1 %i.cwg, i32 %i.dnq, i32 0
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %i.dnc, i32 noundef %i.dnk, i32 noundef %i.dnr) #7
  br i1 %.not45579, label %.loopexit54722, label %.preheader54721.preheader

.preheader54721.preheader:                        ; preds = %.loopexit54724
  %i.dns = zext i32 %i.crf to i64
  br label %.preheader54721

.preheader54721:                                  ; preds = %.preheader54721.preheader, %.preheader54721
  %indvars.iv55650 = phi i64 [ 0, %.preheader54721.preheader ], [ %indvars.iv.next55651, %.preheader54721 ] ; 2 uses
  %.643797 = phi i32 [ %i.cre, %.preheader54721.preheader ], [ %i.dor, %.preheader54721 ] ; 4 uses
  %i.dnt = shl i32 %.643797, 3
  %i.dnu = add i32 %i.dnt, %.0.copyload.i51748
  %i.dnv = trunc nuw i64 %indvars.iv55650 to i32
  %i.dnw = mul i32 %i.dnv, 12
  %i.dnx = add i32 %i.dnw, %.2643962
  %i.dny = zext i32 %i.dnx to i64                 ; 2 uses
  %.val50591 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dnz = getelementptr inbounds nuw i8, ptr %.val50591, i64 %i.dny
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnz, i64 4
  %.0.copyload.i51751 = load i64, ptr %i.doa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i51751) #7, !srcloc !20
  %i.dob = zext i32 %i.dnu to i64
  %.val51012 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.doc = getelementptr inbounds nuw i8, ptr %.val51012, i64 %i.dob
  store i64 %.0.copyload.i51751, ptr %i.doc, align 1
  %i.dod = and i32 %.643797, 31
  %i.doe = shl nuw i32 1, %i.dod                  ; 2 uses
  %.val48920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dof = getelementptr inbounds nuw i8, ptr %.val48920, i64 %i.cqx
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dof, i64 68
  %.0.copyload.i51752 = load i32, ptr %i.dog, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51752) #7, !srcloc !19
  %i.doh = lshr i32 %.643797, 3
  %i.doi = and i32 %i.doh, 536870908
  %i.doj = add i32 %.0.copyload.i51752, %i.doi
  %.val48919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dok = getelementptr inbounds nuw i8, ptr %.val48919, i64 %i.dny
  %.0.copyload.i51753 = load i32, ptr %i.dok, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51753) #7, !srcloc !19
  %.not45625 = icmp eq i32 %.0.copyload.i51753, 0
  %i.dol = zext i32 %i.doj to i64                 ; 2 uses
  %.val48917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dom = getelementptr inbounds nuw i8, ptr %.val48917, i64 %i.dol
  %.0.copyload.i51755 = load i32, ptr %i.dom, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51755) #7
  %i.don = xor i32 %i.doe, -1
  %i.doo = and i32 %.0.copyload.i51755, %i.don
  %i.dop = or i32 %.0.copyload.i51755, %i.doe
  %.1 = select i1 %.not45625, i32 %i.doo, i32 %i.dop
  %.val50241 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.doq = getelementptr inbounds nuw i8, ptr %.val50241, i64 %i.dol
  store i32 %.1, ptr %i.doq, align 1
  %i.dor = add i32 %.643797, 1
  %indvars.iv.next55651 = add nuw nsw i64 %indvars.iv55650, 1 ; 2 uses
  %.not45626 = icmp eq i64 %indvars.iv.next55651, %i.dns
  br i1 %.not45626, label %.loopexit54722, label %.preheader54721

.loopexit54722:                                   ; preds = %.preheader54721, %.loopexit54724
  %.val48916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dos = getelementptr inbounds nuw i8, ptr %.val48916, i64 %i.cqx
  %.0.copyload.i51756 = load i32, ptr %i.dos, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51756) #7, !srcloc !19
  %i.dot = add nuw nsw i64 %i.cui, 20             ; 4 uses
  %.val50240 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dou = getelementptr inbounds nuw i8, ptr %.val50240, i64 %i.dot
  store i32 %.0.copyload.i51756, ptr %i.dou, align 1
  %.val48915 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dov = getelementptr inbounds nuw i8, ptr %.val48915, i64 %i.cra
  %.0.copyload.i51757 = load i32, ptr %i.dov, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51757) #7, !srcloc !19
  %i.dow = add nuw nsw i64 %i.cui, 24             ; 2 uses
  %.val50239 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dox = getelementptr inbounds nuw i8, ptr %.val50239, i64 %i.dow
  store i32 %.0.copyload.i51757, ptr %i.dox, align 1
  %i.doy = add nuw nsw i64 %i.cqx, 8              ; 2 uses
  %.val48914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.doz = getelementptr inbounds nuw i8, ptr %.val48914, i64 %i.doy
  %.0.copyload.i51758 = load i32, ptr %i.doz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51758) #7, !srcloc !19
  %i.dpa = add nuw nsw i64 %i.cui, 28             ; 3 uses
  %.val50238 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpb = getelementptr inbounds nuw i8, ptr %.val50238, i64 %i.dpa
  store i32 %.0.copyload.i51758, ptr %i.dpb, align 1
  %.val50237 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpc = getelementptr inbounds nuw i8, ptr %.val50237, i64 %i.doy
  store i32 0, ptr %i.dpc, align 1
  %.val51011 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpd = getelementptr inbounds nuw i8, ptr %.val51011, i64 %i.cqx
  store i64 0, ptr %i.dpd, align 1
  %i.dpe = add nuw nsw i64 %i.cqx, 12             ; 2 uses
  %.val48913 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpf = getelementptr inbounds nuw i8, ptr %.val48913, i64 %i.dpe
  %.0.copyload.i51759 = load i32, ptr %i.dpf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51759) #7, !srcloc !19
  %i.dpg = add nuw nsw i64 %i.cui, 32             ; 4 uses
  %.val50236 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dph = getelementptr inbounds nuw i8, ptr %.val50236, i64 %i.dpg
  store i32 %.0.copyload.i51759, ptr %i.dph, align 1
  %.val48912 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpi = getelementptr inbounds nuw i8, ptr %.val48912, i64 %i.cqx
  %i.dpj = getelementptr inbounds nuw i8, ptr %i.dpi, i64 16
  %.0.copyload.i51760 = load i32, ptr %i.dpj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51760) #7, !srcloc !19
  %i.dpk = add nuw nsw i64 %i.cui, 36             ; 2 uses
  %.val50235 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpl = getelementptr inbounds nuw i8, ptr %.val50235, i64 %i.dpk
  store i32 %.0.copyload.i51760, ptr %i.dpl, align 1
  %i.dpm = add nuw nsw i64 %i.cqx, 20             ; 2 uses
  %.val48911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpn = getelementptr inbounds nuw i8, ptr %.val48911, i64 %i.dpm
  %.0.copyload.i51761 = load i32, ptr %i.dpn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51761) #7, !srcloc !19
  %i.dpo = add nuw nsw i64 %i.cui, 40             ; 3 uses
  %.val50234 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpp = getelementptr inbounds nuw i8, ptr %.val50234, i64 %i.dpo
  store i32 %.0.copyload.i51761, ptr %i.dpp, align 1
  %.val50233 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpq = getelementptr inbounds nuw i8, ptr %.val50233, i64 %i.dpm
  store i32 0, ptr %i.dpq, align 1
  %.val51010 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpr = getelementptr inbounds nuw i8, ptr %.val51010, i64 %i.dpe
  store i64 0, ptr %i.dpr, align 1
  %.val51246 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dps = getelementptr inbounds nuw i8, ptr %.val51246, i64 %i.cqx
  %i.dpt = getelementptr inbounds nuw i8, ptr %i.dps, i64 24
  %.0.copyload.i51762 = load i16, ptr %i.dpt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i51762) #7, !srcloc !24
  %i.dpu = add nuw nsw i64 %i.cui, 44             ; 2 uses
  %.val51226 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpv = getelementptr inbounds nuw i8, ptr %.val51226, i64 %i.dpu
  store i16 %.0.copyload.i51762, ptr %i.dpv, align 1
  %i.dpw = add nuw nsw i64 %i.cqx, 68             ; 2 uses
  %.val48910 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpx = getelementptr inbounds nuw i8, ptr %.val48910, i64 %i.dpw
  %.0.copyload.i51763 = load i32, ptr %i.dpx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51763) #7, !srcloc !19
  %i.dpy = add nuw nsw i64 %i.cui, 8              ; 4 uses
  %.val50232 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dpz = getelementptr inbounds nuw i8, ptr %.val50232, i64 %i.dpy
  store i32 %.0.copyload.i51763, ptr %i.dpz, align 1
  %.val48909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dqa = getelementptr inbounds nuw i8, ptr %.val48909, i64 %i.cqx
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dqa, i64 72
  %.0.copyload.i51764 = load i32, ptr %i.dqb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51764) #7, !srcloc !19
  %i.dqc = add nuw nsw i64 %i.cui, 12             ; 2 uses
  %.val50231 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dqd = getelementptr inbounds nuw i8, ptr %.val50231, i64 %i.dqc
  store i32 %.0.copyload.i51764, ptr %i.dqd, align 1
  %i.dqe = add nuw nsw i64 %i.cqx, 76             ; 2 uses
  %.val48908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dqf = getelementptr inbounds nuw i8, ptr %.val48908, i64 %i.dqe
  %.0.copyload.i51765 = load i32, ptr %i.dqf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51765) #7, !srcloc !19
  %i.dqg = add nuw nsw i64 %i.cui, 16             ; 3 uses
  %.val50230 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dqh = getelementptr inbounds nuw i8, ptr %.val50230, i64 %i.dqg
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3AconstructCatchMap0x28hermes0x3A0x3AFunction0x2A0x2C0x20llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x260x2C0x20llvh0x3A0x3ASmallVectorImpl0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x260x2C0x20llvh0x3A0x3ASmallPtrSetImpl0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x260x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20unsigned0x20int0x29:bb.a
  %i.ry = icmp ugt i32 %.0.copyload.i2000, -3
  br i1 %i.ry, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.preheader2018
  %i.rz = add i32 %.17, 4                         ; 2 uses
  %.not1726 = icmp eq i32 %i.qe, %i.rz
  br i1 %.not1726, label %.loopexit2019, label %.preheader2018

bb.bw:                                            ; preds = %.preheader2018
  %.not1725 = icmp eq i32 %.17, %i.qe
  br i1 %.not1725, label %.loopexit2019, label %.preheader2029

bb.bx:                                            ; preds = %bb.bj
  %i.sa = zext i32 %1 to i64
  %.val1886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sb = getelementptr inbounds nuw i8, ptr %.val1886, i64 %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 36
  store i8 0, ptr %i.sc, align 1
  br label %bb.cc

.loopexit2019:                                    ; preds = %bb.bl, %bb.bw, %bb.bu, %bb.bv, %.loopexit2032
  %.val1743 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sd = getelementptr inbounds nuw i8, ptr %.val1743, i64 %i.nn
  %.0.copyload.i2001 = load i32, ptr %i.sd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2001) #7, !srcloc !19
  %i.se = zext i32 %.0.copyload.i2001 to i64
  %.val1742 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sf = getelementptr inbounds nuw i8, ptr %.val1742, i64 %i.se
  %.0.copyload.i2002 = load i32, ptr %i.sf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2002) #7, !srcloc !19
  %i.sg = add i32 %.0.copyload.i2002, -8
  %.not1727 = icmp eq i32 %.0.copyload.i2002, 0
  %i.sh = select i1 %.not1727, i32 0, i32 %i.sg   ; 2 uses
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImpl0x3Chermes0x3A0x3ALiteral0x2A0x3E0x3A0x3Ainsert0x28hermes0x3A0x3ALiteral0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cc, i32 noundef %5, i32 noundef %i.sh) #7
  %.val1741 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.si = getelementptr inbounds nuw i8, ptr %.val1741, i64 %i.ak
  %.0.copyload.i2003 = load i32, ptr %i.si, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2003) #7, !srcloc !19
  %.val1740 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %.val1740, i64 %i.ba
  %.0.copyload.i2004 = load i32, ptr %i.sj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2004) #7, !srcloc !19
  %.not1728 = icmp ult i32 %.0.copyload.i2003, %.0.copyload.i2004
  br i1 %.not1728, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.loopexit2019
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cd, i32 noundef %i.am, i32 noundef 0, i32 noundef 4) #7
  %.val1739 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sk = getelementptr inbounds nuw i8, ptr %.val1739, i64 %i.ak
  %.0.copyload.i2005 = load i32, ptr %i.sk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2005) #7, !srcloc !19
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.loopexit2019
  %.18 = phi i32 [ %.0.copyload.i2005, %bb.by ], [ %.0.copyload.i2003, %.loopexit2019 ]
  %.val1738 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sl = getelementptr inbounds nuw i8, ptr %.val1738, i64 %i.an
  %.0.copyload.i2006 = load i32, ptr %i.sl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2006) #7, !srcloc !19
  %i.sm = shl i32 %.18, 2
  %i.sn = add i32 %.0.copyload.i2006, %i.sm
  %i.so = zext i32 %i.sn to i64
  %.val1832 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val1832, i64 %i.so
  store i32 %i.sh, ptr %i.sp, align 1
  %.val1737 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sq = getelementptr inbounds nuw i8, ptr %.val1737, i64 %i.ak
  %.0.copyload.i2007 = load i32, ptr %i.sq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2007) #7, !srcloc !19
  %i.sr = add i32 %.0.copyload.i2007, 1
  %.val1831 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.val1831, i64 %i.ak
  store i32 %i.sr, ptr %i.ss, align 1
  %.val1902 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.st = getelementptr inbounds nuw i8, ptr %.val1902, i64 %i.bw
  %.0.copyload.i2008 = load i8, ptr %i.st, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2008) #7, !srcloc !21
  %.not1729 = icmp eq i8 %.0.copyload.i2008, 0
  br i1 %.not1729, label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.val1736 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %.val1736, i64 %i.bx
  %.0.copyload.i2009 = load i32, ptr %i.su, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2009) #7, !srcloc !19
  %.val1735 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sv = getelementptr inbounds nuw i8, ptr %.val1735, i64 %i.by
  %.0.copyload.i2010 = load i32, ptr %i.sv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2010) #7, !srcloc !19
  %i.sw = icmp eq i32 %.0.copyload.i2009, %.0.copyload.i2010
  br i1 %i.sw, label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2009) #7
  br label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread

w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread: ; preds = %.loopexit, %bb.ad, %bb.ad, %bb.ca, %bb.bz, %bb.ac, %bb.cb
  %.val1734 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %.val1734, i64 %i.ak
  %.0.copyload.i2011 = load i32, ptr %i.sx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2011) #7, !srcloc !19
  %.not1730 = icmp eq i32 %.0.copyload.i2011, 0
  br i1 %.not1730, label %.loopexit2037, label %bb.g

.loopexit2037:                                    ; preds = %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread, %..loopexit2037_crit_edge
  %.pre-phi2072 = phi i32 [ %.pre2071, %..loopexit2037_crit_edge ], [ %i.cf, %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread ]
  %i.sy = zext i32 %1 to i64
  %.val1885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %.val1885, i64 %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 36
  store i8 1, ptr %i.ta, align 1
  %i.tb = add i32 %1, 20
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.tb, i32 noundef 4, i32 noundef %.pre-phi2072) #7
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit2037, %bb.bx
  %.val1733 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tc = getelementptr inbounds nuw i8, ptr %.val1733, i64 %i.au
  %.0.copyload.i2012 = load i32, ptr %i.tc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2012) #7, !srcloc !19
  %.val1732 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.td = getelementptr inbounds nuw i8, ptr %.val1732, i64 %i.aw
  %.0.copyload.i2013 = load i32, ptr %i.td, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2013) #7, !srcloc !19
  %.not1731 = icmp eq i32 %.0.copyload.i2012, %.0.copyload.i2013
  br i1 %.not1731, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2012) #7
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.te = getelementptr inbounds nuw i8, ptr %.val, i64 %i.an
  %.0.copyload.i2014 = load i32, ptr %i.te, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2014) #7, !srcloc !19
  %i.tf = icmp eq i32 %.0.copyload.i2014, %i.am
  br i1 %i.tf, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2014) #7
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x2C0x20hermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x2C0x20hermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ACatchInst0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x2C0x20hermes0x3A0x3ACatchInst0x2A0x20const0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Asubtract0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val459, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.g = zext i32 %2 to i64                       ; 2 uses
  %.val458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.g
  %.0.copyload.i467 = load i64, ptr %i.h, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i467) #7, !srcloc !20
  %.val447 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val447, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i468 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i468) #7, !srcloc !19
  %.val446 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val446, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.0.copyload.i469 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i469) #7, !srcloc !19
  %i.m = zext i32 %1 to i64
  %.val457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.m
  %.0.copyload.i470 = load i64, ptr %i.n, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i470) #7, !srcloc !20
  %i.o = zext i32 %i.c to i64                     ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 8                  ; 2 uses
  %.val464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.p
  store i64 %.0.copyload.i470, ptr %i.q, align 1
  %i.r = lshr i64 %.0.copyload.i470, 32           ; 4 uses
  %.val445 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val445, i64 %i.r
  %.0.copyload.i471 = load i32, ptr %i.s, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i471) #7, !srcloc !19
  %i.t = icmp ugt i32 %.0.copyload.i469, %.0.copyload.i468 ; 3 uses
  %i.u = select i1 %i.t, i64 %.0.copyload.i467, i64 %.0.copyload.i ; 2 uses
  %i.v = lshr i64 %i.u, 32                        ; 3 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 5 uses
  %i.x = icmp ult i32 %.0.copyload.i471, %i.w
  br i1 %i.x, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = select i1 %i.t, i64 %.0.copyload.i, i64 %.0.copyload.i467 ; 2 uses
  %i.z = lshr i64 %i.y, 32                        ; 2 uses
  %i.aa = trunc nuw i64 %i.z to i32               ; 3 uses
  %i.ab = add i32 %i.w, 1                         ; 3 uses
  %i.ac = icmp ugt i32 %.0.copyload.i471, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val449 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.r
  store i32 %i.ab, ptr %i.ad, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0408 = phi i32 [ %i.ab, %bb.c ], [ %.0.copyload.i471, %bb.b ]
  %i.ae = icmp ult i32 %.0408, %i.aa
  br i1 %i.ae, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = trunc i64 %i.u to i32                   ; 2 uses
  %i.ag = trunc i64 %.0.copyload.i470 to i32
  %i.ah = trunc i64 %i.y to i32                   ; 2 uses
  %i.ai = shl i32 %i.aa, 3                        ; 3 uses
  %i.aj = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ai) #7 ; 4 uses
  %.val444 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val444, i64 %i.r
  %.0.copyload.i472 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i472) #7, !srcloc !19
  %i.al = sub i32 %.0.copyload.i472, %i.aa
  %i.am = shl i32 %i.al, 3
  %i.an = add i32 %i.aj, %i.ai
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %i.ah, -8
  %i.ap = add i32 %i.ao, %i.ai
  %i.aq = zext i32 %i.ap to i64
  %.val456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val456, i64 %i.aq
  %.0.copyload.i473 = load i64, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i473) #7, !srcloc !20
  %i.as = ashr i64 %.0.copyload.i473, 63
  %i.at = trunc nsw i64 %i.as to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0407 = phi i32 [ %i.at, %bb.f ], [ 0, %bb.e ]
  %i.au = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef %.0407, i32 noundef %i.am) #7 ; 0 uses
  %.not429 = icmp eq i64 %i.v, 0
  br i1 %.not429, label %.thread, label %.preheader489

.preheader489:                                    ; preds = %bb.g, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %.0409 = phi i64 [ %i.bj, %bb.j ], [ 0, %bb.g ]
  %i.av = trunc nuw i64 %indvars.iv to i32
  %i.aw = shl i32 %i.av, 3                        ; 2 uses
  %i.ax = add i32 %i.aw, %i.af
  %i.ay = zext i32 %i.ax to i64
  %.val455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val455, i64 %i.ay
  %.0.copyload.i474 = load i64, ptr %i.az, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i474) #7, !srcloc !20
  %i.ba = add i32 %i.aw, %i.aj
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.val454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val454, i64 %i.bb
  %.0.copyload.i475 = load i64, ptr %i.bc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i475) #7, !srcloc !20
  %.not430 = icmp eq i64 %.0409, 0
  br i1 %.not430, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader489
  %i.bd = xor i64 %.0.copyload.i474, -1
  %i.be = add i64 %.0.copyload.i475, %i.bd        ; 2 uses
  %i.bf = icmp uge i64 %i.be, %.0.copyload.i475
  br label %bb.j

bb.i:                                             ; preds = %.preheader489
  %i.bg = sub i64 %.0.copyload.i475, %.0.copyload.i474
  %i.bh = icmp ult i64 %.0.copyload.i475, %.0.copyload.i474
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1410 = phi i64 [ %i.be, %bb.h ], [ %i.bg, %bb.i ]
  %.1.in = phi i1 [ %i.bf, %bb.h ], [ %i.bh, %bb.i ]
  %.val463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.bb
  store i64 %.1410, ptr %i.bi, align 1
  %i.bj = zext i1 %.1.in to i64                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not431 = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %.not431, label %bb.k, label %.preheader489

bb.k:                                             ; preds = %bb.j
  %i.bk = shl i32 %i.w, 3                         ; 2 uses
  %i.bl = add i32 %i.aj, %i.bk
  %i.bm = add i32 %i.af, -8
  %i.bn = add i32 %i.bm, %i.bk
  %i.bo = zext i32 %i.bn to i64
  %.val453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.bo
  %.0.copyload.i476 = load i64, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i476) #7, !srcloc !20
  %i.bq = ashr i64 %.0.copyload.i476, 63
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.k
  %i.br = phi i32 [ %i.bl, %bb.k ], [ %i.aj, %bb.g ] ; 2 uses
  %.2411487 = phi i64 [ %i.bj, %bb.k ], [ 0, %bb.g ]
  %.0 = phi i64 [ %i.bq, %bb.k ], [ 0, %bb.g ]
  %.val443 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val443, i64 %i.r
  %.0.copyload.i477 = load i32, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i477) #7, !srcloc !19
  %4 = sub i32 %.0.copyload.i477, %i.w            ; 3 uses
  %.not432 = icmp eq i32 %.0.copyload.i477, %i.w
  br i1 %.not432, label %.loopexit488, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bt = add nsw i64 %.0, %.2411487              ; 2 uses
  %i.bu = zext i32 %i.br to i64                   ; 3 uses
  %.val452 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val452, i64 %i.bu
  %.0.copyload.i478 = load i64, ptr %i.bv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i478) #7, !srcloc !20
  %i.bw = sub i64 %.0.copyload.i478, %i.bt
  %.val462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.bu
  store i64 %i.bw, ptr %i.bx, align 1
  %.not433 = icmp ule i64 %i.bt, %.0.copyload.i478
  %i.by = icmp eq i32 %4, 1
  %or.cond = or i1 %i.by, %.not433
  br i1 %or.cond, label %.loopexit488, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = add nuw nsw i64 %i.bu, 8                ; 2 uses
  %.val451 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val451, i64 %i.bz
  %.0.copyload.i479 = load i64, ptr %i.ca, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i479) #7, !srcloc !20
  %i.cb = add i64 %.0.copyload.i479, -1
  %.val461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val461, i64 %i.bz
  store i64 %i.cb, ptr %i.cc, align 1
  %.not434 = icmp eq i64 %.0.copyload.i479, 0
  br i1 %.not434, label %.preheader.preheader, label %.loopexit488

.preheader.preheader:                             ; preds = %bb.m
  %wide.trip.count = zext i32 %4 to i64
  %exitcond507 = icmp eq i32 %4, 2
  br i1 %exitcond507, label %.loopexit488, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %indvars.iv495508 = phi i64 [ %indvars.iv.next496, %.lr.ph ], [ 2, %.preheader.preheader ] ; 2 uses
  %indvars = trunc nuw i64 %indvars.iv495508 to i32
  %i.cd = shl i32 %indvars, 3
  %i.ce = add i32 %i.cd, %i.br
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %.val450 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.cf
  %.0.copyload.i480 = load i64, ptr %i.cg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i480) #7, !srcloc !20
  %i.ch = add i64 %.0.copyload.i480, -1
  %.val460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.cf
  store i64 %i.ch, ptr %i.ci, align 1
  %.not436 = icmp ne i64 %.0.copyload.i480, 0
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495508, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next496, %wide.trip.count
  %or.cond512 = select i1 %.not436, i1 true, i1 %exitcond
  br i1 %or.cond512, label %.loopexit488, label %.lr.ph

.loopexit488:                                     ; preds = %.lr.ph, %.preheader.preheader, %bb.l, %bb.m, %.thread
  %i.cj = add i32 %i.b, -8                        ; 2 uses
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit488
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %.val11.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %i.ck
  %.0.copyload.i.i = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #7, !srcloc !19
  %.val10.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.0.copyload.i12.i = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i12.i) #7, !srcloc !19
  %i.co = zext i32 %.0.copyload.i12.i to i64
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.co
  %.0.copyload.i13.i = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i13.i) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcNegate0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i, i32 noundef %.0.copyload.i13.i) #7
  br label %bb.p

bb.o:                                             ; preds = %.loopexit488
  tail call void @w2c_hermes_0x5F_cxxabiv10x3A0x3A_0x5Fshim_type_info0x3A0x3Anoop10x280x290x20const(ptr noundef nonnull %0, i32 noundef %i.cj) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.val442 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val442, i64 %i.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %.0.copyload.i481 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i481) #7, !srcloc !19
  %i.cs = zext i32 %.0.copyload.i481 to i64       ; 2 uses
  %.val441 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.cs
  %.0.copyload.i482 = load i32, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i482) #7, !srcloc !19
  %i.cu = shl i32 %.0.copyload.i482, 3            ; 5 uses
  %.not437 = icmp eq i32 %i.cu, 0
  br i1 %.not437, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %.0.copyload.i483 = load i32, ptr %i.cv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i483) #7, !srcloc !19
  %i.cw = add i32 %i.cu, -1                       ; 2 uses
  %i.cx = add i32 %.0.copyload.i483, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %.val466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.cy
  %.0.copyload.i484 = load i8, ptr %i.cz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i484) #7, !srcloc !21
  %i.da = zext i8 %.0.copyload.i484 to i32
  %sext = shl nuw i32 %i.da, 24
  %i.db = ashr i32 %sext, 31                      ; 3 uses
  %i.dc = trunc nsw i32 %i.db to i8
  %.not438 = icmp eq i8 %.0.copyload.i484, %i.dc
  br i1 %.not438, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.dd = zext i32 %i.cw to i64
  %i.de = add i32 %.0.copyload.i483, -1
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %i.df = add nsw i64 %.3510, -1                  ; 2 uses
  %i.dg = add i32 %.0414509, -1
  %.not439 = icmp eq i64 %i.df, 0
  br i1 %.not439, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.3510 = phi i64 [ %i.dd, %bb.r ], [ %i.df, %bb.s ] ; 2 uses
  %.0414509 = phi i32 [ %i.cu, %bb.r ], [ %i.dg, %bb.s ] ; 2 uses
  %i.dh = trunc nuw i64 %.3510 to i32             ; 2 uses
  %i.di = add i32 %i.de, %i.dh
  %i.dj = zext i32 %i.di to i64
  %.val465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.dj
  %.0.copyload.i485 = load i8, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i485) #7, !srcloc !21
  %i.dl = icmp eq i8 %.0.copyload.i484, %.0.copyload.i485
  br i1 %i.dl, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = zext i8 %.0.copyload.i485 to i32
  %sext440 = shl nuw i32 %i.dm, 24
  %i.dn = ashr i32 %sext440, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.q, %bb.u
  %.1416 = phi i32 [ %.0414509, %bb.u ], [ %i.cu, %bb.q ], [ 1, %bb.s ]
  %.1413 = phi i32 [ %i.dh, %bb.u ], [ %i.cu, %bb.q ], [ 0, %bb.s ]
  %.2 = phi i32 [ %i.dn, %bb.u ], [ %i.db, %bb.q ], [ 0, %bb.s ]
  %i.do = icmp eq i32 %.2, %i.db
  %i.dp = select i1 %i.do, i32 %.1413, i32 %.1416
  %i.dq = add i32 %i.dp, 7
  %i.dr = lshr i32 %i.dq, 3
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %bb.p
  %.2417 = phi i32 [ %i.dr, %.loopexit ], [ 0, %bb.p ]
  %.val448 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.cs
  store i32 %.2417, ptr %i.ds, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.a, %bb.v
  %.0418 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.v ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 %.0418
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AnegateAdditiveOpPostProcess0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x260x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val11 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val10, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i12 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i12) #7, !srcloc !19
  %i.f = zext i32 %.0.copyload.i12 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %.0.copyload.i13 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i13) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcNegate0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef %.0.copyload.i13) #7
  ret void
}

declare void @w2c_hermes_0x5F_cxxabiv10x3A0x3A_0x5Fshim_type_info0x3A0x3Anoop10x280x290x20const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Aadd0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 24 uses
  %i.b = zext i32 %1 to i64
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.d = lshr i64 %.0.copyload.i, 32              ; 6 uses
  %.val405 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.d
  %.0.copyload.i424 = load i32, ptr %i.e, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #7, !srcloc !19
  %i.f = zext i32 %2 to i64                       ; 2 uses
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.f
  %.0.copyload.i425 = load i64, ptr %i.g, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i425) #7, !srcloc !20
  %i.h = zext i32 %3 to i64                       ; 2 uses
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.h
  %.0.copyload.i426 = load i64, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i426) #7, !srcloc !20
  %.val404 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.0.copyload.i427 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i427) #7, !srcloc !19
  %.val403 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.0.copyload.i428 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i428) #7, !srcloc !19
  %i.n = icmp ugt i32 %.0.copyload.i427, %.0.copyload.i428 ; 2 uses
  %i.o = select i1 %i.n, i64 %.0.copyload.i425, i64 %.0.copyload.i426 ; 2 uses
  %i.p = lshr i64 %i.o, 32                        ; 3 uses
  %i.q = trunc nuw i64 %i.p to i32                ; 5 uses
  %i.r = icmp ult i32 %.0.copyload.i424, %i.q
  br i1 %i.r, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = select i1 %i.n, i64 %.0.copyload.i426, i64 %.0.copyload.i425 ; 2 uses
  %i.t = lshr i64 %i.s, 32                        ; 2 uses
  %i.u = trunc nuw i64 %i.t to i32                ; 3 uses
  %i.v = add i32 %i.q, 1                          ; 3 uses
  %i.w = icmp ugt i32 %.0.copyload.i424, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val407 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.d
  store i32 %i.v, ptr %i.x, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0367 = phi i32 [ %i.v, %bb.c ], [ %.0.copyload.i424, %bb.b ]
  %i.y = icmp ult i32 %.0367, %i.u
  br i1 %i.y, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = trunc i64 %i.o to i32                    ; 2 uses
  %i.aa = trunc i64 %.0.copyload.i to i32
  %i.ab = trunc i64 %i.s to i32                   ; 2 uses
  %i.ac = shl i32 %i.u, 3                         ; 3 uses
  %i.ad = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.ac) #7 ; 6 uses
  %.val402 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.d
  %.0.copyload.i429 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #7, !srcloc !19
  %i.af = sub i32 %.0.copyload.i429, %i.u
  %i.ag = shl i32 %i.af, 3
  %i.ah = add i32 %i.ad, %i.ac
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add i32 %i.ab, -8
  %i.aj = add i32 %i.ai, %i.ac
  %i.ak = zext i32 %i.aj to i64
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.ak
  %.0.copyload.i430 = load i64, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i430) #7, !srcloc !20
  %i.am = ashr i64 %.0.copyload.i430, 63
  %i.an = trunc nsw i64 %i.am to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0366 = phi i32 [ %i.an, %bb.f ], [ 0, %bb.e ]
  %i.ao = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef %.0366, i32 noundef %i.ag) #7 ; 0 uses
  %.not389 = icmp eq i64 %i.p, 0
  br i1 %.not389, label %.thread, label %.preheader444

.preheader444:                                    ; preds = %bb.g, %.preheader444
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader444 ], [ 0, %bb.g ] ; 2 uses
  %.0369 = phi i64 [ %i.bc, %.preheader444 ], [ 0, %bb.g ]
  %i.ap = trunc nuw i64 %indvars.iv to i32
  %i.aq = shl i32 %i.ap, 3                        ; 2 uses
  %i.ar = add i32 %i.aq, %i.z
  %i.as = zext i32 %i.ar to i64
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.as
  %.0.copyload.i431 = load i64, ptr %i.at, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i431) #7, !srcloc !20
  %i.au = add i32 %i.aq, %i.ad
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.av
  %.0.copyload.i432 = load i64, ptr %i.aw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i432) #7, !srcloc !20
  %.not390 = icmp eq i64 %.0369, 0                ; 2 uses
  %i.ax = add i64 %.0.copyload.i432, %.0.copyload.i431 ; 3 uses
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = icmp ule i64 %i.ay, %.0.copyload.i432
  %i.ba = icmp ult i64 %i.ax, %.0.copyload.i431
  %.1370 = select i1 %.not390, i64 %i.ax, i64 %i.ay
  %.1368.in = select i1 %.not390, i1 %i.ba, i1 %i.az
  %.val421 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.av
  store i64 %.1370, ptr %i.bb, align 1
  %i.bc = zext i1 %.1368.in to i64                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not391 = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %.not391, label %bb.h, label %.preheader444

bb.h:                                             ; preds = %.preheader444
  %i.bd = shl i32 %i.q, 3                         ; 2 uses
  %i.be = add i32 %i.ad, %i.bd
  %i.bf = add i32 %i.z, -8
  %i.bg = add i32 %i.bf, %i.bd
  %i.bh = zext i32 %i.bg to i64
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.bh
  %.0.copyload.i433 = load i64, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i433) #7, !srcloc !20
  %i.bj = ashr i64 %.0.copyload.i433, 63
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.bk = phi i32 [ %i.be, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  %.2371442 = phi i64 [ %i.bc, %bb.h ], [ 0, %bb.g ]
  %.0 = phi i64 [ %i.bj, %bb.h ], [ 0, %bb.g ]
  %.val401 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.d
  %.0.copyload.i434 = load i32, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i434) #7, !srcloc !19
  %4 = sub i32 %.0.copyload.i434, %i.q            ; 3 uses
  %.not392 = icmp eq i32 %.0.copyload.i434, %i.q
  br i1 %.not392, label %.loopexit443, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.bm = add nsw i64 %.0, %.2371442
  %i.bn = zext i32 %i.bk to i64                   ; 3 uses
  %.val410 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.bn
  %.0.copyload.i435 = load i64, ptr %i.bo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i435) #7, !srcloc !20
  %i.bp = add i64 %i.bm, %.0.copyload.i435        ; 2 uses
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.bn
  store i64 %i.bp, ptr %i.bq, align 1
  %.not393 = icmp uge i64 %i.bp, %.0.copyload.i435
  %i.br = icmp eq i32 %4, 1
  %or.cond = or i1 %i.br, %.not393
  br i1 %or.cond, label %.loopexit443, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = add nuw nsw i64 %i.bn, 8                ; 2 uses
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.bs
  %.0.copyload.i436 = load i64, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i436) #7, !srcloc !20
  %i.bu = add i64 %.0.copyload.i436, 1            ; 2 uses
  %.val419 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val419, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 1
  %.not394 = icmp eq i64 %i.bu, 0
  br i1 %.not394, label %.preheader.preheader, label %.loopexit443

.preheader.preheader:                             ; preds = %bb.j
  %wide.trip.count = zext i32 %4 to i64
  %exitcond462 = icmp eq i32 %4, 2
  br i1 %exitcond462, label %.loopexit443, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %indvars.iv450463 = phi i64 [ %indvars.iv.next451, %.lr.ph ], [ 2, %.preheader.preheader ] ; 2 uses
  %indvars = trunc nuw i64 %indvars.iv450463 to i32
  %i.bw = shl i32 %indvars, 3
  %i.bx = add i32 %i.bw, %i.bk
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.by
  %.0.copyload.i437 = load i64, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i437) #7, !srcloc !20
  %i.ca = add i64 %.0.copyload.i437, 1            ; 2 uses
  %.val418 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.by
  store i64 %i.ca, ptr %i.cb, align 1
  %.not396 = icmp ne i64 %i.ca, 0
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450463, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next451, %wide.trip.count
  %or.cond467 = select i1 %.not396, i1 true, i1 %exitcond
  br i1 %or.cond467, label %.loopexit443, label %.lr.ph

.loopexit443:                                     ; preds = %.lr.ph, %.preheader.preheader, %bb.i, %bb.j, %.thread
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %.0.copyload.i438 = load i32, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i438) #7, !srcloc !19
  %i.cd = shl i32 %.0.copyload.i438, 3            ; 5 uses
  %.not397 = icmp eq i32 %i.cd, 0
  br i1 %.not397, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.loopexit443
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  %i.cf = add i32 %i.ce, %i.ad
  %i.cg = zext i32 %i.cf to i64
  %.val423 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.cg
  %.0.copyload.i439 = load i8, ptr %i.ch, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i439) #7, !srcloc !21
  %i.ci = zext i8 %.0.copyload.i439 to i32
  %sext = shl nuw i32 %i.ci, 24
  %i.cj = ashr i32 %sext, 31                      ; 3 uses
  %i.ck = trunc nsw i32 %i.cj to i8
  %.not398 = icmp eq i8 %.0.copyload.i439, %i.ck
  br i1 %.not398, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.cl = zext i32 %i.ce to i64
  %i.cm = add i32 %i.ad, -1
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.cn = add nsw i64 %.0372465, -1               ; 2 uses
  %i.co = add i32 %.1376464, -1
  %.not399 = icmp eq i64 %i.cn, 0
  br i1 %.not399, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0372465 = phi i64 [ %i.cl, %bb.l ], [ %i.cn, %bb.m ] ; 2 uses
  %.1376464 = phi i32 [ %i.cd, %bb.l ], [ %i.co, %bb.m ] ; 2 uses
  %i.cp = trunc nuw i64 %.0372465 to i32          ; 2 uses
  %i.cq = add i32 %i.cm, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %.val422 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.cr
  %.0.copyload.i440 = load i8, ptr %i.cs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i440) #7, !srcloc !21
  %i.ct = icmp eq i8 %.0.copyload.i439, %.0.copyload.i440
  br i1 %i.ct, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = zext i8 %.0.copyload.i440 to i32
  %sext400 = shl nuw i32 %i.cu, 24
  %i.cv = ashr i32 %sext400, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.k, %bb.o
  %.0378 = phi i32 [ %i.cp, %bb.o ], [ %i.cd, %bb.k ], [ 0, %bb.m ]
  %.0377 = phi i32 [ %.1376464, %bb.o ], [ %i.cd, %bb.k ], [ 1, %bb.m ]
  %.1 = phi i32 [ %i.cv, %bb.o ], [ %i.cj, %bb.k ], [ 0, %bb.m ]
  %i.cw = icmp eq i32 %.1, %i.cj
  %i.cx = select i1 %i.cw, i32 %.0378, i32 %.0377
  %i.cy = add i32 %i.cx, 7
  %i.cz = lshr i32 %i.cy, 3
  br label %bb.p

bb.p:                                             ; preds = %.loopexit443, %.loopexit
  %.2 = phi i32 [ %i.cz, %.loopexit ], [ 0, %.loopexit443 ]
  %.val406 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.d
  store i32 %.2, ptr %i.da, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.a, %bb.p
  %.0373 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.p ]
  ret i32 %.0373
}

; Function Attrs: nounwind uwtable
define hidden range(i32 2, 1) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3AaddSignedResultSize0x28hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20long0x20long0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.d = lshr i64 %.0.copyload.i, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = tail call i32 @llvm.umax.i32(i32 %i.e, i32 1)
  %i.g = add i32 %i.f, 1
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AsignedRightShiftAdapter0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i32 %2, 3
  %i.b = add i32 %1, -8
  %i.c = add i32 %i.b, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = zext i32 %i.c to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.g = icmp sgt i64 %.0.copyload.i, -1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcComplement0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #7
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcShiftRight0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcComplement0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcShiftRight0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcComplement0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcShiftRight0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AshiftImpl0x28hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AShiftOpIs0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.e = zext i32 %4 to i64
  %.val339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.g = lshr i64 %.0.copyload.i, 32              ; 2 uses
  %i.h = trunc nuw i64 %i.g to i32                ; 4 uses
  %i.i = lshr i64 %5, 32                          ; 4 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %5 to i32                      ; 2 uses
  %i.k = shl nuw nsw i64 %i.i, 3
  %i.l = add i64 %5, 4294967288
  %i.m = add i64 %i.l, %i.k
  %i.n = and i64 %i.m, 4294967295                 ; 4 uses
  %.val338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.n
  %.0.copyload.i345 = load i64, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i345) #7, !srcloc !20
  %i.p = zext i32 %i.c to i64
  %i.q = add nuw nsw i64 %i.p, 8                  ; 3 uses
  %.val342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.q
  store i64 -65536, ptr %i.r, align 1
  %i.s = lshr i64 %.0.copyload.i345, 63
  %i.t = trunc nuw nsw i64 %i.s to i32            ; 5 uses
  %.val337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.n
  %.0.copyload.i346 = load i64, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i346) #7, !srcloc !20
  %i.v = icmp slt i64 %.0.copyload.i346, 0
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not322 = icmp eq i64 %i.i, 1
  br i1 %.not322, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.w = add i32 %i.b, -8                         ; 2 uses
  %i.x = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef %i.w, i32 noundef 1) #7
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.q
  store i64 65536, ptr %i.z, align 1
  %.val336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.n
  %.0.copyload.i347 = load i64, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i347) #7, !srcloc !20
  %i.ab = icmp slt i64 %.0.copyload.i347, 0
  br i1 %i.ab, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.b
  %.val340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.q
  store i64 65536, ptr %i.ac, align 1
  %.val335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.n
end_hunk_1
