Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.val46948 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uam = getelementptr inbounds nuw i8, ptr %.val46948, i64 %i.sij
  %i.uan = getelementptr inbounds nuw i8, ptr %i.uam, i64 52
  %.0.copyload.i54002 = load i32, ptr %i.uan, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54002) #7, !srcloc !19
  %.not46653 = icmp ult i32 %.0.copyload.i54001, %.0.copyload.i54002
  br i1 %.not46653, label %bb.bur, label %bb.buq

bb.buq:                                           ; preds = %bb.bup
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.tad, i32 noundef %i.syk, i32 noundef 0, i32 noundef 12) #7
  %.val46947 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uao = getelementptr inbounds nuw i8, ptr %.val46947, i64 %i.syi
  %.0.copyload.i54003 = load i32, ptr %i.uao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54003) #7, !srcloc !19
  br label %bb.bur

bb.bur:                                           ; preds = %bb.buq, %bb.bup
  %.1843411 = phi i32 [ %.0.copyload.i54003, %bb.buq ], [ %.0.copyload.i54001, %bb.bup ]
  %.val46946 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uap = getelementptr inbounds nuw i8, ptr %.val46946, i64 %i.syl
  %.0.copyload.i54004 = load i32, ptr %i.uap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54004) #7, !srcloc !19
  %i.uaq = mul i32 %.1843411, 12
  %i.uar = add i32 %.0.copyload.i54004, %i.uaq
  %i.uas = zext i32 %i.uar to i64                 ; 3 uses
  %.val49337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uat = getelementptr inbounds nuw i8, ptr %.val49337, i64 %i.uas
  %i.uau = getelementptr inbounds nuw i8, ptr %i.uat, i64 8
  store i32 %.0.copyload.i54000, ptr %i.uau, align 1
  %.val49336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uav = getelementptr inbounds nuw i8, ptr %.val49336, i64 %i.uas
  %i.uaw = getelementptr inbounds nuw i8, ptr %i.uav, i64 4
  store i32 %.0.copyload.i53996, ptr %i.uaw, align 1
  %.val49335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uax = getelementptr inbounds nuw i8, ptr %.val49335, i64 %i.uas
  store i32 %i.uai, ptr %i.uax, align 1
  %.val46945 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uay = getelementptr inbounds nuw i8, ptr %.val46945, i64 %i.syi
  %.0.copyload.i54005 = load i32, ptr %i.uay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54005) #7, !srcloc !19
  %i.uaz = add i32 %.0.copyload.i54005, 1
  %.val49334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uba = getelementptr inbounds nuw i8, ptr %.val49334, i64 %i.syi
  store i32 %i.uaz, ptr %i.uba, align 1
  br label %bb.bus

bb.bus:                                           ; preds = %bb.bur, %bb.buo
  %.val46944 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ubb = getelementptr inbounds nuw i8, ptr %.val46944, i64 %i.uad
  %i.ubc = getelementptr inbounds nuw i8, ptr %i.ubb, i64 16
  %.0.copyload.i54006 = load i32, ptr %i.ubc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54006) #7, !srcloc !19
  %.val46943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ubd = getelementptr inbounds nuw i8, ptr %.val46943, i64 %i.uaa
  %i.ube = getelementptr inbounds nuw i8, ptr %i.ubd, i64 16
  %.0.copyload.i54007 = load i32, ptr %i.ube, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54007) #7, !srcloc !19
  %.val46942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ubf = getelementptr inbounds nuw i8, ptr %.val46942, i64 %i.uad
  %i.ubg = getelementptr inbounds nuw i8, ptr %i.ubf, i64 20
  %.0.copyload.i54008 = load i32, ptr %i.ubg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54008) #7, !srcloc !19
  %.val46941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ubh = getelementptr inbounds nuw i8, ptr %.val46941, i64 %i.uaa
  %i.ubi = getelementptr inbounds nuw i8, ptr %i.ubh, i64 20
  %.0.copyload.i54009 = load i32, ptr %i.ubi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54009) #7, !srcloc !19
  %.val46940 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ubj = getelementptr inbounds nuw i8, ptr %.val46940, i64 %i.uad
  %i.ubk = getelementptr inbounds nuw i8, ptr %i.ubj, i64 12
  %.0.copyload.i54010 = load i32, ptr %i.ubk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54010) #7, !srcloc !19
  %.val46939 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ubl = getelementptr inbounds nuw i8, ptr %.val46939, i64 %i.uaa
  %i.ubm = getelementptr inbounds nuw i8, ptr %i.ubl, i64 12
  %.0.copyload.i54011 = load i32, ptr %i.ubm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54011) #7, !srcloc !19
  %.val46938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ubn = getelementptr inbounds nuw i8, ptr %.val46938, i64 %i.uaa
  %.0.copyload.i54012 = load i32, ptr %i.ubn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54012) #7, !srcloc !19
  %.val46937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ubo = getelementptr inbounds nuw i8, ptr %.val46937, i64 %i.uad
  %.0.copyload.i54013 = load i32, ptr %i.ubo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54013) #7, !srcloc !19
  %i.ubp = sub i32 %.0.copyload.i54012, %.0.copyload.i54013
  %i.ubq = sext i32 %i.ubp to i64
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.tae, i64 noundef %i.ubq)
  %i.ubr = icmp ne i32 %.0.copyload.i54009, %.0.copyload.i54008 ; 2 uses
  %i.ubs = zext i1 %i.ubr to i64
  %i.ubt = sub i32 %.0.copyload.i54011, %.0.copyload.i54010
  %i.ubu = sext i32 %i.ubt to i64
  %i.ubv = shl nsw i64 %i.ubu, 1
  %i.ubw = or disjoint i64 %i.ubv, %i.ubs
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.tae, i64 noundef %i.ubw)
  %i.ubx = sub i32 %.0.copyload.i54007, %.0.copyload.i54006
  %i.uby = sext i32 %i.ubx to i64
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.tae, i64 noundef %i.uby)
  %.val51251 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ubz = getelementptr inbounds nuw i8, ptr %.val51251, i64 %i.uaa
  %i.uca = getelementptr inbounds nuw i8, ptr %i.ubz, i64 24
  %.0.copyload.i54014 = load i32, ptr %i.uca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54014) #7, !srcloc !37
  %i.ucb = zext i32 %.0.copyload.i54014 to i64
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.tae, i64 noundef %i.ucb)
  %.val51250 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ucc = getelementptr inbounds nuw i8, ptr %.val51250, i64 %i.uaa
  %i.ucd = getelementptr inbounds nuw i8, ptr %i.ucc, i64 28
  %.0.copyload.i54015 = load i32, ptr %i.ucd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54015) #7, !srcloc !37
  %i.uce = zext i32 %.0.copyload.i54015 to i64
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.tae, i64 noundef %i.uce)
  br i1 %i.ubr, label %bb.but, label %bb.buu

bb.but:                                           ; preds = %bb.bus
  %i.ucf = sub i32 %.0.copyload.i54009, %.0.copyload.i54008
  %i.ucg = sext i32 %i.ucf to i64
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.tae, i64 noundef %i.ucg)
  br label %bb.buu

bb.buu:                                           ; preds = %bb.but, %bb.bus
  %i.uch = add i32 %.157, 32                      ; 2 uses
  %.not46654 = icmp eq i32 %i.uch, %i.tzz
  br i1 %.not46654, label %bb.buv, label %bb.buo

bb.buv:                                           ; preds = %bb.buu
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.tae, i64 noundef -1)
  br label %bb.buw

bb.buw:                                           ; preds = %.loopexit54225, %bb.buv
  %.4543174 = phi i32 [ %i.tyo, %bb.buv ], [ -1, %.loopexit54225 ] ; 2 uses
  %.val46936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uci = getelementptr inbounds nuw i8, ptr %.val46936, i64 %i.rlo
  %.0.copyload.i54016 = load i32, ptr %i.uci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54016) #7, !srcloc !19
  %i.ucj = zext i32 %.0.copyload.i54016 to i64    ; 2 uses
  %.val46935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uck = getelementptr inbounds nuw i8, ptr %.val46935, i64 %i.ucj
  %i.ucl = getelementptr inbounds nuw i8, ptr %i.uck, i64 36
  %.0.copyload.i54017 = load i32, ptr %i.ucl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54017) #7, !srcloc !19
  %i.ucm = zext i32 %.0.copyload.i54017 to i64
  %.val46934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ucn = getelementptr inbounds nuw i8, ptr %.val46934, i64 %i.ucm
  %i.uco = getelementptr inbounds nuw i8, ptr %i.ucn, i64 28
  %.0.copyload.i54018 = load i32, ptr %i.uco, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54018) #7, !srcloc !19
  %i.ucp = add i32 %.0.copyload.i54018, 36
  %.val46933 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ucq = getelementptr inbounds nuw i8, ptr %.val46933, i64 %i.ucj
  %i.ucr = getelementptr inbounds nuw i8, ptr %i.ucq, i64 44
  %.0.copyload.i54019 = load i32, ptr %i.ucr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54019) #7, !srcloc !19
  %i.ucs = tail call i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeModuleGenerator0x3A0x3AserializeScopeChain0x28hermes0x3A0x3AStringTable0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3ADebugInfoGenerator0x260x2C0x20hermes0x3A0x3AScopeDesc0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.efn, i32 noundef %i.ucp, i32 noundef %i.sii, i32 noundef %.0.copyload.i54019) ; 2 uses
  %.val46932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uct = getelementptr inbounds nuw i8, ptr %.val46932, i64 %i.tcs
  %i.ucu = getelementptr inbounds nuw i8, ptr %i.uct, i64 80
  %.0.copyload.i54020 = load i32, ptr %i.ucu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54020) #7, !srcloc !19
  %.val49333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ucv = getelementptr inbounds nuw i8, ptr %.val49333, i64 %i.tah
  store i32 %.0.copyload.i54020, ptr %i.ucv, align 1
  %.val46931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ucw = getelementptr inbounds nuw i8, ptr %.val46931, i64 %i.tcs
  %i.ucx = getelementptr inbounds nuw i8, ptr %i.ucw, i64 84
  %.0.copyload.i54021 = load i32, ptr %i.ucx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54021) #7, !srcloc !19
  %i.ucy = sub i32 %.0.copyload.i54021, %.0.copyload.i54020
  %i.ucz = ashr i32 %i.ucy, 3
  %.val49332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uda = getelementptr inbounds nuw i8, ptr %.val49332, i64 %i.rea
  %i.udb = getelementptr inbounds nuw i8, ptr %i.uda, i64 128
  store i32 %i.ucz, ptr %i.udb, align 1
  %.val50541 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udc = getelementptr inbounds nuw i8, ptr %.val50541, i64 %i.tah
  %.0.copyload.i54022 = load i64, ptr %i.udc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i54022) #7, !srcloc !20
  %.val50687 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udd = getelementptr inbounds nuw i8, ptr %.val50687, i64 %i.tai
  store i64 %.0.copyload.i54022, ptr %i.udd, align 1
  %.val46930 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ude = getelementptr inbounds nuw i8, ptr %.val46930, i64 %i.rea
  %i.udf = getelementptr inbounds nuw i8, ptr %i.ude, i64 12
  %.0.copyload.i54023 = load i32, ptr %i.udf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54023) #7, !srcloc !19
  %.not46655 = icmp eq i32 %.0.copyload.i54023, 0
  br i1 %.not46655, label %.loopexit54224, label %bb.bux

bb.bux:                                           ; preds = %bb.buw
  %.val46929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udg = getelementptr inbounds nuw i8, ptr %.val46929, i64 %i.syp
  %.0.copyload.i54024 = load i32, ptr %i.udg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54024) #7, !srcloc !19
  %.val46928 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udh = getelementptr inbounds nuw i8, ptr %.val46928, i64 %i.sij
  %i.udi = getelementptr inbounds nuw i8, ptr %i.udh, i64 80
  %.0.copyload.i54025 = load i32, ptr %i.udi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54025) #7, !srcloc !19
  %i.udj = zext i32 %.0.copyload.i54023 to i64
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.sza, i64 noundef %i.udj)
  %6 = sub i32 %.0.copyload.i54024, %.0.copyload.i54025
  %.val46927 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udk = getelementptr inbounds nuw i8, ptr %.val46927, i64 %i.tai
  %.0.copyload.i54026 = load i32, ptr %i.udk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54026) #7, !srcloc !19
  %i.udl = shl i32 %.0.copyload.i54023, 3
  %i.udm = add i32 %.0.copyload.i54026, %i.udl
  br label %bb.buy

bb.buy:                                           ; preds = %bb.buy, %bb.bux
  %.158 = phi i32 [ %.0.copyload.i54026, %bb.bux ], [ %i.uds, %bb.buy ] ; 2 uses
  %i.udn = zext i32 %.158 to i64                  ; 2 uses
  %.val51249 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udo = getelementptr inbounds nuw i8, ptr %.val51249, i64 %i.udn
  %.0.copyload.i54027 = load i32, ptr %i.udo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54027) #7, !srcloc !37
  %i.udp = zext i32 %.0.copyload.i54027 to i64
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.sza, i64 noundef %i.udp)
  %.val46926 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udq = getelementptr inbounds nuw i8, ptr %.val46926, i64 %i.udn
  %i.udr = getelementptr inbounds nuw i8, ptr %i.udq, i64 4
  %.0.copyload.i54028 = load i32, ptr %i.udr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54028) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ADebugInfoGenerator0x3A0x3AappendString0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20hermes0x3A0x3AIdentifier0x29(ptr noundef nonnull %0, i32 noundef %i.sii, i32 noundef %i.sza, i32 noundef %.0.copyload.i54028)
  %i.uds = add i32 %.158, 8                       ; 2 uses
  %.not46656 = icmp eq i32 %i.uds, %i.udm
  br i1 %.not46656, label %.loopexit54224, label %bb.buy

.loopexit54224:                                   ; preds = %bb.buy, %bb.buw
  %.4643175 = phi i32 [ 0, %bb.buw ], [ %6, %bb.buy ]
  %.val46925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udt = getelementptr inbounds nuw i8, ptr %.val46925, i64 %i.rla
  %.0.copyload.i54029 = load i32, ptr %i.udt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54029) #7, !srcloc !19
  %i.udu = zext i32 %.0.copyload.i54029 to i64    ; 4 uses
  %.val49331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udv = getelementptr inbounds nuw i8, ptr %.val49331, i64 %i.udu
  %i.udw = getelementptr inbounds nuw i8, ptr %i.udv, i64 44
  store i32 %.4543174, ptr %i.udw, align 1
  %.val49330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udx = getelementptr inbounds nuw i8, ptr %.val49330, i64 %i.udu
  %i.udy = getelementptr inbounds nuw i8, ptr %i.udx, i64 52
  store i32 %.4643175, ptr %i.udy, align 1
  %.val49329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.udz = getelementptr inbounds nuw i8, ptr %.val49329, i64 %i.udu
  %i.uea = getelementptr inbounds nuw i8, ptr %i.udz, i64 48
  store i32 %i.ucs, ptr %i.uea, align 1
  %i.ueb = add nuw nsw i64 %i.udu, 42             ; 2 uses
  %.val51097 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uec = getelementptr inbounds nuw i8, ptr %.val51097, i64 %i.ueb
  %.0.copyload.i54030 = load i8, ptr %i.uec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i54030) #7, !srcloc !21
  %i.ued = and i8 %.0.copyload.i54030, -17
  %i.uee = and i32 %i.ucs, %.4543174
  %.not46657 = icmp eq i32 %i.uee, -1
  %i.uef = select i1 %.not46657, i8 0, i8 16
  %i.ueg = or disjoint i8 %i.ued, %i.uef
  %.val50614 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ueh = getelementptr inbounds nuw i8, ptr %.val50614, i64 %i.ueb
  store i8 %i.ueg, ptr %i.ueh, align 1
  br label %bb.buz

bb.buz:                                           ; preds = %.loopexit54224, %bb.btd
  %.1943412 = phi i32 [ %.0.copyload.i54029, %.loopexit54224 ], [ %.0.copyload.i53945, %bb.btd ]
  %.val49328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uei = getelementptr inbounds nuw i8, ptr %.val49328, i64 %i.rla
  store i32 0, ptr %i.uei, align 1
  %i.uej = load i32, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.uek = add i32 %i.uej, -16                    ; 2 uses
  store i32 %i.uek, ptr %i.a, align 8, !tbaa !17
  %.val46924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uel = getelementptr inbounds nuw i8, ptr %.val46924, i64 %i.rwg
  %.0.copyload.i54031 = load i32, ptr %i.uel, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54031) #7, !srcloc !19
  %i.uem = zext i32 %i.uek to i64
  %i.uen = add nuw nsw i64 %i.uem, 12             ; 3 uses
  %.val49327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ueo = getelementptr inbounds nuw i8, ptr %.val49327, i64 %i.uen
  store i32 0, ptr %i.ueo, align 1
  %i.uep = add i32 %.0.copyload.i54031, %i.tal
  %i.ueq = zext i32 %i.uep to i64                 ; 2 uses
  %.val46923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uer = getelementptr inbounds nuw i8, ptr %.val46923, i64 %i.ueq
  %.0.copyload.i54032 = load i32, ptr %i.uer, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54032) #7, !srcloc !19
  %.val49326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ues = getelementptr inbounds nuw i8, ptr %.val49326, i64 %i.ueq
  store i32 %.1943412, ptr %i.ues, align 1
  %.not46658 = icmp eq i32 %.0.copyload.i54032, 0
  br i1 %.not46658, label %bb.bvb, label %bb.bva

bb.bva:                                           ; preds = %bb.buz
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunction0x3E0x3A0x3Aoperator0x280x290x5Babi0x3Av150070x5D0x28hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunction0x2A0x290x20const(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54032) #7
  br label %bb.bvb

bb.bvb:                                           ; preds = %bb.bva, %bb.buz
  %.val46922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uet = getelementptr inbounds nuw i8, ptr %.val46922, i64 %i.uen
  %.0.copyload.i54033 = load i32, ptr %i.uet, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54033) #7, !srcloc !19
  %.val49325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ueu = getelementptr inbounds nuw i8, ptr %.val49325, i64 %i.uen
  store i32 0, ptr %i.ueu, align 1
  %.not46659 = icmp eq i32 %.0.copyload.i54033, 0
  br i1 %.not46659, label %bb.bvd, label %bb.bvc

bb.bvc:                                           ; preds = %bb.bvb
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunction0x3E0x3A0x3Aoperator0x280x290x5Babi0x3Av150070x5D0x28hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunction0x2A0x290x20const(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54033) #7
  br label %bb.bvd

bb.bvd:                                           ; preds = %bb.bvc, %bb.bvb
  store i32 %i.uej, ptr %i.a, align 8, !tbaa !17
  %.val46921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uev = getelementptr inbounds nuw i8, ptr %.val46921, i64 %i.rla
  %.0.copyload.i54034 = load i32, ptr %i.uev, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54034) #7, !srcloc !19
  %.val49324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uew = getelementptr inbounds nuw i8, ptr %.val49324, i64 %i.rla
  store i32 0, ptr %i.uew, align 1
  %.not46660 = icmp eq i32 %.0.copyload.i54034, 0
  br i1 %.not46660, label %bb.bvf, label %bb.bve

bb.bve:                                           ; preds = %bb.bvd
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunction0x3E0x3A0x3Aoperator0x280x290x5Babi0x3Av150070x5D0x28hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunction0x2A0x290x20const(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54034) #7
  br label %bb.bvf

bb.bvf:                                           ; preds = %bb.bve, %bb.bvd
  %indvars.iv.next55753 = add nuw nsw i64 %indvars.iv55752, 1 ; 2 uses
  %.not46661 = icmp eq i64 %indvars.iv.next55753, %i.taj
  br i1 %.not46661, label %.loopexit54241, label %bb.brj

.loopexit54241:                                   ; preds = %bb.bvf, %..loopexit54241_crit_edge
  %.pre-phi55868 = phi i64 [ %.pre55867, %..loopexit54241_crit_edge ], [ %i.taf, %bb.bvf ] ; 2 uses
  %i.uex = add i32 %i.qzu, -308
  %i.uey = load i32, ptr %i.a, align 8, !tbaa !17 ; 3 uses
  %i.uez = add i32 %i.uey, -16                    ; 2 uses
  store i32 %i.uez, ptr %i.a, align 8, !tbaa !17
  %.val50613 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufa = getelementptr inbounds nuw i8, ptr %.val50613, i64 %i.sij
  store i8 0, ptr %i.ufa, align 1
  %.val46920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufb = getelementptr inbounds nuw i8, ptr %.val46920, i64 %i.sik
  %.0.copyload.i54035 = load i32, ptr %i.ufb, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54035) #7, !srcloc !19
  %i.ufc = zext i32 %i.uez to i64                 ; 3 uses
  %i.ufd = add nuw nsw i64 %i.ufc, 4              ; 7 uses
  %.val49323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufe = getelementptr inbounds nuw i8, ptr %.val49323, i64 %i.ufd
  store i32 %.0.copyload.i54035, ptr %i.ufe, align 1
  %.val46919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uff = getelementptr inbounds nuw i8, ptr %.val46919, i64 %.pre-phi55868
  %.0.copyload.i54036 = load i32, ptr %i.uff, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54036) #7, !srcloc !19
  %i.ufg = add nuw nsw i64 %i.ufc, 8              ; 6 uses
  %.val49322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufh = getelementptr inbounds nuw i8, ptr %.val49322, i64 %i.ufg
  store i32 %.0.copyload.i54036, ptr %i.ufh, align 1
  %.val46918 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufi = getelementptr inbounds nuw i8, ptr %.val46918, i64 %i.sin
  %.0.copyload.i54037 = load i32, ptr %i.ufi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54037) #7, !srcloc !19
  %i.ufj = add nuw nsw i64 %i.ufc, 12             ; 4 uses
  %.val49321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufk = getelementptr inbounds nuw i8, ptr %.val49321, i64 %i.ufj
  store i32 %.0.copyload.i54037, ptr %i.ufk, align 1
  %.val49320 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufl = getelementptr inbounds nuw i8, ptr %.val49320, i64 %i.sin
  store i32 0, ptr %i.ufl, align 1
  %.val50686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufm = getelementptr inbounds nuw i8, ptr %.val50686, i64 %i.sik
  store i64 0, ptr %i.ufm, align 1
  %.val46917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufn = getelementptr inbounds nuw i8, ptr %.val46917, i64 %i.syp
  %.0.copyload.i54038 = load i32, ptr %i.ufn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54038) #7, !srcloc !19
  %i.ufo = sub i32 %.0.copyload.i54036, %.0.copyload.i54035 ; 3 uses
  %i.ufp = add nuw nsw i64 %i.sij, 72             ; 3 uses
  %.val46916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufq = getelementptr inbounds nuw i8, ptr %.val46916, i64 %i.ufp
  %.0.copyload.i54039 = load i32, ptr %i.ufq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54039) #7, !srcloc !19
  %.val46915 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufr = getelementptr inbounds nuw i8, ptr %.val46915, i64 %i.syg
  %.0.copyload.i54040 = load i32, ptr %i.ufr, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54040) #7, !srcloc !19
  %i.ufs = add nuw nsw i64 %i.sij, 80             ; 3 uses
  %.val46914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uft = getelementptr inbounds nuw i8, ptr %.val46914, i64 %i.ufs
  %.0.copyload.i54041 = load i32, ptr %i.uft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54041) #7, !srcloc !19
  %i.ufu = add nuw nsw i64 %i.sij, 96             ; 3 uses
  %.val46913 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufv = getelementptr inbounds nuw i8, ptr %.val46913, i64 %i.ufu
  %.0.copyload.i54042 = load i32, ptr %i.ufv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54042) #7, !srcloc !19
  %.val46912 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ufw = getelementptr inbounds nuw i8, ptr %.val46912, i64 %i.syr
  %.0.copyload.i54043 = load i32, ptr %i.ufw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54043) #7, !srcloc !19
  %i.ufx = sub i32 %.0.copyload.i54042, %.0.copyload.i54043
  %.neg54219 = add i32 %.0.copyload.i54038, %i.ufo
  %i.ufy = add i32 %.neg54219, %.0.copyload.i54039
  %i.ufz = add i32 %.0.copyload.i54040, %.0.copyload.i54041
  %i.uga = sub i32 %i.ufy, %i.ufz
  %i.ugb = add i32 %i.uga, %i.ufx                 ; 4 uses
  %i.ugc = sub i32 %.0.copyload.i54037, %.0.copyload.i54035
  %.not46662 = icmp ugt i32 %i.ugb, %i.ugc
  br i1 %.not46662, label %bb.bvg, label %bb.bvj

bb.bvg:                                           ; preds = %.loopexit54241
  %i.ugd = icmp slt i32 %i.ugb, 0
  br i1 %i.ugd, label %.loopexit54247, label %bb.bvh

bb.bvh:                                           ; preds = %bb.bvg
  %i.uge = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ugb) #7 ; 3 uses
  %i.ugf = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.uge, i32 noundef %.0.copyload.i54035, i32 noundef %i.ufo) #7 ; 3 uses
  %i.ugg = add i32 %i.ugf, %i.ugb
  %.val49319 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ugh = getelementptr inbounds nuw i8, ptr %.val49319, i64 %i.ufj
  store i32 %i.ugg, ptr %i.ugh, align 1
  %i.ugi = add i32 %i.ugf, %i.ufo                 ; 3 uses
  %.val49318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ugj = getelementptr inbounds nuw i8, ptr %.val49318, i64 %i.ufg
  store i32 %i.ugi, ptr %i.ugj, align 1
  %.val49317 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ugk = getelementptr inbounds nuw i8, ptr %.val49317, i64 %i.ufd
  store i32 %i.ugf, ptr %i.ugk, align 1
  %.not46663 = icmp eq i32 %.0.copyload.i54035, 0
  br i1 %.not46663, label %bb.bvj, label %bb.bvi

end_hunk_0
