Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.2?download=true
inline.NumInlined: 170
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0B9_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23
  unreachable

.thread:                                          ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit.backedge

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, ptr } %i.g, 0        ; 4 uses
  %i.j = extractvalue { ptr, ptr } %i.g, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull %i.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !206, !invariant.load !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !207, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit.backedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit.backedge: ; preds = %bb.g, %bb.f, %.thread
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !206, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !207, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #20
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB5_5InneruE6removeCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull align 8 captures(address) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = load i64, ptr %2, align 8, !range !9, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noundef !5 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noundef !5 ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr %i.k, ptr %1, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.i, ptr %i.m, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %.not20 = icmp ne ptr %i.p, null
  %i.q = icmp eq ptr %i.p, %i.g
  %or.cond = select i1 %.not20, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8
  store i64 0, ptr %2, align 8
  %i.r = trunc nuw i64 %.sroa.011.0.copyload to i1
  br i1 %i.r, label %bb.m, label %bb.n, !prof !7

bb.l:                                             ; preds = %bb.j
  store ptr %i.k, ptr %i.o, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 0, ptr %i.d, align 8
  %i.s = load i8, ptr %i.c, align 8, !range !8, !noundef !5
  switch i8 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit.critedge [
    i8 1, label %bb.o
    i8 3, label %bb.o
  ]

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !5
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8
  br i1 %3, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit.critedge

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !236, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !236, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !236, !nonnull !5, !noundef !5
  call void %i.aa(ptr noundef %.val1.i.i.i.i.i), !noalias !236, !inline_history !218
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.ab = load ptr, ptr %i.y, align 8, !alias.scope !240, !nonnull !5, !noundef !5
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !240
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit.critedge: ; preds = %bb.o, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit.critedge, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 3, ptr %i.c, align 8
  %i.ah = load i8, ptr %i.b, align 8, !range !8, !noundef !5 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %bb.u, label %bb.v, !prof !12

bb.u:                                             ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !range !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 1, ptr %i.am, align 1
  invoke fastcc void @_RINvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify13GenericNotifyNCNvB2_6remove0EECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a)
          to label %5 unwind label %bb.w

bb.v:                                             ; preds = %5, %bb.t
  %4 = phi i8 [ %.pr, %5 ], [ %i.ah, %bb.t ]      ; 2 uses
  %i.an = icmp eq i8 %4, 1
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit, label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load i8, ptr %i.b, align 8, !range !8, !noundef !5
  %i.aq = icmp eq i8 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %bb.y

5:                                                ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load i8, ptr %i.b, align 8
  br label %bb.v

bb.x:                                             ; preds = %bb.af, %bb.y, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.ao, %bb.w ], [ %i.ao, %bb.y ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.ag unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.ag, %bb.y, %bb.x
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.ad, %bb.aa, %bb.ac, %bb.ae, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i8, ptr %i.d, align 8, !range !8, !alias.scope !245
  %i.as = icmp eq i8 %.pre, 2
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = add i64 %i.au, -1
  store i64 %i.av, ptr %i.at, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  br i1 %i.as, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

bb.aa:                                            ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.aw = icmp eq i8 %4, 2
  br i1 %i.aw, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !248, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val1.i.i = load ptr, ptr %i.az, align 8, !alias.scope !248, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !248, !nonnull !5, !noundef !5
  invoke void %i.bb(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit unwind label %bb.af, !inline_history !249

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.bc = load ptr, ptr %i.az, align 8, !alias.scope !253, !nonnull !5, !noundef !5
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !253
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.ag:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #22
          to label %bb.ah unwind label %bb.z

bb.ah:                                            ; preds = %bb.ag
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 128, !range !13, !noundef !5
  switch i64 %i.a, label %default.unreachable5 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %i.d = lshr i64 %i.c, 1
  %.lobit = and i64 %i.d, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = tail call noundef i64 @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128 ; 3 uses
  %i.j = load atomic i64, ptr %i.g seq_cst, align 128 ; 2 uses
  %i.k = load atomic i64, ptr %i.h seq_cst, align 128
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit, label %bb.e

_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e
  %i.m = and i64 %i.i, -2                         ; 2 uses
  %i.n = and i64 %i.j, -2                         ; 2 uses
  %i.o = and i64 %i.i, 62
  %i.p = icmp eq i64 %i.o, 62
  %i.q = add i64 %i.m, 2
  %spec.select.i = select i1 %i.p, i64 %i.q, i64 %i.m
  %i.r = and i64 %i.j, 62
  %i.s = icmp eq i64 %i.r, 62
  %i.t = add i64 %i.n, 2
  %.sroa.08.0.i = select i1 %i.s, i64 %i.t, i64 %i.n ; 2 uses
  %i.u = and i64 %.sroa.08.0.i, -64
  %i.v = sub i64 %spec.select.i, %i.u             ; 2 uses
  %i.w = lshr exact i64 %i.v, 1
  %i.x = lshr exact i64 %.sroa.08.0.i, 1
  %i.y = and i64 %i.x, 31
  %i.z = lshr i64 %i.v, 6
  %i.aa = add nuw nsw i64 %i.z, %i.y
  %i.ab = sub nsw i64 %i.w, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %.lobit, %bb.b ], [ %i.f, %bb.c ], [ %i.ab, %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 128 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %1, align 128, !range !13, !noundef !5
  switch i64 %i.b, label %default.unreachable18 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable18:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvMNtCseSXqeRWftQm_16concurrent_queue6singleINtB2_6SingleNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %i.c)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 128 %i.d)
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.f = load atomic i64, ptr %i.e acquire, align 128, !noalias !256
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8, !noalias !256
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i, %bb.d
  %.sroa.020.0.i = phi ptr [ %i.h, %bb.d ], [ %i.q, %.backedge.i ] ; 8 uses
  %.sroa.04.0.i = phi i64 [ %i.f, %bb.d ], [ %.sroa.04.0.be.i, %.backedge.i ] ; 5 uses
  %i.j = lshr i64 %.sroa.04.0.i, 1                ; 2 uses
  %i.k = and i64 %i.j, 31                         ; 5 uses
  %i.l = icmp eq i64 %i.k, 31
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !256
  %i.m = load atomic i64, ptr %i.e acquire, align 128, !noalias !256
  br label %.backedge.i

bb.g:                                             ; preds = %bb.e
  %i.n = add i64 %.sroa.04.0.i, 2                 ; 2 uses
  %i.o = and i64 %.sroa.04.0.i, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.k

.backedge.i:                                      ; preds = %bb.p, %bb.o, %bb.f
  %.sroa.04.0.be.i = phi i64 [ %.sroa.01.0.i.i, %bb.p ], [ %i.m, %bb.f ], [ %i.aa, %bb.o ]
  %i.q = load atomic ptr, ptr %i.g acquire, align 8, !noalias !256
  br label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !256
  store i64 0, ptr %i.a, align 8, !noalias !256
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #20, !noalias !256, !srcloc !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !256
  %i.r = load atomic i64, ptr %i.i monotonic, align 128, !noalias !256 ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = icmp eq i64 %i.j, %i.s
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.unshifted.i = xor i64 %i.r, %.sroa.04.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.u = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.n, %i.u
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.v = and i64 %i.r, 1
  %i.w = icmp eq i64 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %i.w, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.g
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.g ], [ %spec.select.i, %bb.i ] ; 2 uses
  %i.y = icmp eq ptr %.sroa.020.0.i, null
  br i1 %i.y, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.x, align 1, !alias.scope !256
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit

bb.m:                                             ; preds = %bb.j
  store i8 1, ptr %i.x, align 1, !alias.scope !256
end_hunk_0
