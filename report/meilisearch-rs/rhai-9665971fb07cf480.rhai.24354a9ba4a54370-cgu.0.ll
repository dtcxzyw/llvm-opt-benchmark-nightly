Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E:bb.a
bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %i.p, align 8, !alias.scope !35213
  store i64 1, ptr %i.a, align 8, !alias.scope !35213
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35215)
  %i.ai = load atomic i32, ptr %i.o monotonic, align 4, !noalias !35215
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.aj = add nuw nsw i32 %.sroa.01.0.i.i.3, 1
  %i.ak = cmpxchg weak ptr %i.o, i32 %.sroa.01.0.i.i.3, i32 %i.aj acquire monotonic, align 4, !noalias !35213 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 1
  %i.am = extractvalue { i32, i1 } %i.ak, 0
  br i1 %i.al, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit", label %bb.y

bb.ac:                                            ; preds = %bb.ae, %bb.aa
  %.sroa.01.0.i.i.4 = phi i32 [ %i.ai, %bb.aa ], [ %i.aq, %bb.ae ] ; 3 uses
  %or.cond11.i.i.i.4 = icmp ult i32 %.sroa.01.0.i.i.4, 1073741822
  br i1 %or.cond11.i.i.i.4, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %i.p, align 8, !alias.scope !35215
  store i64 1, ptr %i.a, align 8, !alias.scope !35215
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.an = add nuw nsw i32 %.sroa.01.0.i.i.4, 1
  %i.ao = cmpxchg weak ptr %i.o, i32 %.sroa.01.0.i.i.4, i32 %i.an acquire monotonic, align 4, !noalias !35215 ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  %i.aq = extractvalue { i32, i1 } %i.ao, 0
  br i1 %i.ap, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit", label %bb.ac

common.resume:                                    ; preds = %bb.al, %bb.ak, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.af ], [ %i.az, %bb.ak ], [ %i.az, %bb.al ]
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %bb.ad, %bb.z, %bb.v, %bb.r, %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr249drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$$GT$17hd1bfb04d4feeb4d9E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #72
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.ah:                                            ; preds = %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit"
  %i.at = atomicrmw sub ptr %i.o, i32 1 release, align 4, !noalias !35217
  %i.au = add i32 %i.at, -1                       ; 2 uses
  %i.av = and i32 %i.au, -1073741825
  %or.cond.not.i.i.i.i.i9 = icmp eq i32 %i.av, -2147483648
  br i1 %or.cond.not.i.i.i.i.i9, label %bb.ai, label %_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread, !prof !663

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.o, i32 noundef %i.au), !noalias !35217
  br label %_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread

"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h1d7000fb9f1b2340E.exit14": ; preds = %bb.an, %bb.am, %bb.a, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.13.0 = phi i64 [ 2, %bb.a ], [ 4, %bb.b ], [ 6, %bb.c ], [ 4, %bb.d ], [ 3, %bb.e ], [ 3, %bb.f ], [ 5, %bb.g ], [ 4, %bb.h ], [ 3, %bb.i ], [ 2, %bb.j ], [ %i.l, %bb.k ], [ %i.be, %bb.am ], [ %i.be, %bb.an ]
  %.sroa.0.0 = phi ptr [ @378, %bb.a ], [ @497, %bb.b ], [ @463, %bb.c ], [ @622, %bb.d ], [ @460, %bb.e ], [ @461, %bb.f ], [ @472, %bb.g ], [ @475, %bb.h ], [ @434, %bb.i ], [ @469, %bb.j ], [ %i.k, %bb.k ], [ %i.bd, %bb.am ], [ %i.bd, %bb.an ]
  %i.aw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ax = insertvalue { ptr, i64 } %i.aw, i64 %.sroa.13.0, 1
  ret { ptr, i64 } %i.ax

bb.aj:                                            ; preds = %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit"
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink.i.i.i)
          to label %bb.am unwind label %bb.ak     ; 2 uses

_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread: ; preds = %bb.ai, %bb.ah, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1130) #70
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = atomicrmw sub ptr %i.o, i32 1 release, align 4
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  %i.bc = and i32 %i.bb, -1073741825
  %or.cond.not.i.i = icmp eq i32 %i.bc, -2147483648
  br i1 %or.cond.not.i.i, label %bb.al, label %common.resume, !prof !663

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.o, i32 noundef %i.bb)
          to label %common.resume unwind label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.bd = extractvalue { ptr, i64 } %i.ay, 0      ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.ay, 1      ; 2 uses
  %i.bf = atomicrmw sub ptr %i.o, i32 1 release, align 4
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  %i.bh = and i32 %i.bg, -1073741825
  %or.cond.not.i.i13 = icmp eq i32 %i.bh, -2147483648
  br i1 %or.cond.not.i.i13, label %bb.an, label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h1d7000fb9f1b2340E.exit14", !prof !663

bb.an:                                            ; preds = %bb.am
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.o, i32 noundef %i.bg)
  br label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h1d7000fb9f1b2340E.exit14"

bb.ao:                                            ; preds = %bb.al
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4rhai5types8interner15StringsInterner14throttle_cache17hebbc5612471aacb1E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35220)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !35220, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hfa52d30d605f6d09E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35223)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !35226, !nonnull !3, !noundef !3 ; 5 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !35227
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$17h0d984f6b22c32e30E.exit.i.i", %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.06.1.i.i, %"_ZN4core3ptr81drop_in_place$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$17h0d984f6b22c32e30E.exit.i.i" ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %"_ZN4core3ptr81drop_in_place$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$17h0d984f6b22c32e30E.exit.i.i" ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.t, %"_ZN4core3ptr81drop_in_place$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$17h0d984f6b22c32e30E.exit.i.i" ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.f, %bb.c ], [ %i.w, %"_ZN4core3ptr81drop_in_place$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$17h0d984f6b22c32e30E.exit.i.i" ]
  %.not13.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not13.i.i.i, label %.lr.ph.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2ad1cfdc01c8bc15E.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val11.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !35230
  %i.n = icmp sgt <16 x i8> %.val11.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -256 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2ad1cfdc01c8bc15E.exit.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2ad1cfdc01c8bc15E.exit.i.i": ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [16 x i8], ptr %.sroa.06.1.i.i, i64 %i.u
  %i.w = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35233)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35242)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !35245, !noalias !35226, !nonnull !3, !noundef !3
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !35246
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.e, label %"_ZN4core3ptr81drop_in_place$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$17h0d984f6b22c32e30E.exit.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2ad1cfdc01c8bc15E.exit.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.x)
          to label %"_ZN4core3ptr81drop_in_place$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$17h0d984f6b22c32e30E.exit.i.i" unwind label %bb.f, !noalias !35220

"_ZN4core3ptr81drop_in_place$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$17h0d984f6b22c32e30E.exit.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2ad1cfdc01c8bc15E.exit.i.i"
  %i.ab = icmp eq i64 %i.w, 0
  br i1 %i.ab, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf74cf99e73dcc373E.exit.i, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !35220, !noundef !3 ; 5 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add i64 %i.ae, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.h, i8 -1, i64 %i.ag, i1 false), !noalias !35220
  %i.ah = icmp ult i64 %i.ae, 8
  %i.ai = add i64 %i.ae, 1
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = mul nuw i64 %i.aj, 7
  %spec.select.i.i.i.i = select i1 %i.ah, i64 %i.ae, i64 %i.ak
  br label %bb.i

_ZN9hashbrown3raw13RawTableInner13drop_elements17hf74cf99e73dcc373E.exit.i: ; preds = %"_ZN4core3ptr81drop_in_place$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$17h0d984f6b22c32e30E.exit.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !35220, !noundef !3 ; 5 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %"_ZN4core3ptr297drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h76237c47e67f343eE.exit5.i", label %bb.h

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf74cf99e73dcc373E.exit.i
  %i.ao = add i64 %i.am, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.h, i8 -1, i64 %i.ao, i1 false), !noalias !35220
  %i.ap = icmp ult i64 %i.am, 8
  %i.aq = add i64 %i.am, 1
  %i.ar = lshr i64 %i.aq, 3
  %i.as = mul nuw i64 %i.ar, 7
  %spec.select.i.i.i4.i = select i1 %i.ap, i64 %i.am, i64 %i.as
  br label %"_ZN4core3ptr297drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h76237c47e67f343eE.exit5.i"

"_ZN4core3ptr297drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h76237c47e67f343eE.exit5.i": ; preds = %bb.h, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf74cf99e73dcc373E.exit.i
  %i.at = phi i64 [ %spec.select.i.i.i4.i, %bb.h ], [ 0, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf74cf99e73dcc373E.exit.i ]
  store i64 0, ptr %i.e, align 8, !alias.scope !35220
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.au, align 8, !alias.scope !35220
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hfa52d30d605f6d09E.exit"

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.av = phi i64 [ %spec.select.i.i.i.i, %bb.g ], [ 0, %bb.f ]
  store i64 0, ptr %i.e, align 8, !alias.scope !35220
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !alias.scope !35220
  resume { ptr, i32 } %i.ac

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hfa52d30d605f6d09E.exit": ; preds = %bb.b, %"_ZN4core3ptr297drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u64$C$rhai..types..immutable_string..ImmutableString$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h76237c47e67f343eE.exit5.i"
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  br label %.loopexit37

bb.j:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noundef !3 ; 3 uses
  %.not = icmp ugt i64 %i.az, %i.c
  br i1 %.not, label %.preheader, label %.loopexit37

.preheader:                                       ; preds = %bb.j
  %i.ba = add i64 %i.c, -3                        ; 2 uses
  %i.bb = icmp ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.loopexit37

.lr.ph:                                           ; preds = %.preheader
  %i.bc = load ptr, ptr %0, align 8, !alias.scope !35247, !noalias !35250, !nonnull !3, !noundef !3 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !35247, !noalias !35250, !noundef !3 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted52 = load i64, ptr %i.bg, align 8
  br label %bb.k

.loopexit37:                                      ; preds = %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$rhai..types..immutable_string..ImmutableString$GT$$GT$17hb7bd1348a0e552aeE.exit", %.preheader, %bb.j, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hfa52d30d605f6d09E.exit"
  ret void

bb.k:                                             ; preds = %.lr.ph, %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$rhai..types..immutable_string..ImmutableString$GT$$GT$17hb7bd1348a0e552aeE.exit"
  %i.bh = phi i64 [ %.promoted52, %.lr.ph ], [ %i.dn, %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$rhai..types..immutable_string..ImmutableString$GT$$GT$17hb7bd1348a0e552aeE.exit" ] ; 3 uses
  %i.bi = phi i64 [ %i.az, %.lr.ph ], [ %i.do, %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$rhai..types..immutable_string..ImmutableString$GT$$GT$17hb7bd1348a0e552aeE.exit" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35247)
  %.val3.i.i = load <16 x i8>, ptr %i.bc, align 16, !noalias !35252
  %i.bj = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.bk = bitcast <16 x i1> %i.bj to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.u
  %.sroa.02.051 = phi i64 [ 0, %bb.k ], [ %.sroa.02.1, %bb.u ] ; 4 uses
  %.sroa.03.050 = phi i64 [ -1, %bb.k ], [ %.sroa.03.1, %bb.u ] ; 5 uses
  %.sroa.0.049 = phi i64 [ 0, %bb.k ], [ %.sroa.0.1, %bb.u ] ; 3 uses
  %.sroa.018.048 = phi ptr [ %i.bc, %bb.k ], [ %.sroa.018.1, %bb.u ] ; 2 uses
  %.sroa.6.047 = phi ptr [ %i.bf, %bb.k ], [ %.sroa.6.1, %bb.u ] ; 2 uses
  %.sroa.819.046 = phi i16 [ %i.bk, %bb.k ], [ %i.bt, %bb.u ] ; 2 uses
  %.sroa.1020.045 = phi i64 [ %i.bi, %bb.k ], [ %i.bw, %bb.u ]
  %.not13.i.i = icmp eq i16 %.sroa.819.046, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %i.bl = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.sroa.6.047, %bb.l ] ; 2 uses
  %i.bm = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %.sroa.018.048, %bb.l ]
  %.val11.i.i = load <16 x i8>, ptr %i.bl, align 16, !noalias !35255
  %i.bn = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -256 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.bn to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.l
  %.sroa.6.1 = phi ptr [ %.sroa.6.047, %bb.l ], [ %i.bp, %.lr.ph.i.i ]
  %.sroa.018.1 = phi ptr [ %.sroa.018.048, %bb.l ], [ %i.bo, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.819.046, %bb.l ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bq = add i16 %.lcssa.i.i, -1
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = and i16 %i.bq, %.lcssa.i.i
  %i.bu = sub nsw i64 0, %i.bs
  %i.bv = getelementptr inbounds [16 x i8], ptr %.sroa.018.1, i64 %i.bu ; 2 uses
  %i.bw = add i64 %.sroa.1020.045, -1             ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -16
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 3 uses
  %i.bz = load i64, ptr %i.bx, align 8, !noundef !3 ; 2 uses
  %.not9 = icmp eq i64 %1, %i.bz
  br i1 %.not9, label %bb.u, label %bb.t

bb.m:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35266)
  %i.ca = lshr i64 %.sroa.0.1, 57
  %i.cb = trunc nuw nsw i64 %i.ca to i8
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.cb, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cs, %bb.p ]
  %.pn.i.i.i.i = phi i64 [ %.sroa.0.1, %bb.m ], [ %i.ct, %bb.p ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.be ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !35269 ; 2 uses
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %bb.o
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.cr, %bb.o ], [ %i.ce, %bb.n ] ; 3 uses
  %i.cf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = add i64 %.sroa.01.0.i.i.i.i.i, %i.cg
  %i.ci = and i64 %i.ch, %i.be                    ; 3 uses
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -16
  %.val3.i.i.i.i.i = load i64, ptr %i.cl, align 8, !noalias !35278, !noundef !3
  %i.cm = icmp eq i64 %.sroa.0.1, %.val3.i.i.i.i.i
  br i1 %i.cm, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h84f65c3bc37d623aE.exit.i.i.i", label %bb.o, !prof !1414

._crit_edge.i.i.i.i:                              ; preds = %bb.o, %bb.n
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %bb.p, label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$rhai..types..immutable_string..ImmutableString$GT$$GT$17hb7bd1348a0e552aeE.exit", !prof !543

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cq = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.cr = and i16 %i.cq, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.cr, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cs = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.ct = add i64 %.sroa.01.0.i.i.i.i.i, %i.cs
  br label %bb.n

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h84f65c3bc37d623aE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35287)
  %i.cu = add nsw i64 %i.ci, -16
  %i.cv = and i64 %i.cu, %i.be
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cv ; 2 uses
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.cw, align 1, !noalias !35290
  %i.cx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci ; 2 uses
  %.sroa.0.0.copyload.i825.i.i.i.i.i.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !35294
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i825.i.i.i.i.i.i, splat (i8 -1)
  %i.db = bitcast <16 x i1> %i.da to i16
  %i.dc = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.cy, i1 false)
  %i.dd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.db, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %i.dd, %i.dc
  %i.de = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %i.de, label %bb.r, label %bb.q

bb.q:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h84f65c3bc37d623aE.exit.i.i.i"
  %i.df = add i64 %i.bh, 1                        ; 2 uses
  store i64 %i.df, ptr %i.bg, align 8, !alias.scope !35297, !noalias !35298
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h84f65c3bc37d623aE.exit.i.i.i"
  %i.dg = phi i64 [ %i.df, %bb.q ], [ %i.bh, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h84f65c3bc37d623aE.exit.i.i.i" ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.q ], [ -128, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h84f65c3bc37d623aE.exit.i.i.i" ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.cz, align 1, !noalias !35299
  %i.dh = getelementptr i8, ptr %i.cw, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.dh, align 1, !noalias !35299
  %i.di = add i64 %i.bi, -1                       ; 3 uses
  store i64 %i.di, ptr %i.ay, align 8, !alias.scope !35297, !noalias !35298
  %i.dj = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !35300, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.dk, ptr %i.a, align 8
  %i.dl = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !35301
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.s, label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$rhai..types..immutable_string..ImmutableString$GT$$GT$17hb7bd1348a0e552aeE.exit"

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$rhai..types..immutable_string..ImmutableString$GT$$GT$17hb7bd1348a0e552aeE.exit"

"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$rhai..types..immutable_string..ImmutableString$GT$$GT$17hb7bd1348a0e552aeE.exit": ; preds = %._crit_edge.i.i.i.i, %bb.r, %bb.s
  %i.dn = phi i64 [ %i.dg, %bb.s ], [ %i.dg, %bb.r ], [ %i.bh, %._crit_edge.i.i.i.i ]
  %i.do = phi i64 [ %i.di, %bb.s ], [ %i.di, %bb.r ], [ %i.bi, %._crit_edge.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dp = icmp ugt i64 %i.do, %i.ba
  br i1 %i.dp, label %bb.k, label %.loopexit37
end_hunk_0
begin_hunk_1_@_ZN4rhai8packages10blob_basic14blob_functions6splice17hf882de7b79a29b21E:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 17 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42993)
  %.val.i = load i64, ptr %0, align 8, !range !540, !alias.scope !42993, !noundef !3 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !42993, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !42993
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp samesign ult i64 %1, %i.b
  br i1 %.not.i, label %.split.i, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.h = sub i64 0, %1
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.b, i64 range(i64 1, -9223372036854775807) %i.h)
  br label %.split.i

.split.i:                                         ; preds = %bb.f, %bb.e
  %.promoted = phi i64 [ %i.i, %bb.f ], [ %1, %bb.e ] ; 16 uses
  %i.j = icmp slt i64 %2, 1
  %i.k = icmp eq i64 %i.b, %.promoted
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %.thread, label %bb.g

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit": ; preds = %bb.c, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit": ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", %bb.af, %bb.m, %bb.n, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"
  ret void

bb.g:                                             ; preds = %.split.i
  %i.l = sub nsw i64 %i.b, %.promoted
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.l) ; 4 uses
  %i.m = add nuw i64 %spec.select.i, %.promoted   ; 11 uses
  %.sroa.031.0.copyload = load i64, ptr %3, align 8 ; 6 uses
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.532.0.copyload = load ptr, ptr %.sroa.532.0..sroa_idx, align 8 ; 17 uses
  %.sroa.532.0.copyload129 = ptrtoaddr ptr %.sroa.532.0.copyload to i64 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.0.copyload.fr = freeze i64 %.sroa.7.0.copyload ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42996)
  %i.n = icmp ugt i64 %i.m, %i.b
  br i1 %i.n, label %.invoke.i, label %.lr.ph.preheader.i.i.i, !prof !543

.invoke.i:                                        ; preds = %bb.g
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70
          to label %.cont.i unwind label %bb.h, !noalias !42999

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.h:                                             ; preds = %.invoke.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.p, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.532.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43002
  br label %.body

.thread:                                          ; preds = %.split.i, %bb.e
  %.sroa.0.0.copyload = load i64, ptr %3, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %i.q = icmp sgt i64 %.sroa.5.0.copyload, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43008)
  %i.r = load i64, ptr %0, align 8, !range !540, !alias.scope !43011, !noalias !43014, !noundef !3
  %i.s = sub nsw i64 %i.r, %i.b
  %i.t = icmp ugt i64 %.sroa.5.0.copyload, %i.s
  br i1 %i.t, label %bb.l, label %bb.m, !prof !543

bb.j:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.v, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43016
  br label %.body

bb.l:                                             ; preds = %.thread
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.5.0.copyload, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.j, !noalias !43014

.noexc.i:                                         ; preds = %bb.l
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !43019, !noalias !43014
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i, %.thread
  %i.w = phi i64 [ %i.b, %.thread ], [ %.pre.i.i, %.noexc.i ] ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !43019, !noalias !43014, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !43020
  %i.ab = add nuw i64 %i.w, %.sroa.5.0.copyload
  store i64 %i.ab, ptr %i.a, align 8, !alias.scope !43019, !noalias !43014
  %i.ac = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ac, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43021
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  store i64 %.promoted, ptr %i.a, align 8, !alias.scope !43024, !noalias !43027
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !43024, !noalias !43027, !nonnull !3, !noundef !3 ; 5 uses
  %i.af = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ag = sub nuw nsw i64 %i.b, %i.m              ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.532.0.copyload) ]
  %i.ai = icmp sgt i64 %.sroa.7.0.copyload.fr, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.532.0.copyload, i64 %.sroa.7.0.copyload.fr ; 7 uses
  %i.ak = icmp eq i64 %i.b, %i.m                  ; 2 uses
  br i1 %i.ak, label %bb.o, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader": ; preds = %.lr.ph.preheader.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.promoted ; 4 uses
  %.not.not.i.i.i51 = icmp samesign eq i64 %.sroa.7.0.copyload.fr, 0
  br i1 %.not.not.i.i.i51, label %.loopexit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader"
  %i.am = add nsw i64 %.sroa.7.0.copyload.fr, -1
  %i.an = add nsw i64 %spec.select.i, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.an)
  %i.ao = add i64 %umin, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ao, 9
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ap = add i64 %.promoted, %i.af
  %i.aq = sub i64 %.sroa.532.0.copyload129, %i.ap
  %diff.check = icmp ugt i64 %i.aq, -4
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ar = and i64 %i.ao, 3                        ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.as, i64 4, i64 %i.ar
  %n.vec = sub i64 %i.ao, %i.at                   ; 3 uses
  %i.au = getelementptr i8, ptr %i.al, i64 %n.vec
  %i.av = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec
  %i.aw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aw, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.al, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep131, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep131, align 1, !noalias !43029
  %wide.load132 = load <2 x i8>, ptr %i.ax, align 1, !noalias !43029
  %i.ay = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %wide.load, ptr %next.gep, align 1, !noalias !43038
  store <2 x i8> %wide.load132, ptr %i.ay, align 1, !noalias !43038
  %i.az = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.ba = add <2 x i64> %vec.phi130, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !43039

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ba, %i.az
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph

scalar.ph:                                        ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %bc.merge.rdx = phi i64 [ %i.bc, %middle.block ], [ %.promoted, %.lr.ph.preheader ], [ %.promoted, %vector.memcheck ]
  %bc.resume.val = phi ptr [ %i.au, %middle.block ], [ %i.al, %.lr.ph.preheader ], [ %i.al, %vector.memcheck ] ; 2 uses
  %bc.resume.val133 = phi ptr [ %i.av, %middle.block ], [ %.sroa.532.0.copyload, %.lr.ph.preheader ], [ %.sroa.532.0.copyload, %vector.memcheck ] ; 2 uses
  %bc.resume.val133135 = ptrtoaddr ptr %bc.resume.val133 to i64 ; 4 uses
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43043)
  %i.bd = load i64, ptr %0, align 8, !range !540, !alias.scope !43046, !noalias !43049, !noundef !3
  %i.be = sub nsw i64 %i.bd, %.promoted
  %i.bf = icmp ugt i64 %.sroa.7.0.copyload.fr, %i.be
  br i1 %i.bf, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i", !prof !543

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.promoted, i64 noundef %.sroa.7.0.copyload.fr, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" unwind label %bb.x, !noalias !43052

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread": ; preds = %bb.p
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !43053, !noalias !43049
  %.pre75 = load ptr, ptr %i.ad, align 8, !alias.scope !43053, !noalias !43049
  br label %iter.check202

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i": ; preds = %bb.o
  %.not7.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.7.0.copyload.fr, 0
  br i1 %.not7.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %iter.check202

iter.check202:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i"
  %i.bg = phi i64 [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %.promoted, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 7 uses
  %i.bh = phi ptr [ %.pre75, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %i.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 8 uses
  %min.iters.check186 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 8
  br i1 %min.iters.check186, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck183

vector.memcheck183:                               ; preds = %iter.check202
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = add i64 %i.bg, %i.bi
  %i.bk = sub i64 %.sroa.532.0.copyload129, %i.bj
  %diff.check184 = icmp ugt i64 %i.bk, -32
  br i1 %diff.check184, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check187

vector.main.loop.iter.check187:                   ; preds = %vector.memcheck183
  %min.iters.check188 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 32
  br i1 %min.iters.check188, label %vec.epilog.ph206, label %vector.ph189

vector.ph189:                                     ; preds = %vector.main.loop.iter.check187
  %i.bl = and i64 %.sroa.7.0.copyload.fr, 24
  %n.vec190 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775776 ; 5 uses
  %i.bm = add i64 %i.bg, %n.vec190                ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec190
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bg
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body191 ] ; 3 uses
  %next.gep193 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index192 ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <16 x i8>, ptr %next.gep193, align 1, !noalias !43054
  %wide.load195 = load <16 x i8>, ptr %i.bp, align 1, !noalias !43054
  %i.bq = getelementptr i8, ptr %i.bo, i64 %index192 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load194, ptr %i.bq, align 1, !noalias !43067
  store <16 x i8> %wide.load195, ptr %i.br, align 1, !noalias !43067
  %index.next196 = add nuw i64 %index192, 32      ; 2 uses
  %i.bs = icmp eq i64 %index.next196, %n.vec190
  br i1 %i.bs, label %middle.block197, label %vector.body191, !llvm.loop !43074

middle.block197:                                  ; preds = %vector.body191
  %cmp.n198 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec190
  br i1 %cmp.n198, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %vec.epilog.iter.check204

vec.epilog.iter.check204:                         ; preds = %middle.block197
  %min.epilog.iters.check205 = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check205, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph206, !prof !42989

vec.epilog.ph206:                                 ; preds = %vector.main.loop.iter.check187, %vec.epilog.iter.check204
  %vec.epilog.resume.val199 = phi i64 [ %n.vec190, %vec.epilog.iter.check204 ], [ 0, %vector.main.loop.iter.check187 ]
  %n.vec207 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775800 ; 4 uses
  %i.bt = add i64 %i.bg, %n.vec207                ; 2 uses
  %i.bu = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec207
  %i.bv = getelementptr i8, ptr %i.bh, i64 %i.bg
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph206
  %index209 = phi i64 [ %vec.epilog.resume.val199, %vec.epilog.ph206 ], [ %index.next212, %vec.epilog.vector.body208 ] ; 3 uses
  %next.gep210 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index209
  %wide.load211 = load <8 x i8>, ptr %next.gep210, align 1, !noalias !43054
  %i.bw = getelementptr i8, ptr %i.bv, i64 %index209
  store <8 x i8> %wide.load211, ptr %i.bw, align 1, !noalias !43067
  %index.next212 = add nuw i64 %index209, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next212, %n.vec207
  br i1 %i.bx, label %vec.epilog.middle.block213, label %vec.epilog.vector.body208, !llvm.loop !43075

vec.epilog.middle.block213:                       ; preds = %vec.epilog.vector.body208
  %cmp.n214 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec207
  br i1 %cmp.n214, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %vector.memcheck183, %iter.check202, %vec.epilog.iter.check204, %vec.epilog.middle.block213
  %.ph = phi i64 [ %i.bg, %iter.check202 ], [ %i.bg, %vector.memcheck183 ], [ %i.bm, %vec.epilog.iter.check204 ], [ %i.bt, %vec.epilog.middle.block213 ] ; 2 uses
  %.ph219.a = phi ptr [ %.sroa.532.0.copyload, %iter.check202 ], [ %.sroa.532.0.copyload, %vector.memcheck183 ], [ %i.bn, %vec.epilog.iter.check204 ], [ %i.bu, %vec.epilog.middle.block213 ] ; 3 uses
  %i.by = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %.ph219242 = ptrtoaddr ptr %.ph219.a to i64     ; 2 uses
  %i.bz = sub i64 %i.by, %.ph219242
  %xtraiter243 = and i64 %i.bz, 3                 ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %i.ca = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cb = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph219.a, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !43054, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  store i8 %i.cc, ptr %i.ce, align 1, !noalias !43067
  %i.cf = add i64 %i.ca, 1                        ; 3 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !43076

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr246 = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr247 = phi ptr [ %.ph219.a, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.cg = sub i64 %.ph219242, %i.by
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ci = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr246, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cj = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr247, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !43054, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ci
  store i8 %i.ck, ptr %i.cm, align 1, !noalias !43067
  %i.cn = load i8, ptr %i.cl, align 1, !noalias !43054, !noundef !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cp = getelementptr i8, ptr %i.bh, i64 %i.ci
  %i.cq = getelementptr i8, ptr %i.cp, i64 1
  store i8 %i.cn, ptr %i.cq, align 1, !noalias !43067
  %i.cr = load i8, ptr %i.co, align 1, !noalias !43054, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.ct = getelementptr i8, ptr %i.bh, i64 %i.ci
  %i.cu = getelementptr i8, ptr %i.ct, i64 2
  store i8 %i.cr, ptr %i.cu, align 1, !noalias !43067
  %i.cv = load i8, ptr %i.cs, align 1, !noalias !43054, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bh, i64 %i.ci
  %i.cy = getelementptr i8, ptr %i.cx, i64 3
  store i8 %i.cv, ptr %i.cy, align 1, !noalias !43067
  %i.cz = add i64 %i.ci, 4                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.cw, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i.3, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !43077

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i": ; preds = %.lr.ph
  %.not.not.i.i.i = icmp eq ptr %i.dd, %i.aj
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not.i.i.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge", label %.lr.ph, !llvm.loop !43078

.lr.ph:                                           ; preds = %scalar.ph, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"
  %indvar = phi i64 [ 0, %scalar.ph ], [ %indvar.next, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.da = phi i64 [ %bc.merge.rdx, %scalar.ph ], [ %i.df, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ]
  %.sroa.0.08.i.i.i52 = phi ptr [ %bc.resume.val, %scalar.ph ], [ %i.dc, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.db = phi ptr [ %bc.resume.val133, %scalar.ph ], [ %i.dd, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i52, i64 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 9 uses
  %i.de = load i8, ptr %i.db, align 1, !noalias !43029, !noundef !3
  store i8 %i.de, ptr %.sroa.0.08.i.i.i52, align 1, !noalias !43038
  %i.df = add i64 %i.da, 1                        ; 6 uses
  %i.dg = icmp eq ptr %i.dc, %i.ah
  br i1 %i.dg, label %.loopexit.i.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"

.loopexit.i.i:                                    ; preds = %.lr.ph
  store i64 %i.df, ptr %i.a, align 8, !noalias !43038
  %i.dh = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = sub nuw i64 %i.dh, %i.di                ; 5 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.dd
  br i1 %.not.i.i, label %.loopexit.i, label %bb.s

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i": ; preds = %scalar.ph140
  store i64 %i.hd, ptr %i.a, align 8, !noalias !43079
  %.pre.i.i11 = ptrtoint ptr %i.hb to i64
  %.pre22.i = sub nuw i64 %i.dh, %.pre.i.i11
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i": ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i"
  %.pre-phi.i = phi i64 [ %i.dj, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %.pre22.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ] ; 5 uses
  %i.dk = phi i64 [ %.promoted59, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.hd, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ]
  %.val.i.i.i.i.i.i.i = phi ptr [ %i.dd, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.hb, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ] ; 7 uses
  %.val.i.i.i.i.i.i.i159 = ptrtoaddr ptr %.val.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.dl = icmp slt i64 %.pre-phi.i, 0
  br i1 %i.dl, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !43082

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"
  %i.dm = icmp eq ptr %i.aj, %.val.i.i.i.i.i.i.i
  br i1 %i.dm, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43083
  %i.dn = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.pre-phi.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !43083 ; 13 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.r, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.dp = ptrtoaddr ptr %i.dn to i64
  %i.dq = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129
  %i.dr = sub i64 %i.dq, %.val.i.i.i.i.i.i.i159   ; 7 uses
  %min.iters.check162 = icmp ult i64 %i.dr, 4
  %i.ds = sub i64 %.val.i.i.i.i.i.i.i159, %i.dp
  %diff.check160 = icmp ugt i64 %i.ds, -32
  %or.cond217 = or i1 %min.iters.check162, %diff.check160
  br i1 %or.cond217, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check163 = icmp ult i64 %i.dr, 32
  br i1 %min.iters.check163, label %vec.epilog.ph, label %vector.ph164

vector.ph164:                                     ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %i.dr, 28
  %n.vec165 = and i64 %i.dr, -32                  ; 7 uses
  %i.du = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %n.vec165
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next171, %vector.body166 ] ; 3 uses
  %next.gep168 = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %index167 ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <16 x i8>, ptr %next.gep168, align 1, !noalias !43100
  %wide.load170 = load <16 x i8>, ptr %i.dv, align 1, !noalias !43100
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index167 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <16 x i8> %wide.load169, ptr %i.dw, align 1, !noalias !43119
  store <16 x i8> %wide.load170, ptr %i.dx, align 1, !noalias !43119
  %index.next171 = add nuw i64 %index167, 32      ; 2 uses
  %i.dy = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.dy, label %middle.block172, label %vector.body166, !llvm.loop !43126

middle.block172:                                  ; preds = %vector.body166
  %ind.escape = add i64 %n.vec165, -1
  %cmp.n = icmp eq i64 %i.dr, %n.vec165
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block172
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !42834

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec165, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec174 = and i64 %i.dr, -4                   ; 6 uses
  %i.dz = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %n.vec174
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index175 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next178, %vec.epilog.vector.body ] ; 3 uses
  %next.gep176 = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %index175
  %wide.load177 = load <4 x i8>, ptr %next.gep176, align 1, !noalias !43100
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index175
  store <4 x i8> %wide.load177, ptr %i.ea, align 1, !noalias !43119
  %index.next178 = add nuw i64 %index175, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next178, %n.vec174
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43127

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape179 = add i64 %n.vec174, -1
  %cmp.n180 = icmp eq i64 %i.dr, %n.vec174
  br i1 %cmp.n180, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph221 = phi i64 [ 0, %iter.check ], [ %n.vec165, %vec.epilog.iter.check ], [ %n.vec174, %vec.epilog.middle.block ] ; 2 uses
  %.ph222.a = phi ptr [ %.val.i.i.i.i.i.i.i, %iter.check ], [ %i.du, %vec.epilog.iter.check ], [ %i.dz, %vec.epilog.middle.block ] ; 3 uses
  %i.ec = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %.ph222240 = ptrtoaddr ptr %.ph222.a to i64     ; 2 uses
  %i.ed = sub i64 %i.ec, %.ph222240
  %xtraiter = and i64 %i.ed, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ee = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph221, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ef = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph222.a, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !43100, !noundef !3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ee
  store i8 %i.eg, ptr %i.ei, align 1, !noalias !43119
  %i.ej = add nuw i64 %i.ee, 1                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !43128

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa224.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.lcssa223.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph221, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr241 = phi ptr [ %.ph222.a, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ek = sub i64 %.ph222240, %i.ec
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.pre-phi.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70
          to label %.noexc5.i unwind label %bb.x, !noalias !43052

.noexc5.i:                                        ; preds = %bb.r
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.em = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.en = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr241, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.eo = load i8, ptr %i.en, align 1, !noalias !43100, !noundef !3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.em
  store i8 %i.eo, ptr %i.eq, align 1, !noalias !43119
  %i.er = load i8, ptr %i.ep, align 1, !noalias !43100, !noundef !3
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.em
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store i8 %i.er, ptr %i.eu, align 1, !noalias !43119
  %i.ev = load i8, ptr %i.es, align 1, !noalias !43100, !noundef !3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.em
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  store i8 %i.ev, ptr %i.ey, align 1, !noalias !43119
  %i.ez = add nuw i64 %i.em, 3                    ; 2 uses
  %i.fa = load i8, ptr %i.ew, align 1, !noalias !43100, !noundef !3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ez
  store i8 %i.fa, ptr %i.fc, align 1, !noalias !43119
  %i.fd = add nuw i64 %i.em, 4                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.fb, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !43129

bb.s:                                             ; preds = %.loopexit.i.i
  %i.fe = load i64, ptr %0, align 8, !range !540, !noalias !43130, !noundef !3
  %i.ff = sub nsw i64 %i.fe, %i.b
  %i.fg = icmp ugt i64 %i.dj, %i.ff
  br i1 %i.fg, label %bb.t, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i", !prof !543

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %i.dj, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" unwind label %bb.x, !noalias !43052

"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge": ; preds = %bb.t
  %.pre = load ptr, ptr %i.ad, align 8, !noalias !43130
  %.pre70 = load i64, ptr %i.a, align 8, !noalias !43079
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i": ; preds = %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge", %bb.s
  %.promoted59 = phi i64 [ %.pre70, %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" ], [ %i.df, %bb.s ] ; 8 uses
  %i.fh = phi ptr [ %.pre, %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" ], [ %i.ae, %bb.s ] ; 5 uses
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = add i64 %i.dj, %i.m                     ; 8 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.m
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fj ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr nonnull align 1 %i.fk, i64 %i.ag, i1 false), !noalias !43130
  %i.fm = icmp samesign eq i64 %.promoted59, %i.fj
  br i1 %i.fm, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i", label %.lr.ph57

.lr.ph57:                                         ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i"
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.promoted59 ; 4 uses
  %i.fo = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %i.fp = xor i64 %bc.resume.val133135, -1
  %i.fq = add i64 %i.fo, %i.fp
  %i.fr = freeze i64 %i.fq
  %4 = ptrtoaddr ptr %bc.resume.val to i64
  %i.fs = add i64 %.promoted, %i.af
  %i.ft = add i64 %i.fs, %spec.select.i
  %i.fu = xor i64 %4, -1
  %i.fv = add i64 %i.ft, %i.fu
  %umin138 = tail call i64 @llvm.umin.i64(i64 %i.fr, i64 %i.fv) ; 2 uses
  %5 = add i64 %i.fo, -2
  %i.fw = add i64 %umin138, %bc.resume.val133135
  %i.fx = sub i64 %5, %i.fw
  %i.fy = freeze i64 %i.fx
  %i.fz = add i64 %.promoted, %.sroa.7.0.copyload.fr
  %i.ga = add i64 %i.fz, %.sroa.532.0.copyload129
  %i.gb = add i64 %i.ga, %spec.select.i
  %i.gc = add i64 %i.gb, -2
  %i.gd = add i64 %.promoted59, %bc.resume.val133135
  %i.ge = add i64 %i.gd, %umin138
  %i.gf = sub i64 %i.gc, %i.ge
  %umin139 = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 %i.gf)
  %i.gg = add i64 %umin139, 1                     ; 3 uses
  %min.iters.check141 = icmp ult i64 %i.gg, 17
  br i1 %min.iters.check141, label %scalar.ph140.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph57
  %i.gh = add i64 %.promoted59, %i.fi
  %i.gi = xor i64 %bc.resume.val133135, -1
  %i.gj = sub i64 %i.gi, %indvar
  %i.gk = add i64 %i.gh, %i.gj
  %i.gl = add i64 %i.gk, -1
  %diff.check136 = icmp ult i64 %i.gl, 3
  br i1 %diff.check136, label %scalar.ph140.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck134
  %i.gm = and i64 %i.gg, 3                        ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  %i.go = select i1 %i.gn, i64 4, i64 %i.gm
  %n.vec143 = sub i64 %i.gg, %i.go                ; 3 uses
  %i.gp = getelementptr i8, ptr %i.fn, i64 %n.vec143
  %i.gq = getelementptr i8, ptr %i.dd, i64 %n.vec143
  %i.gr = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted59, i64 0
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next152, %vector.body144 ] ; 3 uses
  %vec.phi146 = phi <2 x i64> [ %i.gr, %vector.ph142 ], [ %i.gu, %vector.body144 ]
  %vec.phi147 = phi <2 x i64> [ zeroinitializer, %vector.ph142 ], [ %i.gv, %vector.body144 ]
  %next.gep148 = getelementptr i8, ptr %i.fn, i64 %index145 ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.dd, i64 %index145 ; 2 uses
  %i.gs = getelementptr i8, ptr %next.gep149, i64 2
  %wide.load150 = load <2 x i8>, ptr %next.gep149, align 1, !noalias !43133
  %wide.load151 = load <2 x i8>, ptr %i.gs, align 1, !noalias !43133
  %i.gt = getelementptr i8, ptr %next.gep148, i64 2
  store <2 x i8> %wide.load150, ptr %next.gep148, align 1, !noalias !43079
  store <2 x i8> %wide.load151, ptr %i.gt, align 1, !noalias !43079
  %i.gu = add <2 x i64> %vec.phi146, splat (i64 1) ; 2 uses
  %i.gv = add <2 x i64> %vec.phi147, splat (i64 1) ; 2 uses
  %index.next152 = add nuw i64 %index145, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next152, %n.vec143
  br i1 %i.gw, label %middle.block153, label %vector.body144, !llvm.loop !43136

middle.block153:                                  ; preds = %vector.body144
  %bin.rdx154 = add <2 x i64> %i.gv, %i.gu
  %i.gx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx154)
  br label %scalar.ph140.preheader

scalar.ph140.preheader:                           ; preds = %vector.memcheck134, %.lr.ph57, %middle.block153
  %.ph225 = phi i64 [ %.promoted59, %vector.memcheck134 ], [ %.promoted59, %.lr.ph57 ], [ %i.gx, %middle.block153 ]
  %.sroa.0.08.i23.i.i56.ph = phi ptr [ %i.fn, %vector.memcheck134 ], [ %i.fn, %.lr.ph57 ], [ %i.gp, %middle.block153 ]
  %.ph226 = phi ptr [ %i.dd, %vector.memcheck134 ], [ %i.dd, %.lr.ph57 ], [ %i.gq, %middle.block153 ]
  br label %scalar.ph140

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i": ; preds = %scalar.ph140
  %.not.not.i24.i.i = icmp eq ptr %i.hb, %i.aj
  br i1 %.not.not.i24.i.i, label %.loopexit.i.loopexit, label %scalar.ph140, !llvm.loop !43137

scalar.ph140:                                     ; preds = %scalar.ph140.preheader, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  %i.gy = phi i64 [ %i.hd, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph225, %scalar.ph140.preheader ]
  %.sroa.0.08.i23.i.i56 = phi ptr [ %i.ha, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.sroa.0.08.i23.i.i56.ph, %scalar.ph140.preheader ] ; 2 uses
  %i.gz = phi ptr [ %i.hb, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph226, %scalar.ph140.preheader ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i23.i.i56, i64 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 4 uses
  %i.hc = load i8, ptr %i.gz, align 1, !noalias !43133, !noundef !3
  store i8 %i.hc, ptr %.sroa.0.08.i23.i.i56, align 1, !noalias !43079
  %i.hd = add i64 %i.gy, 1                        ; 5 uses
  %i.he = icmp eq ptr %i.ha, %i.fl
  br i1 %i.he, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i", label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i": ; preds = %bb.w, %bb.v
  %.pre.i = phi i64 [ %i.hl, %bb.v ], [ %i.hv, %bb.w ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43138
  br label %.loopexit.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block172
  %.lcssa116 = phi i64 [ %ind.escape179, %vec.epilog.middle.block ], [ %ind.escape, %middle.block172 ], [ %.lcssa224.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa115 = phi i64 [ %n.vec174, %vec.epilog.middle.block ], [ %n.vec165, %middle.block172 ], [ %.lcssa223.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.hf = icmp sgt i64 %.lcssa115, -1
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.lcssa115
  %i.hh = add i64 %i.dj, %i.b                     ; 2 uses
  %i.hi = load i64, ptr %0, align 8, !range !540, !noalias !43141, !noundef !3
  %i.hj = sub i64 %i.hi, %i.hh
  %.not53.i.i = icmp ult i64 %.lcssa116, %i.hj
  br i1 %.not53.i.i, label %bb.v, label %bb.u, !prof !1414

bb.u:                                             ; preds = %.loopexit
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.hh, i64 noundef %.lcssa115, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge unwind label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", !noalias !43144

._crit_edge:                                      ; preds = %bb.u
  %.pre71 = load ptr, ptr %i.ad, align 8, !noalias !43141
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %.loopexit
  %i.hk = phi ptr [ %.pre71, %._crit_edge ], [ %i.fh, %.loopexit ] ; 3 uses
  %i.hl = add i64 %.lcssa115, %i.fj               ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.fj
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hl ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hn, ptr nonnull align 1 %i.hm, i64 %i.ag, i1 false), !noalias !43141
  %i.ho = load i64, ptr %i.a, align 8, !noalias !43145, !noundef !3 ; 2 uses
  %i.hp = icmp samesign eq i64 %i.ho, %i.hl
  br i1 %i.hp, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.v
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.ho
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph127
  %.sroa.0.08.i32.i.i126 = phi ptr [ %i.hq, %.lr.ph127 ], [ %i.hs, %bb.w ] ; 2 uses
  %i.hr = phi ptr [ %i.dn, %.lr.ph127 ], [ %i.hx, %bb.w ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i32.i.i126, i64 1 ; 2 uses
  %i.ht = load i8, ptr %i.hr, align 1, !noalias !43148, !noundef !3
  store i8 %i.ht, ptr %.sroa.0.08.i32.i.i126, align 1, !noalias !43145
  %i.hu = load i64, ptr %i.a, align 8, !noalias !43145, !noundef !3
  %i.hv = add i64 %i.hu, 1                        ; 2 uses
  store i64 %i.hv, ptr %i.a, align 8, !noalias !43145
  %i.hw = icmp eq ptr %i.hs, %i.hn
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 2 uses
  %.not.not.i33.i.i = icmp eq ptr %i.hx, %i.hg
  %or.cond218 = select i1 %i.hw, i1 true, i1 %.not.not.i33.i.i
  br i1 %or.cond218, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %bb.w

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i": ; preds = %bb.u
  %i.hy = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43151
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r, %bb.p
  %.sroa.21.3 = phi i64 [ %i.b, %bb.p ], [ %i.fj, %bb.r ], [ %i.m, %bb.t ]
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", %bb.x
  %.sroa.21.1 = phi i64 [ %.sroa.21.3, %bb.x ], [ %i.fj, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hz, %bb.x ], [ %i.hy, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  br i1 %i.ak, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ia = load i64, ptr %i.a, align 8, !noalias !43154, !noundef !3 ; 4 uses
  %i.ib = icmp sgt i64 %i.ia, -1
  tail call void @llvm.assume(i1 %i.ib)
  %.not3.i.i.i.i = icmp eq i64 %.sroa.21.1, %i.ia
  br i1 %.not3.i.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.ic = add nuw i64 %i.ia, %i.ag
  store i64 %i.ic, ptr %i.a, align 8, !noalias !43154
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"

bb.ab:                                            ; preds = %bb.z
  %i.id = load ptr, ptr %i.ad, align 8, !noalias !43154, !nonnull !3, !noundef !3 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sroa.21.1
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ia
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull align 1 %i.ie, i64 %i.ag, i1 false), !noalias !43154
  br label %bb.aa

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit": ; preds = %bb.y, %bb.aa
  %i.ig = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.ig, label %.body, label %bb.ae

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"
  store i64 %i.df, ptr %i.a, align 8, !noalias !43038
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  store i64 %i.hd, ptr %i.a, align 8, !noalias !43079
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %.loopexit.i.i, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader", %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %i.ih = phi i64 [ %i.m, %.loopexit.i.i ], [ %i.hl, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.fj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge" ], [ %i.fj, %.loopexit.i.loopexit ] ; 2 uses
  %i.ii = phi i64 [ %i.df, %.loopexit.i.i ], [ %.pre.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.dk, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.promoted, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.df, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge" ], [ %i.hd, %.loopexit.i.loopexit ] ; 4 uses
  %i.ij = icmp sgt i64 %i.ii, -1
  tail call void @llvm.assume(i1 %i.ij)
  %.not3.i.i.i.i.i = icmp eq i64 %i.ih, %i.ii
  br i1 %.not3.i.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %.loopexit.i
  %i.ik = add nuw i64 %i.ii, %i.ag
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i"

bb.ad:                                            ; preds = %.loopexit.i
  %i.il = load ptr, ptr %i.ad, align 8, !noalias !43159, !nonnull !3, !noundef !3 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ih
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ii
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.in, ptr nonnull align 1 %i.im, i64 %i.ag, i1 false), !noalias !43159
  br label %bb.ac

bb.ae:                                            ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43164
end_hunk_1
begin_hunk_2_@"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h2f605f1855116948E":bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %.not.i11 = icmp eq ptr %1, %2
  br i1 %.not.i11, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread7", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.012 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.15, %bb.d ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 1 ; 3 uses
  %i.e = load i8, ptr %.sroa.0.012, align 1, !noalias !56269, !noundef !3 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i": ; preds = %bb.b
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.d, %2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.d, align 1, !noalias !56269, !noundef !3
  %i.l = shl nuw nsw i32 %i.h, 6
  %i.m = and i8 %i.k, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = icmp samesign ugt i8 %i.e, -33
  br i1 %i.p, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread"

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i8 %i.e to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i"
  %i.r = icmp ne ptr %i.j, %2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 3 ; 3 uses
  %i.t = load i8, ptr %i.j, align 1, !noalias !56269, !noundef !3
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i"
  %i.ab = icmp ne ptr %i.s, %2
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !noalias !56269, !noundef !3
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af            ; 2 uses
  %.not = icmp eq i32 %i.ak, 1114112
  br i1 %.not, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread7", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i", %bb.c, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit"
  %spec.select.i6 = phi i32 [ %i.ak, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit" ], [ %i.z, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i" ], [ %i.o, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i" ], [ %i.q, %bb.c ]
  %.sroa.0.15 = phi ptr [ %i.ac, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit" ], [ %i.s, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i" ], [ %i.j, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i" ], [ %i.d, %bb.c ] ; 3 uses
  %i.al = load i64, ptr %i.a, align 8, !noundef !3 ; 5 uses
  %i.am = icmp ult i64 %i.al, 2305843009213693952
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load i64, ptr %0, align 8, !range !540, !noundef !3
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit", label %bb.d

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread7": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit", %bb.d, %bb.a
  ret void

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread"
  %i.ap = ptrtoint ptr %.sroa.0.15 to i64
  %i.aq = sub nuw i64 %i.b, %i.ap                 ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = and i64 %i.aq, 3
  %.not.i7 = icmp ne i64 %i.as, 0
  %i.at = zext i1 %.not.i7 to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.ar, 1
  %i.au = add nuw nsw i64 %.sroa.0.0.i, %i.at
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.al, i64 noundef range(i64 1, 0) %i.au, i64 noundef 4, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit"
  %i.av = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.al
  store i32 %spec.select.i6, ptr %i.aw, align 4
  %i.ax = add nuw nsw i64 %i.al, 1
  store i64 %i.ax, ptr %i.a, align 8
  %.not.i = icmp eq ptr %.sroa.0.15, %2
  br i1 %.not.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread7", label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17hbebdc65590243689E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 11 uses
  %i.d = cmpxchg ptr %i.c, i64 1, i64 0 acquire monotonic, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.d, 1
  br i1 %.sroa.18.0.in.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56274)
  %i.i = tail call { i64, i64 } @_ZN5alloc4sync32arcinner_layout_for_value_layout17h5451ffdde8e0d9bfE(i64 noundef 8, i64 noundef 24), !noalias !56274 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 3 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.j to ptr
  br label %"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !56274
  %i.n = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.j) #71, !noalias !56274
  br label %"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i"

"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i": ; preds = %bb.e, %bb.d
  %.sroa.07.0.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 8 uses
  %i.o = icmp eq ptr %.sroa.07.0.i.i.i.i.i, null
  br i1 %i.o, label %bb.f, label %bb.s, !prof !543

bb.f:                                             ; preds = %"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i"
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %i.j, i64 noundef %i.k) #70, !noalias !56274
  unreachable

bb.g:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.c release, align 8
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit20"

bb.h:                                             ; preds = %bb.k, %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.q = icmp eq ptr %i.c, inttoptr (i64 -1 to ptr)
  br i1 %i.q, label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit"

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #71
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit"

bb.k:                                             ; preds = %bb.b
  %i.t = invoke { i64, i64 } @_ZN5alloc4sync32arcinner_layout_for_value_layout17h5451ffdde8e0d9bfE(i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 3 uses
  %i.v = extractvalue { i64, i64 } %i.t, 1        ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.x = inttoptr i64 %i.u to ptr
  br label %"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i14"

bb.m:                                             ; preds = %.noexc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !56277
  %i.y = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.u) #71, !noalias !56277
  br label %"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i14"

"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i14": ; preds = %bb.m, %bb.l
  %.sroa.07.0.i.i.i.i.i15 = phi ptr [ %i.x, %bb.l ], [ %i.y, %bb.m ] ; 8 uses
  %i.z = icmp eq ptr %.sroa.07.0.i.i.i.i.i15, null
  br i1 %i.z, label %bb.n, label %bb.o, !prof !543

bb.n:                                             ; preds = %"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i14"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %i.u, i64 noundef %i.v) #70
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i14"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i15, align 8, !noalias !56277
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i15, i64 8
  store i64 1, ptr %i.aa, align 8, !noalias !56277
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i15, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  store ptr %.sroa.07.0.i.i.i.i.i15, ptr %0, align 8
  %i.ad = icmp eq ptr %i.c, inttoptr (i64 -1 to ptr)
  br i1 %i.ad, label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit20", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit20"

bb.q:                                             ; preds = %bb.p
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #71
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit20"

"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit20": ; preds = %bb.q, %bb.p, %bb.o, %bb.g, %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit"
  %i.ag = phi ptr [ %.sroa.07.0.i.i.i.i.i15, %bb.q ], [ %.sroa.07.0.i.i.i.i.i15, %bb.p ], [ %.sroa.07.0.i.i.i.i.i15, %bb.o ], [ %i.c, %bb.g ], [ %.sroa.07.0.i.i.i.i.i, %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit" ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  ret ptr %i.ah

bb.r:                                             ; preds = %bb.x
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit": ; preds = %.thread, %bb.j, %bb.i, %bb.h, %bb.x
  %.pn6.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.x ], [ %i.ar, %.thread ], [ %i.p, %bb.h ], [ %i.p, %bb.i ], [ %i.p, %bb.j ]
  resume { ptr, i32 } %.pn6.pn

bb.s:                                             ; preds = %"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb397ab4b304dae66E.exit.i.i"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i, align 8, !noalias !56274
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.aj, align 8, !noalias !56274
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.07.0.i.i.i.i.i, ptr %i.ak, align 8, !alias.scope !56274
  store i64 8, ptr %i.b, align 8, !alias.scope !56274
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 24, ptr %i.al, align 8, !alias.scope !56274
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.am, align 8, !alias.scope !56274
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56280
  %i.ao = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %.noexc21 unwind label %bb.x

.noexc21:                                         ; preds = %bb.s
  br i1 %i.ao, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !56285
  br label %bb.v

bb.u:                                             ; preds = %.noexc21
  invoke void @"_ZN70_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..clone..Clone$GT$5clone17h57d38e5bd813c3d3E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !56280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56280
  %i.ap = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !56289
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.w, label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit"

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit" unwind label %.thread

.thread:                                          ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.07.0.i.i.i.i.i, ptr %0, align 8
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit"

"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit": ; preds = %bb.v, %bb.w
  store ptr %.sroa.07.0.i.i.i.i.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit20"

bb.x:                                             ; preds = %bb.u, %bb.s
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..sync..UniqueArcUninit$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$alloc..alloc..Global$GT$$GT$17h13bd3f4698eb0484E"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #72
          to label %"_ZN4core3ptr110drop_in_place$LT$alloc..sync..Weak$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hfe51ab6c4fb642ffE.exit" unwind label %bb.r
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h06882148b5a48b42E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #45 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %"_ZN4core3ptr260drop_in_place$LT$alloc..sync..Weak$LT$rhai..module..Module..set_iter$LT$rhai..module..Module..set_iterator$LT$rhai..packages..iter_basic..StepRange$LT$u128$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$RF$alloc..alloc..Global$GT$$GT$17ha10562c3b020ae84E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr260drop_in_place$LT$alloc..sync..Weak$LT$rhai..module..Module..set_iter$LT$rhai..module..Module..set_iterator$LT$rhai..packages..iter_basic..StepRange$LT$u128$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$RF$alloc..alloc..Global$GT$$GT$17ha10562c3b020ae84E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71
  br label %"_ZN4core3ptr260drop_in_place$LT$alloc..sync..Weak$LT$rhai..module..Module..set_iter$LT$rhai..module..Module..set_iterator$LT$rhai..packages..iter_basic..StepRange$LT$u128$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$RF$alloc..alloc..Global$GT$$GT$17ha10562c3b020ae84E.exit"

"_ZN4core3ptr260drop_in_place$LT$alloc..sync..Weak$LT$rhai..module..Module..set_iter$LT$rhai..module..Module..set_iterator$LT$rhai..packages..iter_basic..StepRange$LT$u128$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$RF$alloc..alloc..Global$GT$$GT$17ha10562c3b020ae84E.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h07f2b15b8b28ce76E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #45 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %"_ZN4core3ptr253drop_in_place$LT$alloc..sync..Weak$LT$rhai..module..Module..set_iter$LT$rhai..module..Module..set_iterator$LT$core..ops..range..RangeInclusive$LT$u8$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$RF$alloc..alloc..Global$GT$$GT$17he671e825c024d984E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr253drop_in_place$LT$alloc..sync..Weak$LT$rhai..module..Module..set_iter$LT$rhai..module..Module..set_iterator$LT$core..ops..range..RangeInclusive$LT$u8$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$RF$alloc..alloc..Global$GT$$GT$17he671e825c024d984E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71
  br label %"_ZN4core3ptr253drop_in_place$LT$alloc..sync..Weak$LT$rhai..module..Module..set_iter$LT$rhai..module..Module..set_iterator$LT$core..ops..range..RangeInclusive$LT$u8$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$RF$alloc..alloc..Global$GT$$GT$17he671e825c024d984E.exit"

"_ZN4core3ptr253drop_in_place$LT$alloc..sync..Weak$LT$rhai..module..Module..set_iter$LT$rhai..module..Module..set_iterator$LT$core..ops..range..RangeInclusive$LT$u8$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$RF$alloc..alloc..Global$GT$$GT$17he671e825c024d984E.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h090a00995d65ae01E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !7459, !invariant.load !3 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %"_ZN4core3ptr389drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h49b137b8db492576E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull align 1 %i.i)
          to label %"_ZN4core3ptr389drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h49b137b8db492576E.exit" unwind label %bb.c, !inline_history !56294

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr441drop_in_place$LT$alloc..sync..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$C$$RF$alloc..alloc..Global$GT$$GT$17hc8f5bb17a638bf6aE"(ptr nonnull %i.a, ptr nonnull %i.c) #72
  resume { ptr, i32 } %i.j

"_ZN4core3ptr389drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h49b137b8db492576E.exit": ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %"_ZN4core3ptr441drop_in_place$LT$alloc..sync..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$C$$RF$alloc..alloc..Global$GT$$GT$17hc8f5bb17a638bf6aE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr389drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h49b137b8db492576E.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %"_ZN4core3ptr441drop_in_place$LT$alloc..sync..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$C$$RF$alloc..alloc..Global$GT$$GT$17hc8f5bb17a638bf6aE.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !540, !invariant.load !3
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.r = add i64 %i.q, 15
  %i.s = add i64 %i.r, %i.p
  %i.t = sub i64 0, %i.q
  %i.u = and i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %"_ZN4core3ptr441drop_in_place$LT$alloc..sync..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$C$$RF$alloc..alloc..Global$GT$$GT$17hc8f5bb17a638bf6aE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.q) #71
  br label %"_ZN4core3ptr441drop_in_place$LT$alloc..sync..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$C$$RF$alloc..alloc..Global$GT$$GT$17hc8f5bb17a638bf6aE.exit"

"_ZN4core3ptr441drop_in_place$LT$alloc..sync..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$C$$RF$alloc..alloc..Global$GT$$GT$17hc8f5bb17a638bf6aE.exit": ; preds = %"_ZN4core3ptr389drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$core..option..Option$LT$rhai..func..native..NativeCallContext$GT$$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h49b137b8db492576E.exit", %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0f9ccf1247cb24acE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !7459, !invariant.load !3 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %"_ZN4core3ptr105drop_in_place$LT$dyn$u20$rhai..func..plugin..PluginFunc$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17hb24addd3e18d6625E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.e, -1
end_hunk_2
begin_hunk_3_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h423b6850350ff8cdE":bb.a
  %i.ac = add i64 %i.s, %i.z                      ; 3 uses
  %i.ad = add i64 %i.ab, %i.w                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.ad, %i.af                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = xor i64 %i.ak, 576460752303423488
  %i.ar = xor i64 %i.ap, 255
  %i.as = add i64 %i.aq, %i.am                    ; 3 uses
  %i.at = add i64 %i.ao, %i.ar                    ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.av = xor i64 %i.as, %i.au                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.az, %i.bb                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 3 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bn = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bo = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bq = xor i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bs = xor i64 %i.br, %i.bo                    ; 3 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.bu = add i64 %i.bq, %i.bo
  %i.bv = add i64 %i.bs, %i.bt                    ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 13)
  %i.bx = xor i64 %i.bw, %i.bu                    ; 3 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 16)
  %i.bz = xor i64 %i.by, %i.bv                    ; 2 uses
  %i.ca = add i64 %i.bx, %i.bv                    ; 3 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 17)
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 21)
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ce = xor i64 %i.cc, %i.cb
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = xor i64 %i.cf, %i.ca
  ret i64 %i.cg
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h46ac01def6834598E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #44 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -40
  %.val = load i64, ptr %i.d, align 8, !alias.scope !63255, !noalias !63258, !noundef !3
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h6b9977df13de8665E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #44 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -40
  %.val = load i64, ptr %i.d, align 8, !alias.scope !63261, !noalias !63264, !noundef !3
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h83e3e6d38fd08c9fE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #44 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -24
  %.val = load i64, ptr %i.d, align 8, !alias.scope !63267, !noalias !63270, !noundef !3
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hb83c2127af28a896E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #44 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -32
  %.val = load i64, ptr %i.d, align 8, !alias.scope !63273, !noalias !63276, !noundef !3
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hdaf1ad35ba5a8c00E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #44 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -32
  %.val = load i64, ptr %i.d, align 8, !alias.scope !63279, !noalias !63282, !noundef !3
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hf6bb6d633910b54dE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #44 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.val = load i64, ptr %i.d, align 8, !alias.scope !63285, !noalias !63288, !noundef !3
  ret i64 %.val
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h2c9899d123126b50E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63291)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !63291, !nonnull !3, !noundef !3 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !63294
  %i.e = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = bitcast <16 x i1> %i.e to i16
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$17hd25d707ef120b933E.exit.i", %bb.b
  %.sroa.07.018.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.07.1.i, %"_ZN4core3ptr87drop_in_place$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$17hd25d707ef120b933E.exit.i" ] ; 2 uses
  %.sroa.6.017.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.6.1.i, %"_ZN4core3ptr87drop_in_place$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$17hd25d707ef120b933E.exit.i" ] ; 2 uses
  %.sroa.88.016.i = phi i16 [ %i.g, %bb.b ], [ %i.p, %"_ZN4core3ptr87drop_in_place$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$17hd25d707ef120b933E.exit.i" ] ; 2 uses
  %.sroa.109.015.i = phi i64 [ %i.b, %bb.b ], [ %i.s, %"_ZN4core3ptr87drop_in_place$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$17hd25d707ef120b933E.exit.i" ]
  %.not13.i.i = icmp eq i16 %.sroa.88.016.i, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.sroa.6.017.i, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %.sroa.07.018.i, %bb.c ]
  %.val11.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !63297
  %i.j = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -512 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.j to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i": ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.6.1.i = phi ptr [ %.sroa.6.017.i, %bb.c ], [ %i.l, %.lr.ph.i.i ]
  %.sroa.07.1.i = phi ptr [ %.sroa.07.018.i, %bb.c ], [ %i.k, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.88.016.i, %bb.c ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i, i64 %i.q ; 2 uses
  %i.s = add i64 %.sroa.109.015.i, -1             ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -8
  %.val6.i = load i64, ptr %i.t, align 8, !alias.scope !63300, !noalias !63291, !noundef !3 ; 2 uses
  %i.u = icmp ugt i64 %.val6.i, 2
  br i1 %i.u, label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h5db898eceaa0e125E.exit.i.i.i.i", label %"_ZN4core3ptr87drop_in_place$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$17hd25d707ef120b933E.exit.i"

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h5db898eceaa0e125E.exit.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"
  %i.v = getelementptr i8, ptr %i.r, i64 -24
  %.val.i = load ptr, ptr %i.v, align 8, !noalias !63291, !nonnull !3, !noundef !3
  %i.w = shl nuw i64 %.val6.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !63303
  br label %"_ZN4core3ptr87drop_in_place$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$17hd25d707ef120b933E.exit.i"

"_ZN4core3ptr87drop_in_place$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$17hd25d707ef120b933E.exit.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h5db898eceaa0e125E.exit.i.i.i.i", %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"
  %i.x = icmp eq i64 %i.s, 0
  br i1 %i.x, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17he73de831e240945dE.exit, label %bb.c

bb.d:                                             ; preds = %bb.a, %"_ZN4core3ptr309drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7abe00c086285e4fE.exit5"
  ret void

_ZN9hashbrown3raw13RawTableInner13drop_elements17he73de831e240945dE.exit: ; preds = %"_ZN4core3ptr87drop_in_place$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$17hd25d707ef120b933E.exit.i"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noundef !3 ; 5 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %"_ZN4core3ptr309drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7abe00c086285e4fE.exit5", label %bb.e

bb.e:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17he73de831e240945dE.exit
  %i.ab = add i64 %i.z, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.ab, i1 false)
  %i.ac = icmp ult i64 %i.z, 8
  %i.ad = add i64 %i.z, 1
  %i.ae = lshr i64 %i.ad, 3
  %i.af = mul nuw i64 %i.ae, 7
  %spec.select.i.i.i4 = select i1 %i.ac, i64 %i.z, i64 %i.af
  br label %"_ZN4core3ptr309drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7abe00c086285e4fE.exit5"

"_ZN4core3ptr309drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u64$C$smallvec..SmallVec$LT$$u5b$usize$u3b$$u20$2$u5d$$GT$$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7abe00c086285e4fE.exit5": ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17he73de831e240945dE.exit, %bb.e
  %i.ag = phi i64 [ %spec.select.i.i.i4, %bb.e ], [ 0, %_ZN9hashbrown3raw13RawTableInner13drop_elements17he73de831e240945dE.exit ]
  store i64 0, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %i.ah, align 8
  br label %bb.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h0e0e152e9f8cb203E"() unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 1, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai4eval8chaining14INDEXER_HASHES17hf9be322085c4aed8E, i64 8), ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.f, align 8
  call void @_ZN9once_cell3imp18initialize_or_wait17h8267270b59612bf2E(ptr noundef nonnull align 8 @_ZN4rhai4eval8chaining14INDEXER_HASHES17hf9be322085c4aed8E, ptr noundef nonnull align 1 %i.b, ptr nonnull @3319)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize28_$u7b$$u7b$closure$u7d$$u7d$17h4c377c965bfe52ccE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !249, !noundef !3
  store i8 0, ptr %i.a, align 1
  %i.b = load atomic ptr, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE acquire, align 8, !noalias !63306
  %.not.i.i.i = icmp eq ptr %i.b, inttoptr (i64 2 to ptr)
  %.val10.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 8), align 8, !range !455, !noalias !63306
  %i.c = trunc nuw i64 %.val10.i.i.i to i1
  %i.d = select i1 %.not.i.i.i, i1 %i.c, i1 false
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 16), align 8, !noalias !63306 ; 2 uses
  %.val6.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 24), align 8, !noalias !63306 ; 2 uses
  %i.e = or i64 %.val6.i.i.i, %.val.i.i.i
  %.val8.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 32), align 8, !noalias !63306 ; 2 uses
  %i.f = or i64 %i.e, %.val8.i.i.i
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 40), align 8, !noalias !63309, !noundef !3 ; 2 uses
  %i.h = or i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load atomic ptr, ptr @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E acquire, align 8, !noalias !63306 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i", !prof !543

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef align 8 dereferenceable(64) ptr @"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$4init17h356f4c85e7ef4921E"(ptr noundef nonnull align 8 @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E), !noalias !63306
  br label %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i"

"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i": ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !63309, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !63309, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !63309, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noalias !63309, !noundef !3
  br label %_ZN4rhai4func7hashing12calc_fn_hash17h7af6393a268c020cE.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.t = xor i64 %.val.i.i.i, 4983270260364809079
  %i.u = xor i64 %.val6.i.i.i, -4732044268327596948
  %i.v = xor i64 %.val8.i.i.i, -4563226453097033507
  %i.w = xor i64 %i.g, 4577018097722394903
  br label %_ZN4rhai4func7hashing12calc_fn_hash17h7af6393a268c020cE.exit.i.i

_ZN4rhai4func7hashing12calc_fn_hash17h7af6393a268c020cE.exit.i.i: ; preds = %bb.e, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i"
  %.sink13.i.i.i = phi i64 [ %i.m, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i" ], [ %i.t, %bb.e ] ; 2 uses
  %.sink12.i.i.i = phi i64 [ %i.q, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i" ], [ %i.v, %bb.e ]
  %.sink.i.i.i = phi i64 [ %i.s, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i" ], [ %i.w, %bb.e ]
  %i.x = phi i64 [ %i.o, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i" ], [ %i.u, %bb.e ]
  %i.y = load atomic ptr, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE acquire, align 8, !noalias !63312
  %.not.i1.i.i = icmp eq ptr %i.y, inttoptr (i64 2 to ptr)
  %.val10.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 8), align 8, !range !455, !noalias !63312
  %i.z = trunc nuw i64 %.val10.i2.i.i to i1
  %i.aa = select i1 %.not.i1.i.i, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4rhai4func7hashing12calc_fn_hash17h7af6393a268c020cE.exit.i.i
  %.val.i10.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 16), align 8, !noalias !63312 ; 2 uses
  %.val6.i11.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 24), align 8, !noalias !63312 ; 2 uses
  %i.ab = or i64 %.val6.i11.i.i, %.val.i10.i.i
  %.val8.i12.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 32), align 8, !noalias !63312 ; 2 uses
  %i.ac = or i64 %i.ab, %.val8.i12.i.i
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 40), align 8, !noalias !63315, !noundef !3 ; 2 uses
  %i.ae = or i64 %i.ac, %i.ad
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %_ZN4rhai4func7hashing12calc_fn_hash17h7af6393a268c020cE.exit.i.i
  %i.ag = load atomic ptr, ptr @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E acquire, align 8, !noalias !63312 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.h, label %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i3.i.i", !prof !543

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call noundef align 8 dereferenceable(64) ptr @"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$4init17h356f4c85e7ef4921E"(ptr noundef nonnull align 8 @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E), !noalias !63312
  br label %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i3.i.i"

"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i3.i.i": ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.ag, %bb.g ] ; 4 uses
  %i.aj = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !63315, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !63315, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !63315, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !63315, !noundef !3
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$11get_or_init28_$u7b$$u7b$closure$u7d$$u7d$17hb6b377b51b90152fE.exit"

bb.i:                                             ; preds = %bb.f
  %i.aq = xor i64 %.val.i10.i.i, 4983270260364809079
  %i.ar = xor i64 %.val6.i11.i.i, -4732044268327596948
  %i.as = xor i64 %.val8.i12.i.i, -4563226453097033507
  %i.at = xor i64 %i.ad, 4577018097722394903
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$11get_or_init28_$u7b$$u7b$closure$u7d$$u7d$17hb6b377b51b90152fE.exit"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$11get_or_init28_$u7b$$u7b$closure$u7d$$u7d$17hb6b377b51b90152fE.exit": ; preds = %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i3.i.i", %bb.i
  %.sink13.i5.i.i = phi i64 [ %i.aj, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i3.i.i" ], [ %i.aq, %bb.i ] ; 2 uses
  %.sink12.i6.i.i = phi i64 [ %i.an, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i3.i.i" ], [ %i.as, %bb.i ]
  %.sink.i7.i.i = phi i64 [ %i.ap, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i3.i.i" ], [ %i.at, %bb.i ]
  %i.au = phi i64 [ %i.al, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i3.i.i" ], [ %i.ar, %bb.i ]
  %i.av = xor i64 %i.x, 70
  %i.aw = zext i64 %i.av to i128
  %i.ax = mul nuw nsw i128 %i.aw, 6364136223846793005 ; 2 uses
  %.masked.i.i.i = and i128 %i.ax, 18446744073709551615
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %.masked.i.i.i, %i.ay
  %i.ba = mul nuw nsw i128 %i.az, 6364136223846793005 ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = xor i128 %i.bb, %i.ba
  %i.bd = trunc i128 %i.bc to i64
  %i.be = mul i64 %i.bd, 6364136223846793005
  %i.bf = add i64 %.sink13.i.i.i, 8301130017339275202
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = xor i64 %.sink.i.i.i, 2626835976331748708
  %i.bi = zext i64 %i.bh to i128
  %i.bj = xor i64 %.sink12.i.i.i, 7306849019947675241
  %i.bk = zext i64 %i.bj to i128
  %i.bl = mul nuw i128 %i.bi, %i.bk               ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = xor i128 %i.bm, %i.bl
  %i.bo = trunc i128 %i.bn to i64
  %i.bp = xor i64 %i.bg, %i.bo                    ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 23)
  %i.br = xor i64 %i.bq, 255
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw nsw i128 %i.bs, 6364136223846793005 ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = xor i128 %i.bu, %i.bt
  %i.bw = trunc i128 %i.bv to i64
  %i.bx = xor i64 %i.bw, 2
  %i.by = zext i64 %i.bx to i128
  %i.bz = mul nuw nsw i128 %i.by, 6364136223846793005 ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = xor i128 %i.ca, %i.bz                   ; 2 uses
  %i.cc = and i128 %i.cb, 18446744073709551615
  %i.cd = zext i64 %.sink13.i.i.i to i128
  %i.ce = mul nuw i128 %i.cc, %i.cd               ; 2 uses
  %i.cf = lshr i128 %i.ce, 64
  %i.cg = xor i128 %i.cf, %i.ce
  %i.ch = trunc i128 %i.cg to i64                 ; 2 uses
  %i.ci = trunc i128 %i.cb to i64
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 %i.ci)
  %i.ck = xor i64 %i.au, 70
  %i.cl = zext i64 %i.ck to i128
  %i.cm = mul nuw nsw i128 %i.cl, 6364136223846793005 ; 2 uses
  %i.cn = lshr i128 %i.cm, 64
  %.masked.i9.i.i = and i128 %i.cm, 18446744073709551615
  %i.co = xor i128 %.masked.i9.i.i, %i.cn
  %i.cp = mul nuw nsw i128 %i.co, 6364136223846793005 ; 2 uses
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = xor i128 %i.cq, %i.cp
  %i.cs = trunc i128 %i.cr to i64
  %i.ct = mul i64 %i.cs, 6364136223846793005
  %i.cu = xor i64 %.sink12.i6.i.i, 7310226719668203113
  %i.cv = xor i64 %.sink.i7.i.i, 2626836027871356260
  %i.cw = zext i64 %i.cu to i128
end_hunk_3
