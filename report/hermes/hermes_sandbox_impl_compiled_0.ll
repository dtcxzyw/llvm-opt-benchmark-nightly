Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AStringTableBuilder0x3A0x3ApackIntoStorage0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20bool0x29:bb.a
  %i.aiy = sdiv i32 %i.aix, 20
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dz, %bb.dv
  %.228720 = phi i32 [ %i.aiy, %bb.dv ], [ %.2, %bb.dz ] ; 2 uses
  %.138573 = phi i32 [ %.58390, %bb.dv ], [ %.148574, %bb.dz ] ; 3 uses
  %i.aiz = lshr i32 %.228720, 1                   ; 4 uses
  %i.aja = mul i32 %i.aiz, 20
  %i.ajb = add i32 %i.aja, %.138573               ; 2 uses
  %i.ajc = zext i32 %i.ajb to i64                 ; 2 uses
  %.val9474 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ajd = getelementptr inbounds nuw i8, ptr %.val9474, i64 %i.ajc
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 4
  %.0.copyload.i10074 = load i32, ptr %i.aje, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10074) #16, !srcloc !22
  %i.ajf = zext i32 %.0.copyload.i10074 to i64
  %.not9039 = icmp samesign ult i64 %indvars.iv, %i.ajf
  br i1 %.not9039, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %.val9473 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ajg = getelementptr inbounds nuw i8, ptr %.val9473, i64 %i.ajc
  %.0.copyload.i10075 = load i32, ptr %i.ajg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10075) #16, !srcloc !22
  %i.ajh = add i32 %.0.copyload.i10075, %i.aic
  %i.aji = zext i32 %i.ajh to i64
  %.val9886 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ajj = getelementptr inbounds nuw i8, ptr %.val9886, i64 %i.aji
  %.0.copyload.i10076 = load i8, ptr %i.ajj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i10076) #16, !srcloc !33
  %.not9040 = icmp eq i8 %.0.copyload.i10070, %.0.copyload.i10076
  br i1 %.not9040, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.ajk = add i32 %i.ajb, 20
  %i.ajl = xor i32 %i.aiz, -1
  %i.ajm = add i32 %.228720, %i.ajl
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dw, %bb.dx, %bb.dy
  %.148574 = phi i32 [ %i.ajk, %bb.dy ], [ %.138573, %bb.dx ], [ %.138573, %bb.dw ] ; 2 uses
  %.2 = phi i32 [ %i.ajm, %bb.dy ], [ %i.aiz, %bb.dx ], [ %i.aiz, %bb.dw ] ; 2 uses
  %.not9041 = icmp eq i32 %.2, 0
  br i1 %.not9041, label %.loopexit10429, label %bb.dw

.loopexit10429:                                   ; preds = %bb.dz, %.loopexit10430
  %.158575 = phi i32 [ %.128572, %.loopexit10430 ], [ %.148574, %bb.dz ] ; 4 uses
  %i.ajn = icmp eq i32 %.158575, %.58390
  br i1 %i.ajn, label %.loopexit10431, label %bb.ea

bb.ea:                                            ; preds = %.loopexit10429
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %.not9042 = icmp samesign ult i64 %indvars.iv.next, %i.aib
  br i1 %.not9042, label %bb.eg, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.not9057 = icmp ult i32 %.58390, %.158575
  br i1 %.not9057, label %.preheader10427, label %.loopexit10428

.preheader10427:                                  ; preds = %bb.eb, %.loopexit10421
  %.58524 = phi i32 [ %i.akl, %.loopexit10421 ], [ %.58390, %bb.eb ] ; 2 uses
  %i.ajo = zext i32 %.58524 to i64                ; 3 uses
  %.val9472 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ajp = getelementptr inbounds nuw i8, ptr %.val9472, i64 %i.ajo
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8
  %.0.copyload.i10077 = load i32, ptr %i.ajq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10077) #16, !srcloc !22
  %.val9471 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ajr = getelementptr inbounds nuw i8, ptr %.val9471, i64 %i.ajo
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 12
  %.0.copyload.i10078 = load i32, ptr %i.ajs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10078) #16, !srcloc !22
  %.not9058 = icmp eq i32 %.0.copyload.i10077, %.0.copyload.i10078
  br i1 %.not9058, label %.loopexit10421, label %.preheader10420

.preheader10420:                                  ; preds = %.preheader10427, %bb.ef
  %.238721 = phi i32 [ %i.akk, %bb.ef ], [ %.0.copyload.i10077, %.preheader10427 ] ; 2 uses
  %i.ajt = zext i32 %.238721 to i64
  %.val9470 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aju = getelementptr inbounds nuw i8, ptr %.val9470, i64 %i.ajt
  %.0.copyload.i10079 = load i32, ptr %i.aju, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10079) #16, !srcloc !22
  %i.ajv = icmp eq i32 %.0.copyload.i10079, %.158663
  br i1 %i.ajv, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %.preheader10420
  %.val9469 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ajw = getelementptr inbounds nuw i8, ptr %.val9469, i64 %i.aia
  %.0.copyload.i10080 = load i32, ptr %i.ajw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10080) #16, !srcloc !22
  %.not9059 = icmp eq i32 %.0.copyload.i10080, 0
  br i1 %.not9059, label %._crit_edge10809, label %bb.ed

._crit_edge10809:                                 ; preds = %bb.ec
  %.pre10823 = zext i32 %.0.copyload.i10079 to i64
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.ajx = zext i32 %.0.copyload.i10080 to i64
  %.val9468 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ajy = getelementptr inbounds nuw i8, ptr %.val9468, i64 %i.ajx
  %.0.copyload.i10081 = load i32, ptr %i.ajy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10081) #16, !srcloc !22
  %i.ajz = zext i32 %.0.copyload.i10079 to i64    ; 2 uses
  %.val9467 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aka = getelementptr inbounds nuw i8, ptr %.val9467, i64 %i.ajz
  %.0.copyload.i10082 = load i32, ptr %i.aka, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10082) #16, !srcloc !22
  %i.akb = icmp ult i32 %.0.copyload.i10081, %.0.copyload.i10082
  br i1 %i.akb, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %._crit_edge10809, %bb.ed
  %.pre-phi10824 = phi i64 [ %.pre10823, %._crit_edge10809 ], [ %i.ajz, %bb.ed ]
  %.val9696 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.akc = getelementptr inbounds nuw i8, ptr %.val9696, i64 %i.aia
  store i32 %.0.copyload.i10079, ptr %i.akc, align 1
  %.val9466 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.akd = getelementptr inbounds nuw i8, ptr %.val9466, i64 %.pre-phi10824
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %.0.copyload.i10083 = load i32, ptr %i.ake, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10083) #16, !srcloc !22
  %.val9465 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.akf = getelementptr inbounds nuw i8, ptr %.val9465, i64 %i.ajo
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 4
  %.0.copyload.i10084 = load i32, ptr %i.akg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10084) #16, !srcloc !22
  %i.akh = sub i32 %.0.copyload.i10083, %.0.copyload.i10084
  %.val9695 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aki = getelementptr inbounds nuw i8, ptr %.val9695, i64 %i.ahv
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 20
  store i32 %i.akh, ptr %i.akj, align 1
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ed, %.preheader10420, %bb.ee
  %i.akk = add i32 %.238721, 4                    ; 2 uses
  %.not9060 = icmp eq i32 %i.akk, %.0.copyload.i10078
  br i1 %.not9060, label %.loopexit10421, label %.preheader10420

.loopexit10421:                                   ; preds = %bb.ef, %.preheader10427
  %i.akl = add i32 %.58524, 20                    ; 2 uses
  %i.akm = icmp ult i32 %i.akl, %.158575
  br i1 %i.akm, label %.preheader10427, label %.loopexit10428

bb.eg:                                            ; preds = %bb.ea
  %i.akn = zext i32 %.58390 to i64                ; 3 uses
  %.val9464 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ako = getelementptr inbounds nuw i8, ptr %.val9464, i64 %i.akn
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 4
  %.0.copyload.i10085 = load i32, ptr %i.akp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10085) #16, !srcloc !22
  %i.akq = zext i32 %.0.copyload.i10085 to i64
  %.not9043 = icmp eq i64 %indvars.iv.next, %i.akq
  br i1 %.not9043, label %bb.eh, label %.loopexit10428

bb.eh:                                            ; preds = %bb.eg
  %i.akr = sub i32 %.18465, %.68453
  %i.aks = sdiv i32 %i.akr, 12                    ; 5 uses
  %i.akt = zext i32 %i.aks to i64
  %i.aku = icmp samesign ult i64 %indvars.iv.next, %i.akt
  br i1 %i.aku, label %.loopexit10426, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.akv = add i32 %i.aic, 2                      ; 6 uses
  %i.akw = icmp ult i32 %i.aks, %i.akv
  br i1 %i.akw, label %bb.ej, label %bb.er

bb.ej:                                            ; preds = %bb.ei
  %i.akx = sub nuw i32 %i.akv, %i.aks             ; 3 uses
  %i.aky = sub i32 %.98411, %.18465
  %i.akz = sdiv i32 %i.aky, 12
  %.not9047 = icmp ugt i32 %i.akx, %i.akz
  br i1 %.not9047, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ala = mul i32 %i.akx, 12
  %i.alb = add i32 %i.ala, -12                    ; 2 uses
  %i.alc = urem i32 %i.alb, 12
  %i.ald = sub nuw i32 %i.alb, %i.alc
  %i.ale = add i32 %i.ald, 12                     ; 2 uses
  %i.alf = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.18465, i32 noundef 0, i32 noundef %i.ale) ; 0 uses
  %i.alg = add i32 %i.ale, %.18465
  br label %.loopexit10426

bb.el:                                            ; preds = %bb.ej
  %i.alh = icmp ugt i32 %i.akv, 357913941
  br i1 %i.alh, label %.loopexit10338, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ali = sub i32 %.98411, %.68453
  %i.alj = sdiv i32 %i.ali, 12                    ; 2 uses
  %i.alk = shl nsw i32 %i.alj, 1
  %i.all = tail call i32 @llvm.umax.i32(i32 %i.alk, i32 %i.akv)
  %i.alm = icmp ugt i32 %i.alj, 178956969
  %i.aln = select i1 %i.alm, i32 357913941, i32 %i.all ; 2 uses
  %i.alo = icmp ugt i32 %i.aln, 357913941
  br i1 %i.alo, label %.loopexit10338, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.alp = mul nuw i32 %i.aln, 12                 ; 2 uses
  %i.alq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.alp) #16 ; 2 uses
  %i.alr = mul nuw i32 %i.akx, 12
  %i.als = add i32 %i.alr, -12                    ; 2 uses
  %i.alt = mul nuw nsw i32 %i.aks, 12
  %i.alu = add i32 %i.alq, %i.alt                 ; 4 uses
  %i.alv = urem i32 %i.als, 12
  %i.alw = sub nuw i32 %i.als, %i.alv
  %i.alx = add nuw i32 %i.alw, 12                 ; 2 uses
  %i.aly = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.alu, i32 noundef 0, i32 noundef %i.alx) ; 0 uses
  %.not9048 = icmp eq i32 %.68453, %.18465
  br i1 %.not9048, label %.loopexit10423, label %.preheader10424

.preheader10424:                                  ; preds = %bb.en, %.preheader10424
  %.248722 = phi i32 [ %i.ama, %.preheader10424 ], [ %.18465, %bb.en ]
  %.38629 = phi i32 [ %i.alz, %.preheader10424 ], [ %i.alu, %bb.en ]
  %i.alz = add i32 %.38629, -12                   ; 3 uses
  %i.ama = add i32 %.248722, -12                  ; 3 uses
  %i.amb = zext i32 %i.ama to i64                 ; 4 uses
  %.val9463 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.amc = getelementptr inbounds nuw i8, ptr %.val9463, i64 %i.amb
  %.0.copyload.i10086 = load i32, ptr %i.amc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10086) #16, !srcloc !22
  %i.amd = zext i32 %i.alz to i64                 ; 3 uses
  %.val9694 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ame = getelementptr inbounds nuw i8, ptr %.val9694, i64 %i.amd
  store i32 %.0.copyload.i10086, ptr %i.ame, align 1
  %.val9462 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.amf = getelementptr inbounds nuw i8, ptr %.val9462, i64 %i.amb
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 4
  %.0.copyload.i10087 = load i32, ptr %i.amg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10087) #16, !srcloc !22
  %.val9693 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.amh = getelementptr inbounds nuw i8, ptr %.val9693, i64 %i.amd
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 4
  store i32 %.0.copyload.i10087, ptr %i.ami, align 1
  %i.amj = add nuw nsw i64 %i.amb, 8              ; 2 uses
  %.val9461 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.amk = getelementptr inbounds nuw i8, ptr %.val9461, i64 %i.amj
  %.0.copyload.i10088 = load i32, ptr %i.amk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10088) #16, !srcloc !22
  %.val9692 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aml = getelementptr inbounds nuw i8, ptr %.val9692, i64 %i.amd
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 8
  store i32 %.0.copyload.i10088, ptr %i.amm, align 1
  %.val9691 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.amn = getelementptr inbounds nuw i8, ptr %.val9691, i64 %i.amj
  store i32 0, ptr %i.amn, align 1
  %.val9841 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.amo = getelementptr inbounds nuw i8, ptr %.val9841, i64 %i.amb
  store i64 0, ptr %i.amo, align 1
  %.not9049 = icmp eq i32 %i.ama, %.68453
  br i1 %.not9049, label %.preheader10422, label %.preheader10424

.preheader10422:                                  ; preds = %.preheader10424, %bb.ep
  %.28466 = phi i32 [ %i.amp, %bb.ep ], [ %.18465, %.preheader10424 ] ; 2 uses
  %i.amp = add i32 %.28466, -12                   ; 3 uses
  %i.amq = zext i32 %i.amp to i64
  %.val9460 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.amr = getelementptr inbounds nuw i8, ptr %.val9460, i64 %i.amq
  %.0.copyload.i10089 = load i32, ptr %i.amr, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10089) #16, !srcloc !22
  %.not9050 = icmp eq i32 %.0.copyload.i10089, 0
  br i1 %.not9050, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.preheader10422
  %i.ams = add i32 %.28466, -8
  %i.amt = zext i32 %i.ams to i64
  %.val9690 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.amu = getelementptr inbounds nuw i8, ptr %.val9690, i64 %i.amt
  store i32 %.0.copyload.i10089, ptr %i.amu, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i10089)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.preheader10422
  %.not9051 = icmp eq i32 %i.amp, %.68453
  br i1 %.not9051, label %.loopexit10423, label %.preheader10422

.loopexit10423:                                   ; preds = %bb.ep, %bb.en
  %.48630 = phi i32 [ %i.alu, %bb.en ], [ %i.alz, %bb.ep ] ; 2 uses
  %i.amv = add i32 %i.alu, %i.alx                 ; 2 uses
  %i.amw = add i32 %i.alq, %i.alp                 ; 2 uses
  %.not9052 = icmp eq i32 %.68453, 0
  br i1 %.not9052, label %.loopexit10426, label %bb.eq

bb.eq:                                            ; preds = %.loopexit10423
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.68453)
  br label %.loopexit10426

bb.er:                                            ; preds = %bb.ei
  %.not9044 = icmp ult i32 %i.akv, %i.aks
  br i1 %.not9044, label %bb.es, label %.loopexit10426

bb.es:                                            ; preds = %bb.er
  %i.amx = mul i32 %i.akv, 12
  %i.amy = add i32 %.68453, %i.amx                ; 3 uses
  %i.amz = icmp eq i32 %.18465, %i.amy
  br i1 %i.amz, label %.loopexit10426, label %.preheader10425

.preheader10425:                                  ; preds = %bb.es, %bb.eu
  %.38467 = phi i32 [ %i.ana, %bb.eu ], [ %.18465, %bb.es ] ; 2 uses
  %i.ana = add i32 %.38467, -12                   ; 3 uses
  %i.anb = zext i32 %i.ana to i64
  %.val9459 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.anc = getelementptr inbounds nuw i8, ptr %.val9459, i64 %i.anb
  %.0.copyload.i10090 = load i32, ptr %i.anc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10090) #16, !srcloc !22
  %.not9045 = icmp eq i32 %.0.copyload.i10090, 0
  br i1 %.not9045, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.preheader10425
  %i.and = add i32 %.38467, -8
  %i.ane = zext i32 %i.and to i64
  %.val9689 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.anf = getelementptr inbounds nuw i8, ptr %.val9689, i64 %i.ane
  store i32 %.0.copyload.i10090, ptr %i.anf, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i10090)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %.preheader10425
  %.not9046 = icmp eq i32 %i.ana, %i.amy
  br i1 %.not9046, label %.loopexit10426, label %.preheader10425

.loopexit10426:                                   ; preds = %bb.eu, %.loopexit10423, %bb.es, %bb.er, %bb.eh, %bb.eq, %bb.ek
  %.48468 = phi i32 [ %.18465, %bb.eh ], [ %i.alg, %bb.ek ], [ %i.amv, %.loopexit10423 ], [ %i.amv, %bb.eq ], [ %.18465, %bb.er ], [ %.18465, %bb.es ], [ %i.amy, %bb.eu ] ; 3 uses
  %.78454 = phi i32 [ %.68453, %bb.eh ], [ %.68453, %bb.ek ], [ %.48630, %.loopexit10423 ], [ %.48630, %bb.eq ], [ %.68453, %bb.er ], [ %.68453, %bb.es ], [ %.68453, %bb.eu ] ; 4 uses
  %.108412 = phi i32 [ %.98411, %bb.eh ], [ %.98411, %bb.ek ], [ %i.amw, %.loopexit10423 ], [ %i.amw, %bb.eq ], [ %.98411, %bb.er ], [ %.98411, %bb.es ], [ %.98411, %bb.eu ] ; 3 uses
  %.val9458 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ang = getelementptr inbounds nuw i8, ptr %.val9458, i64 %i.akn
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 12
  %.0.copyload.i10091 = load i32, ptr %i.anh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10091) #16, !srcloc !22
  %.val9457 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ani = getelementptr inbounds nuw i8, ptr %.val9457, i64 %i.akn
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %.0.copyload.i10092 = load i32, ptr %i.anj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10092) #16, !srcloc !22
  %i.ank = sub i32 %.0.copyload.i10091, %.0.copyload.i10092
  %i.anl = ashr i32 %i.ank, 2                     ; 2 uses
  %i.anm = trunc nuw i64 %indvars.iv.next to i32
  %i.ann = mul i32 %i.anm, 12
  %i.ano = add i32 %.78454, %i.ann
  %i.anp = zext i32 %i.ano to i64                 ; 4 uses
  %i.anq = add nuw nsw i64 %i.anp, 4              ; 3 uses
  %.val9456 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.anr = getelementptr inbounds nuw i8, ptr %.val9456, i64 %i.anq
  %.0.copyload.i10093 = load i32, ptr %i.anr, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10093) #16, !srcloc !22
  %i.ans = add nuw nsw i64 %i.anp, 8              ; 2 uses
  %.val9455 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ant = getelementptr inbounds nuw i8, ptr %.val9455, i64 %i.ans
  %.0.copyload.i10094 = load i32, ptr %i.ant, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10094) #16, !srcloc !22
  %.not9053 = icmp eq i32 %.0.copyload.i10093, %.0.copyload.i10094
  br i1 %.not9053, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.loopexit10426
  %i.anu = zext i32 %.0.copyload.i10093 to i64    ; 3 uses
  %.val9688 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.anv = getelementptr inbounds nuw i8, ptr %.val9688, i64 %i.anu
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  store i32 %.158663, ptr %i.anw, align 1
  %.val9687 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.anx = getelementptr inbounds nuw i8, ptr %.val9687, i64 %i.anu
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 4
  store i32 %i.anl, ptr %i.any, align 1
  %.val9686 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.anz = getelementptr inbounds nuw i8, ptr %.val9686, i64 %i.anu
  store i32 %.0.copyload.i10092, ptr %i.anz, align 1
  %i.aoa = add i32 %.0.copyload.i10093, 12
  %.val9685 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aob = getelementptr inbounds nuw i8, ptr %.val9685, i64 %i.anq
  store i32 %i.aoa, ptr %i.aob, align 1
  br label %.loopexit10428

bb.ew:                                            ; preds = %.loopexit10426
  %.val9454 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aoc = getelementptr inbounds nuw i8, ptr %.val9454, i64 %i.anp
  %.0.copyload.i10095 = load i32, ptr %i.aoc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10095) #16, !srcloc !22
  %i.aod = sub i32 %.0.copyload.i10093, %.0.copyload.i10095
  %.fr9055 = freeze i32 %i.aod                    ; 4 uses
  %i.aoe = sdiv i32 %.fr9055, 12                  ; 4 uses
  %i.aof = srem i32 %.fr9055, 12
  %i.aog = add nsw i32 %i.aoe, 1                  ; 2 uses
  %i.aoh = icmp ult i32 %i.aog, 357913942
  br i1 %i.aoh, label %bb.ex, label %.loopexit10338

bb.ex:                                            ; preds = %bb.ew
  %i.aoi = shl nuw nsw i32 %i.aoe, 1
  %i.aoj = tail call i32 @llvm.umax.i32(i32 %i.aoi, i32 %i.aog)
  %i.aok = icmp ugt i32 %i.aoe, 178956969
  %i.aol = select i1 %i.aok, i32 357913941, i32 %i.aoj ; 3 uses
  %.not9054 = icmp eq i32 %i.aol, 0
  br i1 %.not9054, label %._crit_edge10810, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aom = icmp ugt i32 %i.aol, 357913941
  br i1 %i.aom, label %.loopexit10338, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aon = mul nuw i32 %i.aol, 12                 ; 2 uses
  %i.aoo = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.aon) #16
  br label %._crit_edge10810

._crit_edge10810:                                 ; preds = %bb.ex, %bb.ez
  %.pre-phi10822 = phi i32 [ %i.aon, %bb.ez ], [ 0, %bb.ex ]
  %.3 = phi i32 [ %i.aoo, %bb.ez ], [ 0, %bb.ex ] ; 2 uses
  %i.aop = mul nsw i32 %i.aoe, 12
end_hunk_0
begin_hunk_1_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AStringTableBuilder0x3A0x3ApackIntoStorage0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20bool0x29:bb.a
  %i.cii = sdiv i32 %i.cih, 20
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lu, %bb.lq
  %.478745 = phi i32 [ %i.cii, %bb.lq ], [ %.7, %bb.lu ] ; 2 uses
  %.39 = phi i32 [ %.148399, %bb.lq ], [ %.40, %bb.lu ] ; 3 uses
  %i.cij = lshr i32 %.478745, 1                   ; 4 uses
  %i.cik = mul i32 %i.cij, 20
  %i.cil = add i32 %i.cik, %.39                   ; 2 uses
  %i.cim = zext i32 %i.cil to i64                 ; 2 uses
  %.val9359 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cin = getelementptr inbounds nuw i8, ptr %.val9359, i64 %i.cim
  %i.cio = getelementptr inbounds nuw i8, ptr %i.cin, i64 4
  %.0.copyload.i10231 = load i32, ptr %i.cio, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10231) #16, !srcloc !22
  %i.cip = zext i32 %.0.copyload.i10231 to i64
  %.not9201 = icmp samesign ult i64 %indvars.iv10787, %i.cip
  br i1 %.not9201, label %bb.ls, label %bb.lu

bb.ls:                                            ; preds = %bb.lr
  %.val9358 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ciq = getelementptr inbounds nuw i8, ptr %.val9358, i64 %i.cim
  %.0.copyload.i10232 = load i32, ptr %i.ciq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10232) #16, !srcloc !22
  %i.cir = add i32 %.0.copyload.i10232, %i.chm
  %i.cis = zext i32 %i.cir to i64
  %.val9945 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cit = getelementptr inbounds nuw i8, ptr %.val9945, i64 %i.cis
  %.0.copyload.i10233 = load i16, ptr %i.cit, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10233) #16, !srcloc !46
  %.not9202 = icmp eq i16 %.0.copyload.i10227, %.0.copyload.i10233
  br i1 %.not9202, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.ciu = add i32 %i.cil, 20
  %i.civ = xor i32 %i.cij, -1
  %i.ciw = add i32 %.478745, %i.civ
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lr, %bb.ls, %bb.lt
  %.40 = phi i32 [ %i.ciu, %bb.lt ], [ %.39, %bb.ls ], [ %.39, %bb.lr ] ; 2 uses
  %.7 = phi i32 [ %i.ciw, %bb.lt ], [ %i.cij, %bb.ls ], [ %i.cij, %bb.lr ] ; 2 uses
  %.not9203 = icmp eq i32 %.7, 0
  br i1 %.not9203, label %.loopexit10335, label %bb.lr

.loopexit10335:                                   ; preds = %bb.lu, %.loopexit10336
  %.41 = phi i32 [ %.38, %.loopexit10336 ], [ %.40, %bb.lu ] ; 4 uses
  %i.cix = icmp eq i32 %.41, %.148399
  br i1 %i.cix, label %.loopexit10337, label %bb.lv

bb.lv:                                            ; preds = %.loopexit10335
  %indvars.iv.next10788 = add nuw nsw i64 %indvars.iv10787, 1 ; 6 uses
  %.not9204 = icmp samesign ult i64 %indvars.iv.next10788, %i.chk
  br i1 %.not9204, label %bb.mb, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %.not9219 = icmp ult i32 %.148399, %.41
  br i1 %.not9219, label %.preheader10333, label %.loopexit10334

.preheader10333:                                  ; preds = %bb.lw, %.loopexit10327
  %.108529 = phi i32 [ %i.cjv, %.loopexit10327 ], [ %.148399, %bb.lw ] ; 2 uses
  %i.ciy = zext i32 %.108529 to i64               ; 3 uses
  %.val9357 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ciz = getelementptr inbounds nuw i8, ptr %.val9357, i64 %i.ciy
  %i.cja = getelementptr inbounds nuw i8, ptr %i.ciz, i64 8
  %.0.copyload.i10234 = load i32, ptr %i.cja, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10234) #16, !srcloc !22
  %.val9356 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cjb = getelementptr inbounds nuw i8, ptr %.val9356, i64 %i.ciy
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cjb, i64 12
  %.0.copyload.i10235 = load i32, ptr %i.cjc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10235) #16, !srcloc !22
  %.not9220 = icmp eq i32 %.0.copyload.i10234, %.0.copyload.i10235
  br i1 %.not9220, label %.loopexit10327, label %.preheader10326

.preheader10326:                                  ; preds = %.preheader10333, %bb.ma
  %.488746 = phi i32 [ %i.cju, %bb.ma ], [ %.0.copyload.i10234, %.preheader10333 ] ; 2 uses
  %i.cjd = zext i32 %.488746 to i64
  %.val9355 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cje = getelementptr inbounds nuw i8, ptr %.val9355, i64 %i.cjd
  %.0.copyload.i10236 = load i32, ptr %i.cje, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10236) #16, !srcloc !22
  %i.cjf = icmp eq i32 %.0.copyload.i10236, %.438691
  br i1 %i.cjf, label %bb.ma, label %bb.lx

bb.lx:                                            ; preds = %.preheader10326
  %.val9354 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cjg = getelementptr inbounds nuw i8, ptr %.val9354, i64 %i.chj
  %.0.copyload.i10237 = load i32, ptr %i.cjg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10237) #16, !srcloc !22
  %.not9221 = icmp eq i32 %.0.copyload.i10237, 0
  br i1 %.not9221, label %._crit_edge10812, label %bb.ly

._crit_edge10812:                                 ; preds = %bb.lx
  %.pre10816 = zext i32 %.0.copyload.i10236 to i64
  br label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  %i.cjh = zext i32 %.0.copyload.i10237 to i64
  %.val9353 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cji = getelementptr inbounds nuw i8, ptr %.val9353, i64 %i.cjh
  %.0.copyload.i10238 = load i32, ptr %i.cji, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10238) #16, !srcloc !22
  %i.cjj = zext i32 %.0.copyload.i10236 to i64    ; 2 uses
  %.val9352 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cjk = getelementptr inbounds nuw i8, ptr %.val9352, i64 %i.cjj
  %.0.copyload.i10239 = load i32, ptr %i.cjk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10239) #16, !srcloc !22
  %i.cjl = icmp ult i32 %.0.copyload.i10238, %.0.copyload.i10239
  br i1 %i.cjl, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %._crit_edge10812, %bb.ly
  %.pre-phi10817 = phi i64 [ %.pre10816, %._crit_edge10812 ], [ %i.cjj, %bb.ly ]
  %.val9596 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cjm = getelementptr inbounds nuw i8, ptr %.val9596, i64 %i.chj
  store i32 %.0.copyload.i10236, ptr %i.cjm, align 1
  %.val9351 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cjn = getelementptr inbounds nuw i8, ptr %.val9351, i64 %.pre-phi10817
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjn, i64 8
  %.0.copyload.i10240 = load i32, ptr %i.cjo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10240) #16, !srcloc !22
  %.val9350 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cjp = getelementptr inbounds nuw i8, ptr %.val9350, i64 %i.ciy
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjp, i64 4
  %.0.copyload.i10241 = load i32, ptr %i.cjq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10241) #16, !srcloc !22
  %i.cjr = sub i32 %.0.copyload.i10240, %.0.copyload.i10241
  %.val9595 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cjs = getelementptr inbounds nuw i8, ptr %.val9595, i64 %i.che
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 20
  store i32 %i.cjr, ptr %i.cjt, align 1
  br label %bb.ma

bb.ma:                                            ; preds = %bb.ly, %.preheader10326, %bb.lz
  %i.cju = add i32 %.488746, 4                    ; 2 uses
  %.not9222 = icmp eq i32 %i.cju, %.0.copyload.i10235
  br i1 %.not9222, label %.loopexit10327, label %.preheader10326

.loopexit10327:                                   ; preds = %bb.ma, %.preheader10333
  %i.cjv = add i32 %.108529, 20                   ; 2 uses
  %i.cjw = icmp ult i32 %i.cjv, %.41
  br i1 %i.cjw, label %.preheader10333, label %.loopexit10334

bb.mb:                                            ; preds = %bb.lv
  %i.cjx = zext i32 %.148399 to i64               ; 3 uses
  %.val9349 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cjy = getelementptr inbounds nuw i8, ptr %.val9349, i64 %i.cjx
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjy, i64 4
  %.0.copyload.i10242 = load i32, ptr %i.cjz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10242) #16, !srcloc !22
  %i.cka = zext i32 %.0.copyload.i10242 to i64
  %.not9205 = icmp eq i64 %indvars.iv.next10788, %i.cka
  br i1 %.not9205, label %bb.mc, label %.loopexit10334

bb.mc:                                            ; preds = %bb.mb
  %i.ckb = sub i32 %.118475, %.138460
  %i.ckc = sdiv i32 %i.ckb, 12                    ; 5 uses
  %i.ckd = zext i32 %i.ckc to i64
  %i.cke = icmp samesign ult i64 %indvars.iv.next10788, %i.ckd
  br i1 %i.cke, label %.loopexit10332, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.ckf = add i32 %i.chl, 2                      ; 6 uses
  %i.ckg = icmp ult i32 %i.ckc, %i.ckf
  br i1 %i.ckg, label %bb.me, label %bb.mm

bb.me:                                            ; preds = %bb.md
  %i.ckh = sub nuw i32 %i.ckf, %i.ckc             ; 3 uses
  %i.cki = sub i32 %.25, %.118475
  %i.ckj = sdiv i32 %i.cki, 12
  %.not9209 = icmp ugt i32 %i.ckh, %i.ckj
  br i1 %.not9209, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.ckk = mul i32 %i.ckh, 12
  %i.ckl = add i32 %i.ckk, -12                    ; 2 uses
  %i.ckm = urem i32 %i.ckl, 12
  %i.ckn = sub nuw i32 %i.ckl, %i.ckm
  %i.cko = add i32 %i.ckn, 12                     ; 2 uses
  %i.ckp = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.118475, i32 noundef 0, i32 noundef %i.cko) ; 0 uses
  %i.ckq = add i32 %i.cko, %.118475
  br label %.loopexit10332

bb.mg:                                            ; preds = %bb.me
  %i.ckr = icmp ugt i32 %i.ckf, 357913941
  br i1 %i.ckr, label %.loopexit10338, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.cks = sub i32 %.25, %.138460
  %i.ckt = sdiv i32 %i.cks, 12                    ; 2 uses
  %i.cku = shl nsw i32 %i.ckt, 1
  %i.ckv = tail call i32 @llvm.umax.i32(i32 %i.cku, i32 %i.ckf)
  %i.ckw = icmp ugt i32 %i.ckt, 178956969
  %i.ckx = select i1 %i.ckw, i32 357913941, i32 %i.ckv ; 2 uses
  %i.cky = icmp ugt i32 %i.ckx, 357913941
  br i1 %i.cky, label %.loopexit10338, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.ckz = mul nuw i32 %i.ckx, 12                 ; 2 uses
  %i.cla = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ckz) #16 ; 2 uses
  %i.clb = mul nuw i32 %i.ckh, 12
  %i.clc = add i32 %i.clb, -12                    ; 2 uses
  %i.cld = mul nuw nsw i32 %i.ckc, 12
  %i.cle = add i32 %i.cla, %i.cld                 ; 4 uses
  %i.clf = urem i32 %i.clc, 12
  %i.clg = sub nuw i32 %i.clc, %i.clf
  %i.clh = add nuw i32 %i.clg, 12                 ; 2 uses
  %i.cli = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.cle, i32 noundef 0, i32 noundef %i.clh) ; 0 uses
  %.not9210 = icmp eq i32 %.138460, %.118475
  br i1 %.not9210, label %.loopexit10329, label %.preheader10330

.preheader10330:                                  ; preds = %bb.mi, %.preheader10330
  %.498747 = phi i32 [ %i.clk, %.preheader10330 ], [ %.118475, %bb.mi ]
  %.188644 = phi i32 [ %i.clj, %.preheader10330 ], [ %i.cle, %bb.mi ]
  %i.clj = add i32 %.188644, -12                  ; 3 uses
  %i.clk = add i32 %.498747, -12                  ; 3 uses
  %i.cll = zext i32 %i.clk to i64                 ; 4 uses
  %.val9348 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.clm = getelementptr inbounds nuw i8, ptr %.val9348, i64 %i.cll
  %.0.copyload.i10243 = load i32, ptr %i.clm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10243) #16, !srcloc !22
  %i.cln = zext i32 %i.clj to i64                 ; 3 uses
  %.val9594 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.clo = getelementptr inbounds nuw i8, ptr %.val9594, i64 %i.cln
  store i32 %.0.copyload.i10243, ptr %i.clo, align 1
  %.val9347 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.clp = getelementptr inbounds nuw i8, ptr %.val9347, i64 %i.cll
  %i.clq = getelementptr inbounds nuw i8, ptr %i.clp, i64 4
  %.0.copyload.i10244 = load i32, ptr %i.clq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10244) #16, !srcloc !22
  %.val9593 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.clr = getelementptr inbounds nuw i8, ptr %.val9593, i64 %i.cln
  %i.cls = getelementptr inbounds nuw i8, ptr %i.clr, i64 4
  store i32 %.0.copyload.i10244, ptr %i.cls, align 1
  %i.clt = add nuw nsw i64 %i.cll, 8              ; 2 uses
  %.val9346 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.clu = getelementptr inbounds nuw i8, ptr %.val9346, i64 %i.clt
  %.0.copyload.i10245 = load i32, ptr %i.clu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10245) #16, !srcloc !22
  %.val9592 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.clv = getelementptr inbounds nuw i8, ptr %.val9592, i64 %i.cln
  %i.clw = getelementptr inbounds nuw i8, ptr %i.clv, i64 8
  store i32 %.0.copyload.i10245, ptr %i.clw, align 1
  %.val9591 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.clx = getelementptr inbounds nuw i8, ptr %.val9591, i64 %i.clt
  store i32 0, ptr %i.clx, align 1
  %.val9784 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cly = getelementptr inbounds nuw i8, ptr %.val9784, i64 %i.cll
  store i64 0, ptr %i.cly, align 1
  %.not9211 = icmp eq i32 %i.clk, %.138460
  br i1 %.not9211, label %.preheader10328, label %.preheader10330

.preheader10328:                                  ; preds = %.preheader10330, %bb.mk
  %.128476 = phi i32 [ %i.clz, %bb.mk ], [ %.118475, %.preheader10330 ] ; 2 uses
  %i.clz = add i32 %.128476, -12                  ; 3 uses
  %i.cma = zext i32 %i.clz to i64
  %.val9345 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cmb = getelementptr inbounds nuw i8, ptr %.val9345, i64 %i.cma
  %.0.copyload.i10246 = load i32, ptr %i.cmb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10246) #16, !srcloc !22
  %.not9212 = icmp eq i32 %.0.copyload.i10246, 0
  br i1 %.not9212, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %.preheader10328
  %i.cmc = add i32 %.128476, -8
  %i.cmd = zext i32 %i.cmc to i64
  %.val9590 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cme = getelementptr inbounds nuw i8, ptr %.val9590, i64 %i.cmd
  store i32 %.0.copyload.i10246, ptr %i.cme, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i10246)
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %.preheader10328
  %.not9213 = icmp eq i32 %i.clz, %.138460
  br i1 %.not9213, label %.loopexit10329, label %.preheader10328

.loopexit10329:                                   ; preds = %bb.mk, %bb.mi
  %.198645 = phi i32 [ %i.cle, %bb.mi ], [ %i.clj, %bb.mk ] ; 2 uses
  %i.cmf = add i32 %i.cle, %i.clh                 ; 2 uses
  %i.cmg = add i32 %i.cla, %i.ckz                 ; 2 uses
  %.not9214 = icmp eq i32 %.138460, 0
  br i1 %.not9214, label %.loopexit10332, label %bb.ml

bb.ml:                                            ; preds = %.loopexit10329
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.138460)
  br label %.loopexit10332

bb.mm:                                            ; preds = %bb.md
  %.not9206 = icmp ugt i32 %i.ckc, %i.ckf
  br i1 %.not9206, label %bb.mn, label %.loopexit10332

bb.mn:                                            ; preds = %bb.mm
  %i.cmh = mul i32 %i.ckf, 12
  %i.cmi = add i32 %.138460, %i.cmh               ; 3 uses
  %i.cmj = icmp eq i32 %.118475, %i.cmi
  br i1 %i.cmj, label %.loopexit10332, label %.preheader10331

.preheader10331:                                  ; preds = %bb.mn, %bb.mp
  %.138477 = phi i32 [ %i.cmk, %bb.mp ], [ %.118475, %bb.mn ] ; 2 uses
  %i.cmk = add i32 %.138477, -12                  ; 3 uses
  %i.cml = zext i32 %i.cmk to i64
  %.val9344 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cmm = getelementptr inbounds nuw i8, ptr %.val9344, i64 %i.cml
  %.0.copyload.i10247 = load i32, ptr %i.cmm, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10247) #16, !srcloc !22
  %.not9207 = icmp eq i32 %.0.copyload.i10247, 0
  br i1 %.not9207, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %.preheader10331
  %i.cmn = add i32 %.138477, -8
  %i.cmo = zext i32 %i.cmn to i64
  %.val9589 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cmp = getelementptr inbounds nuw i8, ptr %.val9589, i64 %i.cmo
  store i32 %.0.copyload.i10247, ptr %i.cmp, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i10247)
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %.preheader10331
  %.not9208 = icmp eq i32 %i.cmk, %i.cmi
  br i1 %.not9208, label %.loopexit10332, label %.preheader10331

.loopexit10332:                                   ; preds = %bb.mp, %.loopexit10329, %bb.mn, %bb.mm, %bb.mc, %bb.ml, %bb.mf
  %.148478 = phi i32 [ %.118475, %bb.mc ], [ %i.ckq, %bb.mf ], [ %i.cmf, %.loopexit10329 ], [ %i.cmf, %bb.ml ], [ %.118475, %bb.mm ], [ %.118475, %bb.mn ], [ %i.cmi, %bb.mp ] ; 3 uses
  %.148461 = phi i32 [ %.138460, %bb.mc ], [ %.138460, %bb.mf ], [ %.198645, %.loopexit10329 ], [ %.198645, %bb.ml ], [ %.138460, %bb.mm ], [ %.138460, %bb.mn ], [ %.138460, %bb.mp ] ; 4 uses
  %.26 = phi i32 [ %.25, %bb.mc ], [ %.25, %bb.mf ], [ %i.cmg, %.loopexit10329 ], [ %i.cmg, %bb.ml ], [ %.25, %bb.mm ], [ %.25, %bb.mn ], [ %.25, %bb.mp ] ; 3 uses
  %.val9343 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cmq = getelementptr inbounds nuw i8, ptr %.val9343, i64 %i.cjx
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmq, i64 12
  %.0.copyload.i10248 = load i32, ptr %i.cmr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10248) #16, !srcloc !22
  %.val9342 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cms = getelementptr inbounds nuw i8, ptr %.val9342, i64 %i.cjx
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cms, i64 8
  %.0.copyload.i10249 = load i32, ptr %i.cmt, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10249) #16, !srcloc !22
  %i.cmu = sub i32 %.0.copyload.i10248, %.0.copyload.i10249
  %i.cmv = ashr i32 %i.cmu, 2                     ; 2 uses
  %i.cmw = trunc nuw i64 %indvars.iv.next10788 to i32
  %i.cmx = mul i32 %i.cmw, 12
  %i.cmy = add i32 %.148461, %i.cmx
  %i.cmz = zext i32 %i.cmy to i64                 ; 4 uses
  %i.cna = add nuw nsw i64 %i.cmz, 4              ; 3 uses
  %.val9341 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cnb = getelementptr inbounds nuw i8, ptr %.val9341, i64 %i.cna
  %.0.copyload.i10250 = load i32, ptr %i.cnb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10250) #16, !srcloc !22
  %i.cnc = add nuw nsw i64 %i.cmz, 8              ; 2 uses
  %.val9340 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cnd = getelementptr inbounds nuw i8, ptr %.val9340, i64 %i.cnc
  %.0.copyload.i10251 = load i32, ptr %i.cnd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10251) #16, !srcloc !22
  %.not9215 = icmp eq i32 %.0.copyload.i10250, %.0.copyload.i10251
  br i1 %.not9215, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %.loopexit10332
  %i.cne = zext i32 %.0.copyload.i10250 to i64    ; 3 uses
  %.val9588 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cnf = getelementptr inbounds nuw i8, ptr %.val9588, i64 %i.cne
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnf, i64 8
  store i32 %.438691, ptr %i.cng, align 1
  %.val9587 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cnh = getelementptr inbounds nuw i8, ptr %.val9587, i64 %i.cne
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cnh, i64 4
  store i32 %i.cmv, ptr %i.cni, align 1
  %.val9586 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cnj = getelementptr inbounds nuw i8, ptr %.val9586, i64 %i.cne
  store i32 %.0.copyload.i10249, ptr %i.cnj, align 1
  %i.cnk = add i32 %.0.copyload.i10250, 12
  %.val9585 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cnl = getelementptr inbounds nuw i8, ptr %.val9585, i64 %i.cna
  store i32 %i.cnk, ptr %i.cnl, align 1
  br label %.loopexit10334

bb.mr:                                            ; preds = %.loopexit10332
  %.val9339 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cnm = getelementptr inbounds nuw i8, ptr %.val9339, i64 %i.cmz
  %.0.copyload.i10252 = load i32, ptr %i.cnm, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10252) #16, !srcloc !22
  %i.cnn = sub i32 %.0.copyload.i10250, %.0.copyload.i10252
  %.fr9217 = freeze i32 %i.cnn                    ; 4 uses
  %i.cno = sdiv i32 %.fr9217, 12                  ; 4 uses
  %i.cnp = srem i32 %.fr9217, 12
  %i.cnq = add nsw i32 %i.cno, 1                  ; 2 uses
  %i.cnr = icmp ult i32 %i.cnq, 357913942
  br i1 %i.cnr, label %bb.ms, label %.loopexit10338

bb.ms:                                            ; preds = %bb.mr
  %i.cns = shl nuw nsw i32 %i.cno, 1
  %i.cnt = tail call i32 @llvm.umax.i32(i32 %i.cns, i32 %i.cnq)
  %i.cnu = icmp ugt i32 %i.cno, 178956969
  %i.cnv = select i1 %i.cnu, i32 357913941, i32 %i.cnt ; 3 uses
  %.not9216 = icmp eq i32 %i.cnv, 0
  br i1 %.not9216, label %._crit_edge10813, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.cnw = icmp ugt i32 %i.cnv, 357913941
  br i1 %i.cnw, label %.loopexit10338, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.cnx = mul nuw i32 %i.cnv, 12                 ; 2 uses
  %i.cny = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cnx) #16
  br label %._crit_edge10813

._crit_edge10813:                                 ; preds = %bb.ms, %bb.mu
  %.pre-phi10815 = phi i32 [ %i.cnx, %bb.mu ], [ 0, %bb.ms ]
  %.8 = phi i32 [ %i.cny, %bb.mu ], [ 0, %bb.ms ] ; 2 uses
  %i.cnz = mul nsw i32 %i.cno, 12
end_hunk_1
