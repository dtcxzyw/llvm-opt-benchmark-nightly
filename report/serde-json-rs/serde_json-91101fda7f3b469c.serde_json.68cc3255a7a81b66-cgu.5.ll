Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.5?download=true
inline.NumInlined: 94
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEEBa_:bb.a
.loopexit.split-lp:                               ; preds = %bb.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit.i, %bb.k, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.x = load i8, ptr %i.i, align 8, !range !7, !alias.scope !23, !noundef !5
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit unwind label %.loopexit.split-lp

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.36.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit28, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24
  invoke void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtCsbqH9stoieM8_5alloc6string6StringEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %bb.l
  %i.aa = load i64, ptr %i.c, align 8, !range !22, !noalias !25, !noundef !5 ; 2 uses
  switch i64 %i.aa, label %bb.n [
    i64 -2, label %bb.m
    i64 -1, label %.thread40
  ]

.thread40:                                        ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24
  br label %.loopexit45

bb.m:                                             ; preds = %.noexc23
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !25, !nonnull !5, !align !6, !noundef !5
  br label %.thread

bb.n:                                             ; preds = %.noexc23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25
  store i64 %i.aa, ptr %i.b, align 8, !noalias !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25
  invoke void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.p unwind label %bb.o, !noalias !26

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %.body unwind label %bb.t, !noalias !26

bb.p:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.a, align 8, !range !7, !noalias !25, !noundef !5
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !25, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i unwind label %bb.r, !noalias !26

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.s, !noalias !26

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16, !noalias !26
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25
  br label %.thread

bb.t:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16, !noalias !26
  unreachable

.thread:                                          ; preds = %.noexc26, %bb.m
  %.sroa.9.0.ph = phi ptr [ %i.ab, %bb.m ], [ %i.ag, %.noexc26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24
  br label %.loopexit44

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25
  %.sroa.029.0.copyload = load i64, ptr %i.b, align 8, !noalias !25 ; 2 uses
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i, align 8, !noalias !25 ; 2 uses
  %i.ak = load i64, ptr %.sroa.531.0..sroa_idx, align 8, !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24
  switch i64 %.sroa.029.0.copyload, label %bb.v [
    i64 -2, label %.loopexit44
    i64 -1, label %.loopexit45
  ]

.loopexit44:                                      ; preds = %bb.u, %.thread
  %.sroa.9.034 = phi ptr [ %.sroa.9.0.ph, %.thread ], [ %.sroa.430.0.copyload, %bb.u ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.034, ptr %i.al, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.029.0.copyload, ptr %i.f, align 8
  store ptr %.sroa.430.0.copyload, ptr %.sroa.36.0..sroa_idx7, align 8
  store i64 %i.ak, ptr %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx7.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.7, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1w_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.w unwind label %.loopexit

.loopexit45:                                      ; preds = %bb.u, %.thread40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i8 5, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.am = load i8, ptr %i.d, align 8, !range !7, !alias.scope !27, !noundef !5
  %i.an = icmp eq i8 %i.am, -1
  br i1 %i.an, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit28, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit28 unwind label %.loopexit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit28: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.y:                                             ; preds = %bb.b, %bb.z, %bb.d, %.loopexit45
  ret void

bb.z:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit, %.loopexit44
  call void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.z

bb.aa:                                            ; preds = %.body, %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %2 = add i64 %i.i, -1
  %i.l = icmp eq i64 %2, %i.j
  br i1 %i.l, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.m = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.n, align 1, !noalias !36, !noundef !5 ; 2 uses
  %i.o = load i8, ptr %i.e, align 1, !noalias !37, !noundef !5
  %i.p = icmp eq i8 %.val15.i, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.g, align 1, !noalias !37, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.q, %bb.d ], [ %.val15.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.m
  store i8 %.sroa.0.0.i.i.i, ptr %i.r, align 1, !noalias !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.val15.i.1 = load i8, ptr %i.t, align 1, !noalias !36, !noundef !5 ; 2 uses
  %i.u = load i8, ptr %i.e, align 1, !noalias !37, !noundef !5
  %i.v = icmp eq i8 %.val15.i.1, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.g, align 1, !noalias !37, !noundef !5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.w, %bb.f ], [ %.val15.i.1, %bb.e ]
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.m
  %i.y = getelementptr i8, ptr %i.x, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.y, align 1, !noalias !38
  %i.z = add i64 %i.m, 2                          ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load i8, ptr %i.ab, align 1, !noalias !36, !noundef !5 ; 2 uses
  %i.ac = load i8, ptr %i.e, align 1, !noalias !37, !noundef !5
  %i.ad = icmp eq i8 %.val15.i.epil, %i.ac
  br i1 %i.ad, label %bb.h, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.ae = load i8, ptr %i.g, align 1, !noalias !37, !noundef !5
  br label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.ae, %bb.h ], [ %.val15.i.epil, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.af, align 1, !noalias !38
  %i.ag = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa ], [ %i.ag, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !36
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB1w_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3v_8for_each4callNtB1y_5ValueNCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB4T_3VecB4y_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %3 = add i64 %i.b, -1
  %i.e = icmp eq i64 %3, %i.c
  br i1 %i.e, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.d, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.f = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.p, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.g, align 1, !noalias !47, !noundef !5
  %i.h = zext i8 %.val15.i to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.f ; 3 uses
  store i8 2, ptr %i.i, align 8, !noalias !48
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !48
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.h, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.val15.i.1 = load i8, ptr %i.k, align 1, !noalias !47, !noundef !5
  %i.l = zext i8 %.val15.i.1 to i64
  %i.m = getelementptr [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.f ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  store i8 2, ptr %i.n, align 8, !noalias !48
  %.sroa.54.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.m, i64 40
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.1, align 8, !noalias !48
  %.sroa.65.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.m, i64 48
  store i64 %i.l, ptr %.sroa.65.0..sroa_idx.i.i.1, align 8, !noalias !48
  %i.o = add i64 %i.f, 2                          ; 3 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load i8, ptr %i.q, align 1, !noalias !47, !noundef !5
  %i.r = zext i8 %.val15.i.epil to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 3 uses
  store i8 2, ptr %i.s, align 8, !noalias !48
  %.sroa.54.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.epil, align 8, !noalias !48
  %.sroa.65.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.r, ptr %.sroa.65.0..sroa_idx.i.i.epil, align 8, !noalias !48
  %i.t = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit.loopexit.unr-lcssa ], [ %i.t, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !47
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsk_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyNtNtBa_4read7StrReadEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !70, !noalias !71, !noundef !5
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !70, !noalias !71
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !72, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73
  call void @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !71
  %i.i = load i64, ptr %i.c, align 8, !range !74, !noalias !73, !noundef !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !73 ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !71, !noalias !72
  store i64 -1, ptr %0, align 8, !alias.scope !71, !noalias !72
  br label %_RINvXsh_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_strNtNtNtB8_5value2de13KeyClassifierEB8_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !73 ; 8 uses
  %i.n = trunc nuw i64 %i.i to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !76
  %i.o = load i64, ptr %i.b, align 8, !range !8, !noalias !75, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !9, !noalias !75, !noundef !5 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8, !noalias !75
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #18, !noalias !76
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !noalias !75, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = icmp ule i64 %.sroa.4.0.copyload.i.i, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75
  %.not.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, 0
  br i1 %.not.i.i.i, label %_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.i.i, label %_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split.i.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !78
  %i.w = load i64, ptr %i.a, align 8, !range !8, !noalias !77, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !9, !noalias !77, !noundef !5 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !77
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #18, !noalias !78
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.aa, align 8, !noalias !77, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = icmp ule i64 %.sroa.4.0.copyload.i.i, %i.z
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  %.not.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.i.i, label %_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split.i.i

_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split.i.i: ; preds = %bb.i, %bb.f
  %.sink6.i.i = phi ptr [ %i.u, %bb.f ], [ %i.ac, %bb.i ] ; 2 uses
  %.sink5.ph.i.i = phi i64 [ %i.r, %bb.f ], [ %i.z, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink6.i.i, ptr nonnull readonly align 1 %i.l, i64 %.sroa.4.0.copyload.i.i, i1 false), !noalias !71
  br label %_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.i.i

_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.i.i: ; preds = %_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split.i.i, %bb.i, %bb.f
  %.sink5.i.i = phi i64 [ %i.z, %bb.i ], [ %i.r, %bb.f ], [ %.sink5.ph.i.i, %_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split.i.i ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.i ], [ %i.u, %bb.f ], [ %.sink6.i.i, %_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split.i.i ]
  store i64 %.sink5.i.i, ptr %0, align 8, !alias.scope !71, !noalias !72
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !71, !noalias !72
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !71, !noalias !72
  br label %_RINvXsh_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_strNtNtNtB8_5value2de13KeyClassifierEB8_.exit

_RINvXsh_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_strNtNtNtB8_5value2de13KeyClassifierEB8_.exit: ; preds = %bb.b, %_RINvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtNtCs8ZPNfZ0ciAA_10serde_json5value3ser20key_must_be_a_string() unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 17, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value5indexjNtB2_5Index15index_or_insert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = load i8, ptr %1, align 8, !range !4, !noundef !5
  %i.g = icmp eq i8 %i.f, 4
  br i1 %i.g, label %bb.b, label %bb.c, !prof !79

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  store i64 %i.i, ptr %i.d, align 8
  %i.j = icmp ult i64 %i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.j)
end_hunk_0
