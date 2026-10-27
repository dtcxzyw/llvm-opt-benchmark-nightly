Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.3?download=true
inline.NumInlined: 160
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCs8ZPNfZ0ciAA_10serde_json2de10from_traitNtNtB4_4read7StrReadINtNtB4_3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB4_5value5ValueEEB4_:bb.a
  store i64 %i.af, ptr %i.u, align 8, !alias.scope !112
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !110
  store ptr %i.r, ptr %i.m, align 8, !noalias !113
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 1, ptr %i.ag, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !113
  store ptr null, ptr %i.l, align 8, !noalias !113
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !113
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit.i.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !117
  invoke fastcc void @_RINvNvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB8_9MapAccesspENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.aj = load i8, ptr %i.f, align 8, !range !10, !noalias !117, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !117, !nonnull !5, !align !11, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !117
  br label %.loopexit30.i.i.i

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.an = load i8, ptr %i.ah, align 1, !range !10, !noalias !117, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !117
  br i1 %i.ao, label %bb.i, label %.loopexit31.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !117
  %i.ap = load ptr, ptr %i.m, align 8, !alias.scope !119, !noalias !113, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  invoke void @_RINvXs6_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtNtCsbqH9stoieM8_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs8ZPNfZ0ciAA_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEEB1V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ap)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118

.noexc6.i.i.i:                                    ; preds = %bb.i
  %i.aq = load i64, ptr %i.e, align 8, !range !12, !noalias !117, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = load ptr, ptr %i.ai, align 8, !noalias !120 ; 2 uses
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !117
  br label %.loopexit30.i.i.i

bb.k:                                             ; preds = %.noexc6.i.i.i
  %.sroa.14.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !121
  store i64 %i.aq, ptr %i.h, align 8, !noalias !121
  store ptr %i.as, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !121
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i.i, align 8, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !121
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !124, !noalias !125, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !126, !noalias !125 ; 2 uses
  %i.aw = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !124, !noalias !125, !nonnull !5, !noundef !5
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i
  %i.az = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bc, %bb.m ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !129, !noundef !5
  switch i8 %i.bb, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 58, label %bb.o
  ], !prof !9

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bc = add i64 %i.az, 1                        ; 3 uses
  store i64 %i.bc, ptr %i.at, align 8, !alias.scope !130, !noalias !125
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bc, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.l

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !131
  store i64 3, ptr %i.c, align 8, !noalias !131
  %i.bd = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ap, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !132

.noexc.i.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !131
  br label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131
  store i64 6, ptr %i.d, align 8, !noalias !131
  %i.be = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ap, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !132

.noexc7.i.i.i.i.i:                                ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !131
  br label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.bf = add i64 %i.az, 1
  store i64 %i.bf, ptr %i.at, align 8, !alias.scope !133, !noalias !125
  invoke fastcc void @_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ap) #16
          to label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.i.i.i.i.i unwind label %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !132

.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.n, %.loopexit.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp112 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #17
          to label %.body.i.i.i unwind label %bb.r, !noalias !132

_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.i.i.i.i.i: ; preds = %bb.o
  %.pr.i.i.i.i.i = load i8, ptr %i.g, align 8, !noalias !121
  %i.bg = icmp eq i8 %.pr.i.i.i.i.i, -1
  br i1 %i.bg, label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit._crit_edge.i.i.i.i.i, label %bb.s

_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit._crit_edge.i.i.i.i.i: ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !121
  br label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i

_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i: ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit._crit_edge.i.i.i.i.i, %.noexc7.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bh = phi ptr [ %.pre.i.i.i.i.i, %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit._crit_edge.i.i.i.i.i ], [ %i.bd, %.noexc.i.i.i.i.i ], [ %i.be, %.noexc7.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !121
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i unwind label %bb.p, !noalias !132

bb.p:                                             ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i.i.i unwind label %bb.q, !noalias !132

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !132
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i: ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118

.noexc7.i.i.i:                                    ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !121
  br label %.loopexit30.i.i.i

bb.r:                                             ; preds = %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !132
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.t, %bb.i, %bb.f, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp112, %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bi, %bb.p ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.w, !noalias !118

bb.s:                                             ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !121
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.h, align 8, !noalias !121 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !121 ; 2 uses
  %i.bl = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i.i, align 8, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !121
  switch i64 %.sroa.010.0.copyload.i.i.i, label %bb.t [
    i64 -2, label %.loopexit30.i.i.i
    i64 -1, label %.loopexit31.i.i.i
  ]

.loopexit30.i.i.i:                                ; preds = %bb.s, %.noexc7.i.i.i, %bb.j, %bb.g
  %.sroa.9.014.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.as, %bb.j ], [ %i.bh, %.noexc7.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.s ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.014.i.i.i) ]
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !113
  store i64 %.sroa.010.0.copyload.i.i.i, ptr %i.k, align 8, !noalias !113
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !113
  store i64 %i.bl, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.7.i.i.i, i64 32, i1 false), !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !113
  invoke void @_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1w_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118

.loopexit31.i.i.i:                                ; preds = %bb.s, %bb.h
  %.sroa.622.8.copyload.i.i = load ptr, ptr %i.l, align 8, !noalias !134
  %.sroa.8.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.8..sroa_idx.i.i, i64 16, i1 false), !noalias !134
  br label %_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.bm = load i8, ptr %i.i, align 8, !range !6, !alias.scope !135, !noalias !113, !noundef !5
  %i.bn = icmp eq i8 %i.bm, -1
  br i1 %i.bn, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit.i.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !113
  br label %bb.f

bb.w:                                             ; preds = %.body.i.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !118
  unreachable

_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i: ; preds = %.loopexit30.i.i.i, %.loopexit31.i.i.i
  %.sroa.021.0.i.i = phi i64 [ 0, %.loopexit31.i.i.i ], [ 1, %.loopexit30.i.i.i ]
  %.sroa.622.0.i.i = phi ptr [ %.sroa.622.8.copyload.i.i, %.loopexit31.i.i.i ], [ %.sroa.9.014.i.i.i, %.loopexit30.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !110
  %i.bp = load i8, ptr %i.t, align 8, !alias.scope !111, !noundef !5
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.t, align 8, !alias.scope !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !110
  store i64 %.sroa.021.0.i.i, ptr %i.n, align 8, !noalias !110
  %.sroa.622.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.622.0.i.i, ptr %.sroa.622.0..sroa_idx.i.i, align 8, !noalias !110
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !110
  %i.br = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %bb.y unwind label %bb.x, !noalias !136 ; 5 uses

bb.x:                                             ; preds = %_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB12_5value5ValueENtNtB12_5error5ErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #17
          to label %.body unwind label %bb.aa, !noalias !136

bb.y:                                             ; preds = %_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !110
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.br, ptr %i.bt, align 8, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !110
  %i.bu = load i64, ptr %i.o, align 8, !range !4, !noalias !110, !noundef !5
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i.i = icmp eq ptr %i.br, null
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.ac, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i, !prof !137

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i: ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !110, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %.not36.i.i = icmp eq ptr %i.br, null
  br i1 %.not36.i.i, label %.noexc5.sink.split, label %.split.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.noexc5.sink.split unwind label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !136
  unreachable

.split.i.i:                                       ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %i.br)
          to label %.noexc5.sink.split unwind label %bb.ab

.noexc5.sink.split:                               ; preds = %.split.i.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i
  %.sroa.7.1.i.i.ph = phi ptr [ %i.by, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i ], [ %i.br, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i ], [ %i.by, %.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !110
  br label %.noexc5

.noexc5:                                          ; preds = %.noexc5.sink.split, %bb.d
  %.sroa.7.1.i.i = phi ptr [ %i.ae, %bb.d ], [ %.sroa.7.1.i.i.ph, %.noexc5.sink.split ]
  %i.ca = invoke noundef nonnull align 8 ptr @_RINvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0EB8_(ptr noalias noundef nonnull align 8 %.sroa.7.1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r)
          to label %.thread unwind label %bb.ab

.body:                                            ; preds = %bb.af, %bb.ab, %bb.x, %.body.i.i.i
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %i.cb, %bb.ab ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.cm, %bb.af ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.r) #17
          to label %common.resume unwind label %bb.al

bb.ab:                                            ; preds = %bb.ag, %.noexc5, %.split.i.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i, %.loopexit30.i.i.i, %bb.d, %.loopexit.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %.noexc, %.noexc5
  %.sink66.i.ph = phi ptr [ %i.ca, %.noexc5 ], [ %i.ad, %.noexc ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink66.i.ph, ptr %i.cc, align 8, !alias.scope !136
  store i64 1, ptr %0, align 8, !alias.scope !136
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14

bb.ac:                                            ; preds = %bb.z
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.bw, align 8, !noalias !110
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !110
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %.sroa.08.0.copyload.i.i, ptr %i.cd, align 8, !alias.scope !136
  store i64 0, ptr %0, align 8, !alias.scope !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.ce = load i64, ptr %i.v, align 8, !alias.scope !140, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.u, align 8, !alias.scope !141 ; 2 uses
  %i.cf = icmp ult i64 %.promoted.i.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.cg = load ptr, ptr %i.s, align 8, !alias.scope !140, !nonnull !5, !noundef !5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i.i
  %i.ch = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ck, %bb.ae ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !144, !noundef !5
  switch i8 %i.cj, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i [
    i8 32, label %bb.ae
    i8 10, label %bb.ae
    i8 9, label %bb.ae
    i8 13, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.ck = add i64 %i.ch, 1                        ; 3 uses
  store i64 %i.ck, ptr %i.u, align 8, !alias.scope !145
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.ce
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.ad

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !138
  store i64 22, ptr %i.b, align 8, !noalias !138
  %i.cl = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.al

bb.ag:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !138
  store ptr %i.cl, ptr %i.cd, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14 unwind label %bb.ab

.loopexit:                                        ; preds = %bb.ae, %bb.ac
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit16 unwind label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %.body, %bb.aj, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %bb.aj ], [ %i.cn, %bb.ah ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit16: ; preds = %.loopexit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14: ; preds = %bb.ag, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit16 unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.al:                                            ; preds = %bb.af, %.body
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8ZPNfZ0ciAA_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #16
          to label %_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEEB7_.exit unwind label %bb.c, !inline_history !146

bb.b:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.g ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #17
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a, %bb.h
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEEB7_.exit: ; preds = %bb.a
  %i.g = load i8, ptr %0, align 8, !range !6, !noundef !5
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEEB7_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !162, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !163 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !162, !nonnull !5, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !166, !noundef !5
  switch i8 %i.p, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
end_hunk_0
begin_hunk_1_@_RINvNtCs8ZPNfZ0ciAA_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueEB4_:bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB8_9MapAccesspENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !193, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !192 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !193, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !196, !noundef !5 ; 3 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !197
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 3, ptr %i.f, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !10, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !13

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !13

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !200, !noundef !5
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !14

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !201
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph.i7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ao, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 12 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [40 x i8], align 8               ; 14 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.25 = alloca [6 x i8], align 2            ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 28 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !381, !noundef !5 ; 10 uses
  %.promoted.i = load i64, ptr %i.ah, align 8, !alias.scope !380 ; 2 uses
  %i.ak = icmp ult i64 %.promoted.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %.loopexit184

.lr.ph.i:                                         ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !381, !nonnull !5, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.an = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aq, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !384, !noundef !5 ; 3 uses
  switch i8 %i.ap, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aq = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.aq, ptr %i.ah, align 8, !alias.scope !385
  %exitcond.not.i = icmp eq i64 %i.aq, %i.aj
  br i1 %exitcond.not.i, label %.loopexit184, label %bb.b

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25)
  switch i8 %i.ap, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit184:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 5, ptr %i.ag, align 8
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.cv

bb.d:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.at = add i8 %i.ap, -48
  %or.cond8 = icmp ult i8 %i.at, 10
  br i1 %or.cond8, label %bb.cm, label %bb.cl, !prof !15

bb.e:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.au = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.au, ptr %i.ah, align 8, !alias.scope !386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.au) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %exitcond.not.i40.not = icmp ult i64 %i.au, %i.aj
  br i1 %exitcond.not.i40.not, label %bb.f, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !390, !noundef !5
  %i.ax = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.ax, ptr %i.ah, align 8, !alias.scope !391
  %.not.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %exitcond.not.i40.1 = icmp eq i64 %i.ax, %umax.i
  br i1 %exitcond.not.i40.1, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !394, !noundef !5
  %i.ba = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.ba, ptr %i.ah, align 8, !alias.scope !395
  %.not.i.1 = icmp eq i8 %i.az, 108
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %exitcond.not.i40.2 = icmp eq i64 %i.ba, %umax.i
  br i1 %exitcond.not.i40.2, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !398, !noundef !5
  %i.bd = add i64 %i.an, 4
  store i64 %i.bd, ptr %i.ah, align 8, !alias.scope !399
  %.not.i.2 = icmp eq i8 %i.bc, 108
  br i1 %.not.i.2, label %.thread, label %bb.k, !prof !16

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !400
  store i64 5, ptr %i.u, align 8, !noalias !400
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u), !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !400
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !400
  store i64 9, ptr %i.t, align 8, !noalias !400
  %i.bf = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !400
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.bg = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.bg, ptr %i.ah, align 8, !alias.scope !402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %umax.i43 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.bg) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %exitcond.not.i45.not = icmp ult i64 %i.bg, %i.aj
  br i1 %exitcond.not.i45.not, label %bb.m, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !406, !noundef !5
  %i.bj = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.bj, ptr %i.ah, align 8, !alias.scope !407
  %.not.i46 = icmp eq i8 %i.bi, 114
  br i1 %.not.i46, label %bb.n, label %bb.r, !prof !16

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %exitcond.not.i45.1 = icmp eq i64 %i.bj, %umax.i43
  br i1 %exitcond.not.i45.1, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !410, !noundef !5
  %i.bm = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.bm, ptr %i.ah, align 8, !alias.scope !411
  %.not.i46.1 = icmp eq i8 %i.bl, 117
  br i1 %.not.i46.1, label %bb.p, label %bb.r, !prof !16

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %exitcond.not.i45.2 = icmp eq i64 %i.bm, %umax.i43
  br i1 %exitcond.not.i45.2, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !414, !noundef !5
  %i.bp = add i64 %i.an, 4
  store i64 %i.bp, ptr %i.ah, align 8, !alias.scope !415
  %.not.i46.2 = icmp eq i8 %i.bo, 101
  br i1 %.not.i46.2, label %.thread, label %bb.r, !prof !16

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !416
  store i64 5, ptr %i.s, align 8, !noalias !416
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s), !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !416
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !416
  store i64 9, ptr %i.r, align 8, !noalias !416
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !416
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.bs = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.bs, ptr %i.ah, align 8, !alias.scope !418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %umax.i52 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.bs) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %exitcond.not.i54.not = icmp ult i64 %i.bs, %i.aj
  br i1 %exitcond.not.i54.not, label %bb.t, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !422, !noundef !5
  %i.bv = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.bv, ptr %i.ah, align 8, !alias.scope !423
  %.not.i55 = icmp eq i8 %i.bu, 97
  br i1 %.not.i55, label %bb.u, label %bb.aa, !prof !16

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %exitcond.not.i54.1 = icmp eq i64 %i.bv, %umax.i52
  br i1 %exitcond.not.i54.1, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !426, !noundef !5
  %i.by = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.by, ptr %i.ah, align 8, !alias.scope !427
  %.not.i55.1 = icmp eq i8 %i.bx, 108
  br i1 %.not.i55.1, label %bb.w, label %bb.aa, !prof !16

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %exitcond.not.i54.2 = icmp eq i64 %i.by, %umax.i52
  br i1 %exitcond.not.i54.2, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !430, !noundef !5
  %i.cb = add i64 %i.an, 4                        ; 3 uses
  store i64 %i.cb, ptr %i.ah, align 8, !alias.scope !431
  %.not.i55.2 = icmp eq i8 %i.ca, 115
  br i1 %.not.i55.2, label %bb.y, label %bb.aa, !prof !16

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %exitcond.not.i54.3 = icmp eq i64 %i.cb, %umax.i52
  br i1 %exitcond.not.i54.3, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !434, !noundef !5
  %i.ce = add i64 %i.an, 5
  store i64 %i.ce, ptr %i.ah, align 8, !alias.scope !435
  %.not.i55.3 = icmp eq i8 %i.cd, 101
  br i1 %.not.i55.3, label %.thread, label %bb.aa, !prof !16

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !436
  store i64 5, ptr %i.q, align 8, !noalias !436
  %i.cf = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !436
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !436
  store i64 9, ptr %i.p, align 8, !noalias !436
  %i.cg = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !436
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.ch = add i64 %i.an, 1
  store i64 %i.ch, ptr %i.ah, align 8, !alias.scope !438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.af, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext false)
  %i.ci = load i64, ptr %i.af, align 8, !range !17, !noundef !5 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br i1 %i.cj, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.cl = add i64 %i.an, 1
  store i64 %i.cl, ptr %i.ah, align 8, !alias.scope !439
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.cn = load i64, ptr %i.ad, align 8, !range !18, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  br i1 %i.co, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cs = load i8, ptr %i.cr, align 8, !noundef !5
  %i.ct = add i8 %i.cs, -1                        ; 2 uses
  store i8 %i.ct, ptr %i.cr, align 8
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.ay, label %bb.az, !prof !19

bb.ae:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cw = load i8, ptr %i.cv, align 8, !noundef !5
  %i.cx = add i8 %i.cw, -1                        ; 2 uses
  store i8 %i.cx, ptr %i.cv, align 8
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.cd, label %bb.ce, !prof !19

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.be, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.bf, %bb.k ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cz, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %.thread176, %.thread173
  %.sroa.25279.0 = phi i64 [ %.sroa.25279.4.a, %.thread176 ], [ %.sroa.25279.3, %.thread173 ] ; 2 uses
  %.sroa.23.0 = phi i8 [ %.sroa.23.2.a, %.thread176 ], [ %.sroa.23.1, %.thread173 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.4.a, %.thread176 ], [ %.sroa.0.3, %.thread173 ] ; 2 uses
  %i.da = phi <2 x i64> [ %i.ht, %.thread176 ], [ %2, %.thread173 ]
  %i.db = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.db, label %._crit_edge, label %.thread, !prof !440

._crit_edge:                                      ; preds = %bb.ag
  %i.dc = inttoptr i64 %.sroa.25279.0 to ptr
  br label %bb.cn

bb.ah:                                            ; preds = %bb.co, %bb.cd, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  br label %bb.cv

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49
  %.sroa.0.1.i48.ph = phi ptr [ %i.bq, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49 ], [ %i.br, %bb.r ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph, ptr %i.dd, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58
  %.sroa.0.1.i57.ph = phi ptr [ %i.cf, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58 ], [ %i.cg, %bb.aa ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph, ptr %i.de, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr %i.ck, align 8, !nonnull !5, !align !11, !noundef !5
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.df, ptr %i.dg, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.ck, align 8 ; 3 uses
  %i.dh = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.2.0.copyload, i64 0 ; 3 uses
  switch i64 %i.ci, label %default.unreachable378 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit
    i64 2, label %bb.ap
  ]

default.unreachable378:                           ; preds = %bb.cp, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.di = bitcast i64 %.sroa.2.0.copyload to double
  %i.dj = tail call double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp ueq double %i.dj, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !441
  br i1 %i.dk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !442, !noalias !441
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dl = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !442, !noalias !441
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i

bb.ao:                                            ; preds = %bb.am
  store i8 0, ptr %i.o, align 8, !noalias !441
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o), !noalias !444
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i: ; preds = %bb.ao, %bb.an
  %.sroa.5.sroa.4.0.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.an ], [ 2, %bb.ao ]
  %i.dm = phi <2 x i64> [ %i.dl, %bb.an ], [ %i.dh, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !441
  br label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i = lshr i64 %.sroa.2.0.copyload, 63
  br label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit

_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit: ; preds = %bb.al, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i, %bb.ap
  %.sroa.25279.1 = phi i64 [ %.sroa.5.sroa.4.0.i.i, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i ], [ %.lobit.i.i, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i ], [ 2, %bb.ap ], [ 2, %bb.al ]
  %i.dn = phi <2 x i64> [ %i.dm, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i ], [ %i.dh, %bb.ap ], [ %i.dh, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %i.do, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %i.dp = trunc nuw i64 %i.cn to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br i1 %i.dp, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !445
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !445
  %i.dq = load i64, ptr %i.b, align 8, !range !4, !noalias !445, !noundef !5
  %i.dr = trunc nuw i64 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !446, !noalias !445, !noundef !5 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dr, label %bb.at, label %bb.au, !prof !19

bb.at:                                            ; preds = %bb.as
  %i.dv = load i64, ptr %i.du, align 8, !noalias !445
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.dt, i64 %i.dv) #18, !noalias !445
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dw = load ptr, ptr %i.du, align 8, !noalias !445, !nonnull !5, !noundef !5 ; 2 uses
  %i.dx = icmp ule i64 %.sroa.4.0.copyload, %i.dt
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !445
  %.not.i270 = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %.not.i270, label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit, label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !447
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !447
  %i.dy = load i64, ptr %i.a, align 8, !range !4, !noalias !447, !noundef !5
  %i.dz = trunc nuw i64 %i.dy to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !446, !noalias !447, !noundef !5 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dz, label %bb.aw, label %bb.ax, !prof !19

bb.aw:                                            ; preds = %bb.av
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !447
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.eb, i64 %i.ed) #18, !noalias !447
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ee = load ptr, ptr %i.ec, align 8, !noalias !447, !nonnull !5, !noundef !5 ; 2 uses
  %i.ef = icmp ule i64 %.sroa.4.0.copyload, %i.eb
  call void @llvm.assume(i1 %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !447
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit, label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.dw, %bb.au ], [ %i.ee, %bb.ax ] ; 2 uses
  %.sroa.25279.2.ph = phi i64 [ %i.dt, %bb.au ], [ %i.eb, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.cq, i64 %.sroa.4.0.copyload, i1 false), !noalias !5
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit: ; preds = %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split, %bb.ax, %bb.au
  %.sroa.39.2.in = phi ptr [ %i.ee, %bb.ax ], [ %i.dw, %bb.au ], [ %.sink, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split ]
  %.sroa.25279.2 = phi i64 [ %i.eb, %bb.ax ], [ %i.dt, %bb.au ], [ %.sroa.25279.2.ph, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split ]
  %.sroa.39.2 = ptrtoint ptr %.sroa.39.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.eg = insertelement <2 x i64> poison, i64 %.sroa.39.2, i64 0
  %i.eh = insertelement <2 x i64> %i.eg, i64 %.sroa.4.0.copyload, i64 1
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 24, ptr %i.ac, align 8
  %i.ei = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %i.ej, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.ek = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.ek, ptr %i.ah, align 8, !alias.scope !448
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !449
  store i64 0, ptr %i.n, align 8, !noalias !449
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.el, align 8, !noalias !449
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.em, align 8, !noalias !449
  %i.en = icmp ult i64 %i.ek, %i.aj
  br i1 %i.en, label %.lr.ph.i.i92.lr.ph, label %.loopexit22.i

.lr.ph.i.i92.lr.ph:                               ; preds = %bb.az
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %.lr.ph.i.i92.lr.ph, %bb.br
  %.promoted.i.i91197 = phi i64 [ %i.ek, %.lr.ph.i.i92.lr.ph ], [ %.promoted.i.i91, %bb.br ]
  %i.eo = phi i64 [ %i.aj, %.lr.ph.i.i92.lr.ph ], [ %i.fs, %bb.br ] ; 4 uses
  %.sroa.5.0196 = phi i1 [ true, %.lr.ph.i.i92.lr.ph ], [ false, %bb.br ]
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.ep = load ptr, ptr %i.al, align 8, !alias.scope !451, !noalias !452, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i.i92
  %i.eq = phi i64 [ %.promoted.i.i91197, %.lr.ph.i.i92 ], [ %i.et, %bb.bb ] ; 4 uses
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_:bb.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit: ; preds = %bb.bj
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !449
  %.pre = load i64, ptr %i.ai, align 8, !alias.scope !464
  %.promoted.i.i.pre = load i64, ptr %i.ah, align 8, !alias.scope !465
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit

bb.bm:                                            ; preds = %.noexc89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4123.0..sroa_idx, i64 7, i1 false)
  %.sroa.5124.0.copyload = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8, !noalias !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6125.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !462
  store i8 %i.ff, ptr %i.m, align 8, !noalias !449
  store ptr %.sroa.5124.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !449
  %i.fk = load i64, ptr %i.em, align 8, !alias.scope !466, !noalias !463, !noundef !5 ; 3 uses
  %i.fl = load i64, ptr %i.n, align 8, !range !467, !alias.scope !466, !noalias !463, !noundef !5
  %i.fm = icmp eq i64 %i.fk, %i.fl
  br i1 %i.fm, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.br unwind label %bb.bo, !noalias !468

bb.bo:                                            ; preds = %bb.bn
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #17
          to label %.body unwind label %bb.bp, !noalias !463

bb.bp:                                            ; preds = %bb.bo
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !463
  unreachable

bb.bq:                                            ; preds = %bb.ba
  %.sroa.0112.0.copyload = load ptr, ptr %i.n, align 8, !noalias !449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !449
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit

bb.br:                                            ; preds = %bb.bn, %bb.bm
  %i.fp = load ptr, ptr %i.el, align 8, !alias.scope !466, !noalias !463, !nonnull !5, !noundef !5
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !463
  %i.fr = add i64 %i.fk, 1
  store i64 %i.fr, ptr %i.em, align 8, !alias.scope !466, !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !449
  %i.fs = load i64, ptr %i.ai, align 8, !alias.scope !470, !noalias !452, !noundef !5 ; 2 uses
  %.promoted.i.i91 = load i64, ptr %i.ah, align 8, !alias.scope !471, !noalias !452 ; 2 uses
  %i.ft = icmp ult i64 %.promoted.i.i91, %i.fs
  br i1 %i.ft, label %.lr.ph.i.i92, label %.loopexit22.i

bb.bs:                                            ; preds = %.body
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !463, !inline_history !335
  unreachable

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit, %bb.bq
  %.promoted.i.i = phi i64 [ %.promoted.i.i.pre, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit ], [ %i.eq, %bb.bq ] ; 2 uses
  %i.fv = phi i64 [ %.pre, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit ], [ %i.eo, %bb.bq ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %.sroa.10.0.ph, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit ], [ %.sroa.0112.0.copyload, %bb.bq ]
  %.sroa.0105.0 = phi i8 [ -1, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit ], [ 4, %bb.bq ]
  %i.fw = load i8, ptr %i.cr, align 8, !noundef !5
  %i.fx = add i8 %i.fw, 1
  store i8 %i.fx, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %.sroa.0105.0, ptr %i.aa, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.fy = icmp ult i64 %.promoted.i.i, %i.fv
  br i1 %i.fy, label %.lr.ph.i.i, label %.loopexit.i63

.lr.ph.i.i:                                       ; preds = %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit
  %i.fz = load ptr, ptr %i.al, align 8, !alias.scope !464, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %.lr.ph.i.i
  %i.ga = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.gd, %bb.bu ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !476, !noundef !5
  switch i8 %i.gc, label %bb.bv [
    i8 32, label %bb.bu
    i8 10, label %bb.bu
    i8 9, label %bb.bu
    i8 13, label %bb.bu
    i8 93, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit.thread
    i8 44, label %bb.bw
  ], !prof !14

bb.bu:                                            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bt
  %i.gd = add i64 %i.ga, 1                        ; 3 uses
  store i64 %i.gd, ptr %i.ah, align 8, !alias.scope !477
  %exitcond.not.i.i = icmp eq i64 %i.gd, %i.fv
  br i1 %exitcond.not.i.i, label %.loopexit.i63, label %bb.bt

.loopexit.i63:                                    ; preds = %bb.bu, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !472
  store i64 2, ptr %i.i, align 8, !noalias !472
  %i.ge = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc unwind label %bb.bz

.noexc:                                           ; preds = %.loopexit.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !472
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !472
  store i64 22, ptr %i.j, align 8, !noalias !472
  %i.gf = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc64 unwind label %bb.bz

.noexc64:                                         ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !472
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit

bb.bw:                                            ; preds = %bb.bt
  %i.gg = add i64 %i.ga, 1                        ; 3 uses
  store i64 %i.gg, ptr %i.ah, align 8, !alias.scope !478
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.gh = icmp ult i64 %i.gg, %i.fv
  br i1 %i.gh, label %.lr.ph.i12.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i

.lr.ph.i12.i:                                     ; preds = %bb.bw, %bb.bx
  %i.gi = phi i64 [ %i.gl, %bb.bx ], [ %i.gg, %bb.bw ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !480, !noundef !5
  switch i8 %i.gk, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i [
    i8 32, label %bb.bx
    i8 10, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 93, label %bb.by
  ]

bb.bx:                                            ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i
  %i.gl = add i64 %i.gi, 1                        ; 3 uses
  store i64 %i.gl, ptr %i.ah, align 8, !alias.scope !481
  %exitcond.not.i13.i = icmp eq i64 %i.gl, %i.fv
  br i1 %exitcond.not.i13.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i, label %.lr.ph.i12.i

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i: ; preds = %bb.bx, %.lr.ph.i12.i, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !472
  store i64 22, ptr %i.k, align 8, !noalias !472
  %i.gm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc65 unwind label %bb.bz

.noexc65:                                         ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !472
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit

bb.by:                                            ; preds = %.lr.ph.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !472
  store i64 21, ptr %i.l, align 8, !noalias !472
  %i.gn = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc66 unwind label %bb.bz

.noexc66:                                         ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !472
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit

bb.bz:                                            ; preds = %bb.by, %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i, %bb.bv, %.loopexit.i63
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #17
          to label %common.resume unwind label %bb.cb

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit: ; preds = %.noexc66, %.noexc65, %.noexc64, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.gf, %.noexc64 ], [ %i.gn, %.noexc66 ], [ %i.ge, %.noexc ], [ %i.gm, %.noexc65 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %.sroa.0.0.i, ptr %i.gp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gq = load i8, ptr %i.ab, align 8, !range !6, !noundef !5
  %i.gr = icmp eq i8 %i.gq, -1
  br i1 %i.gr, label %bb.cc, label %bb.ca

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit.thread: ; preds = %bb.bt
  %i.gs = add i64 %i.ga, 1
  store i64 %i.gs, ptr %i.ah, align 8, !alias.scope !482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gt = load i8, ptr %i.ab, align 8, !range !6, !noundef !5 ; 2 uses
  %i.gu = icmp eq i8 %i.gt, -1
  br i1 %i.gu, label %.thread242, label %.thread240

.thread242:                                       ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit.thread
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !nonnull !5, !align !11, !noundef !5
  %i.gx = ptrtoint ptr %i.gw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread173

.thread240:                                       ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit.thread
  %.sroa.23.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.23.0.copyload274 = load i8, ptr %.sroa.23.0..sroa_idx273, align 1
  %.sroa.25.0..sroa_idx277 = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25.0..sroa_idx277, i64 6, i1 false)
  %.sroa.25279.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.25279.0.copyload281 = load i64, ptr %.sroa.25279.0..sroa_idx280, align 8
  %.sroa.39.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.gy = load <2 x i64>, ptr %.sroa.39.0..sroa_idx284, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread173

bb.ca:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit
  %i.gz = ptrtoint ptr %.sroa.0.0.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab)
  br label %.thread173

bb.cb:                                            ; preds = %bb.cf, %bb.bz
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

.thread173:                                       ; preds = %.thread242, %.thread240, %bb.ca, %bb.cc
  %.sroa.25279.3 = phi i64 [ %i.hd, %bb.cc ], [ %i.gz, %bb.ca ], [ %i.gx, %.thread242 ], [ %.sroa.25279.0.copyload281, %.thread240 ]
  %.sroa.23.1 = phi i8 [ undef, %bb.cc ], [ undef, %bb.ca ], [ undef, %.thread242 ], [ %.sroa.23.0.copyload274, %.thread240 ]
  %.sroa.0.3 = phi i8 [ -1, %bb.cc ], [ -1, %bb.ca ], [ -1, %.thread242 ], [ %i.gt, %.thread240 ]
  %2 = phi <2 x i64> [ undef, %bb.cc ], [ undef, %bb.ca ], [ undef, %.thread242 ], [ %i.gy, %.thread240 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ag

bb.cc:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !nonnull !5, !align !11, !noundef !5
  %i.hd = ptrtoint ptr %i.hc to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %.sroa.0.0.i)
  br label %.thread173

bb.cd:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 24, ptr %i.z, align 8
  %i.he = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.he, ptr %i.hf, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.ce:                                            ; preds = %bb.ae
  %i.hg = add i64 %i.an, 1
  store i64 %i.hg, ptr %i.ah, align 8, !alias.scope !483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true)
  %i.hh = load i8, ptr %i.cv, align 8, !noundef !5
  %i.hi = add i8 %i.hh, 1
  store i8 %i.hi, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.hj = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapB7_(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.cg unwind label %bb.cf     ; 5 uses

bb.cf:                                            ; preds = %bb.ce
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #17
          to label %common.resume unwind label %bb.cb

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.hj, ptr %i.hl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.hm = load i8, ptr %i.x, align 8, !range !6, !noundef !5
  %i.hn = icmp eq i8 %i.hm, -1
  br i1 %i.hn, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not = icmp eq ptr %i.hj, null
  br i1 %.not, label %.thread244, label %bb.cj

.thread244:                                       ; preds = %bb.ch
  %.sroa.0.0.copyload272 = load i8, ptr %i.y, align 8
  %.sroa.23.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.sroa.23.0.copyload276 = load i8, ptr %.sroa.23.0..sroa_idx275, align 1
  %.sroa.25.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25.0..sroa_idx278, i64 6, i1 false)
  %.sroa.25279.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.25279.0.copyload283 = load i64, ptr %.sroa.25279.0..sroa_idx282, align 8
  %.sroa.39.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ho = load <2 x i64>, ptr %.sroa.39.0..sroa_idx286, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.thread176

bb.ci:                                            ; preds = %bb.cg
  %i.hp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !nonnull !5, !align !11, !noundef !5
  %i.hr = ptrtoint ptr %i.hq to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.not179 = icmp eq ptr %i.hj, null
  br i1 %.not179, label %.thread176, label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.hs = ptrtoint ptr %i.hj to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x)
  br label %.thread176

.thread176:                                       ; preds = %.thread244, %bb.cj, %bb.ck, %bb.ci
  %.sroa.25279.4.a = phi i64 [ %i.hr, %bb.ci ], [ %i.hr, %bb.ck ], [ %.sroa.25279.0.copyload283, %.thread244 ], [ %i.hs, %bb.cj ]
  %.sroa.23.2.a = phi i8 [ undef, %bb.ci ], [ undef, %bb.ck ], [ %.sroa.23.0.copyload276, %.thread244 ], [ undef, %bb.cj ]
  %.sroa.0.4.a = phi i8 [ -1, %bb.ci ], [ -1, %bb.ck ], [ %.sroa.0.0.copyload272, %.thread244 ], [ -1, %bb.cj ]
  %i.ht = phi <2 x i64> [ undef, %bb.ci ], [ undef, %bb.ck ], [ %i.ho, %.thread244 ], [ undef, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ag

bb.ck:                                            ; preds = %bb.ci
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %i.hj)
  br label %.thread176

bb.cl:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 10, ptr %i.v, align 8
  %i.hu = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cn

bb.cm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext true)
  %i.hv = load i64, ptr %i.ae, align 8, !range !17, !noundef !5 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, -1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.hw, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %._crit_edge, %bb.cl
  %i.hy = phi ptr [ %i.dc, %._crit_edge ], [ %i.hu, %bb.cl ]
  %i.hz = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0EB8_(ptr noalias noundef nonnull align 8 %i.hy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hz, ptr %i.ia, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.cu

bb.co:                                            ; preds = %bb.cm
  %i.ib = load ptr, ptr %i.hx, align 8, !nonnull !5, !align !11, !noundef !5
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %i.ic, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ah

bb.cp:                                            ; preds = %bb.cm
  %.sroa.2103.0.copyload = load i64, ptr %i.hx, align 8 ; 3 uses
  %i.id = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.2103.0.copyload, i64 0 ; 3 uses
  switch i64 %i.hv, label %default.unreachable378 [
    i64 0, label %bb.cq
    i64 1, label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87
    i64 2, label %bb.ct
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.ie = bitcast i64 %.sroa.2103.0.copyload to double
  %i.if = tail call double @llvm.fabs.f64(double %i.ie)
  %i.ig = fcmp ueq double %i.if, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !484
  br i1 %i.ig, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i81 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i80, align 8, !alias.scope !485, !noalias !484
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i82 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ih = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i82, align 8, !alias.scope !485, !noalias !484
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72

bb.cs:                                            ; preds = %bb.cq
  store i8 0, ptr %i.h, align 8, !noalias !484
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !487
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72: ; preds = %bb.cs, %bb.cr
  %.sroa.5.sroa.4.0.i.i74 = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i81, %bb.cr ], [ 2, %bb.cs ]
  %.sroa.0.0.i.i76 = phi i8 [ 0, %bb.cr ], [ 2, %bb.cs ]
  %i.ii = phi <2 x i64> [ %i.ih, %bb.cr ], [ %i.id, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !484
  br label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87

bb.ct:                                            ; preds = %bb.cp
  %.lobit.i.i67 = lshr i64 %.sroa.2103.0.copyload, 63
  br label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87

_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87: ; preds = %bb.cp, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72, %bb.ct
  %.sroa.25279.5 = phi i64 [ %.sroa.5.sroa.4.0.i.i74, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72 ], [ %.lobit.i.i67, %bb.ct ], [ 0, %bb.cp ]
  %.sroa.0.5 = phi i8 [ %.sroa.0.0.i.i76, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72 ], [ 2, %bb.ct ], [ 2, %bb.cp ]
  %i.ij = phi <2 x i64> [ %i.ii, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72 ], [ %i.id, %bb.ct ], [ %i.id, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.25279.6 = phi i64 [ %.sroa.25279.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.25279.2, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit ], [ %.sroa.25279.1, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit ], [ %.sroa.25279.5, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87 ]
  %.sroa.23.3 = phi i8 [ %.sroa.23.0, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ undef, %bb.j ], [ undef, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit ], [ undef, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit ], [ undef, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87 ]
  %.sroa.0.6 = phi i8 [ %.sroa.0.0, %bb.ag ], [ 1, %bb.q ], [ 1, %bb.z ], [ 0, %bb.j ], [ 3, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit ], [ %.sroa.0.1, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit ], [ %.sroa.0.5, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87 ]
  %i.ik = phi <2 x i64> [ %i.da, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %i.eh, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit ], [ %i.dn, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit ], [ %i.ij, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87 ]
  store i8 %.sroa.0.6, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.23.3, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25, i64 6, i1 false)
  %.sroa.25279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.25279.6, ptr %.sroa.25279.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ik, ptr %.sroa.39.0..sroa_idx, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cn, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.loopexit184, %bb.ah
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtCsbqH9stoieM8_5alloc6string6StringEEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB8_9MapAccesspENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !10, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5
  call void @_RINvXs6_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtNtCsbqH9stoieM8_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs8ZPNfZ0ciAA_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEEB1V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !11, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seedNtNtNtB8_5value2de13KeyClassifierEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB8_9MapAccesspENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !10, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5
  call void @_RINvXsk_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyNtNtBa_4read7StrReadEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !11, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !506, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !507 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !506, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !510, !noundef !5
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !9

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !511
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !504
  store i64 3, ptr %i.a, align 8, !noalias !504
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !504
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !504
  store i64 6, ptr %i.b, align 8, !noalias !504
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !504
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !512
  tail call fastcc void @_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #16, !inline_history !503
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = load i64, ptr %0, align 8, !range !18, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load double, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store double %i.f, ptr %i.g, align 8
  store i8 3, ptr %i.c, align 8
  %i.h = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.i, ptr %i.j, align 8
  store i8 1, ptr %i.b, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.m, align 8
  store i8 2, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %i.n, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #17
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !526, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !526
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !527, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph, label %.thread.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !527, !nonnull !5, !noundef !5
  %i.m = trunc i64 %i.f to i32
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = trunc i64 %i.i to i32                    ; 2 uses
  %i.p = sub i32 %i.n, %i.o
  br label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph, %bb.o
  %.sroa.0.060 = phi i64 [ %3, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.be, %bb.o ] ; 6 uses
  %.sroa.07.059 = phi i32 [ 0, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bf, %bb.o ] ; 4 uses
  %i.q = phi i64 [ %i.g, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !530, !noundef !5 ; 2 uses
  %i.t = add i8 %i.s, -48                         ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.u = icmp eq i32 %.sroa.07.059, 0
  br i1 %i.u, label %bb.d, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

.thread:                                          ; preds = %bb.o
  %i.v = icmp eq i32 %i.n, %i.o
  br i1 %i.v, label %.thread.thread, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %.thread
end_hunk_2
