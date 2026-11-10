Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt7factorsNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils:bb.a
  br i1 %i.atd, label %bb.kn, label %bb.kk

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1J_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintE0ECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit103.i, %bb.kk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.04.0.i.lcssa = phi i64 [ %.sroa.04.0.i1597, %bb.kk ], [ %i.agy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.0.0.i102.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit103.i ]
  %.lcssa1245 = phi ptr [ %i.ata, %bb.kk ], [ %i.ahd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.aux, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit103.i ]
  %.lcssa1244 = phi i64 [ %i.asz, %bb.kk ], [ %i.ahe, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.auy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit103.i ] ; 3 uses
  %i.ate = load i64, ptr %i.dd, align 8, !range !19, !alias.scope !30947, !noalias !30794, !noundef !12
  %i.atf = icmp eq i64 %.lcssa1244, %i.ate
  br i1 %i.atf, label %bb.km, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i

bb.km:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1J_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintE0ECsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCsioiJd4mgmsb_10num_bigint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd) #53, !noalias !30793
  %.pre.i184 = load ptr, ptr %i.xn, align 8, !alias.scope !30947, !noalias !30794
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.km, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1J_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintE0ECsl8pJiQOn4hA_9coreutils.exit.i
  %i.atg = phi ptr [ %.lcssa1245, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1J_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintE0ECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.pre.i184, %bb.km ]
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.atg, i64 %.lcssa1244
  store i64 %.sroa.04.0.i.lcssa, ptr %i.ath, align 8, !noalias !30793
  %i.ati = add i64 %.lcssa1244, 1                 ; 2 uses
  store i64 %i.ati, ptr %i.xo, align 8, !alias.scope !30947, !noalias !30794
  %exitcond.not.i = icmp eq i64 %i.agv, %.sroa.011.031.i
  br i1 %exitcond.not.i, label %.loopexit105, label %.preheader.i

bb.kn:                                            ; preds = %bb.kl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !30794
  %i.atj = call noundef nonnull ptr @_RNvNtNtCsdl98cSg4WCA_4rand4rngs6thread10thread_rng() #45, !noalias !30793 ; 10 uses
  store ptr %i.atj, ptr %i.db, align 8, !noalias !30794
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 16 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30948)
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atj, i64 272 ; 4 uses
  %i.atm = load i64, ptr %i.atl, align 16, !alias.scope !30948, !noalias !30793, !noundef !12 ; 4 uses
  %i.atn = icmp ult i64 %i.atm, 63
  br i1 %i.atn, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %.not.i101.i = icmp eq i64 %i.atm, 63
  br i1 %.not.i101.i, label %bb.kq, label %bb.ku

bb.kp:                                            ; preds = %bb.kn
  %i.ato = add nuw nsw i64 %i.atm, 2
  store i64 %i.ato, ptr %i.atl, align 16, !alias.scope !30948, !noalias !30793
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.atm
  %i.atq = load i64, ptr %i.atp, align 4, !alias.scope !30949, !noalias !30793
  br label %_RNvXs0_NtCsVgHEwO1QU_9rand_core5blockINtB5_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u64Csl8pJiQOn4hA_9coreutils.exit.i

bb.kq:                                            ; preds = %bb.ko
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atj, i64 268
  %i.ats = load i32, ptr %i.atr, align 4, !alias.scope !30948, !noalias !30793, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !30950)
  %i.att = getelementptr inbounds nuw i8, ptr %i.atj, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30951)
  %i.atu = call noundef i64 @_RNvNtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding4fork16get_fork_counter() #45, !noalias !30952 ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atj, i64 344 ; 2 uses
  %i.atw = load i64, ptr %i.atv, align 8, !alias.scope !30953, !noalias !30793, !noundef !12 ; 2 uses
  %i.atx = icmp slt i64 %i.atw, 1
  br i1 %i.atx, label %bb.kt, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atj, i64 352
  %i.atz = load i64, ptr %i.aty, align 16, !alias.scope !30953, !noalias !30793, !noundef !12
  %i.aua = sub i64 %i.atz, %i.atu
  %i.aub = icmp slt i64 %i.aua, 0
  br i1 %i.aub, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.auc = add nsw i64 %i.atw, -256
  store i64 %i.auc, ptr %i.atv, align 8, !alias.scope !30953, !noalias !30793
  call void @_RNvNtCs8NXtb4L6RsM_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.att, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(352) %i.atk) #45, !noalias !30793
  br label %_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.kt:                                            ; preds = %bb.kr, %bb.kq
  call void @_RNvMs3_NtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseedingINtB5_13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtCsVgHEwO1QU_9rand_core2os5OsRngE19reseed_and_generateBb_(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.att, ptr noalias nofree noundef nonnull align 16 dereferenceable(352) %i.atk, i64 noundef %i.atu) #53, !noalias !30793
  br label %_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.kt, %bb.ks
  store i64 1, ptr %i.atl, align 16, !alias.scope !30954, !noalias !30793
  %i.aud = zext i32 %i.ats to i64
  %i.aue = load i32, ptr %i.atk, align 16, !alias.scope !30948, !noalias !30793, !noundef !12
  %i.auf = zext i32 %i.aue to i64
  %i.aug = shl nuw i64 %i.auf, 32
  %i.auh = or disjoint i64 %i.aug, %i.aud
  br label %_RNvXs0_NtCsVgHEwO1QU_9rand_core5blockINtB5_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u64Csl8pJiQOn4hA_9coreutils.exit.i

bb.ku:                                            ; preds = %bb.ko
  call void @llvm.experimental.noalias.scope.decl(metadata !30955)
  %i.aui = getelementptr inbounds nuw i8, ptr %i.atj, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30956)
  %i.auj = call noundef i64 @_RNvNtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding4fork16get_fork_counter() #45, !noalias !30957 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %i.atj, i64 344 ; 2 uses
  %i.aul = load i64, ptr %i.auk, align 8, !alias.scope !30958, !noalias !30793, !noundef !12 ; 2 uses
  %i.aum = icmp slt i64 %i.aul, 1
  br i1 %i.aum, label %bb.kx, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.aun = getelementptr inbounds nuw i8, ptr %i.atj, i64 352
  %i.auo = load i64, ptr %i.aun, align 16, !alias.scope !30958, !noalias !30793, !noundef !12
  %i.aup = sub i64 %i.auo, %i.auj
  %i.auq = icmp slt i64 %i.aup, 0
  br i1 %i.auq, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.aur = add nsw i64 %i.aul, -256
  store i64 %i.aur, ptr %i.auk, align 8, !alias.scope !30958, !noalias !30793
  call void @_RNvNtCs8NXtb4L6RsM_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.aui, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(352) %i.atk) #45, !noalias !30793
  br label %_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit8.i.i

bb.kx:                                            ; preds = %bb.kv, %bb.ku
  call void @_RNvMs3_NtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseedingINtB5_13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtCsVgHEwO1QU_9rand_core2os5OsRngE19reseed_and_generateBb_(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.aui, ptr noalias nofree noundef nonnull align 16 dereferenceable(352) %i.atk, i64 noundef %i.auj) #53, !noalias !30793
  br label %_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit8.i.i

_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit8.i.i: ; preds = %bb.kx, %bb.kw
  store i64 2, ptr %i.atl, align 16, !alias.scope !30959, !noalias !30793
  %i.aus = load i64, ptr %i.atk, align 16, !alias.scope !30960, !noalias !30793
  br label %_RNvXs0_NtCsVgHEwO1QU_9rand_core5blockINtB5_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u64Csl8pJiQOn4hA_9coreutils.exit.i

_RNvXs0_NtCsVgHEwO1QU_9rand_core5blockINtB5_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u64Csl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit8.i.i, %_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.kp
  %.sroa.0.0.i102.i = phi i64 [ %i.atq, %bb.kp ], [ %i.aus, %_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit8.i.i ], [ %i.auh, %_RNvMs_NtCsVgHEwO1QU_9rand_core5blockINtB4_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30961)
  call void @llvm.experimental.noalias.scope.decl(metadata !30962)
  call void @llvm.experimental.noalias.scope.decl(metadata !30963)
  %i.aut = load ptr, ptr %i.db, align 8, !alias.scope !30964, !noalias !30794, !nonnull !12, !noundef !12 ; 2 uses
  %i.auu = load i64, ptr %i.aut, align 8, !noalias !30965, !noundef !12
  %i.auv = add i64 %i.auu, -1                     ; 2 uses
  store i64 %i.auv, ptr %i.aut, align 8, !noalias !30965
  %i.auw = icmp eq i64 %i.auv, 0
  br i1 %i.auw, label %bb.ky, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit103.i

bb.ky:                                            ; preds = %_RNvXs0_NtCsVgHEwO1QU_9rand_core5blockINtB5_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u64Csl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvMs6_NtCs7tKScEop1B6_5alloc2rcINtB5_2RcINtNtCs6JMX4GRUq9U_4core4cell10UnsafeCellINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding12ReseedingRngNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtCsVgHEwO1QU_9rand_core2os5OsRngEEE9drop_slowB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.db) #53, !noalias !30793
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit103.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdl98cSg4WCA_4rand4rngs6thread9ThreadRngECsl8pJiQOn4hA_9coreutils.exit103.i: ; preds = %bb.ky, %_RNvXs0_NtCsVgHEwO1QU_9rand_core5blockINtB5_8BlockRngINtNtNtNtCsdl98cSg4WCA_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs8NXtb4L6RsM_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u64Csl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !30794
  %i.aux = load ptr, ptr %i.xn, align 8, !noalias !30794, !nonnull !12, !noundef !12 ; 3 uses
  %i.auy = load i64, ptr %i.xo, align 8, !noalias !30794, !noundef !12 ; 4 uses
  %.idx1621 = shl nuw nsw i64 %i.auy, 3
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aux, i64 %.idx1621
  %.not.not.not.i.not.i1586 = icmp eq i64 %i.auy, 0
  br i1 %.not.not.not.i.not.i1586, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1J_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintE0ECsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph1588

.thread43.i:                                      ; preds = %_RNvXsh_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtCsguEJxRNro1M_11num_integer7Integer7is_even.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !30794
  store i64 2, ptr %.sroa.6.0..sroa_idx38.i, align 8, !noalias !30794
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i172

bb.kz:                                            ; preds = %_RNvXsh_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtCsguEJxRNro1M_11num_integer7Integer7is_even.exit.thread12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !30794
  store i64 2, ptr %.sroa.6.0..sroa_idx38.i, align 8, !noalias !30794
  %i.ava = icmp eq i64 %i.aav, 1
  br i1 %i.ava, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i172, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread.sink.split.i: ; preds = %bb.dp, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !30794
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread.sink.split.i, %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !30794
  br label %_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i172: ; preds = %bb.kz, %.thread43.i
  %.sroa.01.0.i52.i = phi ptr [ %i.xl, %.thread43.i ], [ %i.aaz, %bb.kz ]
  %i.avb = load i64, ptr %.sroa.01.0.i52.i, align 1
  %i.avc = load i64, ptr %.sroa.6.0..sroa_idx38.i, align 1
  %i.avd = icmp ne i64 %i.avb, %i.avc
  %i.ave = zext i1 %i.avd to i32
  %bcmp.i.fr.i = freeze i32 %i.ave
  %.not1241 = icmp eq i32 %bcmp.i.fr.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !30794
  br i1 %.not1241, label %bb.ow, label %_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread

_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvXsh_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtCsguEJxRNro1M_11num_integer7Integer7is_even.exit.i, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  %.sroa.01.0.lcssa.i16.i = phi i64 [ %i.aba, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i ], [ %i.aax, %_RNvXsh_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtCsguEJxRNro1M_11num_integer7Integer7is_even.exit.i ]
  %i.avf = call noundef zeroext i1 @_RNvNtCs6BhVcHPqRq6_9num_prime8nt_funcs10is_prime64(i64 noundef %.sroa.01.0.lcssa.i16.i) #45, !noalias !30793
  br i1 %i.avf, label %bb.ow, label %_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.dl, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

bb.la:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i251, %bb.lj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !30966
  %i.avg = load i64, ptr %i.ef, align 8, !range !13, !alias.scope !30967, !noundef !12
  %.not.i.i186 = icmp eq i64 %i.avg, -1           ; 3 uses
  br i1 %.not.i.i186, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.avh = load i64, ptr %i.xk, align 8, !range !16, !alias.scope !30967, !noundef !12
  %i.avi = trunc nuw i64 %i.avh to i1
  br i1 %i.avi, label %.lr.ph.preheader.i.i, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i187

bb.lc:                                            ; preds = %bb.la
  %i.avj = load i64, ptr %i.xl, align 8, !alias.scope !30967, !noundef !12 ; 2 uses
  %i.avk = shl nuw nsw i64 %i.avj, 3
  %i.avl = icmp eq i64 %i.avj, 0
  br i1 %i.avl, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i187, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.lc, %bb.lb
  %.sroa.5.023.i.i = phi i64 [ %i.avk, %bb.lc ], [ 8, %bb.lb ]
  %i.avm = icmp ne i64 %.sroa.5.023.i.i, 8
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i187

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i187: ; preds = %.lr.ph.preheader.i.i, %bb.lc, %bb.lb
  %.lcssa.i.i = phi i1 [ false, %bb.lc ], [ %i.avm, %.lr.ph.preheader.i.i ], [ false, %bb.lb ]
  %.not6124.i = icmp eq i64 %.sroa.16.0441, 0
  br i1 %.not6124.i, label %_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt7divisorNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i187
  %i.avn = load ptr, ptr %i.xk, align 8, !alias.scope !30968 ; 2 uses
  %i.avo = load i64, ptr %i.xl, align 8, !alias.scope !30968
  %.cast.i.i190 = ptrtoint ptr %i.avn to i64      ; 2 uses
  %i.avp = trunc nuw i64 %.cast.i.i190 to i1
  %.sroa.56.0.i.i.i.i = select i1 %.not.i.i186, i64 %.cast.i.i190, i64 %i.avo ; 2 uses
  %spec.select289.i.i = select i1 %i.avp, ptr %i.xl, ptr inttoptr (i64 8 to ptr)
  %.sroa.04.0.i.i.i.i = select i1 %.not.i.i186, ptr %spec.select289.i.i, ptr %i.avn
  %i.avq = shl nuw i64 %.sroa.56.0.i.i.i.i, 3
  br label %bb.lp

_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i172, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIteryEECsl8pJiQOn4hA_9coreutils.exit.i, %_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !30968)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !30966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !30966
  call void @_RNvXsi_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCsguEJxRNro1M_11num_integer5roots5Roots4sqrt(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #45, !noalias !30969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !30966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) @1418, i64 24, i1 false), !noalias !30966
  call void @llvm.experimental.noalias.scope.decl(metadata !30970)
  %i.avr = load i64, ptr %i.ag, align 8, !range !13, !alias.scope !30970, !noalias !30966, !noundef !12
  %.not3.i228.i = icmp eq i64 %i.avr, 0
  br i1 %.not3.i228.i, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) @1418, i64 24, i1 false), !noalias !30966
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddRBN_E3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #45, !noalias !30972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30971
  br label %bb.lf

bb.le:                                            ; preds = %_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !30973
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddRBN_E3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af) #45, !noalias !30974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30971
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !30966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !30966
  call void @llvm.experimental.noalias.scope.decl(metadata !30975)
  call void @llvm.experimental.noalias.scope.decl(metadata !30976)
  %i.avs = load i64, ptr %i.ah, align 8, !range !13, !alias.scope !30977, !noalias !30966, !noundef !12 ; 5 uses
  %.not.i.i.i240 = icmp eq i64 %i.avs, -1         ; 3 uses
  %i.avt = load i64, ptr %i.za, align 8, !alias.scope !30977, !noalias !30966 ; 2 uses
  br i1 %.not.i.i.i240, label %bb.li, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.avu = load ptr, ptr %i.yz, align 8, !alias.scope !30977, !noalias !30966, !nonnull !12, !noundef !12 ; 2 uses
  %switch = icmp ult i64 %i.avt, 2
  br i1 %switch, label %.thread35.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30978
  br label %.thread35.i

bb.li:                                            ; preds = %bb.lf
  %i.avv = load i64, ptr %i.yz, align 8, !range !16, !alias.scope !30977, !noalias !30966, !noundef !12
  %i.avw = inttoptr i64 %i.avv to ptr
  br label %.thread35.i

.thread35.i:                                      ; preds = %bb.lh, %bb.li, %bb.lg
  %.val22235.i = phi ptr [ %i.avu, %bb.lh ], [ %i.avw, %bb.li ], [ %i.avu, %bb.lg ] ; 4 uses
  br i1 %i.ix, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i251, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i: ; preds = %.thread35.i
  %.cast.i243 = ptrtoint ptr %.val22235.i to i64  ; 2 uses
  %i.avx = trunc nuw i64 %.cast.i243 to i1
  %i.avy = load i64, ptr %i.ef, align 8, !range !13, !alias.scope !30968
  %.not3.i64.i = icmp eq i64 %i.avy, -1
  %i.avz = load i64, ptr %i.xl, align 8, !alias.scope !30968 ; 2 uses
  %i.awa = icmp ult i64 %i.avz, 1152921504606846976
  %i.awb = icmp eq i64 %i.avz, 0
  %i.awc = load i64, ptr %i.xk, align 8, !alias.scope !30968
  %i.awd = trunc nuw i64 %i.awc to i1
  %.sroa.42.0.i.i.i.i246 = select i1 %.not.i.i.i240, i64 %.cast.i243, i64 %i.avt ; 5 uses
  %spec.select126.i = select i1 %i.avx, ptr %i.za, ptr inttoptr (i64 8 to ptr)
  %.sroa.01.0.i.i.i.i247 = select i1 %.not.i.i.i240, ptr %spec.select126.i, ptr %.val22235.i
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i.i.i247, i64 %.sroa.42.0.i.i.i.i246
  %i.awf = icmp eq i64 %.sroa.42.0.i.i.i.i246, 0
  %.idx1623 = shl nuw nsw i64 %.sroa.42.0.i.i.i.i246, 3
  br label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit70.i250, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i
  %.sroa.02.0123.i = phi ptr [ %.8.val, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i ], [ %i.awg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit70.i250 ] ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %.sroa.02.0123.i, i64 8 ; 2 uses
  %i.awh = load i64, ptr %.sroa.02.0123.i, align 8, !noalias !30966, !noundef !12 ; 4 uses
  %i.awi = icmp ne i64 %i.awh, 0                  ; 3 uses
  %..i39.i = zext i1 %i.awi to i64                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !30966
  store i64 -1, ptr %i.ae, align 8, !noalias !30966
  store i64 %..i39.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !30966
  store i64 %i.awh, ptr %.sroa.4.0..sroa_idx.i242, align 8, !noalias !30966
  %spec.select47.i = select i1 %i.awi, ptr %.sroa.4.0..sroa_idx.i242, ptr inttoptr (i64 8 to ptr) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30979)
  call void @llvm.experimental.noalias.scope.decl(metadata !30980)
  %i.awj = icmp eq i64 %.sroa.42.0.i.i.i.i246, %..i39.i
  br i1 %i.awj, label %bb.lk, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.i248

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i251: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit70.i250, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit67.i, %.thread35.i
  %i.awk = icmp sgt i64 %i.avs, 0
  br i1 %i.awk, label %bb.lj, label %bb.la

bb.lj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i251
  %i.awl = shl nuw i64 %i.avs, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22235.i, i64 noundef %i.awl, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30969
  br label %bb.la

bb.lk:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i
  br i1 %i.awf, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.thread.i249, label %.lr.ph1605

.lr.ph1605:                                       ; preds = %bb.lk
  %i.awm = getelementptr inbounds nuw i8, ptr %spec.select47.i, i64 %.idx1623
  br label %bb.ll

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i276: ; preds = %bb.ll
  %i.awn = icmp eq ptr %spec.select47.i, %i.awp
  br i1 %i.awn, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.thread.i249, label %bb.ll

bb.ll:                                            ; preds = %.lr.ph1605, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i276
  %i.awo = phi ptr [ %i.awm, %.lr.ph1605 ], [ %i.awp, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i276 ]
  %.sroa.3.08.i.i.i.i.i.i.i2771603 = phi ptr [ %i.awe, %.lr.ph1605 ], [ %i.awq, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i276 ]
  %i.awp = getelementptr inbounds i8, ptr %i.awo, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i.i278 = load i64, ptr %i.awp, align 8, !alias.scope !30979, !noalias !30981 ; 2 uses
  %i.awq = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i.i.i.i2771603, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i279 = load i64, ptr %i.awq, align 8, !alias.scope !30982, !noalias !30983, !noundef !12 ; 2 uses
  %i.awr = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i278, %.val7.i.i.i.i.i.i.i.i.i.i.i.i279
  br i1 %i.awr, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i276, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i280

.split.loop.exit17.i.i.i.i.i.i.i.i.i.i280:        ; preds = %bb.ll
  %i.aws = icmp ugt i64 %.val8.i.i.i.i.i.i.i.i.i.i278, %.val7.i.i.i.i.i.i.i.i.i.i.i.i279
  br i1 %i.aws, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit73.i254, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.thread.i249

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.i248: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i
  %i.awt = icmp ult i64 %.sroa.42.0.i.i.i.i246, %..i39.i
  br i1 %i.awt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit73.i254, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.thread.i249

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.thread.i249: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i276, %bb.lk, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.i248, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i280
  call void @llvm.experimental.noalias.scope.decl(metadata !30984)
  call void @llvm.experimental.noalias.scope.decl(metadata !30985)
  br i1 %i.awi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit67.i, label %bb.lm

bb.lm:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.thread.i249
  %i.awu = getelementptr inbounds nuw [8 x i8], ptr inttoptr (i64 8 to ptr), i64 %..i39.i ; 2 uses
  %i.awv = icmp eq ptr %spec.select47.i, %i.awu
  br i1 %i.awv, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit58.thread.i, label %.lr.ph1608

.lr.ph1608:                                       ; preds = %bb.lm
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr inttoptr (i64 8 to ptr), i64 %..i39.i
  br label %bb.ln

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i53.i: ; preds = %bb.ln
  %i.awx = icmp eq ptr %spec.select47.i, %i.awz
  br i1 %i.awx, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit58.thread.i, label %bb.ln

bb.ln:                                            ; preds = %.lr.ph1608, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i53.i
  %i.awy = phi ptr [ %i.awu, %.lr.ph1608 ], [ %i.awz, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i53.i ]
  %.sroa.3.08.i.i.i.i.i.i54.i1606 = phi ptr [ %i.aww, %.lr.ph1608 ], [ %i.axa, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i53.i ]
  %i.awz = getelementptr inbounds i8, ptr %i.awy, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i55.i = load i64, ptr %i.awz, align 8, !alias.scope !30984, !noalias !30986 ; 2 uses
  %i.axa = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i.i.i54.i1606, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i56.i = load i64, ptr %i.axa, align 8, !alias.scope !30987, !noalias !30988, !noundef !12 ; 2 uses
  %i.axb = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i55.i, %.val7.i.i.i.i.i.i.i.i.i.i.i56.i
  br i1 %i.axb, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i53.i, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i57.i

.split.loop.exit17.i.i.i.i.i.i.i.i.i57.i:         ; preds = %bb.ln
  %i.axc = icmp ugt i64 %.val8.i.i.i.i.i.i.i.i.i55.i, %.val7.i.i.i.i.i.i.i.i.i.i.i56.i
  br i1 %i.axc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit67.i, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit58.thread.i

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit58.thread.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i53.i, %bb.lm, %.split.loop.exit17.i.i.i.i.i.i.i.i.i57.i
  br i1 %.not3.i64.i, label %.split.i255, label %.split43.i

.split43.i:                                       ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit58.thread.i
  call void @llvm.assume(i1 %i.awa)
  br i1 %i.awb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit73.i254, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit70.i250

.split.i255:                                      ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit58.thread.i
  br i1 %i.awd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit70.i250, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit73.i254

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit67.i: ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.thread.i249, %.split.loop.exit17.i.i.i.i.i.i.i.i.i57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !30966
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i251

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit70.i250: ; preds = %.split43.i, %.split.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !30966
  %i.axd = icmp eq ptr %i.awg, %i.ho
  br i1 %i.axd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i251, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit73.i254: ; preds = %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i280, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.i248, %.split43.i, %.split.i255
  %.not112 = phi i1 [ false, %.split43.i ], [ false, %.split.i255 ], [ true, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit.i248 ], [ true, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !30966
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsgNwXemyrBWj_12clap_builder5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @1054, ptr %i.ab, align 8
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1063, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @1062, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 9) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ac
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i64 1, 576460752303423489) i64 @_RNvXs1_NtNtCskMQyL8guyrm_15string_interner7backend6bucketINtB5_13BucketBackendNtNtB9_6symbol11SymbolUsizeENtB7_7Backend6internCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35540)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !range !19, !alias.scope !35540, !noundef !12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !35540, !noundef !12 ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %i.e, %2                         ; 2 uses
  %i.h = icmp ult i64 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %2, i64 %i.c) ; 2 uses
  %i.i = add i64 %..i.i, 1
  %i.j = icmp ult i64 %i.i, 2
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %..i.i, i1 true)
  %i.l = lshr i64 -1, %i.k
  %i.m = add i64 %i.l, 1
  %.sroa.03.0.i = select i1 %i.j, i64 1, i64 %i.m ; 5 uses
  %.not.i.i = icmp slt i64 %.sroa.03.0.i, 0
  br i1 %.not.i.i, label %bb.j, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %i.n, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35541
  %i.o = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.03.0.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !35541 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.o to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.i

bb.f:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i, %bb.a
  %.pre-phi.i = phi i64 [ %i.g, %bb.a ], [ %.pre22.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i ] ; 6 uses
  %i.r = phi i64 [ %i.c, %bb.a ], [ %.pre21.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %i.s = phi i64 [ %i.e, %bb.a ], [ %.pre.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35542)
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ult i64 %i.r, %.pre-phi.i
  br i1 %i.u, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35543)
  %i.v = sub nsw i64 %i.r, %i.s
  %i.w = icmp ugt i64 %2, %i.v
  br i1 %i.w, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !18

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i: ; preds = %bb.g
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.s, i64 noundef %2, i64 noundef 1, i64 noundef 1) #45, !noalias !35544
  %i.x = load i64, ptr %i.d, align 8, !alias.scope !35545, !noundef !12 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %.pre2.i.i = add i64 %i.x, %2
  br label %bb.h

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.g
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  %.pre.pre-phi.i.i = phi i64 [ %.pre-phi.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %.pre2.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i ]
  %i.z = phi i64 [ %i.s, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.x, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !35545, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !35546
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre-phi.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %.pre.pre-phi.i.i, %bb.h ] ; 3 uses
  store i64 %.pre-phi.i.i, ptr %i.d, align 8, !alias.scope !35545
  %i.ad = icmp samesign ult i64 %.pre-phi.i, %i.s
  %.not.i12.i = icmp ugt i64 %.pre-phi.i, %.pre-phi.i.i
  %or.cond.i.i = or i1 %i.ad, %.not.i12.i
  br i1 %or.cond.i.i, label %bb.i, label %_RNvMs2_NtNtCskMQyL8guyrm_15string_interner7backend6bucketINtB5_13BucketBackendNtNtB9_6symbol11SymbolUsizeE5allocCsl8pJiQOn4hA_9coreutils.exit, !prof !56

bb.i:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsl8pJiQOn4hA_9coreutils.exit.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %.pre-phi.i, i64 noundef %.pre-phi.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @915) #50, !noalias !35547
  unreachable

bb.j:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.03.0.i) #52, !noalias !35548
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.e, %bb.c
  %.sroa.10.0.i = phi i64 [ %i.q, %bb.e ], [ 1, %bb.c ]
  %i.ae = inttoptr i64 %.sroa.10.0.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !35549
  store i64 %.sroa.03.0.i, ptr %i.b, align 8, !alias.scope !35540
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !35540
  store i64 0, ptr %i.d, align 8, !alias.scope !35540
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !35550, !noundef !12 ; 3 uses
  %i.ai = load i64, ptr %i.af, align 8, !range !19, !alias.scope !35550, !noundef !12
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i

bb.k:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.i
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2vKOLqTMYjT_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #53, !noalias !35551
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.k, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !35550, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !35549
  %i.an = add i64 %i.ah, 1
  store i64 %i.an, ptr %i.ag, align 8, !alias.scope !35550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !35552 ; 2 uses
  %.pre21.i = load i64, ptr %i.b, align 8, !range !19, !alias.scope !35552
  %.pre22.i = add i64 %.pre.i, %2
  br label %bb.f

bb.l:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @942, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @944) #50, !noalias !35549
  unreachable

_RNvMs2_NtNtCskMQyL8guyrm_15string_interner7backend6bucketINtB5_13BucketBackendNtNtB9_6symbol11SymbolUsizeE5allocCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !35552, !nonnull !12, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val = load i64, ptr %i.aq, align 8, !noundef !12 ; 4 uses
  %i.ar = icmp ult i64 %.val, 576460752303423488
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i64, ptr %0, align 8, !range !19, !alias.scope !35553, !noundef !12
  %i.at = icmp eq i64 %.val, %i.as
  br i1 %i.at, label %bb.m, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCskMQyL8guyrm_15string_interner7backend6bucket12interned_str11InternedStrE8push_mutCsl8pJiQOn4hA_9coreutils.exit

bb.m:                                             ; preds = %_RNvMs2_NtNtCskMQyL8guyrm_15string_interner7backend6bucketINtB5_13BucketBackendNtNtB9_6symbol11SymbolUsizeE5allocCsl8pJiQOn4hA_9coreutils.exit
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskMQyL8guyrm_15string_interner7backend6bucket12interned_str11InternedStrE8grow_oneCs2AkyTgTLZ1a_8uu_tsort(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #53
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCskMQyL8guyrm_15string_interner7backend6bucket12interned_str11InternedStrE8push_mutCsl8pJiQOn4hA_9coreutils.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCskMQyL8guyrm_15string_interner7backend6bucket12interned_str11InternedStrE8push_mutCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs2_NtNtCskMQyL8guyrm_15string_interner7backend6bucketINtB5_13BucketBackendNtNtB9_6symbol11SymbolUsizeE5allocCsl8pJiQOn4hA_9coreutils.exit, %bb.m
  %i.au = add nuw nsw i64 %.val, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.s
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !35553, !nonnull !12, !noundef !12
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.val ; 2 uses
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %2, ptr %i.az, align 8
  store i64 %i.au, ptr %i.aq, align 8, !alias.scope !35553
  ret i64 %i.au
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs1b_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionNtB8_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemRBR_E3rem(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35564)
  %i.b = load i64, ptr %2, align 8, !range !13, !alias.scope !35565, !noundef !12
  %.not.i.i = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !range !16, !alias.scope !35565, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %.thread20.i.i, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

.thread20.i.i:                                    ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.preheader.i.i

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !35565, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !35565, !noundef !12 ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c, %.thread20.i.i
  %.sroa.08.024.i.i = phi ptr [ %i.f, %.thread20.i.i ], [ %i.g, %bb.c ]
  %.sroa.5.023.i.i = phi i64 [ 8, %.thread20.i.i ], [ %i.j, %bb.c ]
  %i.l = load i64, ptr %.sroa.08.024.i.i, align 8, !noalias !35566, !noundef !12
  %i.m = icmp eq i64 %.sroa.5.023.i.i, 8
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.c, %bb.b
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %i.l, %.lr.ph.preheader.i.i ], [ 0, %bb.b ] ; 3 uses
  %.lcssa.i.i = phi i1 [ true, %bb.c ], [ %i.m, %.lr.ph.preheader.i.i ], [ true, %bb.b ]
  %i.n = icmp ult i64 %.sroa.01.0.lcssa.i.i, 4294967296
  %or.cond.i = and i1 %.lcssa.i.i, %i.n
  br i1 %or.cond.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35567
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division11div_rem_ref(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #45, !noalias !35562
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !35568
  %.val.i = load i64, ptr %i.a, align 8, !range !13, !noalias !35567, !noundef !12 ; 2 uses
  %i.p = icmp sgt i64 %.val.i, 0
  br i1 %i.p, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8.i = load ptr, ptr %i.q, align 8, !noalias !35567, !nonnull !12, !noundef !12
  %i.r = shl nuw i64 %.val.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !35562
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35567
  %.val.pre = load i64, ptr %1, align 8, !range !13
  br label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit

bb.f:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35569)
  %i.s = icmp eq i64 %.sroa.01.0.lcssa.i.i, 0
  br i1 %i.s, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @974, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @976) #50, !noalias !35570
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %1, align 8, !range !13, !alias.scope !35571, !noundef !12 ; 2 uses
  %.not.i9.i = icmp eq i64 %i.t, -1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i9.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr %i.u, align 8, !range !16, !alias.scope !35571, !noundef !12
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %.thread17.i.i, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i

.thread17.i.i:                                    ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.preheader.i10.i

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.u, align 8, !alias.scope !35571, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !35571, !noundef !12 ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i, label %.lr.ph.preheader.i10.i

.lr.ph.preheader.i10.i:                           ; preds = %bb.j, %.thread17.i.i
  %.sroa.02.021.i.i = phi ptr [ %i.x, %.thread17.i.i ], [ %i.y, %bb.j ] ; 2 uses
  %.sroa.5.020.i.i = phi i64 [ 8, %.thread17.i.i ], [ %i.ab, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.021.i.i, i64 %.sroa.5.020.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i10.i
  %.sroa.0.014.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i10.i ]
  %.sroa.4.013.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.ad, %.lr.ph.preheader.i10.i ]
  %i.ae = getelementptr inbounds i8, ptr %.sroa.4.013.i.i, i64 -8 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !35572, !noundef !12
  %i.ag = tail call { i64, i64 } asm inteldialect "div ${2:q}", "=&{dx},=&{ax},r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 4294967296) %.sroa.01.0.lcssa.i.i, i64 %.sroa.0.014.i.i, i64 %i.af) #55, !srcloc !95
  %.fr15.i = freeze { i64, i64 } %i.ag
  %i.ah = extractvalue { i64, i64 } %.fr15.i, 0   ; 3 uses
  %i.ai = icmp eq ptr %.sroa.02.021.i.i, %i.ae
  br i1 %i.ai, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i, label %.lr.ph.i.i

_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i: ; preds = %.lr.ph.i.i
  %i.aj = icmp ne i64 %i.ah, 0
  %spec.select.i = zext i1 %i.aj to i64
  br label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i

_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i: ; preds = %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i, %bb.j, %bb.i
  %.sroa.0.0.lcssa.i13.i = phi i64 [ %i.ah, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i ], [ 0, %bb.i ], [ 0, %bb.j ]
  %i.ak = phi i64 [ %spec.select.i, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i ], [ 0, %bb.i ], [ 0, %bb.j ]
  store i64 -1, ptr %0, align 8, !alias.scope !35562
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !35562
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.lcssa.i13.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !35562
  br label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit

_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i
  %.val = phi i64 [ %.val.pre, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.t, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i ] ; 2 uses
  %i.al = icmp sgt i64 %.val, 0
  br i1 %i.al, label %bb.k, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

bb.k:                                             ; preds = %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.am, align 8, !nonnull !12, !noundef !12
  %i.an = shl nuw i64 %.val, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtB8_6option6OptionNtNtCs7VgNplLKSIf_7anstyle5style5StyleENtB6_5Debug3fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !97, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35576)
  %i.c = load i8, ptr %i.b, align 2, !range !35577, !alias.scope !35576, !noundef !12
  %.not.i = icmp eq i8 %i.c, -2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35578
  store ptr %i.b, ptr %i.a, align 8, !noalias !35578
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1330, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1333) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35578
  br label %_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7VgNplLKSIf_7anstyle5style5StyleENtNtB7_3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1328, i64 noundef 4) #45, !noalias !35576
  br label %_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7VgNplLKSIf_7anstyle5style5StyleENtNtB7_3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils.exit

_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7VgNplLKSIf_7anstyle5style5StyleENtNtB7_3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtB8_6option6OptionNtNtCsgNwXemyrBWj_12clap_builder5error9BacktraceENtB6_5Debug3fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35582)
  %i.c = load i8, ptr %i.b, align 1, !range !21, !alias.scope !35582, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35583
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.e, ptr %i.a, align 8, !noalias !35583
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1330, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1335) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35583
  br label %_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCsgNwXemyrBWj_12clap_builder5error9BacktraceENtNtB7_3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1328, i64 noundef 4) #45, !noalias !35582
  br label %_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCsgNwXemyrBWj_12clap_builder5error9BacktraceENtNtB7_3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils.exit

_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCsgNwXemyrBWj_12clap_builder5error9BacktraceENtNtB7_3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35587)
  %i.c = load i8, ptr %i.b, align 1, !range !21, !alias.scope !35587, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35588
  store ptr %i.e, ptr %i.a, align 8, !noalias !35588
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1330, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @265) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35588
  br label %_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1328, i64 noundef 4) #45, !noalias !35587
  br label %_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils.exit

_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !12 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs5_Cs6EuPS8vUgp3_9uu_mktempNtB5_11MkTempErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.a, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1263, i64 noundef 8, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @891, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1236) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %bb.f ], [ %i.u, %bb.g ], [ %i.w, %bb.h ], [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs5_Csju1p4ygkx3l_5uu_lnNtB5_7LnErrorNtNtCs6JMX4GRUq9U_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #28 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !88, !noundef !12 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775807
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.c, ptr %i.d, ptr null
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @1264, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_14ModularCoreOpsRBV_B21_E4addm(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35976)
  %i.e = load i64, ptr %1, align 8, !range !13, !alias.scope !35975, !noundef !12 ; 3 uses
  %.not.i = icmp eq i64 %i.e, -1                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !35975, !noundef !12 ; 2 uses
  %i.h = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !16, !alias.scope !35975, !noundef !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = load i64, ptr %2, align 8, !range !13, !alias.scope !35976, !noundef !12
  %.not4.i = icmp eq i64 %i.k, -1
  br i1 %.not4.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !16, !alias.scope !35976, !noundef !12
  %.not5.i = icmp samesign ult i64 %.sroa.0.0.i, %i.m
  br i1 %.not5.i, label %bb.l, label %bb.f

.thread.i:                                        ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !35976, !noundef !12 ; 6 uses
  %i.p = icmp ult i64 %i.o, 1152921504606846976
  tail call void @llvm.assume(i1 %i.p)
  %.not522.i = icmp samesign ult i64 %.sroa.0.0.i, %i.o
  br i1 %.not522.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35977
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !35975 ; 6 uses
  br i1 %.not.i, label %bb.r, label %bb.m

bb.g:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35977
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !35976, !nonnull !12, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35978)
  %cond.i = icmp eq i64 %i.o, 1
  br i1 %cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !35978, !noalias !35977, !noundef !12
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

bb.i:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.o, 3                  ; 3 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35979
  %i.x = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.w, i64 noundef range(i64 1, 9) 8) #45, !noalias !35979 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.w) #52, !noalias !35980
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull readonly align 8 %i.u, i64 %i.w, i1 false), !noalias !35981
  %i.z = ptrtoint ptr %i.x to i64
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35977
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !35976
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i: ; preds = %bb.l, %bb.k, %bb.h
  %.sroa.1018.0.i = phi i64 [ %i.ab, %bb.l ], [ %i.o, %bb.k ], [ %i.v, %bb.h ]
  %.sroa.716.0.i = phi i64 [ 1, %bb.l ], [ %i.z, %bb.k ], [ 1, %bb.h ]
  %.sroa.014.0.i = phi i64 [ -1, %bb.l ], [ %i.o, %bb.k ], [ -1, %bb.h ]
  store i64 %.sroa.014.0.i, ptr %i.b, align 8, !noalias !35977
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.716.0.i, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !35977
  %.sroa.1018.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.1018.0.i, ptr %.sroa.1018.0..sroa_idx.i, align 8, !noalias !35977
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddRBN_E3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #45, !noalias !35976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35977
  br label %_RNvXs9_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit

bb.m:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.q, align 8, !alias.scope !35975, !nonnull !12, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35982)
  switch i64 %i.s, label %bb.o [
    i64 0, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit10.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !35982, !noalias !35977, !noundef !12
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit10.i

bb.o:                                             ; preds = %bb.m
  %i.ae = shl nuw nsw i64 %i.s, 3                 ; 3 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35983
  %i.af = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 9) 8) #45, !noalias !35983 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ae) #52, !noalias !35984
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 8 %i.ac, i64 %i.ae, i1 false), !noalias !35985
  %i.ah = ptrtoint ptr %i.af to i64
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit10.i

bb.r:                                             ; preds = %bb.f
  %i.ai = load i64, ptr %i.q, align 8, !range !16, !alias.scope !35975, !noundef !12
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit10.i

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit10.i: ; preds = %bb.r, %bb.q, %bb.n, %bb.m
  %.sroa.10.0.i = phi i64 [ %i.s, %bb.r ], [ %i.s, %bb.q ], [ %i.ad, %bb.n ], [ undef, %bb.m ]
  %.sroa.7.0.i = phi i64 [ %i.ai, %bb.r ], [ %i.ah, %bb.q ], [ 1, %bb.n ], [ %i.s, %bb.m ]
  %.sroa.0.020.i = phi i64 [ -1, %bb.r ], [ %i.s, %bb.q ], [ -1, %bb.n ], [ -1, %bb.m ]
  store i64 %.sroa.0.020.i, ptr %i.c, align 8, !noalias !35977
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !35977
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !35977
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddRBN_E3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #45, !noalias !35975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35977
  br label %_RNvXs9_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit

_RNvXs9_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit: ; preds = %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit10.i
  call void @llvm.experimental.noalias.scope.decl(metadata !35986)
  call void @llvm.experimental.noalias.scope.decl(metadata !35987)
  call void @llvm.experimental.noalias.scope.decl(metadata !35988)
  %i.aj = load i64, ptr %3, align 8, !range !13, !alias.scope !35989, !noundef !12
  %.not.i.i = icmp eq i64 %i.aj, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RNvXs9_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit
  %i.al = load i64, ptr %i.ak, align 8, !range !16, !alias.scope !35989, !noundef !12
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %.thread20.i.i, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

.thread20.i.i:                                    ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.lr.ph.preheader.i.i

bb.t:                                             ; preds = %_RNvXs9_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !alias.scope !35989, !nonnull !12, !noundef !12
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !35989, !noundef !12 ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t, %.thread20.i.i
  %.sroa.08.024.i.i = phi ptr [ %i.an, %.thread20.i.i ], [ %i.ao, %bb.t ]
  %.sroa.5.023.i.i = phi i64 [ 8, %.thread20.i.i ], [ %i.ar, %bb.t ]
  %i.at = load i64, ptr %.sroa.08.024.i.i, align 8, !noalias !35990, !noundef !12
  %i.au = icmp eq i64 %.sroa.5.023.i.i, 8
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.t, %bb.s
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %bb.t ], [ %i.at, %.lr.ph.preheader.i.i ], [ 0, %bb.s ] ; 3 uses
  %.lcssa.i.i = phi i1 [ true, %bb.t ], [ %i.au, %.lr.ph.preheader.i.i ], [ true, %bb.s ]
  %i.av = icmp ult i64 %.sroa.01.0.lcssa.i.i, 4294967296
  %or.cond.i = and i1 %.lcssa.i.i, %i.av
  br i1 %or.cond.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35991
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division11div_rem_ref(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #45, !noalias !35986
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !35992
  %.val.i = load i64, ptr %i.a, align 8, !range !13, !noalias !35991, !noundef !12 ; 2 uses
  %i.ax = icmp sgt i64 %.val.i, 0
  br i1 %i.ax, label %bb.v, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8.i = load ptr, ptr %i.ay, align 8, !noalias !35991, !nonnull !12, !noundef !12
  %i.az = shl nuw i64 %.val.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !35986
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35991
  %.val2.pre = load i64, ptr %i.d, align 8, !range !13
  br label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit

bb.w:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !35993)
  %i.ba = icmp eq i64 %.sroa.01.0.lcssa.i.i, 0
  br i1 %i.ba, label %bb.x, label %bb.y, !prof !18

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @974, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @976) #50, !noalias !35994
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bb = load i64, ptr %i.d, align 8, !range !13, !alias.scope !35995, !noundef !12 ; 2 uses
  %.not.i9.i = icmp eq i64 %i.bb, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not.i9.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bd = load i64, ptr %i.bc, align 8, !range !16, !alias.scope !35995, !noundef !12
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %.thread17.i.i, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i

.thread17.i.i:                                    ; preds = %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.lr.ph.preheader.i10.i

bb.aa:                                            ; preds = %bb.y
  %i.bg = load ptr, ptr %i.bc, align 8, !alias.scope !35995, !nonnull !12, !noundef !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !35995, !noundef !12 ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i, label %.lr.ph.preheader.i10.i

.lr.ph.preheader.i10.i:                           ; preds = %bb.aa, %.thread17.i.i
  %.sroa.02.021.i.i = phi ptr [ %i.bf, %.thread17.i.i ], [ %i.bg, %bb.aa ] ; 2 uses
  %.sroa.5.020.i.i = phi i64 [ 8, %.thread17.i.i ], [ %i.bj, %bb.aa ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.021.i.i, i64 %.sroa.5.020.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i10.i
  %.sroa.0.014.i.i = phi i64 [ %i.bp, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i10.i ]
  %.sroa.4.013.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.bl, %.lr.ph.preheader.i10.i ]
  %i.bm = getelementptr inbounds i8, ptr %.sroa.4.013.i.i, i64 -8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !35996, !noundef !12
  %i.bo = call { i64, i64 } asm inteldialect "div ${2:q}", "=&{dx},=&{ax},r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 4294967296) %.sroa.01.0.lcssa.i.i, i64 %.sroa.0.014.i.i, i64 %i.bn) #55, !srcloc !95
  %.fr15.i = freeze { i64, i64 } %i.bo
  %i.bp = extractvalue { i64, i64 } %.fr15.i, 0   ; 3 uses
  %i.bq = icmp eq ptr %.sroa.02.021.i.i, %i.bm
  br i1 %i.bq, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i, label %.lr.ph.i.i

_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i: ; preds = %.lr.ph.i.i
  %i.br = icmp ne i64 %i.bp, 0
  %spec.select.i = zext i1 %i.br to i64
  br label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i

_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i: ; preds = %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i, %bb.aa, %bb.z
  %.sroa.0.0.lcssa.i13.i = phi i64 [ %i.bp, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i ], [ 0, %bb.z ], [ 0, %bb.aa ]
  %i.bs = phi i64 [ %spec.select.i, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i ], [ 0, %bb.z ], [ 0, %bb.aa ]
  store i64 -1, ptr %0, align 8, !alias.scope !35986
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bs, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !35986
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.lcssa.i13.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !35986
  br label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit

_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i
  %.val2 = phi i64 [ %.val2.pre, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.bb, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.thread.i ] ; 2 uses
  %i.bt = icmp sgt i64 %.val2, 0
  br i1 %i.bt, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

bb.ab:                                            ; preds = %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3 = load ptr, ptr %i.bu, align 8, !nonnull !12, !noundef !12
  %i.bv = shl nuw i64 %.val2, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bw = icmp sgt i64 %i.e, 0
  br i1 %i.bw, label %bb.ac, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit6

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.bx, align 8, !nonnull !12, !noundef !12
  %i.by = shl nuw i64 %i.e, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit6

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit6: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit, %bb.ac
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_14ModularCoreOpsRBV_B21_E4subm(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXNtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintRNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB6_14ModularCoreOps4subm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #45
  %.val = load i64, ptr %1, align 8, !range !13, !noundef !12 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_CsgzkSwV7OBv7_7uu_headNtB5_9HeadErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !86, !noundef !12 ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %i.h = add i64 %i.f, -9223372036854775807
  %i.i = select i1 %i.g, i64 %i.h, i64 0
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.e, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1234, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1265, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1235, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @465, i64 noundef 3, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @982) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.d, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1266, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.c, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1268, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1267) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.b, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1270, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1269) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.a, align 8
end_hunk_2
begin_hunk_3_@_RNvXs_NtCsdit6BuOJVAc_5uu_od14partial_readerINtB4_13PartialReaderNtNtB6_16multifile_reader15MultifileReaderENtNtNtCs7tKScEop1B6_5alloc2io4read4Read4readCsl8pJiQOn4hA_9coreutils:bb.a
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bw = trunc nuw i64 %i.bt to i1
  br i1 %i.bw, label %bb.l, label %._crit_edge
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCseE7g6nXQLt3_5uu_mv5errorNtB4_7MvErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = load i64, ptr %0, align 8, !range !44, !noundef !12
  switch i64 %i.j, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.i, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1351, i64 noundef 10, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.h, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1352, i64 noundef 23, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %i.g, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1300, i64 noundef 8, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @891, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.s, ptr %i.f, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1353, i64 noundef 22, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @891, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.e, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1354, i64 noundef 23, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.d, align 8
  %i.y = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1355, i64 noundef 23, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @891, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.c, align 8
  %i.aa = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1356, i64 noundef 13, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.b, align 8
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1357, i64 noundef 19, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.a, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1358, i64 noundef 27, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.b ], [ %i.n, %bb.c ], [ %i.q, %bb.d ], [ %i.t, %bb.e ], [ %i.v, %bb.f ], [ %i.y, %bb.g ], [ %i.aa, %bb.h ], [ %i.ac, %bb.i ], [ %i.ae, %bb.j ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCskTxFPE6q5z6_6uu_seq5errorNtB4_8SeqErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !81, !noundef !12 ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = add i64 %i.c, -9223372036854775807
  %i.f = select i1 %i.d, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.b, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1266, i64 noundef 10, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @891, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1359) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1360, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @261) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1361, i64 noundef 11) #45
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1362, i64 noundef 19) #45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintRNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB8_15ModularUnaryOps4dblm(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36123)
  %i.e = load i64, ptr %2, align 8, !range !13, !alias.scope !36124, !noundef !12
  %.not.i.i = icmp eq i64 %i.e, -1                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !range !16, !alias.scope !36124, !noundef !12 ; 2 uses
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = inttoptr i64 %i.g to ptr                 ; 2 uses
  br i1 %i.h, label %.thread20.i.i, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

.thread20.i.i:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.preheader.i.i

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !36124, !nonnull !12, !noundef !12 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !36124, !noundef !12 ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = icmp eq i64 %i.m, 0
  %i.p = ptrtoint ptr %i.k to i64                 ; 2 uses
  br i1 %i.o, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c, %.thread20.i.i
  %i.q = phi i64 [ 1, %.thread20.i.i ], [ %i.p, %bb.c ]
  %i.r = phi ptr [ %i.i, %.thread20.i.i ], [ %i.k, %bb.c ]
  %.sroa.08.024.i.i = phi ptr [ %i.j, %.thread20.i.i ], [ %i.k, %bb.c ]
  %.sroa.5.023.i.i = phi i64 [ 8, %.thread20.i.i ], [ %i.n, %bb.c ]
  %i.s = load i64, ptr %.sroa.08.024.i.i, align 8, !noalias !36125, !noundef !12
  %i.t = icmp eq i64 %.sroa.5.023.i.i, 8
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.c, %bb.b
  %i.u = phi i64 [ %i.p, %bb.c ], [ %i.q, %.lr.ph.preheader.i.i ], [ 0, %bb.b ]
  %i.v = phi ptr [ %i.k, %bb.c ], [ %i.r, %.lr.ph.preheader.i.i ], [ %i.i, %bb.b ]
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %i.s, %.lr.ph.preheader.i.i ], [ 0, %bb.b ] ; 3 uses
  %.lcssa.i.i = phi i1 [ true, %bb.c ], [ %i.t, %.lr.ph.preheader.i.i ], [ true, %bb.b ]
  %i.w = icmp ult i64 %.sroa.01.0.lcssa.i.i, 4294967296
  %or.cond.i = and i1 %.lcssa.i.i, %i.w
  br i1 %or.cond.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36126
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division11div_rem_ref(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #45, !noalias !36127
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload1 = load i64, ptr %i.x, align 8, !noalias !36128 ; 3 uses
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0.copyload3 = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !noalias !36128 ; 6 uses
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.6.0.copyload5 = load i64, ptr %.sroa.6.0..sroa_idx4, align 8, !noalias !36128 ; 6 uses
  %.val.i = load i64, ptr %i.b, align 8, !range !13, !noalias !36126, !noundef !12 ; 2 uses
  %i.y = icmp sgt i64 %.val.i, 0
  br i1 %i.y, label %bb.e, label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val8.i = load ptr, ptr %i.z, align 8, !noalias !36126, !nonnull !12, !noundef !12
  %i.aa = shl nuw i64 %.val.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !36127
  br label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit

bb.f:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36129)
  %i.ab = icmp eq i64 %.sroa.01.0.lcssa.i.i, 0
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @974, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @976) #50, !noalias !36130
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %1, align 8, !range !13, !alias.scope !36131, !noundef !12
  %.not.i9.i = icmp eq i64 %i.ac, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i9.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %i.ad, align 8, !range !16, !alias.scope !36131, !noundef !12
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %.thread17.i.i, label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread

.thread17.i.i:                                    ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.preheader.i10.i

bb.j:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !alias.scope !36131, !nonnull !12, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !36131, !noundef !12 ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread, label %.lr.ph.preheader.i10.i

.lr.ph.preheader.i10.i:                           ; preds = %bb.j, %.thread17.i.i
  %.sroa.02.021.i.i = phi ptr [ %i.ag, %.thread17.i.i ], [ %i.ah, %bb.j ] ; 2 uses
  %.sroa.5.020.i.i = phi i64 [ 8, %.thread17.i.i ], [ %i.ak, %bb.j ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.021.i.i, i64 %.sroa.5.020.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i10.i
  %.sroa.0.014.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i10.i ]
  %.sroa.4.013.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.am, %.lr.ph.preheader.i10.i ]
  %i.an = getelementptr inbounds i8, ptr %.sroa.4.013.i.i, i64 -8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !36132, !noundef !12
  %i.ap = tail call { i64, i64 } asm inteldialect "div ${2:q}", "=&{dx},=&{ax},r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 4294967296) %.sroa.01.0.lcssa.i.i, i64 %.sroa.0.014.i.i, i64 %i.ao) #55, !srcloc !95
  %.fr15.i = freeze { i64, i64 } %i.ap
  %i.aq = extractvalue { i64, i64 } %.fr15.i, 0   ; 3 uses
  %i.ar = icmp eq ptr %.sroa.02.021.i.i, %i.an
  br i1 %i.ar, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i, label %.lr.ph.i.i

_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i: ; preds = %.lr.ph.i.i
  %i.as = icmp ne i64 %i.aq, 0
  %spec.select.i = zext i1 %i.as to i64
  br label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread

_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread: ; preds = %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i, %bb.j, %bb.i
  %.sroa.6.0.ph = phi i64 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.aq, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i ]
  %.sroa.5.0.ph = phi i64 [ 0, %bb.j ], [ 0, %bb.i ], [ %spec.select.i, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.n

_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !36133)
  call void @llvm.experimental.noalias.scope.decl(metadata !36134)
  switch i64 %.sroa.0.0.copyload1, label %.split38.i [
    i64 -2, label %bb.k
    i64 -1, label %bb.n
  ]

bb.k:                                             ; preds = %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit
  %i.at = inttoptr i64 %.sroa.5.0.copyload3 to ptr ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !range !13, !noalias !36135, !noundef !12
  %.not26.i = icmp eq i64 %i.au, -1
  br i1 %.not26.i, label %bb.l, label %.split.i

.split.i:                                         ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !36135, !noundef !12 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 1152921504606846976
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %.thread, label %_RNvXs4f_NtNtCs6JMX4GRUq9U_4core3ops5arithlNtB6_3Rem3rem.exit.i

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !noalias !36135, !noundef !12
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %_RNvXs4f_NtNtCs6JMX4GRUq9U_4core3ops5arithlNtB6_3Rem3rem.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !36135
  br label %.thread

.thread:                                          ; preds = %bb.m, %.split.i
  %.sroa.10.0.i = phi i64 [ %i.bd, %bb.m ], [ undef, %.split.i ]
  store i64 -1, ptr %i.d, align 8, !alias.scope !36133
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !36133
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !36133
  br label %bb.s

.split38.i:                                       ; preds = %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit
  %i.be = icmp ult i64 %.sroa.6.0.copyload5, 1152921504606846976
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %.sroa.6.0.copyload5, 0
  br i1 %i.bf, label %bb.o, label %_RNvXs4f_NtNtCs6JMX4GRUq9U_4core3ops5arithlNtB6_3Rem3rem.exit.i

bb.n:                                             ; preds = %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit
  %.sroa.5.021 = phi i64 [ %.sroa.5.0.ph, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread ], [ %.sroa.5.0.copyload3, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit ]
  %.sroa.6.018 = phi i64 [ %.sroa.6.0.ph, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread ], [ %.sroa.6.0.copyload5, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit ] ; 2 uses
  %i.bg = trunc nuw i64 %.sroa.5.021 to i1
  br i1 %i.bg, label %_RNvXs4f_NtNtCs6JMX4GRUq9U_4core3ops5arithlNtB6_3Rem3rem.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %.split38.i
  %.sroa.0.023 = phi i64 [ -1, %bb.n ], [ %.sroa.0.0.copyload1, %.split38.i ] ; 2 uses
  %.sroa.5.020 = phi i64 [ 0, %bb.n ], [ %.sroa.5.0.copyload3, %.split38.i ]
  %.sroa.6.017 = phi i64 [ %.sroa.6.018, %bb.n ], [ 0, %.split38.i ]
  store i64 %.sroa.0.023, ptr %i.d, align 8, !alias.scope !36135
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.020, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !36135
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.6.017, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !36135
  br label %_RINvNtNtCsioiJd4mgmsb_10num_bigint7biguint5shift11biguint_shllECsl8pJiQOn4hA_9coreutils.exit

_RNvXs4f_NtNtCs6JMX4GRUq9U_4core3ops5arithlNtB6_3Rem3rem.exit.i: ; preds = %bb.n, %.split38.i, %bb.l, %.split.i
  %.sroa.0.025 = phi i64 [ -1, %bb.n ], [ %.sroa.0.0.copyload1, %.split38.i ], [ -2, %bb.l ], [ -2, %.split.i ]
  %.sroa.5.022 = phi i64 [ 1, %bb.n ], [ %.sroa.5.0.copyload3, %.split38.i ], [ %.sroa.5.0.copyload3, %bb.l ], [ %.sroa.5.0.copyload3, %.split.i ]
  %.sroa.6.019 = phi i64 [ %.sroa.6.018, %bb.n ], [ %.sroa.6.0.copyload5, %.split38.i ], [ %.sroa.6.0.copyload5, %bb.l ], [ %.sroa.6.0.copyload5, %.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36135
  store i64 %.sroa.0.025, ptr %i.a, align 8, !noalias !36133
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.022, ptr %.sroa.68.0..sroa_idx9, align 8, !noalias !36133
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.6.019, ptr %.sroa.9.0..sroa_idx12, align 8, !noalias !36133
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint5shift12biguint_shl2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i8 noundef 1) #45, !noalias !36134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36135
  %.pr = load i64, ptr %i.d, align 8, !alias.scope !36136
  br label %_RINvNtNtCsioiJd4mgmsb_10num_bigint7biguint5shift11biguint_shllECsl8pJiQOn4hA_9coreutils.exit

_RINvNtNtCsioiJd4mgmsb_10num_bigint7biguint5shift11biguint_shllECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.o, %_RNvXs4f_NtNtCs6JMX4GRUq9U_4core3ops5arithlNtB6_3Rem3rem.exit.i
  %i.bh = phi i64 [ %.pr, %_RNvXs4f_NtNtCs6JMX4GRUq9U_4core3ops5arithlNtB6_3Rem3rem.exit.i ], [ %.sroa.0.023, %bb.o ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36136)
  call void @llvm.experimental.noalias.scope.decl(metadata !36137)
  %.not.i = icmp eq i64 %i.bh, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtNtCsioiJd4mgmsb_10num_bigint7biguint5shift11biguint_shllECsl8pJiQOn4hA_9coreutils.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !36136, !nonnull !12, !noundef !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !36136, !noundef !12
  br label %bb.s

bb.q:                                             ; preds = %_RINvNtNtCsioiJd4mgmsb_10num_bigint7biguint5shift11biguint_shllECsl8pJiQOn4hA_9coreutils.exit
  %.pre = load i64, ptr %i.bi, align 8, !range !16, !alias.scope !36136
  %i.bm = trunc nuw i64 %.pre to i1
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r, %bb.q, %bb.p
  %.sroa.4.0.i = phi i64 [ %i.bl, %bb.p ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.thread ] ; 5 uses
  %.sroa.0.0.i = phi ptr [ %i.bj, %bb.p ], [ %i.bn, %bb.r ], [ inttoptr (i64 8 to ptr), %bb.q ], [ inttoptr (i64 8 to ptr), %.thread ] ; 2 uses
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !36137, !noundef !12
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bq = trunc nuw i64 %i.u to i1
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.42.0.i = phi i64 [ %i.bp, %bb.t ], [ 1, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.v, %bb.t ], [ %i.br, %bb.v ], [ inttoptr (i64 8 to ptr), %bb.u ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36138)
  call void @llvm.experimental.noalias.scope.decl(metadata !36139)
  %i.bs = icmp eq i64 %.sroa.4.0.i, %.sroa.42.0.i
  br i1 %i.bs, label %bb.x, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit

bb.x:                                             ; preds = %bb.w
  %i.bt = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %i.bt, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %.idx = shl nuw nsw i64 %.sroa.4.0.i, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i, i64 %.sroa.4.0.i
  br label %bb.y

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.bw = icmp eq ptr %.sroa.0.0.i, %i.by
  br i1 %i.bw, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %i.bx = phi ptr [ %i.bu, %.lr.ph ], [ %i.by, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  %.sroa.3.08.i.i.i.i29 = phi ptr [ %i.bv, %.lr.ph ], [ %i.bz, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !36138, !noalias !36140 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i29, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !36141, !noalias !36142, !noundef !12 ; 2 uses
  %i.ca = icmp eq i64 %.val8.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i
  br i1 %i.ca, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %.split.loop.exit17.i.i.i.i.i.i.i

.split.loop.exit17.i.i.i.i.i.i.i:                 ; preds = %bb.y
  %i.cb = icmp ugt i64 %.val8.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i
  br i1 %i.cb, label %bb.z, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread

_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit: ; preds = %bb.w
  %i.cc = icmp ugt i64 %.sroa.4.0.i, %.sroa.42.0.i
  br i1 %i.cc, label %bb.z, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread

_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %bb.x, %.split.loop.exit17.i.i.i.i.i.i.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.aa

bb.z:                                             ; preds = %.split.loop.exit17.i.i.i.i.i.i.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint11subtractionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3SubRBR_E3sub(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintRNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB8_15ModularUnaryOps4negm(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36152)
  %i.c = load i64, ptr %2, align 8, !range !13, !alias.scope !36153, !noundef !12
  %.not.i.i = icmp eq i64 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !range !16, !alias.scope !36153, !noundef !12
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %.thread20.i.i, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

.thread20.i.i:                                    ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.preheader.i.i

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !alias.scope !36153, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !36153, !noundef !12 ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c, %.thread20.i.i
  %.sroa.08.024.i.i = phi ptr [ %i.g, %.thread20.i.i ], [ %i.h, %bb.c ]
  %.sroa.5.023.i.i = phi i64 [ 8, %.thread20.i.i ], [ %i.k, %bb.c ]
  %i.m = load i64, ptr %.sroa.08.024.i.i, align 8, !noalias !36154, !noundef !12
  %i.n = icmp eq i64 %.sroa.5.023.i.i, 8
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.c, %bb.b
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %i.m, %.lr.ph.preheader.i.i ], [ 0, %bb.b ] ; 3 uses
  %.lcssa.i.i = phi i1 [ true, %bb.c ], [ %i.n, %.lr.ph.preheader.i.i ], [ true, %bb.b ]
  %i.o = icmp ult i64 %.sroa.01.0.lcssa.i.i, 4294967296
  %or.cond.i = and i1 %.lcssa.i.i, %i.o
  br i1 %or.cond.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36155
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division11div_rem_ref(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #45, !noalias !36156
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.0.0.copyload2 = load i64, ptr %i.p, align 8, !noalias !36157 ; 4 uses
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0.copyload4 = load i64, ptr %.sroa.7.0..sroa_idx3, align 8, !noalias !36157 ; 3 uses
  %.sroa.10.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.10.0.copyload6 = load i64, ptr %.sroa.10.0..sroa_idx5, align 8, !noalias !36157 ; 4 uses
  %.val.i = load i64, ptr %i.a, align 8, !range !13, !noalias !36155, !noundef !12 ; 2 uses
  %i.q = icmp sgt i64 %.val.i, 0
  br i1 %i.q, label %bb.e, label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8.i = load ptr, ptr %i.r, align 8, !noalias !36155, !nonnull !12, !noundef !12
  %i.s = shl nuw i64 %.val.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !36156
  br label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit

bb.f:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36158)
  %i.t = icmp eq i64 %.sroa.01.0.lcssa.i.i, 0
  br i1 %i.t, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @974, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @976) #50, !noalias !36159
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = load i64, ptr %1, align 8, !range !13, !alias.scope !36160, !noundef !12
  %.not.i9.i = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i9.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.v, align 8, !range !16, !alias.scope !36160, !noundef !12
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %.thread17.i.i, label %.thread

.thread17.i.i:                                    ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.preheader.i10.i

bb.j:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.v, align 8, !alias.scope !36160, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !36160, !noundef !12 ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %.thread, label %.lr.ph.preheader.i10.i

.lr.ph.preheader.i10.i:                           ; preds = %bb.j, %.thread17.i.i
  %.sroa.02.021.i.i = phi ptr [ %i.y, %.thread17.i.i ], [ %i.z, %bb.j ] ; 2 uses
  %.sroa.5.020.i.i = phi i64 [ 8, %.thread17.i.i ], [ %i.ac, %bb.j ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.021.i.i, i64 %.sroa.5.020.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i10.i
  %.sroa.0.014.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i10.i ]
  %.sroa.4.013.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.ae, %.lr.ph.preheader.i10.i ]
  %i.af = getelementptr inbounds i8, ptr %.sroa.4.013.i.i, i64 -8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !36161, !noundef !12
  %i.ah = tail call { i64, i64 } asm inteldialect "div ${2:q}", "=&{dx},=&{ax},r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 4294967296) %.sroa.01.0.lcssa.i.i, i64 %.sroa.0.014.i.i, i64 %i.ag) #55, !srcloc !95
  %.fr15.i = freeze { i64, i64 } %i.ah
  %i.ai = extractvalue { i64, i64 } %.fr15.i, 0   ; 3 uses
  %i.aj = icmp eq ptr %.sroa.02.021.i.i, %i.af
  br i1 %i.aj, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i, label %.lr.ph.i.i

_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i: ; preds = %.lr.ph.i.i
  %i.ak = icmp ne i64 %i.ai, 0
  %spec.select.i = zext i1 %i.ak to i64
  br label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread

_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36155
  %.not = icmp eq i64 %.sroa.0.0.copyload2, -1
  br i1 %.not, label %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread, label %.split

.split:                                           ; preds = %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit
  %i.al = icmp ult i64 %.sroa.10.0.copyload6, 1152921504606846976
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %.sroa.10.0.copyload6, 0
  br i1 %i.am, label %bb.l, label %bb.k

_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread: ; preds = %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit
  %.sroa.7.014 = phi i64 [ %.sroa.7.0.copyload4, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit ], [ %spec.select.i, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i ]
  %.sroa.10.013 = phi i64 [ %.sroa.10.0.copyload6, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit ], [ %i.ai, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i ]
  %i.an = trunc nuw i64 %.sroa.7.014 to i1
  br i1 %i.an, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @899, i64 24, i1 false)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

bb.k:                                             ; preds = %.split, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread
  %.sroa.10.01222 = phi i64 [ %.sroa.10.0.copyload6, %.split ], [ %.sroa.10.013, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread ]
  %.sroa.7.01521 = phi i64 [ %.sroa.7.0.copyload4, %.split ], [ 1, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread ]
  %.sroa.0.071619 = phi i64 [ %.sroa.0.0.copyload2, %.split ], [ -1, %_RNvXsb_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionRNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.071619, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.7.01521, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.10.01222, ptr %.sroa.10.0..sroa_idx, align 8
  call void @_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint11subtractionRNtB7_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3SubBV_E3sub(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

bb.l:                                             ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @899, i64 24, i1 false)
  %.not30 = icmp eq i64 %.sroa.0.0.copyload2, 0
  br i1 %.not30, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = inttoptr i64 %.sroa.7.0.copyload4 to ptr ; 2 uses
  %i.ap = shl nuw i64 %.sroa.0.0.copyload2, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.m, %bb.l, %.thread, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs2vKOLqTMYjT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc4zero5InnerEENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1363, i64 noundef 11) #45
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs2vKOLqTMYjT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc5waker5WakerEENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1363, i64 noundef 11) #45
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs2vKOLqTMYjT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1363, i64 noundef 11) #45
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36216)
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !36216, !noalias !36217, !noundef !12 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !36216, !noalias !36217, !noundef !12 ; 4 uses
  %i.b = sub nuw i64 %.val1.i.i, %.val.i.i        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !36218, !noundef !12 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !19, !alias.scope !36218, !noundef !12
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 24) #45, !noalias !36216
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !36215
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.d, %bb.a ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !36215, !nonnull !12, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36224)
  %i.k = icmp ule i64 %.val.i.i, %.val1.i.i
  tail call void @llvm.assume(i1 %i.k)
end_hunk_3
