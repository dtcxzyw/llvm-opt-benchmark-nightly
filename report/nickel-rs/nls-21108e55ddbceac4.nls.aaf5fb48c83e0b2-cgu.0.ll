Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E":bb.a
  br label %.body

bb.l:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ag, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9ebd1172f649ab62E"(ptr nonnull %1) #77
          to label %bb.r unwind label %bb.q

bb.m:                                             ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i
  store ptr %.val.i.i, ptr %0, align 8, !alias.scope !2194, !noalias !2193
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val1.i.i, ptr %i.ak, align 8, !alias.scope !2194, !noalias !2193
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val2.i.i, ptr %i.al, align 8, !alias.scope !2194, !noalias !2193
  %i.am = load i64, ptr %i.e, align 8, !noalias !2191, !noundef !44
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.e, align 8, !noalias !2191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2196
  store ptr %1, ptr %i.c, align 8, !noalias !2196
  %i.ao = load i64, ptr %1, align 8, !noalias !2197, !noundef !44 ; 3 uses
  %i.ap = and i64 %i.ao, 72057594037927935
  %i.aq = add nsw i64 %i.ap, -1                   ; 3 uses
  %i.ar = and i64 %i.ao, 1080863910568919040
  %i.as = icmp ult i64 %i.ao, 864691128455135232
  tail call void @llvm.assume(i1 %i.as)
  %i.at = or i64 %i.aq, %i.ar
  store i64 %i.at, ptr %1, align 8, !noalias !2197
  %i.au = icmp ugt i64 %i.aq, 72057594037927935
  br i1 %i.au, label %bb.o, label %bb.n, !prof !49

bb.n:                                             ; preds = %bb.m
  %i.av = icmp eq i64 %i.aq, 0
  br i1 %i.av, label %bb.p, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i"

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2197
  store ptr @2307, ptr %i.b, align 8, !noalias !2197
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aw, align 8, !noalias !2197
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ax, align 8, !noalias !2197
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8, !noalias !2197
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.az, align 8, !noalias !2197
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75, !noalias !2197
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !2196
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i": ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2196
  ret void

bb.q:                                             ; preds = %.body
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.r:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$8get_then17h48a5ab1f69deaa56E"(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !44 ; 2 uses
  %i.e = icmp ult i64 %i.d, 9223372036854775807
  br i1 %i.e, label %bb.c, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #75
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.d, 1
  store i64 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData7closure17hedc0e3ee515c165eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load i64, ptr %i.c, align 8, !noundef !44
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.c, align 8
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.m = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.c, align 8, !noundef !44
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.c, align 8
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.c, align 8, !noundef !44
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2204
  store ptr %0, ptr %i.b, align 8, !noalias !2204
  %i.s = load i64, ptr %0, align 8, !noalias !2205, !noundef !44 ; 3 uses
  %i.t = and i64 %i.s, 72057594037927935
  %i.u = add nsw i64 %i.t, -1                     ; 3 uses
  %i.v = and i64 %i.s, 1080863910568919040
  %i.w = icmp ult i64 %i.s, 864691128455135232
  tail call void @llvm.assume(i1 %i.w)
  %i.x = or i64 %i.u, %i.v
  store i64 %i.x, ptr %0, align 8, !noalias !2205
  %i.y = icmp ugt i64 %i.u, 72057594037927935
  br i1 %i.y, label %bb.j, label %bb.i, !prof !49

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i64 %i.u, 0
  br i1 %i.z, label %bb.k, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i"

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2205
  store ptr @2307, ptr %i.a, align 8, !noalias !2205
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.aa, align 8, !noalias !2205
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ab, align 8, !noalias !2205
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !noalias !2205
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ad, align 8, !noalias !2205
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75, !noalias !2205
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !2204
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i": ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2204
  ret i32 %i.m

bb.l:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

.body:                                            ; preds = %bb.e, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.l, %bb.e ], [ %i.i, %bb.d ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9ebd1172f649ab62E"(ptr nonnull %0) #77
          to label %bb.m unwind label %bb.l

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @"_ZN102_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..eval..merge..Saturate$GT$8saturate17h9f39861f6733e6caE"(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [56 x i8], align 8                ; 11 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [56 x i8], align 8                ; 12 uses
  %i.y = alloca [48 x i8], align 8                ; 15 uses
  %.sroa.1063.i.i = alloca [6 x i8], align 2      ; 4 uses
  %.sroa.12.i.i = alloca [6 x i8], align 2        ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 11 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [48 x i8], align 8               ; 7 uses
  %i.ad = alloca [8 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.ad, align 8
  %i.ae = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %bb.b unwind label %bb.dw

bb.b:                                             ; preds = %bb.a
  %i.af = call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue14try_into_thunk17h51e7db5559e1bd4bE(ptr noundef nonnull %0) ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 27 uses
  %i.ai = trunc nuw i64 %i.ag to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br i1 %i.ai, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9ebd1172f649ab62E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = and i64 %i.aj, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.ak, i64 2) ; 3 uses
  switch i64 %..i, label %bb.h [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !54

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.al = load i64, ptr %i.ah, align 8, !noundef !44 ; 3 uses
  %i.am = and i64 %i.al, 72057594037927935        ; 3 uses
  %i.an = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  %i.ap = and i64 %i.al, 1080863910568919040
  %i.aq = icmp ult i64 %i.al, 864691128455135232
  call void @llvm.assume(i1 %i.aq)
  %i.ar = or i64 %i.ao, %i.ap
  store i64 %i.ar, ptr %i.ah, align 8
  %i.as = icmp eq i64 %i.am, 72057594037927935
  br i1 %i.as, label %bb.f, label %bb.h, !prof !49

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr @2307, ptr %i.ac, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %i.aw, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc14 unwind label %bb.g

.noexc14:                                         ; preds = %bb.f
  unreachable

.body:                                            ; preds = %.body18.thread.i.i, %.body18.i.i, %bb.dn, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %i.fi, %bb.dn ], [ %.pn.pn.pn.pn92.i.i, %.body18.thread.i.i ], [ %.pn.pn.pn.i.i, %.body18.i.i ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9ebd1172f649ab62E"(ptr nonnull %i.ah) #77
          to label %.thread unwind label %bb.dv

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.dq
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ah, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 13 uses
  %i.az = load i64, ptr %i.ay, align 8, !noundef !44 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 9223372036854775807
  br i1 %i.ba, label %bb.j, label %bb.i, !prof !46

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @333) #75
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bb = add nuw nsw i64 %i.az, 1
  store i64 %i.bb, ptr %i.ay, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.bd = invoke noundef ptr @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData4deps17h8d46754d77d437e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc)
          to label %bb.m unwind label %bb.k       ; 6 uses

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load i64, ptr %i.ay, align 8, !noundef !44
  %i.bg = add i64 %i.bf, -1
  store i64 %i.bg, ptr %i.ay, align 8
  br label %.body18.thread.i.i

bb.l:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body18.thread.i.i

bb.m:                                             ; preds = %bb.j
  %i.bi = load i64, ptr %i.ay, align 8, !noundef !44
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.ay, align 8
  store ptr %i.bd, ptr %i.aa, align 8
  %i.bk = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.o unwind label %bb.n

.body23.i.i:                                      ; preds = %.body31.i.i, %.body.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i26.i.i.i.i", %bb.dk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.cy, %bb.az, %bb.ar, %bb.n
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ek, %bb.ar ], [ %.pn.ph.i.i.i, %bb.az ], [ %i.bn, %bb.n ], [ %.pn.ph.i.i, %.body31.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.kw, %bb.dk ], [ %i.jv, %bb.cy ], [ %i.jv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.kw, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i26.i.i.i.i" ] ; 2 uses
  %.sroa.08.0.i.i = phi i1 [ false, %bb.ar ], [ false, %bb.az ], [ %.sroa.08.1.i.i, %bb.n ], [ false, %.body31.i.i ], [ false, %.body.i.i.i.i ], [ false, %bb.dk ], [ false, %bb.cy ], [ false, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ false, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i26.i.i.i.i" ]
  %.sroa.06.0.i.i = phi i1 [ true, %bb.ar ], [ true, %bb.az ], [ true, %bb.n ], [ %i.ff, %.body31.i.i ], [ %i.ff, %.body.i.i.i.i ], [ %i.ff, %bb.dk ], [ %i.ff, %bb.cy ], [ %i.ff, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.ff, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i26.i.i.i.i" ]
  %i.bl = load ptr, ptr %i.aa, align 8, !noundef !44 ; 3 uses
  %i.bm = icmp ne ptr %i.bl, null
  %or.cond.i.i = and i1 %.sroa.06.0.i.i, %i.bm
  br i1 %or.cond.i.i, label %bb.do, label %.body18.i.i

bb.n:                                             ; preds = %bb.ay, %bb.ax, %bb.au, %bb.m
  %.sroa.08.1.i.i = phi i1 [ false, %bb.ay ], [ true, %bb.m ], [ false, %bb.au ], [ false, %bb.ax ]
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ah, ptr %i.v, align 8, !noalias !2309
  %i.bo = load i64, ptr %i.ah, align 8, !noalias !2309, !noundef !44
  %i.bp = and i64 %i.bo, 72057594037927935
  %.not.i.i.i = icmp eq i64 %i.bp, 1
  br i1 %.not.i.i.i, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.ay, i64 56, i1 false), !noalias !2309
  %i.br = invoke { i64, i64 } @_ZN16nickel_lang_core4eval5value7DataTag12block_layout17he3a36177b9eb1fb9E(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) @365)
          to label %.thread.i.i.i unwind label %bb.ar, !noalias !2309 ; 2 uses

bb.r:                                             ; preds = %bb.o
  %i.bs = load i64, ptr %i.ay, align 8, !noalias !2310, !noundef !44 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 9223372036854775807
  br i1 %i.bt, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #75
          to label %.noexc.i.i.i unwind label %bb.p, !noalias !2309

.noexc.i.i.i:                                     ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bu = add nuw nsw i64 %i.bs, 1
  store i64 %i.bu, ptr %i.ay, align 8, !noalias !2310
  call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  %i.bv = load ptr, ptr %i.bc, align 8, !alias.scope !2313, !noalias !2314, !noundef !44 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2315
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !noalias !2315, !noundef !44 ; 2 uses
  %i.bw = icmp ne i64 %.val.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add i64 %.val.i.i.i.i.i.i.i.i, 1        ; 2 uses
  store i64 %i.bx, ptr %i.bv, align 8, !noalias !2315
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.v, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hc080416c69bad0e2E.exit.i.i.i.i.i.i.i, !prof !49

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hc080416c69bad0e2E.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  store ptr %i.bv, ptr %i.t, align 8, !noalias !2315
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !2313, !noalias !2314, !noundef !44 ; 5 uses
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not2.i.i.i.i.i.i.i, label %"_ZN70_$LT$nickel_lang_core..eval..Closure$u20$as$u20$core..clone..Clone$GT$5clone17hfcfd1ebb75c0102cE.exit15.i.i.i.i.i.i.i", label %bb.ad

bb.w:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  %.val.i4.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !2317, !noalias !2318, !nonnull !44, !noundef !44 ; 5 uses
  %i.cc = ptrtoint ptr %.val.i4.i.i.i.i.i.i.i to i64
  %i.cd = and i64 %i.cc, 3
  %..i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cd, i64 2)
  switch i64 %..i.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i" [
    i64 2, label %bb.x
    i64 0, label %bb.y
  ], !prof !54

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc.i.i.i.i.i unwind label %bb.ap, !noalias !2310

.noexc.i.i.i.i.i:                                 ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ce = load i64, ptr %.val.i4.i.i.i.i.i.i.i, align 8, !noalias !2319, !noundef !44 ; 3 uses
  %i.cf = and i64 %i.ce, 72057594037927935        ; 3 uses
  %i.cg = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  %i.ci = and i64 %i.ce, 1080863910568919040
  %i.cj = icmp ult i64 %i.ce, 864691128455135232
  call void @llvm.assume(i1 %i.cj)
  %i.ck = or i64 %i.ch, %i.ci
  store i64 %i.ck, ptr %.val.i4.i.i.i.i.i.i.i, align 8, !noalias !2319
  %i.cl = icmp eq i64 %i.cf, 72057594037927935
  br i1 %i.cl, label %bb.z, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i", !prof !49

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2319
  store ptr @2307, ptr %i.s, align 8, !noalias !2319
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.cm, align 8, !noalias !2319
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.cn, align 8, !noalias !2319
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.co, align 8, !noalias !2319
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %i.cp, align 8, !noalias !2319
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc5.i.i.i.i.i unwind label %bb.ap, !noalias !2310

.noexc5.i.i.i.i.i:                                ; preds = %bb.z
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.y, %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !2317, !noalias !2318, !nonnull !44, !noundef !44 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !2317, !noalias !2318 ; 4 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !noalias !2319, !noundef !44 ; 2 uses
  %i.cs = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add i64 %.val.i.i.i.i.i.i.i.i.i.i, 1    ; 2 uses
  store i64 %i.ct, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !noalias !2319
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.aa, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i.i.i.i, !prof !49

bb.aa:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.at, label %bb.ab

bb.ab:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i.i.i.i
  %.val.i2.i.i.i.i.i.i.i.i.i = load i64, ptr %.val2.i.i.i.i.i.i.i.i, align 8, !noalias !2319, !noundef !44 ; 2 uses
  %i.cv = icmp ne i64 %.val.i2.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cv)
  %i.cw = add i64 %.val.i2.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  store i64 %i.cw, ptr %.val2.i.i.i.i.i.i.i.i, align 8, !noalias !2319
  %i.cx = icmp eq i64 %i.cw, 0
  %3 = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %.val2.i.i.i.i.i.i.i.i, i64 0
  br i1 %i.cx, label %bb.ac, label %bb.at, !prof !49

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hc080416c69bad0e2E.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %i.cy = ptrtoint ptr %i.ca to i64
  %i.cz = and i64 %i.cy, 3
  %..i.i6.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 2)
  switch i64 %..i.i6.i.i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i7.i.i.i.i.i.i.i" [
    i64 2, label %bb.ae
    i64 0, label %bb.af
  ], !prof !54

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.al, !noalias !2315

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.da = load i64, ptr %i.ca, align 8, !noalias !2321, !noundef !44 ; 3 uses
  %i.db = and i64 %i.da, 72057594037927935        ; 3 uses
  %i.dc = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add nuw nsw i64 %i.db, 1
  %i.de = and i64 %i.da, 1080863910568919040
  %i.df = icmp ult i64 %i.da, 864691128455135232
  call void @llvm.assume(i1 %i.df)
  %i.dg = or i64 %i.dd, %i.de
  store i64 %i.dg, ptr %i.ca, align 8, !noalias !2321
  %i.dh = icmp eq i64 %i.db, 72057594037927935
  br i1 %i.dh, label %bb.ag, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i7.i.i.i.i.i.i.i", !prof !49

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2321
  store ptr @2307, ptr %i.r, align 8, !noalias !2321
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.di, align 8, !noalias !2321
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %i.dj, align 8, !noalias !2321
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dk, align 8, !noalias !2321
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 0, ptr %i.dl, align 8, !noalias !2321
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc14.i.i.i.i.i.i.i unwind label %bb.al, !noalias !2315

.noexc14.i.i.i.i.i.i.i:                           ; preds = %bb.ag
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i7.i.i.i.i.i.i.i": ; preds = %bb.af, %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.val1.i8.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !2322, !noalias !2323, !nonnull !44, !noundef !44 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.val2.i9.i.i.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !2322, !noalias !2323 ; 4 uses
  %.val.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %.val1.i8.i.i.i.i.i.i.i, align 8, !noalias !2321, !noundef !44 ; 2 uses
  %i.do = icmp ne i64 %.val.i.i.i10.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.do)
  %i.dp = add i64 %.val.i.i.i10.i.i.i.i.i.i.i, 1  ; 2 uses
  store i64 %i.dp, ptr %.val1.i8.i.i.i.i.i.i.i, align 8, !noalias !2321
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.ah, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i11.i.i.i.i.i.i.i, !prof !49

bb.ah:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i7.i.i.i.i.i.i.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i11.i.i.i.i.i.i.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i7.i.i.i.i.i.i.i"
  %.not.i.i12.i.i.i.i.i.i.i = icmp eq ptr %.val2.i9.i.i.i.i.i.i.i, null
  br i1 %.not.i.i12.i.i.i.i.i.i.i, label %"_ZN70_$LT$nickel_lang_core..eval..Closure$u20$as$u20$core..clone..Clone$GT$5clone17hfcfd1ebb75c0102cE.exit15.i.i.i.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i11.i.i.i.i.i.i.i
  %.val.i2.i.i13.i.i.i.i.i.i.i = load i64, ptr %.val2.i9.i.i.i.i.i.i.i, align 8, !noalias !2321, !noundef !44 ; 2 uses
  %i.dr = icmp ne i64 %.val.i2.i.i13.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.dr)
  %i.ds = add i64 %.val.i2.i.i13.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.ds, ptr %.val2.i9.i.i.i.i.i.i.i, align 8, !noalias !2321
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.aj, label %"_ZN70_$LT$nickel_lang_core..eval..Closure$u20$as$u20$core..clone..Clone$GT$5clone17hfcfd1ebb75c0102cE.exit15.i.i.i.i.i.i.i", !prof !49

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

"_ZN70_$LT$nickel_lang_core..eval..Closure$u20$as$u20$core..clone..Clone$GT$5clone17hfcfd1ebb75c0102cE.exit15.i.i.i.i.i.i.i": ; preds = %bb.ai, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i11.i.i.i.i.i.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hc080416c69bad0e2E.exit.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i = phi ptr [ undef, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hc080416c69bad0e2E.exit.i.i.i.i.i.i.i ], [ %.val2.i9.i.i.i.i.i.i.i, %bb.ai ], [ null, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i11.i.i.i.i.i.i.i ]
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ undef, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hc080416c69bad0e2E.exit.i.i.i.i.i.i.i ], [ %.val1.i8.i.i.i.i.i.i.i, %bb.ai ], [ %.val1.i8.i.i.i.i.i.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i11.i.i.i.i.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !2313, !noalias !2314, !noundef !44 ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17he4de95bc34fa08f3E.exit.i.i.i.i.i.i.i, label %bb.am

bb.ak:                                            ; preds = %bb.al
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h624c018f2da32d65E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.aq unwind label %bb.ao, !noalias !2315

bb.al:                                            ; preds = %bb.ag, %bb.ae
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load i64, ptr %i.bv, align 8, !noalias !2324, !noundef !44
  %i.dz = add i64 %i.dy, -1                       ; 2 uses
  store i64 %i.dz, ptr %i.bv, align 8, !noalias !2324
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.ak, label %bb.aq

bb.am:                                            ; preds = %"_ZN70_$LT$nickel_lang_core..eval..Closure$u20$as$u20$core..clone..Clone$GT$5clone17hfcfd1ebb75c0102cE.exit15.i.i.i.i.i.i.i"
  %.val.i17.i.i.i.i.i.i.i = load i64, ptr %i.dv, align 8, !noalias !2315, !noundef !44 ; 2 uses
  %i.eb = icmp ne i64 %.val.i17.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add i64 %.val.i17.i.i.i.i.i.i.i, 1      ; 2 uses
  store i64 %i.ec, ptr %i.dv, align 8, !noalias !2315
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.an, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17he4de95bc34fa08f3E.exit.i.i.i.i.i.i.i, !prof !49

bb.an:                                            ; preds = %bb.am
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17he4de95bc34fa08f3E.exit.i.i.i.i.i.i.i: ; preds = %bb.am, %"_ZN70_$LT$nickel_lang_core..eval..Closure$u20$as$u20$core..clone..Clone$GT$5clone17hfcfd1ebb75c0102cE.exit15.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2315
  %4 = insertelement <2 x ptr> poison, ptr %.sroa.6.0.i.i.i.i.i.i.i, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.dv, i64 1
  br label %bb.at

bb.ao:                                            ; preds = %bb.ak
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !2315
  unreachable

bb.ap:                                            ; preds = %bb.z, %bb.x
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.al, %bb.ak
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ef, %bb.ap ], [ %i.dx, %bb.al ], [ %i.dx, %bb.ak ]
  %i.eg = load i64, ptr %i.ay, align 8, !noalias !2310, !noundef !44
  %i.eh = add i64 %i.eg, -1
  store i64 %i.eh, ptr %i.ay, align 8, !noalias !2310
  br label %bb.az

.thread.i.i.i:                                    ; preds = %bb.q
  %i.ei = extractvalue { i64, i64 } %i.br, 0
  %i.ej = extractvalue { i64, i64 } %i.br, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ej, i64 noundef %i.ei) #66, !noalias !2309
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %6 = load <2 x ptr>, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.10.0.copyload.i.i = load i8, ptr %.sroa.10.0..sroa_idx.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 49
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 1
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.12.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.12.0..sroa_idx.i.i, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2309
  br label %bb.ba

bb.ar:                                            ; preds = %bb.q
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$nickel_lang_core..eval..cache..lazy..InnerThunkData$GT$17h63cb26aa143c48f6E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.el)
          to label %.body23.i.i unwind label %bb.as, !noalias !2309

bb.as:                                            ; preds = %bb.az, %bb.ar
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !2309
  unreachable

bb.at:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17he4de95bc34fa08f3E.exit.i.i.i.i.i.i.i, %bb.ab, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i.i.a = phi ptr [ %.sroa.5.0.i.i.i.i.i.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17he4de95bc34fa08f3E.exit.i.i.i.i.i.i.i ], [ %.val1.i.i.i.i.i.i.i.i, %bb.ab ], [ %.val1.i.i.i.i.i.i.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.a = phi ptr [ %i.ca, %_ZN5alloc2rc10RcInnerPtr10inc_strong17he4de95bc34fa08f3E.exit.i.i.i.i.i.i.i ], [ %.val.i4.i.i.i.i.i.i.i, %bb.ab ], [ %.val.i4.i.i.i.i.i.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %7 = phi <2 x ptr> [ %5, %_ZN5alloc2rc10RcInnerPtr10inc_strong17he4de95bc34fa08f3E.exit.i.i.i.i.i.i.i ], [ %3, %bb.ab ], [ <ptr null, ptr undef>, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.eo = load i8, ptr %i.en, align 8, !range !82, !alias.scope !2311, !noalias !2325, !noundef !44 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ah, i64 65
  %i.eq = load i8, ptr %i.ep, align 1, !range !45, !alias.scope !2311, !noalias !2325, !noundef !44 ; 2 uses
  %i.er = load i64, ptr %i.ay, align 8, !noalias !2310, !noundef !44
  %i.es = add i64 %i.er, -1
  store i64 %i.es, ptr %i.ay, align 8, !noalias !2310
  switch i64 %..i, label %bb.ba [
    i64 2, label %bb.au
    i64 0, label %bb.av
  ], !prof !54

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc20.i.i unwind label %bb.n

.noexc20.i.i:                                     ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2326
  store ptr %i.ah, ptr %i.q, align 8, !noalias !2326
  %i.et = load i64, ptr %i.ah, align 8, !noalias !2327, !noundef !44 ; 3 uses
  %i.eu = and i64 %i.et, 72057594037927935
  %i.ev = add nsw i64 %i.eu, -1                   ; 3 uses
  %i.ew = and i64 %i.et, 1080863910568919040
  %i.ex = icmp ult i64 %i.et, 864691128455135232
  call void @llvm.assume(i1 %i.ex)
  %i.ey = or i64 %i.ev, %i.ew
  store i64 %i.ey, ptr %i.ah, align 8, !noalias !2327
  %i.ez = icmp ugt i64 %i.ev, 72057594037927935
  br i1 %i.ez, label %bb.ax, label %bb.aw, !prof !49

bb.aw:                                            ; preds = %bb.av
  %i.fa = icmp eq i64 %i.ev, 0
  br i1 %i.fa, label %bb.ay, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i"

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2327
  store ptr @2307, ptr %i.p, align 8, !noalias !2327
  %i.fb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.fb, align 8, !noalias !2327
  %i.fc = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %i.fc, align 8, !noalias !2327
  %i.fd = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fd, align 8, !noalias !2327
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 0, ptr %i.fe, align 8, !noalias !2327
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc21.i.i unwind label %bb.n

.noexc21.i.i:                                     ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i" unwind label %bb.n

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i": ; preds = %bb.ay, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2326
  br label %bb.ba

bb.az:                                            ; preds = %bb.aq, %bb.p
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %bb.aq ], [ %i.bq, %bb.p ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #77
          to label %.body23.i.i unwind label %bb.as, !noalias !2309

bb.ba:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i", %bb.at, %.thread.i.i.i
  %.sroa.11.0.i.i = phi i8 [ %.sroa.11.0.copyload.i.i, %.thread.i.i.i ], [ %i.eq, %bb.at ], [ %i.eq, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i" ]
  %.sroa.10.0.i.i = phi i8 [ %.sroa.10.0.copyload.i.i, %.thread.i.i.i ], [ %i.eo, %bb.at ], [ %i.eo, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i" ]
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.0.copyload.i.i, %.thread.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.a, %bb.at ], [ %.sroa.7.0.i.i.i.i.i.i.a, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i" ]
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.0.copyload.i.i, %.thread.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i.a, %bb.at ], [ %.sroa.5.0.i.i.i.i.i.i.a, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i" ]
  %.sroa.4.0.i.i = phi ptr [ %.sroa.4.0.copyload.i.i, %.thread.i.i.i ], [ %i.bv, %bb.at ], [ %i.bv, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i" ]
  %8 = phi <2 x ptr> [ %6, %.thread.i.i.i ], [ %7, %bb.at ], [ %7, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store ptr %.sroa.4.0.i.i, ptr %i.z, align 8
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.6.0.i.i, ptr %.sroa.6.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %.sroa.7.0.i.i, ptr %.sroa.7.8..sroa_idx.i.i, align 8
  %.sroa.8.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store <2 x ptr> %8, ptr %.sroa.8.8..sroa_idx.i.i, align 8
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i8 %.sroa.10.0.i.i, ptr %.sroa.10.8..sroa_idx.i.i, align 8
  %.sroa.11.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 41
  store i8 %.sroa.11.0.i.i, ptr %.sroa.11.8..sroa_idx.i.i, align 1
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 42 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.12.8..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.12.i.i, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  %i.ff = icmp eq ptr %i.bd, null                 ; 7 uses
  br i1 %i.ff, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.bd, ptr %i.w, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.fg = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.bc, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc29172dcf8fd2bb6E.exit.i.i", !prof !47

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #75
          to label %.noexc25.i.i unwind label %bb.bd

.noexc25.i.i:                                     ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load i64, ptr %i.bd, align 8, !noalias !2328, !noundef !44
  %i.fk = add i64 %i.fj, -1                       ; 2 uses
  store i64 %i.fk, ptr %i.bd, align 8, !noalias !2328
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.be, label %bb.dn

bb.be:                                            ; preds = %bb.bd
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.dn unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc29172dcf8fd2bb6E.exit.i.i": ; preds = %bb.bb
  store ptr %i.bd, ptr %i.fg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ck
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i.i

bb.bh:                                            ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc29172dcf8fd2bb6E.exit.i.i", %bb.ba
  %.sroa.5.0.i.i = phi ptr [ @336, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc29172dcf8fd2bb6E.exit.i.i" ], [ @337, %bb.ba ] ; 14 uses
  %.sroa.0.0.i.i = phi ptr [ %i.fg, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc29172dcf8fd2bb6E.exit.i.i" ], [ inttoptr (i64 1 to ptr), %bb.ba ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1063.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  %i.fo = load ptr, ptr %i.y, align 8, !alias.scope !2330, !noalias !2331, !noundef !44 ; 10 uses
  %.not.i27.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i27.i.i, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !2332, !noundef !44
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.bj, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.thread.i.i.i"

bb.bj:                                            ; preds = %bb.bi
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %.sroa.028.0.copyload29.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !2333 ; 2 uses
  %.sroa.6.0..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %.sroa.6.0.copyload32.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx31.i.i.i, align 8, !noalias !2333 ; 2 uses
  %.sroa.8.0..sroa_idx33.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %.sroa.8.0.copyload34.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx33.i.i.i, align 8, !noalias !2333
  store i64 0, ptr %i.fo, align 8, !noalias !2332
  %i.fs = icmp eq ptr %i.fo, inttoptr (i64 -1 to ptr)
  br i1 %i.fs, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.i.i.i", label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !noalias !2332, !noundef !44
  %i.fv = add i64 %i.fu, -1                       ; 2 uses
  store i64 %i.fv, ptr %i.ft, align 8, !noalias !2332
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.bl, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.i.i.i"

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fo, i64 noundef 40, i64 noundef 8) #66, !noalias !2332
  br label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.i.i.i"

bb.bm:                                            ; preds = %bb.bh
  %.sroa.5.0..sroa_idx46.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.0.copyload47.i.i = load ptr, ptr %.sroa.5.0..sroa_idx46.i.i, align 8, !alias.scope !2334, !noalias !2335
  %.sroa.648.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.648.0.copyload50.i.i = load ptr, ptr %.sroa.648.0..sroa_idx49.i.i, align 8, !alias.scope !2334, !noalias !2335
  %.sroa.751.0..sroa_idx52.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.751.0.copyload53.i.i = load ptr, ptr %.sroa.751.0..sroa_idx52.i.i, align 8, !alias.scope !2334, !noalias !2335
  %.sroa.854.0..sroa_idx55.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.854.0.copyload56.i.i = load i64, ptr %.sroa.854.0..sroa_idx55.i.i, align 8, !alias.scope !2334, !noalias !2335
  %.sroa.857.0..sroa_idx58.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.857.0.copyload59.i.i = load i8, ptr %.sroa.857.0..sroa_idx58.i.i, align 8, !alias.scope !2334, !noalias !2335
  %.sroa.960.0..sroa_idx61.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 41
  %.sroa.960.0.copyload62.i.i = load i8, ptr %.sroa.960.0..sroa_idx61.i.i, align 1, !alias.scope !2334, !noalias !2335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1063.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.12.8..sroa_idx.i.i, i64 6, i1 false)
  br label %_ZN16nickel_lang_core4eval5cache4lazy9ThunkData24revthunk_as_explicit_fun17hf5fac490f34b8257E.exit.i.i

bb.bn:                                            ; preds = %bb.bx
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i28.i.i

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.i.i.i": ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.fy = icmp eq ptr %.sroa.028.0.copyload29.i.i.i, null
  br i1 %i.fy, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.thread.i.i.i", label %bb.bz

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.thread.i.i.i": ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.i.i.i", %bb.bi
  %.sroa.6.043.i.i.i = phi ptr [ %.sroa.6.0.copyload32.i.i.i, %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.i.i.i" ], [ %i.fo, %bb.bi ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.043.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2333
  store ptr %.sroa.6.043.i.i.i, ptr %i.n, align 8, !noalias !2336
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.6.043.i.i.i, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  %.val.i.i.i.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !2337, !noalias !2338, !nonnull !44, !noundef !44 ; 4 uses
  %i.ga = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.gb = and i64 %i.ga, 3
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gb, i64 2)
  switch i64 %..i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i" [
    i64 2, label %bb.bo
    i64 0, label %bb.bp
  ], !prof !54

bb.bo:                                            ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.thread.i.i.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc.i.i.i.i unwind label %bb.bu, !noalias !2336

.noexc.i.i.i.i:                                   ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.thread.i.i.i"
  %i.gc = load i64, ptr %.val.i.i.i.i.i, align 8, !noalias !2339, !noundef !44 ; 3 uses
  %i.gd = and i64 %i.gc, 72057594037927935        ; 3 uses
  %i.ge = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %i.ge)
  %i.gf = add nuw nsw i64 %i.gd, 1
  %i.gg = and i64 %i.gc, 1080863910568919040
  %i.gh = icmp ult i64 %i.gc, 864691128455135232
  call void @llvm.assume(i1 %i.gh)
  %i.gi = or i64 %i.gf, %i.gg
  store i64 %i.gi, ptr %.val.i.i.i.i.i, align 8, !noalias !2339
  %i.gj = icmp eq i64 %i.gd, 72057594037927935
  br i1 %i.gj, label %bb.bq, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i", !prof !49

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2339
  store ptr @2307, ptr %i.m, align 8, !noalias !2339
  %i.gk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.gk, align 8, !noalias !2339
  %i.gl = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.gl, align 8, !noalias !2339
  %i.gm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gm, align 8, !noalias !2339
  %i.gn = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.gn, align 8, !noalias !2339
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc1.i.i.i.i unwind label %bb.bu, !noalias !2336

.noexc1.i.i.i.i:                                  ; preds = %bb.bq
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i": ; preds = %bb.bp, %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hfaa13aec8875bdb2E.exit.thread.i.i.i"
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.6.043.i.i.i, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.go, align 8, !alias.scope !2337, !noalias !2338, !nonnull !44, !noundef !44 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.6.043.i.i.i, i64 32
  %.val2.i.i.i.i.i = load ptr, ptr %i.gp, align 8, !alias.scope !2337, !noalias !2338 ; 4 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i, align 8, !noalias !2339, !noundef !44 ; 2 uses
  %i.gq = icmp ne i64 %.val.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add i64 %.val.i.i.i.i.i.i.i, 1          ; 2 uses
  store i64 %i.gr, ptr %.val1.i.i.i.i.i, align 8, !noalias !2339
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.br, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i, !prof !49

bb.br:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  %.not.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i.i.i.i.i
  %.val.i2.i.i.i.i.i.i = load i64, ptr %.val2.i.i.i.i.i, align 8, !noalias !2339, !noundef !44 ; 2 uses
  %i.gt = icmp ne i64 %.val.i2.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.gt)
  %i.gu = add i64 %.val.i2.i.i.i.i.i.i, 1         ; 2 uses
  store i64 %i.gu, ptr %.val2.i.i.i.i.i, align 8, !noalias !2339
end_hunk_0
