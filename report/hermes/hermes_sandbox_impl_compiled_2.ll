Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %i.yo = add i32 %i.yn, %i.yk
  %i.yp = zext i32 %i.yo to i64                   ; 2 uses
  %.val3033 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yq = getelementptr inbounds nuw i8, ptr %.val3033, i64 %i.yp
  %.0.copyload.i3186 = load i64, ptr %i.yq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3186) #7, !srcloc !22
  %i.yr = sub i32 0, %.0.copyload.i3117
  %i.ys = and i32 %i.yr, 63
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = lshr i64 -1, %i.yt
  %i.yv = and i64 %.0.copyload.i3186, %i.yu
  %.val3065 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yw = getelementptr inbounds nuw i8, ptr %.val3065, i64 %i.yp
  store i64 %i.yv, ptr %i.yw, align 1
  %.val2928 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yx = getelementptr inbounds nuw i8, ptr %.val2928, i64 %i.cl
  %.0.copyload.i3187 = load i32, ptr %i.yx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3187) #7, !srcloc !19
  %i.yy = icmp ult i32 %.0.copyload.i3187, 65
  br i1 %i.yy, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.val2927 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yz = getelementptr inbounds nuw i8, ptr %.val2927, i64 %i.ck
  %.0.copyload.i3188 = load i32, ptr %i.yz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3188) #7, !srcloc !19
  %.not2900 = icmp eq i32 %.0.copyload.i3188, 0
  br i1 %.not2900, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3188) #7
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ed, %bb.ec, %bb.ee
  %.val2978 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.za = getelementptr inbounds nuw i8, ptr %.val2978, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.za, align 1
  %.val2977 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zb = getelementptr inbounds nuw i8, ptr %.val2977, i64 %i.ck
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  store i32 0, ptr %i.zc, align 1
  %.val2976 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zd = getelementptr inbounds nuw i8, ptr %.val2976, i64 %i.ck
  store i32 %i.yk, ptr %i.zd, align 1
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.eb, %bb.dl, %bb.aw, %bb.an, %bb.ab, %bb.t
  store i32 %i.cr, ptr %i.a, align 8, !tbaa !17
  %.val3032 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ze = getelementptr inbounds nuw i8, ptr %.val3032, i64 %i.u
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %.0.copyload.i3189 = load i64, ptr %i.zf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3189) #7, !srcloc !22
  %i.zg = icmp ult i64 %.0.copyload.i3189, 10
  %i.zh = select i1 %i.zg, i32 48, i32 87
  %i.zi = trunc i64 %.0.copyload.i3189 to i32
  %i.zj = add i32 %i.zh, %i.zi
  %sext = shl i32 %i.zj, 24
  %i.zk = ashr exact i32 %sext, 24
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Apush_back0x28char0x29(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef %i.zk) #7
  %.val2926 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zl = getelementptr inbounds nuw i8, ptr %.val2926, i64 %i.co
  %.0.copyload.i3190 = load i32, ptr %i.zl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3190) #7, !srcloc !19
  %i.zm = icmp ult i32 %.0.copyload.i3190, 65
  br i1 %i.zm, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.val2925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zn = getelementptr inbounds nuw i8, ptr %.val2925, i64 %i.v
  %.0.copyload.i3191 = load i32, ptr %i.zn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3191) #7, !srcloc !19
  %.not2903 = icmp eq i32 %.0.copyload.i3191, 0
  br i1 %.not2903, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3191) #7
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.eg, %bb.ei
  %.val3031 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zo = getelementptr inbounds nuw i8, ptr %.val3031, i64 %i.cd
  %.0.copyload.i3192 = load i64, ptr %i.zo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3192) #7, !srcloc !22
  %.val3064 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zp = getelementptr inbounds nuw i8, ptr %.val3064, i64 %i.v
  store i64 %.0.copyload.i3192, ptr %i.zp, align 1
  %.val2924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zq = getelementptr inbounds nuw i8, ptr %.val2924, i64 %i.ce
  %.0.copyload.i3193 = load i32, ptr %i.zq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3193) #7, !srcloc !19
  %.val2975 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zr = getelementptr inbounds nuw i8, ptr %.val2975, i64 %i.co
  store i32 %.0.copyload.i3193, ptr %i.zr, align 1
  %i.zs = icmp ugt i32 %.0.copyload.i3193, 64
  br i1 %i.zs, label %bb.ek, label %bb.eq

bb.ek:                                            ; preds = %bb.ej
  %.val2923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zt = getelementptr inbounds nuw i8, ptr %.val2923, i64 %i.co
  %.0.copyload.i3194 = load i32, ptr %i.zt, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3194) #7, !srcloc !19
  %i.zu = zext i32 %.0.copyload.i3194 to i64
  %i.zv = add nuw nsw i64 %i.zu, 63
  %i.zw = lshr i64 %i.zv, 6                       ; 3 uses
  %.not2904 = icmp eq i64 %i.zw, 0
  br i1 %.not2904, label %.loopexit3224, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.zx = trunc nuw nsw i64 %i.zw to i32
  %i.zy = shl i32 %i.zx, 6
  %.val2922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zz = getelementptr inbounds nuw i8, ptr %.val2922, i64 %i.v
  %.0.copyload.i3195 = load i32, ptr %i.zz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3195) #7, !srcloc !19
  br label %bb.em

bb.em:                                            ; preds = %bb.eo, %bb.el
  %indvars.iv3332 = phi i64 [ %indvars.iv.next3333, %bb.eo ], [ %i.zw, %bb.el ] ; 2 uses
  %.02792 = phi i32 [ %i.aah, %bb.eo ], [ 0, %bb.el ] ; 2 uses
  %indvars.iv.next3333 = add nsw i64 %indvars.iv3332, -1 ; 2 uses
  %indvars3334 = trunc i64 %indvars.iv.next3333 to i32
  %i.aaa = shl nsw i32 %indvars3334, 3
  %i.aab = add i32 %i.aaa, %.0.copyload.i3195
  %i.aac = zext i32 %i.aab to i64
  %.val3030 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aad = getelementptr inbounds nuw i8, ptr %.val3030, i64 %i.aac
  %.0.copyload.i3196 = load i64, ptr %i.aad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3196) #7, !srcloc !22
  %.not2905 = icmp eq i64 %.0.copyload.i3196, 0
  br i1 %.not2905, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i3196, i1 true)
  %i.aaf = trunc nuw nsw i64 %i.aae to i32
  %i.aag = or disjoint i32 %.02792, %i.aaf
  br label %.loopexit3224

bb.eo:                                            ; preds = %bb.em
  %i.aah = add i32 %.02792, 64
  %i.aai = icmp ugt i64 %indvars.iv3332, 1
  br i1 %i.aai, label %bb.em, label %.loopexit3224

.loopexit3224:                                    ; preds = %bb.eo, %bb.ek, %bb.en
  %.12767 = phi i32 [ 0, %bb.ek ], [ %i.aag, %bb.en ], [ %i.zy, %bb.eo ]
  %i.aaj = or i32 %.0.copyload.i3194, -64
  %i.aak = and i32 %.0.copyload.i3194, 63
  %.not2906 = icmp eq i32 %i.aak, 0
  %i.aal = select i1 %.not2906, i32 0, i32 %i.aaj
  %i.aam = add i32 %i.aal, %.12767
  %i.aan = sub i32 %.0.copyload.i3193, %i.aam
  %i.aao = icmp ugt i32 %i.aan, 64
  br i1 %i.aao, label %.backedge.backedge, label %bb.ep

.backedge.backedge:                               ; preds = %.loopexit3224, %bb.eq
  br label %.backedge

bb.ep:                                            ; preds = %.loopexit3224
  %.pre = and i64 %.0.copyload.i3192, 4294967295
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ej, %bb.ep
  %.pre-phi = phi i64 [ %i.ci, %bb.ej ], [ %.pre, %bb.ep ]
  %.val3029 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aap = getelementptr inbounds nuw i8, ptr %.val3029, i64 %.pre-phi
  %.0.copyload.i3197 = load i64, ptr %i.aap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3197) #7, !srcloc !22
  %.not2907 = icmp eq i64 %.0.copyload.i3197, 0
  br i1 %.not2907, label %bb.er, label %.backedge.backedge

bb.er:                                            ; preds = %bb.eq
  br i1 %.not2908, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Apush_back0x28char0x29(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef 45) #7
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.val2921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val2921, i64 %i.bq
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  %.0.copyload.i3198 = load i32, ptr %i.aar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3198) #7, !srcloc !19
  %.val2974 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aas = getelementptr inbounds nuw i8, ptr %.val2974, i64 %i.bq
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 11
  %.0.copyload.i3199 = load i8, ptr %i.aat, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3199) #7, !srcloc !20
  %i.aau = zext i8 %.0.copyload.i3199 to i32
  %.not2910 = icmp sgt i8 %.0.copyload.i3199, -1  ; 2 uses
  %i.aav = select i1 %.not2910, i32 %i.aau, i32 %.0.copyload.i3198 ; 2 uses
  %.not2911 = icmp eq i32 %i.aav, 0
  br i1 %.not2911, label %.loopexit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.val2920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val2920, i64 %i.bq
  %.0.copyload.i3200 = load i32, ptr %i.aaw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3200) #7, !srcloc !19
  %i.aax = select i1 %.not2910, i32 %i.q, i32 %.0.copyload.i3200 ; 3 uses
  %i.aay = add i32 %i.aav, %i.aax
  %i.aaz = add i32 %i.aay, -1                     ; 2 uses
  %.not2912 = icmp ugt i32 %i.aaz, %i.aax
  br i1 %.not2912, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.eu
  %i.aba = zext i32 %i.aax to i64
  %i.abb = zext i32 %i.aaz to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv3338 = phi i64 [ %i.abb, %.preheader.preheader ], [ %i.abg, %.preheader ] ; 3 uses
  %indvars.iv3336 = phi i64 [ %i.aba, %.preheader.preheader ], [ %indvars.iv.next3337, %.preheader ] ; 3 uses
  %.val2973 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abc = getelementptr inbounds nuw i8, ptr %.val2973, i64 %indvars.iv3336
  %.0.copyload.i3201 = load i8, ptr %i.abc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3201) #7, !srcloc !20
  %.val2972 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abd = getelementptr inbounds nuw i8, ptr %.val2972, i64 %indvars.iv3338
  %.0.copyload.i3202 = load i8, ptr %i.abd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3202) #7, !srcloc !20
  %.val2914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abe = getelementptr inbounds nuw i8, ptr %.val2914, i64 %indvars.iv3336
  store i8 %.0.copyload.i3202, ptr %i.abe, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abf = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv3338
  store i8 %.0.copyload.i3201, ptr %i.abf, align 1
  %indvars.iv.next3337 = add nuw nsw i64 %indvars.iv3336, 1 ; 2 uses
  %i.abg = add nsw i64 %indvars.iv3338, -1        ; 2 uses
  %i.abh = icmp ult i64 %indvars.iv.next3337, %i.abg
  br i1 %i.abh, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.eu, %bb.et
  %.val2919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abi = getelementptr inbounds nuw i8, ptr %.val2919, i64 %i.co
  %.0.copyload.i3203 = load i32, ptr %i.abi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3203) #7, !srcloc !19
  %i.abj = icmp ult i32 %.0.copyload.i3203, 65
  br i1 %i.abj, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %.loopexit
  %.val2918 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abk = getelementptr inbounds nuw i8, ptr %.val2918, i64 %i.v
  %.0.copyload.i3204 = load i32, ptr %i.abk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3204) #7, !srcloc !19
  %.not2913 = icmp eq i32 %.0.copyload.i3204, 0
  br i1 %.not2913, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3204) #7
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %.loopexit, %bb.ew, %bb.d
  store i32 %i.r, ptr %i.a, align 8, !tbaa !17
  %i.abl = add i32 %i.b, -32
  %i.abm = add nuw nsw i64 %i.h, 36               ; 2 uses
  %.val2917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abn = getelementptr inbounds nuw i8, ptr %.val2917, i64 %i.abm
  %.0.copyload.i3205 = load i32, ptr %i.abn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3205) #7, !srcloc !19
  %i.abo = add nuw nsw i64 %i.h, 47               ; 2 uses
  %.val3026 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abp = getelementptr inbounds nuw i8, ptr %.val3026, i64 %i.abo
  %.0.copyload.i3206 = load i8, ptr %i.abp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3206) #7, !srcloc !21
  %i.abq = icmp slt i8 %.0.copyload.i3206, 0
  %i.abr = select i1 %i.abq, i32 %.0.copyload.i3205, i32 %i.q
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcreateASCIIRef0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.abl, i32 noundef %i.abr) #7
  %.val3028 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abs = getelementptr inbounds nuw i8, ptr %.val3028, i64 %i.h
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %.0.copyload.i3207 = load i64, ptr %i.abt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3207) #7, !srcloc !22
  %.val3063 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abu = getelementptr inbounds nuw i8, ptr %.val3063, i64 %i.h
  store i64 %.0.copyload.i3207, ptr %i.abu, align 1
  %i.abv = load i32, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.abw = add i32 %i.abv, -16                    ; 3 uses
  store i32 %i.abw, ptr %i.a, align 8, !tbaa !17
  %.val3027 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abx = getelementptr inbounds nuw i8, ptr %.val3027, i64 %i.h
  %.0.copyload.i3208 = load i64, ptr %i.abx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3208) #7, !srcloc !22
  %i.aby = zext i32 %i.abw to i64                 ; 2 uses
  %.val3062 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abz = getelementptr inbounds nuw i8, ptr %.val3062, i64 %i.aby
  store i64 %.0.copyload.i3208, ptr %i.abz, align 1
  %.val3061 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aca = getelementptr inbounds nuw i8, ptr %.val3061, i64 %i.aby
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store i64 %.0.copyload.i3208, ptr %i.acb, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateEfficientImpl0x3Cchar0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.abw, i32 noundef 0)
  store i32 %i.abv, ptr %i.a, align 8, !tbaa !17
  %.val3025 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acc = getelementptr inbounds nuw i8, ptr %.val3025, i64 %i.abo
  %.0.copyload.i3209 = load i8, ptr %i.acc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3209) #7, !srcloc !21
  %i.acd = icmp slt i8 %.0.copyload.i3209, 0
  br i1 %i.acd, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %.val2916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ace = getelementptr inbounds nuw i8, ptr %.val2916, i64 %i.abm
  %.0.copyload.i3210 = load i32, ptr %i.ace, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3210) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3210) #7
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AAPInt0x28unsigned0x20int0x2C0x20llvh0x3A0x3AArrayRef0x3Cunsigned0x20long0x20long0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AflipAllBitsSlowCase0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3Aoperator0x2B0x2B0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Areserve0x28unsigned0x20long0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Apush_back0x28char0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcreateASCIIRef0x28char0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AfromDouble0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20double0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 5 uses
  %i.c = add i32 %i.b, -80                        ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = fcmp uge double %3, f0x41DFFFFFFFC00000
  %i.e = fcmp ule double %3, f0xC1E0000000000000
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef double @llvm.fabs.f64(double %3)
  %i.g = fcmp olt double %i.f, f0x41E0000000000000
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp ule double %3, f0xC1E0000000200000
  %i.i = fcmp uge double %3, f0x41E0000000000000
  %.not1126 = or i1 %i.h, %i.i
  br i1 %.not1126, label %bb.d, label %bb.e, !prof !25

bb.d:                                             ; preds = %bb.c
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = fptosi double %3 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.01093 = phi i32 [ %i.j, %bb.e ], [ -2147483648, %bb.b ] ; 2 uses
  %i.k = sitofp i32 %.01093 to double
  %i.l = fcmp une double %3, %i.k
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.n = zext i32 %i.c to i64                     ; 4 uses
  %.val1190 = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val1190, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 4, ptr %i.p, align 1
  %.val1189 = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val1189, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 %.01093, ptr %i.r, align 1
  %i.s = add i32 %i.b, -44
  %i.t = add nuw nsw i64 %i.n, 40                 ; 2 uses
  %.val1188 = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val1188, i64 %i.t
  store i32 %i.s, ptr %i.u, align 1
  %.val1204 = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val1204, i64 %i.t
  %.0.copyload.i = load i64, ptr %i.v, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !22
  %.val1227 = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val1227, i64 %i.n
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.0.copyload.i, ptr %i.x, align 1
  %i.y = add i32 %i.b, -72
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AfromBytes0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cunsigned0x20char0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.y)
  br label %bb.bk

bb.h:                                             ; preds = %bb.f, %bb.a
  %i.z = bitcast double %3 to i64                 ; 4 uses
  %i.aa = lshr i64 %i.z, 52                       ; 2 uses
  %i.ab = and i64 %i.aa, 2047                     ; 6 uses
end_hunk_0
