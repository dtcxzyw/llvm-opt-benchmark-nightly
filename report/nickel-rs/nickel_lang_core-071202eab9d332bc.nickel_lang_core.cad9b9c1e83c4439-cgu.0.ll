Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$8get_then17h15ef6fff8e1dc027E":bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i64, ptr %i.e, align 8, !noundef !145
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.e, align 8
  br label %.body

bb.f:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.q = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.r = and i64 %i.q, 3                          ; 3 uses
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2)
  switch i64 %..i.i, label %bb.h [
    i64 2, label %.invoke
    i64 0, label %bb.i
  ], !prof !150

bb.h:                                             ; preds = %bb.g
  %i.s = icmp samesign ugt i64 %i.r, 1
  br i1 %i.s, label %.invoke, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i, !prof !147

.invoke:                                          ; preds = %bb.h, %bb.g
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i: ; preds = %bb.h
  %.not.not.i.i.i = icmp eq i64 %i.r, 0
  %i.t = lshr i64 %i.q, 32
  %i.u = trunc nuw i64 %i.t to i32
  %.sroa.3.0.i.i.i = select i1 %.not.not.i.i.i, i32 undef, i32 %i.u
  %i.v = trunc i64 %i.q to i1
  br i1 %i.v, label %bb.l, label %bb.j, !prof !154

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = load i32, ptr %i.w, align 8, !noalias !3087, !noundef !145
  br label %bb.l

bb.j:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @740) #82
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.invoke, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load i64, ptr %i.e, align 8, !noundef !145
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.e, align 8
  br label %.body

bb.l:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i, %bb.i
  %.sroa.0.0.i.i = phi i32 [ %i.x, %bb.i ], [ %.sroa.3.0.i.i.i, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i ]
  store i64 %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3088
  store ptr %0, ptr %i.c, align 8, !noalias !3088
  %i.ab = load i64, ptr %0, align 8, !noalias !3089, !noundef !145 ; 3 uses
  %i.ac = and i64 %i.ab, 72057594037927935
  %i.ad = add nsw i64 %i.ac, -1                   ; 3 uses
  %i.ae = and i64 %i.ab, 1080863910568919040
  %i.af = icmp ult i64 %i.ab, 864691128455135232
  tail call void @llvm.assume(i1 %i.af), !noalias !3090
  %i.ag = or i64 %i.ad, %i.ae
  store i64 %i.ag, ptr %0, align 8, !noalias !3089
  %i.ah = icmp ugt i64 %i.ad, 72057594037927935
  br i1 %i.ah, label %bb.n, label %bb.m, !prof !147

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i64 %i.ad, 0
  br i1 %i.ai, label %bb.o, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3089
  store ptr @2796, ptr %i.b, align 8, !noalias !3089
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aj, align 8, !noalias !3089
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ak, align 8, !noalias !3089
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8, !noalias !3089
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.am, align 8, !noalias !3089
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82, !noalias !3089, !inline_history !7
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #84, !noalias !3088, !inline_history !7
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i": ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3088
  ret i32 %.sroa.0.0.i.i

bb.p:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

.body:                                            ; preds = %bb.f, %bb.e, %bb.k
  %.pn = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.p, %bb.f ], [ %i.m, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hc833b423988a271eE"(ptr noalias noundef align 8 dereferenceable(8) %i.d) #86
          to label %bb.q unwind label %bb.p

bb.q:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @"_ZN102_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..eval..merge..Saturate$GT$8saturate17h0f87ac33a05de7ceE"(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [56 x i8], align 8                ; 8 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [56 x i8], align 8                ; 12 uses
  %i.x = alloca [48 x i8], align 8                ; 15 uses
  %.sroa.10.i.i = alloca [6 x i8], align 2        ; 4 uses
  %i.y = alloca [56 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 7 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 2 uses
  store ptr %0, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ag = and i64 %i.af, 3                        ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 2)
  switch i64 %..i, label %bb.b [
    i64 2, label %.invoke
    i64 0, label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.thread
  ], !prof !150

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp samesign ugt i64 %i.ag, 1
  br i1 %i.ah, label %.invoke, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i, !prof !147

.invoke:                                          ; preds = %bb.b, %bb.a
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont unwind label %bb.ct

.cont:                                            ; preds = %.invoke
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i: ; preds = %bb.b
  %i.ai = trunc i64 %i.af to i1
  br i1 %i.ai, label %.thread, label %bb.c, !prof !154

_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.thread: ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !noalias !3194, !noundef !145
  %i.al = load i64, ptr %0, align 8, !noalias !3195, !noundef !145 ; 3 uses
  %i.am = icmp ult i64 %i.al, 864691128455135232
  tail call void @llvm.assume(i1 %i.am)
  %.mask.i = and i64 %i.al, 1080863910568919040
  %.not = icmp eq i64 %.mask.i, 288230376151711744
  br i1 %.not, label %bb.d, label %.thread

bb.c:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @740) #82
          to label %.noexc12 unwind label %bb.ct

.noexc12:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %0, ptr %i.ad, align 8
  %i.an = and i64 %i.al, 72057594037927935        ; 3 uses
  %i.ao = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 288230376151711745
  store i64 %i.ap, ptr %0, align 8
  %i.aq = icmp eq i64 %i.an, 72057594037927935
  br i1 %i.aq, label %bb.e, label %bb.g, !prof !147

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr @2796, ptr %i.ac, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %i.au, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.noexc15 unwind label %bb.f

.noexc15:                                         ; preds = %bb.e
  unreachable

.body16:                                          ; preds = %.body26.i.i, %bb.cn, %.split.i.i, %.body18.thread.i.i, %bb.cm, %bb.f
  %.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %.pn.pn.pn.i.i, %.body26.i.i ], [ %.pn.pn.pn.pn79.i.i, %.body18.thread.i.i ], [ %i.cf, %bb.cm ], [ %.pn.pn.pn.i.i, %.split.i.i ], [ %.pn.pn.pn.i.i, %bb.cn ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hc833b423988a271eE"(ptr noalias noundef align 8 dereferenceable(8) %i.ad) #86
          to label %.body.thread unwind label %bb.cs

bb.f:                                             ; preds = %bb.e, %bb.co
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !145 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 9223372036854775807
  br i1 %i.ay, label %bb.i, label %bb.h, !prof !154

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @702) #82
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = add nuw nsw i64 %i.ax, 1
  store i64 %i.az, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = invoke noundef ptr @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData4deps17h8d46754d77d437e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ba)
          to label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i unwind label %bb.j ; 9 uses

bb.j:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load i64, ptr %i.aw, align 8, !noundef !145
  %i.be = add i64 %i.bd, -1
  store i64 %i.be, ptr %i.aw, align 8
  br label %.body18.thread.i.i

bb.k:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body18.thread.i.i

.body26.i.i:                                      ; preds = %.body31.i.i, %.body.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i26.i.i.i.i", %bb.cj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.bq, %bb.r, %bb.l
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ca, %bb.r ], [ %i.bh, %bb.l ], [ %.pn.ph.i.i, %.body31.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.ii, %bb.cj ], [ %i.gr, %bb.bq ], [ %i.gr, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.ii, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i26.i.i.i.i" ] ; 3 uses
  %.sroa.06.0.i.i = phi i1 [ true, %bb.r ], [ true, %bb.l ], [ %i.cc, %.body31.i.i ], [ %i.cc, %.body.i.i.i.i ], [ %i.cc, %bb.cj ], [ %i.cc, %bb.bq ], [ %i.cc, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.cc, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i26.i.i.i.i" ]
  %i.bg = icmp ne ptr %i.bb, null
  %or.cond.i.i = and i1 %i.bg, %.sroa.06.0.i.i
  br i1 %or.cond.i.i, label %bb.cn, label %.body16

bb.l:                                             ; preds = %bb.q, %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body26.i.i

_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i: ; preds = %bb.i
  %i.bi = load i64, ptr %i.aw, align 8, !noundef !145
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.aw, align 8
  store ptr %i.bb, ptr %i.aa, align 8
  %i.bk = load i32, ptr %i.aj, align 8, !noalias !3196, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %0, ptr %i.u, align 8, !noalias !3197
  %i.bl = load i64, ptr %0, align 8, !noalias !3197, !noundef !145
  %i.bm = and i64 %i.bl, 72057594037927935
  %.not.i.i.i = icmp eq i64 %i.bm, 1
  br i1 %.not.i.i.i, label %"_ZN16nickel_lang_core4eval5value4lens18ValueLens$LT$T$GT$16extract_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17h7163a9bf824269deE.exit.thread.i.i.i", label %bb.m

bb.m:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i
  invoke fastcc void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h056448479d7d82afE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.y, ptr noundef nonnull align 8 %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @765)
          to label %"_ZN16nickel_lang_core4eval5value4lens18ValueLens$LT$T$GT$16extract_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17h7163a9bf824269deE.exit.i.i.i" unwind label %bb.r

"_ZN16nickel_lang_core4eval5value4lens18ValueLens$LT$T$GT$16extract_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17h7163a9bf824269deE.exit.thread.i.i.i": ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 56, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #83, !noalias !3197
  br label %bb.s

bb.n:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !3197
  unreachable

"_ZN16nickel_lang_core4eval5value4lens18ValueLens$LT$T$GT$16extract_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17h7163a9bf824269deE.exit.i.i.i": ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3198
  store ptr %0, ptr %i.t, align 8, !noalias !3198
  %i.bo = load i64, ptr %0, align 8, !noalias !3199, !noundef !145 ; 3 uses
  %i.bp = and i64 %i.bo, 72057594037927935
  %i.bq = add nsw i64 %i.bp, -1                   ; 3 uses
  %i.br = and i64 %i.bo, 1080863910568919040
  %i.bs = icmp ult i64 %i.bo, 864691128455135232
  tail call void @llvm.assume(i1 %i.bs), !noalias !3200
  %i.bt = or i64 %i.bq, %i.br
  store i64 %i.bt, ptr %0, align 8, !noalias !3199
  %i.bu = icmp ugt i64 %i.bq, 72057594037927935
  br i1 %i.bu, label %bb.p, label %bb.o, !prof !147

bb.o:                                             ; preds = %"_ZN16nickel_lang_core4eval5value4lens18ValueLens$LT$T$GT$16extract_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17h7163a9bf824269deE.exit.i.i.i"
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %bb.q, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i.i.i"

bb.p:                                             ; preds = %"_ZN16nickel_lang_core4eval5value4lens18ValueLens$LT$T$GT$16extract_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17h7163a9bf824269deE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3199
  store ptr @2796, ptr %i.s, align 8, !noalias !3199
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.bw, align 8, !noalias !3199
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.bx, align 8, !noalias !3199
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.by, align 8, !noalias !3199
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %i.bz, align 8, !noalias !3199
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.noexc24.i.i unwind label %bb.l

.noexc24.i.i:                                     ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #84
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i.i.i" unwind label %bb.l

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i.i.i": ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3198
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #86
          to label %.body26.i.i unwind label %bb.n, !noalias !3197

bb.s:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i.i.i", %"_ZN16nickel_lang_core4eval5value4lens18ValueLens$LT$T$GT$16extract_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17h7163a9bf824269deE.exit.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.cb, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.cc = icmp eq ptr %i.bb, null                 ; 7 uses
  br i1 %i.cc, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.bb, ptr %i.v, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.cd = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #83 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.u, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf12b9425191dbcdeE.exit.i.i", !prof !155

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #82
          to label %.noexc28.i.i unwind label %bb.v

.noexc28.i.i:                                     ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load i64, ptr %i.bb, align 8, !noalias !3201, !noundef !145
  %i.ch = add i64 %i.cg, -1                       ; 2 uses
  store i64 %i.ch, ptr %i.bb, align 8, !noalias !3201
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.w, label %bb.cm

bb.w:                                             ; preds = %bb.v
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.v)
  br label %bb.cm

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf12b9425191dbcdeE.exit.i.i": ; preds = %bb.t
  store ptr %i.bb, ptr %i.cd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf12b9425191dbcdeE.exit.i.i", %bb.s
  %.sroa.5.0.i.i = phi ptr [ @706, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf12b9425191dbcdeE.exit.i.i" ], [ @707, %bb.s ] ; 14 uses
end_hunk_0
