Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight15highlight_shell:bb.a

bb.m:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.ah, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish9highlight9highlight11HighlighterEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %bb.o unwind label %bb.f

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %.pn2, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.o
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.r:                                             ; preds = %bb.h, %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight15is_veritable_cd(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 2
  br i1 %i.a, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 4
  %i.c = icmp ne i64 %i.b, 429496729699
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call { ptr, i1 } @_RNvNtCs8frGy5WneL6_4fish8complete17complete_wrap_map() ; 2 uses
  %i.g = extractvalue { ptr, i1 } %i.f, 0         ; 10 uses
  %i.h = extractvalue { ptr, i1 } %i.f, 1         ; 2 uses
  %i.i = zext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2439, !noundef !12
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBO_ENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.o = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @404, i64 noundef 2)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  %i.p = lshr i64 %i.o, 57
  %i.q = trunc nuw nsw i64 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2442, !noundef !12 ; 2 uses
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !2442, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.ar, %bb.f ]
  %.pn.i.i = phi i64 [ %i.o, %.noexc ], [ %i.as, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.s      ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i17.i.i = load <16 x i8>, ptr %i.w, align 1, !noalias !2443 ; 2 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i17.i.i, %i.v
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.not23.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not23.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i
  %.sroa.06.0.i24.i.i = phi i16 [ %i.aq, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i ], [ %i.y, %bb.e ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i24.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.01.0.i.i.i, %i.aa
  %i.ac = and i64 %i.ab, %i.s
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [48 x i8], ptr %i.t, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -32
  %.val4.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !2444, !noalias !2445, !noundef !12
  %i.ag = icmp eq i64 %.val4.i.i.i, 2
  br i1 %i.ag, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, !prof !46

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ah = getelementptr i8, ptr %i.ae, i64 -40
  %.val3.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !2446, !nonnull !12, !noundef !12
  %i.ai = load i64, ptr %.val3.i.i.i, align 4
  %i.aj = icmp ne i64 429496729699, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBO_ENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, !prof !47

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, %bb.e
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i17.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBO_ENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, !prof !16

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.i.i
  %i.ap = add i16 %.sroa.06.0.i24.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.06.0.i24.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.as = add i64 %.sroa.01.0.i.i.i, %i.ar
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish(ptr nonnull %i.g, i8 %i.i) #48
          to label %bb.m unwind label %bb.l

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBO_ENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.i.i, %bb.c
  %.sroa.0.1.i = phi i1 [ true, %bb.c ], [ false, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBS_EEE4findNCINvNtBa_3map14equivalent_keyNtNtBW_6utfstr8Utf32StrBS_B1J_E0E0Cs8frGy5WneL6_4fish.exit.i.i ], [ true, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br i1 %i.h, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBO_ENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit
  %i.av = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aw = and i64 %i.av, 9223372036854775807
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.ay, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.au monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBO_ENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit
  %i.az = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.ba = icmp eq i32 %i.az, 2
  br i1 %i.ba, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit, !prof !16

bb.k:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.k, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.sroa.0.1.i, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.1.i, %bb.k ]
  ret i1 %.sroa.0.0

bb.l:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.m:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.at
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight21color_string_internal(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 65536, 917505) %2, ptr noalias nofree noundef nonnull captures(address) %3, i64 noundef range(i64 0, 2305843009213693952) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.0.extract.shift = lshr i32 %2, 16      ; 3 uses
  %.sroa.6.0.extract.trunc = trunc nuw nsw i32 %.sroa.6.0.extract.shift to i8
  %i.a = and i32 %2, 255
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtB5_13SliceContains14slice_containsBI_.exit

bb.b:                                             ; preds = %bb.a
  %5 = and i32 %2, 65280
  %i.c = icmp eq i32 %5, 0
  %i.d = add nsw i32 %.sroa.6.0.extract.shift, -7
  %or.cond412 = icmp ult i32 %i.d, 2
  %i.e = and i32 %2, 917504
  %i.f = icmp eq i32 %i.e, 131072
  %or.cond407414 = or i1 %or.cond412, %i.f
  %i.g = icmp eq i32 %.sroa.6.0.extract.shift, 4
  %or.cond408415 = or i1 %or.cond407414, %i.g
  %or.cond409 = and i1 %or.cond408415, %i.c
  br i1 %or.cond409, label %.split.i.i, label %_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtB5_13SliceContains14slice_containsBI_.exit

_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtB5_13SliceContains14slice_containsBI_.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @405, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #54
  unreachable

.split.i.i:                                       ; preds = %bb.b
  %.idx.i = shl nuw nsw i64 %4, 2                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i
  %i.i = icmp eq i64 %4, 0                        ; 2 uses
  br i1 %i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split.i.i
  %i.j = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader529, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775800      ; 3 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %3, i64 %i.m
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %3, i64 %i.o  ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 1, !alias.scope !2457
  store <4 x i32> %broadcast.splat, ptr %i.p, align 1, !alias.scope !2457
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !2449

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %.lr.ph.i.preheader529

.lr.ph.i.preheader529:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.03.07.i.ph = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader529, %.lr.ph.i
  %.sroa.03.07.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader529 ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4 ; 2 uses
  store i32 %2, ptr %.sroa.03.07.i, align 1, !alias.scope !2457
  %i.s = icmp eq ptr %i.r, %i.h
  br i1 %i.s, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %.lr.ph.i, !llvm.loop !2450

_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit: ; preds = %.lr.ph.i, %middle.block, %.split.i.i
  switch i64 %1, label %.lr.ph.jt0.preheader [
    i64 5, label %bb.c
    i64 0, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit101
  ]

bb.c:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit
  %i.t = load i128, ptr %0, align 4
  %i.u = xor i128 %i.t, 8556641553403669612041332588581
  %i.v = getelementptr i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i128
  %i.y = xor i128 %i.x, 102
  %i.z = or i128 %i.u, %i.y
  %i.aa = icmp ne i128 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.lr.ph.jt0.preheader

.lr.ph.jt0.preheader:                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit, %bb.c
  br label %.lr.ph.jt0

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp samesign ugt i64 %4, 4
  br i1 %i.ad, label %.lr.ph.i99.preheader, label %bb.dz, !prof !15

.lr.ph.i99.preheader:                             ; preds = %bb.d
  store <4 x i32> splat (i32 720896), ptr %3, align 1, !alias.scope !2458
  %.sroa.03.07.i100.ptr.4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 720896, ptr %.sroa.03.07.i100.ptr.4, align 1, !alias.scope !2458
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit101

._crit_edge:                                      ; preds = %bb.cy, %bb.da, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt1.backedge
  %i.ae = icmp ult i64 %.sink410, %4
  br i1 %i.ae, label %.thread, label %bb.e

.thread:                                          ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink410
  store i32 65536, ptr %i.af, align 1
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit101

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sink410, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #54
  unreachable

_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit101: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit, %.lr.ph.i99.preheader, %.thread
  ret void

.lr.ph.jt0:                                       ; preds = %.lr.ph.jt0.preheader, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0
  %.sink410 = phi i64 [ %i.jk, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0 ], [ 0, %.lr.ph.jt0.preheader ] ; 64 uses
  %.sroa.09.0272330 = phi i32 [ %.sroa.09.1131.jt0, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0 ], [ 0, %.lr.ph.jt0.preheader ] ; 16 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sink410 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !range !33, !noundef !12
  switch i32 %i.ah, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0 [
    i32 92, label %bb.f
    i32 126, label %bb.bq
    i32 36, label %bb.cb
    i32 63, label %bb.br
    i32 42, label %bb.bs
    i32 40, label %bb.bs
    i32 41, label %bb.bs
    i32 123, label %bb.bt
    i32 125, label %bb.bu
    i32 44, label %bb.bv
    i32 39, label %bb.bw
    i32 34, label %bb.bx
  ]

.lr.ph465:                                        ; preds = %bb.cy, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt1.backedge
  %i.ai = phi i64 [ %i.ie, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt1.backedge ], [ %i.ht, %bb.cy ] ; 8 uses
  %i.aj = phi i64 [ %.be, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt1.backedge ], [ %.sink410, %bb.cy ]
  %i.ak = icmp ult i64 %i.ai, %4
  br i1 %i.ak, label %bb.dc, label %bb.dd

.lr.ph462:                                        ; preds = %bb.da, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge
  %i.al = phi i64 [ %i.iy, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge ], [ %i.hw, %bb.da ] ; 11 uses
  %i.am = phi i64 [ %.be363, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge ], [ %.sink410, %bb.da ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !range !33, !noundef !12
  %i.ap = icmp ult i64 %i.al, %4
  br i1 %i.ap, label %bb.dj, label %bb.dk

bb.f:                                             ; preds = %.lr.ph.jt0
  %i.aq = add nuw i64 %.sink410, 1                ; 12 uses
  %i.ar = icmp ult i64 %i.aq, %1
  br i1 %i.ar, label %bb.g, label %.thread119

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !range !33, !noundef !12 ; 5 uses
  switch i32 %i.at, label %bb.j [
    i32 0, label %.thread119
    i32 126, label %bb.h
    i32 37, label %bb.h
    i32 44, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.au = icmp eq i64 %.sink410, 0
  %spec.select92 = select i1 %i.au, i64 2, i64 %.sink410
  br label %bb.bm

bb.i:                                             ; preds = %bb.g
  %i.av = icmp eq i32 %.sroa.09.0272330, 0
  %i.aw = add nuw i64 %.sink410, 2
  %spec.select411 = select i1 %i.av, i64 %.sink410, i64 %i.aw
  br label %.thread119

bb.j:                                             ; preds = %bb.g
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in(i32 noundef %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @408, i64 noundef 28) #52
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp eq i32 %i.at, 99
  br i1 %i.ay, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.az = add nuw i64 %.sink410, 2
  br label %.thread119

bb.m:                                             ; preds = %bb.k
  %i.ba = add nuw i64 %.sink410, 2
  br label %.thread119

bb.n:                                             ; preds = %bb.k
  %i.bb = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in(i32 noundef %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @409, i64 noundef 12) #52
  br i1 %i.bb, label %bb.o, label %.thread119

bb.o:                                             ; preds = %bb.n
  switch i32 %i.at, label %bb.s [
    i32 117, label %bb.p
    i32 85, label %bb.q
    i32 120, label %bb.r
    i32 88, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bc = add nuw i64 %.sink410, 2
  br label %bb.s
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight21color_string_internal:bb.a
bb.bz:                                            ; preds = %bb.by
  store i32 720896, ptr %3, align 1
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0

bb.ca:                                            ; preds = %bb.by
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @417) #54
  unreachable

bb.cb:                                            ; preds = %.lr.ph.jt0
  %i.gw = icmp ugt i64 %.sink410, %4
  br i1 %i.gw, label %bb.cd, label %bb.cc, !prof !16

bb.cc:                                            ; preds = %bb.cb
  %i.gx = sub nuw i64 %1, %.sink410
  %i.gy = sub nuw nsw i64 %4, %.sink410
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink410
  %i.ha = tail call fastcc noundef i64 @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight14color_variable(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ag, i64 noundef %i.gx, ptr noalias nofree noundef nonnull %i.gz, i64 noundef %i.gy)
  %i.hb = add i64 %i.ha, %.sink410                ; 3 uses
  %i.hc = icmp ult i64 %i.hb, %.sink410
  br i1 %i.hc, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sink410, i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #54
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.hd = icmp eq i64 %i.hb, 0
  br i1 %i.hd, label %bb.ch, label %bb.cg

bb.cf:                                            ; preds = %bb.cc
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @418) #54
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.he = add i64 %i.hb, -1
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0

bb.ch:                                            ; preds = %bb.ce
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @419) #54
  unreachable

bb.ci:                                            ; preds = %bb.br
  %i.hf = icmp ult i64 %.sink410, %4
  br i1 %i.hf, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink410
  store i32 720896, ptr %i.hg, align 1
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0

bb.ck:                                            ; preds = %bb.ci
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sink410, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @421) #54
  unreachable

bb.cl:                                            ; preds = %bb.bs
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink410
  store i32 720896, ptr %i.hh, align 1
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0

bb.cm:                                            ; preds = %bb.bs
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sink410, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #54
  unreachable

bb.cn:                                            ; preds = %bb.bt
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink410
  store i32 720896, ptr %i.hi, align 1
  %i.hj = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.09.0272330, i32 1) ; 2 uses
  %i.hk = extractvalue { i32, i1 } %i.hj, 1
  br i1 %i.hk, label %bb.cq, label %bb.cp

bb.co:                                            ; preds = %bb.bt
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sink410, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @423) #54
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.hl = extractvalue { i32, i1 } %i.hj, 0
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0

bb.cq:                                            ; preds = %bb.cn
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @424) #54
  unreachable

bb.cr:                                            ; preds = %bb.bu
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink410
  store i32 720896, ptr %i.hm, align 1
  %i.hn = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.09.0272330, i32 -1) ; 2 uses
  %i.ho = extractvalue { i32, i1 } %i.hn, 1
  br i1 %i.ho, label %bb.cu, label %bb.ct

bb.cs:                                            ; preds = %bb.bu
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sink410, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #54
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.hp = extractvalue { i32, i1 } %i.hn, 0
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0

bb.cu:                                            ; preds = %bb.cr
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @426) #54
  unreachable

bb.cv:                                            ; preds = %bb.bv
  %i.hq = icmp ult i64 %.sink410, %4
  br i1 %i.hq, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink410
  store i32 720896, ptr %i.hr, align 1
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0

bb.cx:                                            ; preds = %bb.cv
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sink410, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @427) #54
  unreachable

bb.cy:                                            ; preds = %bb.bw
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink410
  store i32 851968, ptr %i.hs, align 1
  %i.ht = add nuw i64 %.sink410, 1                ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %1
  br i1 %i.hu, label %.lr.ph465, label %._crit_edge

bb.cz:                                            ; preds = %bb.bw
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sink410, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #54
  unreachable

bb.da:                                            ; preds = %bb.bx
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink410
  store i32 851968, ptr %i.hv, align 1
  %i.hw = add nuw i64 %.sink410, 1                ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %1
  br i1 %i.hx, label %.lr.ph462, label %._crit_edge

bb.db:                                            ; preds = %bb.bx
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sink410, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @429) #54
  unreachable

_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98: ; preds = %.lr.ph.i96, %middle.block478, %bb.bo
  %i.hy = icmp eq i64 %i.fw, -1
  br i1 %i.hy, label %bb.dy, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0

bb.dc:                                            ; preds = %.lr.ph465
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ia = load i32, ptr %i.hz, align 4, !range !33, !noundef !12
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai ; 2 uses
  store i32 851968, ptr %i.ib, align 1
  switch i32 %i.ia, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt1.backedge [
    i32 92, label %bb.de
    i32 39, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0
  ]

bb.dd:                                            ; preds = %.lr.ph465
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @430) #54
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.ic = add nuw i64 %i.aj, 2                    ; 6 uses
  %i.id = icmp ult i64 %i.ic, %1
  br i1 %i.id, label %bb.df, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt1.backedge

_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt1.backedge: ; preds = %bb.de, %bb.dh, %bb.df, %bb.dc
  %.be = phi i64 [ %i.ai, %bb.dc ], [ %i.ai, %bb.de ], [ %i.ic, %bb.dh ], [ %i.ai, %bb.df ] ; 2 uses
  %i.ie = add nuw i64 %.be, 1                     ; 2 uses
  %i.if = icmp ult i64 %i.ie, %1
  br i1 %i.if, label %.lr.ph465, label %._crit_edge

bb.df:                                            ; preds = %bb.de
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ic
  %i.ih = load i32, ptr %i.ig, align 4, !range !33, !noundef !12
  switch i32 %i.ih, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt1.backedge [
    i32 92, label %bb.dg
    i32 39, label %bb.dg
  ]

bb.dg:                                            ; preds = %bb.df, %bb.df
  store i32 786432, ptr %i.ib, align 1
  %i.ii = icmp ult i64 %i.ic, %4
  br i1 %i.ii, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ic
  store i32 786432, ptr %i.ij, align 1
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt1.backedge

bb.di:                                            ; preds = %bb.dg
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ic, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #54
  unreachable

bb.dj:                                            ; preds = %.lr.ph462
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.al ; 7 uses
  %i.il = load i8, ptr %i.ik, align 1, !range !14, !noundef !12
  %i.im = icmp eq i8 %i.il, 0
  br i1 %i.im, label %bb.dl, label %bb.do

bb.dk:                                            ; preds = %.lr.ph462
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #54
  unreachable

bb.dl:                                            ; preds = %bb.dj
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  %i.io = load i8, ptr %i.in, align 1, !range !14, !noundef !12
  %i.ip = icmp eq i8 %i.io, 0
  br i1 %i.ip, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !range !39, !noundef !12
  %i.is = icmp eq i8 %i.ir, %.sroa.6.0.extract.trunc
  br i1 %i.is, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  %i.iu = load i8, ptr %i.it, align 1, !range !39, !noundef !12
  %i.iv = icmp eq i8 %i.iu, 0
  br i1 %i.iv, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dj, %bb.dm, %bb.dl, %bb.dp
  switch i32 %i.ao, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge [
    i32 34, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0
    i32 92, label %bb.dq
    i32 36, label %bb.dr
  ]

bb.dp:                                            ; preds = %bb.dn
  store i32 851968, ptr %i.ik, align 1
  br label %bb.do

bb.dq:                                            ; preds = %bb.do
  %i.iw = add nuw i64 %i.am, 2                    ; 6 uses
  %i.ix = icmp ult i64 %i.iw, %1
  br i1 %i.ix, label %bb.ds, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge

_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge: ; preds = %bb.dq, %bb.du, %bb.ds, %bb.do, %bb.dx
  %.be363 = phi i64 [ %i.ji, %bb.dx ], [ %i.al, %bb.dq ], [ %i.iw, %bb.du ], [ %i.al, %bb.ds ], [ %i.al, %bb.do ] ; 2 uses
  %i.iy = add nuw i64 %.be363, 1                  ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %1
  br i1 %i.iz, label %.lr.ph462, label %._crit_edge

bb.dr:                                            ; preds = %bb.do
  %i.ja = sub nuw i64 %1, %i.al
  %i.jb = sub nuw nsw i64 %4, %i.al
  %i.jc = tail call fastcc noundef i64 @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight14color_variable(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.an, i64 noundef %i.ja, ptr noalias nofree noundef nonnull %i.ik, i64 noundef %i.jb) ; 2 uses
  %i.jd = add i64 %i.jc, %i.al
  %.not = icmp ugt i64 %i.jd, %i.am
  br i1 %.not, label %bb.dx, label %bb.dw

bb.ds:                                            ; preds = %bb.dq
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.iw
  %i.jf = load i32, ptr %i.je, align 4, !range !33, !noundef !12
  switch i32 %i.jf, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge [
    i32 92, label %bb.dt
    i32 34, label %bb.dt
    i32 10, label %bb.dt
    i32 36, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds, %bb.ds, %bb.ds
  store i32 786432, ptr %i.ik, align 1
  %i.jg = icmp ult i64 %i.iw, %4
  br i1 %i.jg, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.iw
  store i32 786432, ptr %i.jh, align 1
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge

bb.dv:                                            ; preds = %bb.dt
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.iw, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @433) #54
  unreachable

bb.dw:                                            ; preds = %bb.dr
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434) #54
  unreachable

bb.dx:                                            ; preds = %bb.dr
  %i.ji = add i64 %i.jc, %i.am
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt2.backedge

_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98.thread.jt0: ; preds = %bb.do, %bb.dc, %.lr.ph.jt0, %bb.bz, %bb.bq, %bb.cg, %bb.br, %bb.cj, %bb.cl, %bb.cp, %bb.ct, %bb.cw, %bb.bv, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98
  %i.jj = phi i64 [ %i.fw, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98 ], [ %.sink410, %bb.cw ], [ %.sink410, %bb.ct ], [ %.sink410, %bb.cp ], [ %i.ai, %bb.dc ], [ %.sink410, %bb.cl ], [ %.sink410, %bb.bv ], [ %.sink410, %bb.cj ], [ %.sink410, %bb.br ], [ %i.he, %bb.cg ], [ %.sink410, %bb.bq ], [ 0, %bb.bz ], [ %.sink410, %.lr.ph.jt0 ], [ %i.al, %bb.do ]
  %.sroa.09.1131.jt0 = phi i32 [ %.sroa.09.0272330, %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98 ], [ %.sroa.09.0272330, %bb.cw ], [ %i.hp, %bb.ct ], [ %i.hl, %bb.cp ], [ %.sroa.09.0272330, %bb.dc ], [ %.sroa.09.0272330, %bb.cl ], [ %.sroa.09.0272330, %bb.bv ], [ %.sroa.09.0272330, %bb.cj ], [ %.sroa.09.0272330, %bb.br ], [ %.sroa.09.0272330, %bb.cg ], [ %.sroa.09.0272330, %bb.bq ], [ %.sroa.09.0272330, %bb.bz ], [ %.sroa.09.0272330, %.lr.ph.jt0 ], [ %.sroa.09.0272330, %bb.do ]
  %i.jk = add nuw i64 %i.jj, 1                    ; 2 uses
  %i.jl = icmp ult i64 %i.jk, %1
  br i1 %i.jl, label %.lr.ph.jt0, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit101

bb.dy:                                            ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit98
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #54
  unreachable

bb.dz:                                            ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 5, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight22highlight_and_colorize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(64) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight15highlight_shell(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %3, i1 noundef zeroext false, i64 noundef 0, i64 undef)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #48
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !range !41, !alias.scope !2463, !noundef !12
  switch i64 %i.e, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2463, !nonnull !12, !align !13, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2463, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2463, !nonnull !12, !align !13, !noundef !12
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2463, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2463, !nonnull !12, !align !13, !noundef !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.4.0.i = phi ptr [ @58, %bb.d ], [ %i.l, %bb.e ], [ %i.p, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.n, %bb.f ]
  %i.q = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.r = load i64, ptr %i.c, align 8, !noundef !12
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight8colorize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r, ptr noundef nonnull %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.4.0.i)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight29parse_text_face_for_highlight(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([18 x i8]) align 1 captures(none) dereferenceable(18) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [19 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @_RNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face(ptr noalias nofree noundef nonnull sret([19 x i8]) align 1 captures(none) dereferenceable(19) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.g = load i8, ptr %i.f, align 2, !range !14, !alias.scope !2473, !noalias !2474, !noundef !12
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1                   ; 2 uses
  %or.cond = select i1 %i.h, i1 %.not.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 11
end_hunk_1
