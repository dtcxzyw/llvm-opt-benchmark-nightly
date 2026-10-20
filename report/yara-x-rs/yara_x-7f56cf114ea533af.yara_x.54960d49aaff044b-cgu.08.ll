Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.08?download=true
inline.NumInlined: 3676
inline.NumDeleted: 1536
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMsz_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_6Export8mut_name:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsz_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_6Export8set_name(ptr noalias nofree noundef align 8 dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !4762, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvNtCslssDYltVX0B_6memchr6memmem5rfind(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 64
  br i1 %i.a, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4797)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.c = load i8, ptr %2, align 1, !alias.scope !4798, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i8, ptr %i.b, align 1, !alias.scope !4798, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.g = load i8, ptr %i.d, align 1, !alias.scope !4798, !noundef !5 ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !alias.scope !4798, !noundef !5 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.i, %bb.b
  %.sroa.0.038.i.i.i.i = phi i64 [ %.sroa.0.2.i.i.i.i, %bb.i ], [ 4, %bb.b ] ; 4 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %.sroa.5.2.i.i.i.i, %bb.i ], [ 1, %bb.b ] ; 3 uses
  %.sroa.06.036.i.i.i.i = phi i64 [ %.sroa.06.1.i.i.i.i, %bb.i ], [ 3, %bb.b ] ; 4 uses
  %.sroa.013.035.i.i.i.i = phi i64 [ %.sroa.013.1.i.i.i.i, %bb.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = xor i64 %.sroa.013.035.i.i.i.i, -1       ; 2 uses
  %i.j = add i64 %.sroa.0.038.i.i.i.i, %i.i       ; 3 uses
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %bb.c, label %.split.us.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !4799, !noundef !5 ; 2 uses
  %i.n = add i64 %.sroa.06.036.i.i.i.i, %i.i      ; 5 uses
  %i.o = icmp ult i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %.split41.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %.lr.ph.split.i.i.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef range(i64 2, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #42, !noalias !4800
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !4799, !noundef !5 ; 2 uses
  %i.r = icmp ult i8 %i.q, %i.m
  br i1 %i.r, label %bb.h, label %bb.e

.split41.us.i.i.i.i:                              ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef range(i64 2, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #42, !noalias !4800
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i8 %i.q, %i.m
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i64 %.sroa.013.035.i.i.i.i, 1    ; 2 uses
  %i.u = icmp eq i64 %i.t, %.sroa.5.037.i.i.i.i   ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.u, i64 0, i64 %i.t
  %i.v = select i1 %i.u, i64 %.sroa.5.037.i.i.i.i, i64 0
  %spec.select28.i.i.i.i = sub i64 %.sroa.06.036.i.i.i.i, %i.v
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.w = sub i64 %.sroa.0.038.i.i.i.i, %i.n
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.x = add i64 %.sroa.06.036.i.i.i.i, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.013.1.i.i.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.g ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %.sroa.06.1.i.i.i.i = phi i64 [ %i.x, %bb.h ], [ %i.n, %bb.g ], [ %spec.select28.i.i.i.i, %bb.f ] ; 2 uses
  %.sroa.5.2.i.i.i.i = phi i64 [ 1, %bb.h ], [ %i.w, %bb.g ], [ %.sroa.5.037.i.i.i.i, %bb.f ] ; 2 uses
  %.sroa.0.2.i.i.i.i = phi i64 [ %.sroa.06.036.i.i.i.i, %bb.h ], [ %.sroa.0.038.i.i.i.i, %bb.g ], [ %.sroa.0.038.i.i.i.i, %bb.f ] ; 3 uses
  %i.y = icmp ult i64 %.sroa.013.1.i.i.i.i, %.sroa.06.1.i.i.i.i
  br i1 %i.y, label %.lr.ph.split.i.i.i.i, label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %bb.i, %bb.p
  %.sroa.0.038.us.i.i.i.i = phi i64 [ %.sroa.0.2.us.i.i.i.i, %bb.p ], [ 4, %bb.i ] ; 4 uses
  %.sroa.5.037.us.i.i.i.i = phi i64 [ %.sroa.5.2.us.i.i.i.i, %bb.p ], [ 1, %bb.i ] ; 3 uses
  %.sroa.06.036.us.i.i.i.i = phi i64 [ %.sroa.06.1.us.i.i.i.i, %bb.p ], [ 3, %bb.i ] ; 4 uses
  %.sroa.013.035.us.i.i.i.i = phi i64 [ %.sroa.013.1.us.i.i.i.i, %bb.p ], [ 0, %bb.i ] ; 2 uses
  %i.z = xor i64 %.sroa.013.035.us.i.i.i.i, -1    ; 2 uses
  %i.aa = add i64 %.sroa.0.038.us.i.i.i.i, %i.z   ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 4
  br i1 %i.ab, label %bb.j, label %.split.us.i9.i.i.i

bb.j:                                             ; preds = %.lr.ph.split.us.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !4801, !noundef !5 ; 2 uses
  %i.ae = add i64 %.sroa.06.036.us.i.i.i.i, %i.z  ; 5 uses
  %i.af = icmp ult i64 %i.ae, 4
  br i1 %i.af, label %bb.k, label %.split41.us.i10.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !4801, !noundef !5 ; 2 uses
  %i.ai = icmp ugt i8 %i.ah, %i.ad
  br i1 %i.ai, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp ult i8 %i.ah, %i.ad
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = add nuw i64 %.sroa.013.035.us.i.i.i.i, 1 ; 2 uses
  %i.al = icmp eq i64 %i.ak, %.sroa.5.037.us.i.i.i.i ; 2 uses
  %spec.select.us.i.i.i.i = select i1 %i.al, i64 0, i64 %i.ak
  %i.am = select i1 %i.al, i64 %.sroa.5.037.us.i.i.i.i, i64 0
  %spec.select28.us.i.i.i.i = sub i64 %.sroa.06.036.us.i.i.i.i, %i.am
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.an = sub i64 %.sroa.0.038.us.i.i.i.i, %i.ae
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ao = add i64 %.sroa.06.036.us.i.i.i.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.013.1.us.i.i.i.i = phi i64 [ 0, %bb.o ], [ 0, %bb.n ], [ %spec.select.us.i.i.i.i, %bb.m ] ; 2 uses
  %.sroa.06.1.us.i.i.i.i = phi i64 [ %i.ao, %bb.o ], [ %i.ae, %bb.n ], [ %spec.select28.us.i.i.i.i, %bb.m ] ; 2 uses
  %.sroa.5.2.us.i.i.i.i = phi i64 [ 1, %bb.o ], [ %i.an, %bb.n ], [ %.sroa.5.037.us.i.i.i.i, %bb.m ] ; 2 uses
  %.sroa.0.2.us.i.i.i.i = phi i64 [ %.sroa.06.036.us.i.i.i.i, %bb.o ], [ %.sroa.0.038.us.i.i.i.i, %bb.n ], [ %.sroa.0.038.us.i.i.i.i, %bb.m ] ; 3 uses
  %i.ap = icmp ult i64 %.sroa.013.1.us.i.i.i.i, %.sroa.06.1.us.i.i.i.i
  br i1 %i.ap, label %.lr.ph.split.us.i.i.i.i, label %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit

.split.us.i9.i.i.i:                               ; preds = %.lr.ph.split.us.i.i.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef range(i64 2, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #42, !noalias !4800
  unreachable

.split41.us.i10.i.i.i:                            ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef range(i64 2, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #42, !noalias !4800
  unreachable

_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.p
  %i.aq = and i8 %i.h, 63
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i8 %i.g, 63
  %i.au = zext nneg i8 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i8 %i.e, 63
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = and i8 %i.c, 63
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = or i64 %i.ay, %i.bb
  %i.bd = or i64 %i.bc, %i.av
  %i.be = or i64 %i.bd, %i.as                     ; 4 uses
  %i.bf = icmp ult i64 %.sroa.0.2.i.i.i.i, %.sroa.0.2.us.i.i.i.i
  %.6.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.2.i.i.i.i, i64 %.sroa.0.2.us.i.i.i.i) ; 25 uses
  %.sroa.03.0.i.i.i = select i1 %i.bf, i64 %.sroa.5.2.i.i.i.i, i64 %.sroa.5.2.us.i.i.i.i
  %i.bg = tail call { i64, i64 } @_RNvMs0_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_5Shift7reverse(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 2, -9223372036854775808) 4, i64 noundef %.sroa.03.0.i.i.i, i64 noundef %.6.i.i.i), !noalias !4802 ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bg, 1      ; 5 uses
  %i.bi = extractvalue { i64, i64 } %i.bg, 0      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4805)
  %i.bj = add nsw i64 %i.bi, -2
  %.inv.i.i = icmp samesign ult i64 %i.bi, 2
  %i.bk = select i1 %.inv.i.i, i64 2, i64 %i.bj
  switch i64 %i.bk, label %bb.q [
    i64 0, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit
    i64 1, label %.noexc
    i64 2, label %bb.r
  ]

bb.q:                                             ; preds = %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit
  unreachable

.noexc:                                           ; preds = %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.15.32.extract.trunc = trunc i64 %i.bh to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.bm = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !4806, !nonnull !5, !noundef !5
  %i.bn = tail call { i64, ptr } %i.bm(i8 noundef %.sroa.15.32.extract.trunc, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.bl), !inline_history !4785 ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i: ; preds = %.noexc
  %i.bq = extractvalue { i64, ptr } %i.bn, 1
  %i.br = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.bq, ptr noundef nonnull readonly %0)
  br label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

bb.r:                                             ; preds = %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit
  %i.bs = trunc nuw i64 %i.bi to i1
  %i.bt = xor i64 %.6.i.i.i, -1                   ; 2 uses
  br i1 %i.bs, label %.lr.ph69.i.i, label %.lr.ph60.i.i

.lr.ph69.i.i:                                     ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4808)
  %i.bu = icmp ult i64 %.6.i.i.i, 4
  %i.bv = add i64 %.6.i.i.i, -1                   ; 2 uses
  %.first_iter.i.i = icmp ult i64 %i.bv, 4
  br i1 %.first_iter.i.i, label %.lr.ph69.i.split.us.i.preheader, label %.lr.ph69.i.split.i

.lr.ph69.i.split.us.i.preheader:                  ; preds = %.lr.ph69.i.i
  %3 = icmp eq i64 %.6.i.i.i, 4
  %i.bw = add nuw nsw i64 %.6.i.i.i, -4
  %.not33.i.i.us.us.i67 = icmp eq i64 %.6.i.i.i, 0
  %i.bx = add nsw i64 %.6.i.i.i, -1               ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  %.not33.i.i.us.us.i = icmp eq i64 %i.bx, 0
  %i.bz = add nsw i64 %.6.i.i.i, -2               ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz
  %.not33.i.i.us.us.i.1 = icmp eq i64 %i.bz, 0
  %i.cb = add nsw i64 %.6.i.i.i, -3               ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %i.cb
  %.not33.i.i.us.us.i.2 = icmp eq i64 %i.cb, 0
  %i.cd = add nsw i64 %.6.i.i.i, -4               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %.6.i.i.i
  %i.cg = add nuw nsw i64 %.6.i.i.i, 1            ; 3 uses
  %exitcond120.not.i.us.i = icmp eq i64 %i.cg, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg
  %i.ci = add nuw nsw i64 %.6.i.i.i, 2            ; 3 uses
  %exitcond120.not.i.us.i.1 = icmp eq i64 %i.ci, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci
  %i.ck = add nuw nsw i64 %.6.i.i.i, 3            ; 3 uses
  %exitcond120.not.i.us.i.2 = icmp eq i64 %i.ck, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck
  br label %.lr.ph69.i.split.us.i

.lr.ph69.i.split.us.i:                            ; preds = %.lr.ph69.i.split.us.i.preheader, %.backedge.i.us.i
  %.sroa.01.0.i67.i.us.i = phi i64 [ %.sroa.01.0.i.be.i.us.i, %.backedge.i.us.i ], [ %1, %.lr.ph69.i.split.us.i.preheader ] ; 5 uses
  %i.cm = add i64 %.sroa.01.0.i67.i.us.i, -4      ; 14 uses
  %i.cn = icmp ult i64 %i.cm, %1
  br i1 %i.cn, label %bb.s, label %.split49.us.i

bb.s:                                             ; preds = %.lr.ph69.i.split.us.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !4809, !noundef !5 ; 2 uses
  %i.cq = and i8 %i.cp, 63
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = and i64 %i.cs, %i.be
  %.not32.i.i.us.i = icmp eq i64 %i.ct, 0
  br i1 %.not32.i.i.us.i, label %.backedge.i.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %bb.s
  %i.cu = add i64 %.sroa.01.0.i67.i.us.i, -5      ; 4 uses
  br i1 %.not33.i.i.us.us.i67, label %.critedge.i.i.split.us.us.i, label %.lr.ph69

bb.t:                                             ; preds = %bb.z
  br i1 %.not33.i.i.us.us.i, label %.critedge.i.i.split.us.us.i, label %.lr.ph69.1

.lr.ph69.1:                                       ; preds = %bb.t
  %i.cv = add i64 %i.cu, %i.bx                    ; 3 uses
  %i.cw = icmp ult i64 %i.cv, %1
  br i1 %i.cw, label %bb.u, label %.split45.us.i

bb.u:                                             ; preds = %.lr.ph69.1
  %i.cx = load i8, ptr %i.ca, align 1, !alias.scope !4810, !noalias !4811, !noundef !5
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cv
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !4809, !noundef !5
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.v, label %.loopexit.i.us.i

bb.v:                                             ; preds = %bb.u
  br i1 %.not33.i.i.us.us.i.1, label %.critedge.i.i.split.us.us.i, label %.lr.ph69.2

.lr.ph69.2:                                       ; preds = %bb.v
  %i.db = add i64 %i.cu, %i.bz                    ; 3 uses
  %i.dc = icmp ult i64 %i.db, %1
  br i1 %i.dc, label %bb.w, label %.split45.us.i

bb.w:                                             ; preds = %.lr.ph69.2
  %i.dd = load i8, ptr %i.cc, align 1, !alias.scope !4810, !noalias !4811, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.db
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !4809, !noundef !5
  %i.dg = icmp eq i8 %i.dd, %i.df
  br i1 %i.dg, label %bb.x, label %.loopexit.i.us.i

bb.x:                                             ; preds = %bb.w
  br i1 %.not33.i.i.us.us.i.2, label %.critedge.i.i.split.us.us.i, label %.lr.ph69.3

.lr.ph69.3:                                       ; preds = %bb.x
  %i.dh = add i64 %i.cu, %i.cb                    ; 3 uses
  %i.di = icmp ult i64 %i.dh, %1
  br i1 %i.di, label %bb.y, label %.split45.us.i

bb.y:                                             ; preds = %.lr.ph69.3
  %i.dj = load i8, ptr %i.ce, align 1, !alias.scope !4810, !noalias !4811, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !4809, !noundef !5
  %i.dm = icmp eq i8 %i.dj, %i.dl
  br i1 %i.dm, label %.critedge.i.i.split.us.us.i, label %.loopexit.i.us.i

.lr.ph69:                                         ; preds = %.split.us.us.i
  %i.dn = add i64 %i.cu, %.6.i.i.i                ; 3 uses
  %i.do = icmp ult i64 %i.dn, %1
  br i1 %i.do, label %bb.z, label %.split45.us.i

bb.z:                                             ; preds = %.lr.ph69
  %i.dp = load i8, ptr %i.by, align 1, !alias.scope !4810, !noalias !4811, !noundef !5
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !4809, !noundef !5
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.t, label %.loopexit.i.us.i

.critedge.i.i.split.us.us.i:                      ; preds = %bb.t, %bb.v, %bb.x, %bb.y, %.split.us.us.i
  %.sroa.012.0.i.i.us.us.i.lcssa = phi i64 [ %.6.i.i.i, %.split.us.us.i ], [ %i.bx, %bb.t ], [ %i.bz, %bb.v ], [ %i.cb, %bb.x ], [ %i.cd, %bb.y ]
  %.not34.i.i.us.i = icmp eq i8 %i.c, %i.cp
  br i1 %.not34.i.i.us.i, label %.preheader.i.us.i, label %.loopexit.i.us.i

.loopexit.i.us.i:                                 ; preds = %bb.z, %bb.u, %bb.w, %bb.y, %.critedge.i.i.split.us.us.i
  %.sroa.012.0.i.i.us.us.i15 = phi i64 [ %.sroa.012.0.i.i.us.us.i.lcssa, %.critedge.i.i.split.us.us.i ], [ %.6.i.i.i, %bb.z ], [ %i.bx, %bb.u ], [ %i.bz, %bb.w ], [ %i.cb, %bb.y ]
  %.neg.i.i.us.i = add i64 %.sroa.01.0.i67.i.us.i, %i.bt
  %i.dt = add i64 %.neg.i.i.us.i, %.sroa.012.0.i.i.us.us.i15
  br label %.backedge.i.us.i

.preheader.i.us.i:                                ; preds = %.critedge.i.i.split.us.us.i
  br i1 %i.bu, label %.lr.ph62.i.us.i, label %._crit_edge.i.us.i

.lr.ph62.i.us.i:                                  ; preds = %.preheader.i.us.i
  %i.du = add nuw i64 %.6.i.i.i, %i.cm            ; 2 uses
  %i.dv = icmp ult i64 %i.du, %1
  br i1 %i.dv, label %bb.aa, label %.split53.us.i.loopexit

bb.aa:                                            ; preds = %.lr.ph62.i.us.i
  %i.dw = load i8, ptr %i.cf, align 1, !alias.scope !4810, !noalias !4811, !noundef !5
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %i.du
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !4809, !noundef !5
  %i.dz = icmp eq i8 %i.dw, %i.dy
  br i1 %i.dz, label %bb.ab, label %._crit_edge.i.us.i.thread

bb.ab:                                            ; preds = %bb.aa
  br i1 %exitcond120.not.i.us.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph62.i.us.i.1

.lr.ph62.i.us.i.1:                                ; preds = %bb.ab
  %i.ea = add nuw i64 %i.cg, %i.cm                ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %1
  br i1 %i.eb, label %bb.ac, label %.split53.us.i.loopexit

bb.ac:                                            ; preds = %.lr.ph62.i.us.i.1
  %i.ec = load i8, ptr %i.ch, align 1, !alias.scope !4810, !noalias !4811, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !4809, !noundef !5
  %i.ef = icmp eq i8 %i.ec, %i.ee
  br i1 %i.ef, label %bb.ad, label %._crit_edge.i.us.i.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %exitcond120.not.i.us.i.1, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph62.i.us.i.2

.lr.ph62.i.us.i.2:                                ; preds = %bb.ad
  %i.eg = add nuw i64 %i.ci, %i.cm                ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %1
  br i1 %i.eh, label %bb.ae, label %.split53.us.i.loopexit

bb.ae:                                            ; preds = %.lr.ph62.i.us.i.2
  %i.ei = load i8, ptr %i.cj, align 1, !alias.scope !4810, !noalias !4811, !noundef !5
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %i.eg
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !4809, !noundef !5
  %i.el = icmp eq i8 %i.ei, %i.ek
  br i1 %i.el, label %bb.af, label %._crit_edge.i.us.i.thread

bb.af:                                            ; preds = %bb.ae
  br i1 %exitcond120.not.i.us.i.2, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph62.i.us.i.3

.lr.ph62.i.us.i.3:                                ; preds = %bb.af
  %i.em = add nuw i64 %i.ck, %i.cm                ; 2 uses
  %i.en = icmp ult i64 %i.em, %1
  br i1 %i.en, label %bb.ag, label %.split53.us.i.loopexit

bb.ag:                                            ; preds = %.lr.ph62.i.us.i.3
  %i.eo = load i8, ptr %i.cl, align 1, !alias.scope !4810, !noalias !4811, !noundef !5
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !4809, !noundef !5
  %i.er = icmp eq i8 %i.eo, %i.eq
  br i1 %i.er, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %._crit_edge.i.us.i.thread

._crit_edge.i.us.i:                               ; preds = %.preheader.i.us.i
  br i1 %3, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %._crit_edge.i.us.i.thread

._crit_edge.i.us.i.thread:                        ; preds = %bb.aa, %bb.ac, %bb.ae, %bb.ag, %._crit_edge.i.us.i
  %i.es = sub i64 %.sroa.01.0.i67.i.us.i, %i.bh
  br label %.backedge.i.us.i

.backedge.i.us.i:                                 ; preds = %._crit_edge.i.us.i.thread, %.loopexit.i.us.i, %bb.s
  %.sroa.01.0.i.be.i.us.i = phi i64 [ %i.cm, %bb.s ], [ %i.dt, %.loopexit.i.us.i ], [ %i.es, %._crit_edge.i.us.i.thread ] ; 2 uses
  %.not31.i.i.us.i = icmp ult i64 %.sroa.01.0.i.be.i.us.i, 4
  br i1 %.not31.i.i.us.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph69.i.split.us.i

.lr.ph69.i.split.i:                               ; preds = %.lr.ph69.i.i
  %.not33.i.i.i = icmp eq i64 %.6.i.i.i, 0
  br i1 %.not33.i.i.i, label %.lr.ph69.i.split.split.us.split.us.i.preheader, label %.lr.ph69.i.split.split.i

.lr.ph69.i.split.split.us.split.us.i.preheader:   ; preds = %.lr.ph69.i.split.i
  %i.et = add nuw i64 %1, 4                       ; 2 uses
  br label %.lr.ph69.i.split.split.us.split.us.i

.lr.ph69.i.split.split.us.split.us.i:             ; preds = %.lr.ph69.i.split.split.us.split.us.i.preheader, %.backedge.i.us71.us.i
  %.sroa.01.0.i67.i.us58.us.i = phi i64 [ %.sroa.01.0.i.be.i.us72.us.i, %.backedge.i.us71.us.i ], [ %1, %.lr.ph69.i.split.split.us.split.us.i.preheader ] ; 8 uses
  %i.eu = add i64 %.sroa.01.0.i67.i.us58.us.i, -4 ; 6 uses
  %i.ev = icmp ult i64 %i.eu, %1
  br i1 %i.ev, label %bb.ah, label %.split49.us.i

bb.ah:                                            ; preds = %.lr.ph69.i.split.split.us.split.us.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %i.eu
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !4809, !noundef !5 ; 2 uses
  %i.ey = and i8 %i.ex, 63
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = and i64 %i.fa, %i.be
  %.not32.i.i.us59.us.i = icmp eq i64 %i.fb, 0
  br i1 %.not32.i.i.us59.us.i, label %.backedge.i.us71.us.i, label %.split.us.us86.i

.split.us.us86.i:                                 ; preds = %bb.ah
  %.not34.i.i.us60.us.i = icmp eq i8 %i.c, %i.ex
  br i1 %.not34.i.i.us60.us.i, label %.lr.ph62.i.us64.us.i.preheader, label %.loopexit.i.us61.us.i

.lr.ph62.i.us64.us.i.preheader:                   ; preds = %.split.us.us86.i
  %i.fc = sub i64 %i.et, %.sroa.01.0.i67.i.us58.us.i ; 3 uses
  %exitcond.not = icmp eq i64 %i.et, %.sroa.01.0.i67.i.us58.us.i
  %exitcond.1.not = icmp eq i64 %i.fc, 1
  %or.cond = or i1 %exitcond.not, %exitcond.1.not
  br i1 %or.cond, label %.split53.us.i, label %bb.ai

.loopexit.i.us61.us.i:                            ; preds = %.split.us.us86.i
  %.reass.us.us.i = add i64 %.sroa.01.0.i67.i.us58.us.i, -1
  br label %.backedge.i.us71.us.i

bb.ai:                                            ; preds = %.lr.ph62.i.us64.us.i.preheader
  %i.fd = getelementptr i8, ptr %0, i64 %.sroa.01.0.i67.i.us58.us.i
  %i.fe = getelementptr i8, ptr %i.fd, i64 -3
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !4809, !noundef !5
  %i.fg = icmp eq i8 %i.e, %i.ff
  br i1 %i.fg, label %.lr.ph62.i.us64.us.i.2, label %._crit_edge.i.loopexit.us67.us.i

.lr.ph62.i.us64.us.i.2:                           ; preds = %bb.ai
  %exitcond.2.not = icmp eq i64 %i.fc, 2
  br i1 %exitcond.2.not, label %.split53.us.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph62.i.us64.us.i.2
  %i.fh = getelementptr i8, ptr %0, i64 %.sroa.01.0.i67.i.us58.us.i
  %i.fi = getelementptr i8, ptr %i.fh, i64 -2
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !4809, !noundef !5
  %i.fk = icmp eq i8 %i.g, %i.fj
  br i1 %i.fk, label %.lr.ph62.i.us64.us.i.3, label %._crit_edge.i.loopexit.us67.us.i

.lr.ph62.i.us64.us.i.3:                           ; preds = %bb.aj
  %exitcond.3.not = icmp eq i64 %i.fc, 3
  br i1 %exitcond.3.not, label %.split53.us.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph62.i.us64.us.i.3
  %i.fl = getelementptr i8, ptr %0, i64 %.sroa.01.0.i67.i.us58.us.i
  %i.fm = getelementptr i8, ptr %i.fl, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !4809, !noundef !5
  %i.fo = icmp eq i8 %i.h, %i.fn
  br i1 %i.fo, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %._crit_edge.i.loopexit.us67.us.i

._crit_edge.i.loopexit.us67.us.i:                 ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.fp = sub i64 %.sroa.01.0.i67.i.us58.us.i, %i.bh
  br label %.backedge.i.us71.us.i

.backedge.i.us71.us.i:                            ; preds = %._crit_edge.i.loopexit.us67.us.i, %.loopexit.i.us61.us.i, %bb.ah
  %.sroa.01.0.i.be.i.us72.us.i = phi i64 [ %i.eu, %bb.ah ], [ %.reass.us.us.i, %.loopexit.i.us61.us.i ], [ %i.fp, %._crit_edge.i.loopexit.us67.us.i ] ; 2 uses
  %.not31.i.i.us73.us.i = icmp ult i64 %.sroa.01.0.i.be.i.us72.us.i, 4
  br i1 %.not31.i.i.us73.us.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph69.i.split.split.us.split.us.i

.lr.ph69.i.split.split.i:                         ; preds = %.lr.ph69.i.split.i, %.backedge.i.i
  %.sroa.01.0.i67.i.i = phi i64 [ %i.fq, %.backedge.i.i ], [ %1, %.lr.ph69.i.split.i ]
  %i.fq = add nsw i64 %.sroa.01.0.i67.i.i, -4     ; 6 uses
  %i.fr = icmp ult i64 %i.fq, %1
  br i1 %i.fr, label %bb.al, label %.split49.us.i

bb.al:                                            ; preds = %.lr.ph69.i.split.split.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !4809, !noundef !5
  %i.fu = and i8 %i.ft, 63
  %i.fv = zext nneg i8 %i.fu to i64
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = and i64 %i.fw, %i.be
  %.not32.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not32.i.i.i, label %.backedge.i.i, label %.split.i

.backedge.i.i:                                    ; preds = %bb.al
  %.not31.i.i.i = icmp ult i64 %i.fq, 4
  br i1 %.not31.i.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph69.i.split.split.i

.split49.us.i:                                    ; preds = %.lr.ph69.i.split.split.i, %.lr.ph69.i.split.split.us.split.us.i, %.lr.ph69.i.split.us.i
  %.us-phi50.i = phi i64 [ %i.cm, %.lr.ph69.i.split.us.i ], [ %i.eu, %.lr.ph69.i.split.split.us.split.us.i ], [ %i.fq, %.lr.ph69.i.split.split.i ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi50.i, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #42
  unreachable

.split.i:                                         ; preds = %bb.al
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #42
  unreachable

.split45.us.i:                                    ; preds = %.lr.ph69.3, %.lr.ph69.2, %.lr.ph69.1, %.lr.ph69
  %.lcssa74 = phi i64 [ %i.dn, %.lr.ph69 ], [ %i.cv, %.lr.ph69.1 ], [ %i.db, %.lr.ph69.2 ], [ %i.dh, %.lr.ph69.3 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa74, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #42
  unreachable

.split53.us.i.loopexit:                           ; preds = %.lr.ph62.i.us.i.3, %.lr.ph62.i.us.i.2, %.lr.ph62.i.us.i.1, %.lr.ph62.i.us.i
  %i.fy = add i64 %i.bw, %.sroa.01.0.i67.i.us.i
  %umax169.le = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.fy)
  br label %.split53.us.i

.split53.us.i:                                    ; preds = %.lr.ph62.i.us64.us.i.preheader, %.lr.ph62.i.us64.us.i.2, %.lr.ph62.i.us64.us.i.3, %.split53.us.i.loopexit
  %.us-phi54.i = phi i64 [ %umax169.le, %.split53.us.i.loopexit ], [ %1, %.lr.ph62.i.us64.us.i.3 ], [ %1, %.lr.ph62.i.us64.us.i.2 ], [ %1, %.lr.ph62.i.us64.us.i.preheader ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi54.i, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #42
  unreachable

.lr.ph60.i.i:                                     ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4813)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.6.i.i.i, i64 range(i64 0, -9223372036854775808) 4) ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.backedge18.i.i, %.lr.ph60.i.i
  %.sroa.01.0.i459.i.i = phi i64 [ %1, %.lr.ph60.i.i ], [ %.sroa.01.0.i4.be.i.i, %.backedge18.i.i ] ; 5 uses
  %.sroa.011.0.i58.i.i = phi i64 [ 4, %.lr.ph60.i.i ], [ %.sroa.011.0.i.be.i.i, %.backedge18.i.i ] ; 3 uses
  %i.fz = add i64 %.sroa.01.0.i459.i.i, -4        ; 8 uses
  %i.ga = icmp ult i64 %i.fz, %1
  br i1 %i.ga, label %bb.an, label %.noexc9

bb.an:                                            ; preds = %bb.am
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !4814, !noundef !5 ; 2 uses
  %i.gd = and i8 %i.gc, 63
  %i.ge = zext nneg i8 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = and i64 %i.gf, %i.be
  %.not37.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not37.i.i.i, label %.backedge18.i.i, label %bb.ao

.backedge18.i.i:                                  ; preds = %.loopexit16.i.i, %.thread.i.i, %bb.an
  %.sroa.011.0.i.be.i.i = phi i64 [ 4, %bb.an ], [ 4, %.loopexit16.i.i ], [ %i.bh, %.thread.i.i ]
  %.sroa.01.0.i4.be.i.i = phi i64 [ %i.fz, %bb.an ], [ %i.hc, %.loopexit16.i.i ], [ %i.hb, %.thread.i.i ] ; 2 uses
  %.not36.i.i.i = icmp ult i64 %.sroa.01.0.i4.be.i.i, 4
  br i1 %.not36.i.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %bb.am

.noexc9:                                          ; preds = %bb.am
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @442) #42
  unreachable

bb.ao:                                            ; preds = %bb.an
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.011.0.i58.i.i, i64 %.6.i.i.i) ; 4 uses
  %i.gh = add i64 %.sroa.01.0.i459.i.i, -5
  %.first_iter = icmp ult i64 %..i.i.i, 5
  %.not38.i.i.i65 = icmp eq i64 %..i.i.i, 0
  br i1 %.not38.i.i.i65, label %.critedge.i7.i.i, label %.lr.ph

bb.ap:                                            ; preds = %bb.ar
  %.not38.i.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not38.i.i.i, label %.critedge.i7.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %bb.ap
  %.sroa.015.0.i.i.i66 = phi i64 [ %i.gi, %bb.ap ], [ %..i.i.i, %bb.ao ] ; 3 uses
  %i.gi = add i64 %.sroa.015.0.i.i.i66, -1        ; 5 uses
  br i1 %.first_iter, label %bb.aq, label %.noexc10

bb.aq:                                            ; preds = %.lr.ph
  %i.gj = add i64 %i.gh, %.sroa.015.0.i.i.i66     ; 3 uses
  %i.gk = icmp ult i64 %i.gj, %1
  br i1 %i.gk, label %bb.ar, label %.noexc11

.noexc10:                                         ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gi, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #42
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 %i.gi
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !4815, !noalias !4811, !noundef !5
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %i.gj
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !4814, !noundef !5
  %i.gp = icmp eq i8 %i.gm, %i.go
  br i1 %i.gp, label %bb.ap, label %.loopexit16.i.i

.noexc11:                                         ; preds = %bb.aq
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @444) #42
  unreachable

.critedge.i7.i.i:                                 ; preds = %bb.ap, %bb.ao
  %.sroa.015.0.i.i.i.lcssa = phi i64 [ %..i.i.i, %bb.ao ], [ %i.gi, %bb.ap ]
  %.not39.i.i.i = icmp eq i8 %i.c, %i.gc
  br i1 %.not39.i.i.i, label %.preheader14.i.i, label %.loopexit16.i.i

.preheader14.i.i:                                 ; preds = %.critedge.i7.i.i
  %i.gq = icmp ult i64 %.6.i.i.i, %.sroa.011.0.i58.i.i
  br i1 %i.gq, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

.lr.ph.i.i:                                       ; preds = %.preheader14.i.i, %bb.au
  %.sroa.021.0.i55.i.i = phi i64 [ %i.ha, %bb.au ], [ %.6.i.i.i, %.preheader14.i.i ] ; 4 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.021.0.i55.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %.noexc12, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i
  %i.gr = add nuw i64 %.sroa.021.0.i55.i.i, %i.fz ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %1
  br i1 %i.gs, label %bb.at, label %.noexc13

.noexc12:                                         ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @445) #42
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.021.0.i55.i.i
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !4815, !noalias !4811, !noundef !5
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 %i.gr
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !4814, !noundef !5
  %i.gx = icmp eq i8 %i.gu, %i.gw
  br i1 %i.gx, label %bb.au, label %.thread.i.i

.noexc13:                                         ; preds = %bb.as
  %i.gy = add i64 %.6.i.i.i, -4
  %i.gz = add i64 %i.gy, %.sroa.01.0.i459.i.i
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.gz)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #42
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.ha = add i64 %.sroa.021.0.i55.i.i, 1         ; 2 uses
  %exitcond119.not.i.i = icmp eq i64 %i.ha, %.sroa.011.0.i58.i.i
  br i1 %exitcond119.not.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.at
  %i.hb = sub i64 %.sroa.01.0.i459.i.i, %i.bh
  br label %.backedge18.i.i

.loopexit16.i.i:                                  ; preds = %bb.ar, %.critedge.i7.i.i
  %.sroa.015.0.i.i.i36 = phi i64 [ %.sroa.015.0.i.i.i.lcssa, %.critedge.i7.i.i ], [ %.sroa.015.0.i.i.i66, %bb.ar ]
  %.neg.i5.i.i = add i64 %.sroa.01.0.i459.i.i, %i.bt
  %i.hc = add i64 %.neg.i5.i.i, %.sroa.015.0.i.i.i36
  br label %.backedge18.i.i

_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit: ; preds = %bb.a
  %i.hd = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.he = getelementptr i8, ptr %2, i64 3
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !4816, !noundef !5
  %i.hg = zext i8 %i.hf to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hd) ]
  %i.hh = getelementptr i8, ptr %2, i64 2
  %.sroa.5.0.peel.i = load i8, ptr %i.hh, align 1, !alias.scope !4816, !noundef !5
  %i.hi = zext i8 %.sroa.5.0.peel.i to i32
  %i.hj = getelementptr i8, ptr %2, i64 1
  %.sroa.5.0.i = load i8, ptr %i.hj, align 1, !alias.scope !4816, !noundef !5
  %i.hk = shl nuw nsw i32 %i.hg, 2
  %i.hl = shl nuw nsw i32 %i.hi, 1
  %i.hm = add nuw nsw i32 %i.hk, %i.hl
  %i.hn = zext i8 %.sroa.5.0.i to i32
  %i.ho = add nuw nsw i32 %i.hm, %i.hn
  %.sroa.5.0.i.1 = load i8, ptr %2, align 1, !alias.scope !4816, !noundef !5
  %i.hp = shl nuw nsw i32 %i.ho, 1
  %i.hq = zext i8 %.sroa.5.0.i.1 to i32
  %i.hr = add nuw nsw i32 %i.hp, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.ht = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.hs, ptr noundef nonnull readonly %0), !noalias !4817
  %i.hu = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.hd, ptr noundef nonnull readonly %2) ; 5 uses
  %i.hv = icmp ugt i64 %i.hu, %i.ht
  br i1 %i.hv, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %bb.av

bb.av:                                            ; preds = %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit
  %i.hw = sub nsw i64 0, %i.hu
  %i.hx = getelementptr inbounds i8, ptr %i.hs, i64 %i.hw ; 2 uses
  %i.hy = icmp sgt i64 %i.hu, 0
  br i1 %i.hy, label %.lr.ph.i.i17, label %.preheader.i.i.preheader

.lr.ph.i.i17:                                     ; preds = %bb.av, %.lr.ph.i.i17
  %.sroa.09.02.i.i = phi ptr [ %i.hz, %.lr.ph.i.i17 ], [ %i.hs, %bb.av ]
  %.sroa.012.01.i.i = phi i32 [ %i.id, %.lr.ph.i.i17 ], [ 0, %bb.av ]
  %i.hz = getelementptr inbounds i8, ptr %.sroa.09.02.i.i, i64 -1 ; 3 uses
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !4818, !noundef !5
  %i.ib = shl i32 %.sroa.012.01.i.i, 1
  %i.ic = zext i8 %i.ia to i32
  %i.id = add i32 %i.ib, %i.ic                    ; 2 uses
  %i.ie = icmp ult ptr %i.hx, %i.hz
  br i1 %i.ie, label %.lr.ph.i.i17, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i17, %bb.av
  %.sroa.012.1.i.i.ph = phi i32 [ 0, %bb.av ], [ %i.id, %.lr.ph.i.i17 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.ay
  %.sroa.012.1.i.i = phi i32 [ %i.iq, %bb.ay ], [ %.sroa.012.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.ih, %bb.ay ], [ %i.hx, %.preheader.i.i.preheader ] ; 4 uses
  %i.if = icmp eq i32 %i.hr, %.sroa.012.1.i.i
  br i1 %i.if, label %bb.ax, label %bb.aw, !prof !6

bb.aw:                                            ; preds = %bb.ax, %.preheader.i.i
  %.not.i.i = icmp ugt ptr %.sroa.01.0.i.i, %0
  br i1 %.not.i.i, label %bb.ay, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

bb.ax:                                            ; preds = %.preheader.i.i
  %i.ig = tail call noundef zeroext i1 @_RNvNtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarp12is_equal_raw(ptr noundef nonnull %.sroa.01.0.i.i, ptr noundef nonnull readonly %2, i64 noundef %i.hu) #48
  br i1 %i.ig, label %bb.az, label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  %i.ih = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -1 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.hu
  %i.ij = load i8, ptr %i.ii, align 1, !alias.scope !4818, !noundef !5
  %i.ik = load i8, ptr %i.ih, align 1, !alias.scope !4818, !noundef !5
  %i.il = zext i8 %i.ij to i32
  %i.im = shl nuw nsw i32 %i.il, 4
  %i.in = shl i32 %.sroa.012.1.i.i, 1
  %i.io = sub i32 %i.in, %i.im
  %i.ip = zext i8 %i.ik to i32
  %i.iq = add i32 %i.io, %i.ip
  br label %.preheader.i.i

bb.az:                                            ; preds = %bb.ax
  %i.ir = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %.sroa.01.0.i.i, ptr noundef nonnull readonly %0)
  br label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit: ; preds = %.preheader14.i.i, %.backedge18.i.i, %bb.au, %.backedge.i.i, %.backedge.i.us71.us.i, %bb.ak, %.backedge.i.us.i, %._crit_edge.i.us.i, %bb.ag, %bb.ab, %bb.ad, %bb.af, %bb.aw, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i, %.noexc, %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit, %bb.az, %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit
  %.sroa.0.0.i16.pn = phi i64 [ 0, %bb.aw ], [ 1, %bb.az ], [ 0, %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit ], [ 1, %bb.ag ], [ 1, %bb.au ], [ 1, %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit ], [ 0, %.noexc ], [ 0, %.backedge.i.us71.us.i ], [ 1, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i ], [ 1, %._crit_edge.i.us.i ], [ 0, %.backedge.i.i ], [ 1, %bb.af ], [ 1, %bb.ad ], [ 1, %bb.ab ], [ 0, %.backedge.i.us.i ], [ 1, %bb.ak ], [ 1, %.preheader14.i.i ], [ 0, %.backedge18.i.i ]
  %.sroa.3.0.i15.pn = phi i64 [ undef, %bb.aw ], [ %i.ir, %bb.az ], [ undef, %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit ], [ %i.cm, %bb.ag ], [ %i.fz, %bb.au ], [ %1, %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit ], [ undef, %.noexc ], [ %i.eu, %.backedge.i.us71.us.i ], [ %i.br, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i ], [ %i.cm, %.backedge.i.us.i ], [ %i.fq, %.backedge.i.i ], [ %i.cm, %bb.af ], [ %i.cm, %bb.ad ], [ %i.cm, %bb.ab ], [ %i.cm, %._crit_edge.i.us.i ], [ %i.eu, %bb.ak ], [ %i.fz, %.backedge18.i.i ], [ %i.fz, %.preheader14.i.i ]
  %.pn30 = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i16.pn, 0
  %.pn = insertvalue { i64, i64 } %.pn30, i64 %.sroa.3.0.i15.pn, 1
  ret { i64, i64 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { i64, i64 } @_RNvNtNtCslssDYltVX0B_6memchr6memmem8searcher19searcher_kind_empty(ptr noalias nofree readonly align 32 captures(none) %0, ptr noalias nofree readnone align 4 captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3, ptr noalias nofree nonnull readonly captures(none) %4, i64 range(i64 0, -9223372036854775808) %5) unnamed_addr #17 {
bb.a:
  ret { i64, i64 } { i64 1, i64 0 }
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto215file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto215file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto215file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto221file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto221file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto221file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn14descriptor_dynBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4821)
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB2D_10TestProto2NtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB7_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor), !noalias !4821 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noalias !4821, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !noalias !4821, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !4821
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0.i = load ptr, ptr %i.c, align 8, !noalias !4821, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !4821, !noundef !5
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !4821
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %i.j, align 8, !alias.scope !4821
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8, !alias.scope !4821
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn14merge_from_dynBM_(ptr noalias nofree noundef align 8 dereferenceable(1336) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull align 8 dereferenceable(1336) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn16compute_size_dynBM_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn18is_initialized_dynBM_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf7message7Message14is_initialized(ptr noundef nonnull align 8 %0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn18special_fields_dynBM_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn22mut_special_fields_dynBM_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(1336) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn30write_to_with_cached_sizes_dynBM_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2NtB2_10MessageDyn14descriptor_dynBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear:bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %bb.o, %bb.q
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.be, %bb.o ]
  store i64 -1, ptr %i.bb, align 8
  br label %common.resume88

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit49, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  store i64 -1, ptr %i.bb, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 6 uses
  %i.bi = load i64, ptr %i.bh, align 8, !range !15, !alias.scope !5258, !noundef !5
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit58, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i54 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body55 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i54: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit58 unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i54
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body55

.body55:                                          ; preds = %bb.s, %bb.u
  %eh.lpad-body56 = phi { ptr, i32 } [ %i.bm, %bb.u ], [ %i.bk, %bb.s ]
  store i64 -1, ptr %i.bh, align 8
  br label %common.resume88

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit58: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i54
  store i64 -1, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 6 uses
  %i.bo = load i64, ptr %i.bn, align 8, !range !15, !alias.scope !5259, !noundef !5
  %i.bp = icmp eq i64 %i.bo, -1
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit64, label %bb.v

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit58
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i60 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.body61 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i60: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit64 unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i60
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body61

.body61:                                          ; preds = %bb.w, %bb.y
  %eh.lpad-body62 = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %i.bq, %bb.w ]
  store i64 -1, ptr %i.bn, align 8
  br label %common.resume88

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit64: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit58, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i60
  store i64 -1, ptr %i.bn, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 6 uses
  %i.bu = load i64, ptr %i.bt, align 8, !range !15, !alias.scope !5260, !noundef !5
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit70, label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit64
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i66 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body67 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i66: ; preds = %bb.z
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit70 unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i66
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %bb.aa, %bb.ac
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.by, %bb.ac ], [ %i.bw, %bb.aa ]
  store i64 -1, ptr %i.bt, align 8
  br label %common.resume88

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit70: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit64, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i66
  store i64 -1, ptr %i.bt, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i32 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 3 uses
  %.val = load ptr, ptr %i.ca, align 8, !align !23, !noundef !5 ; 4 uses
  %i.cb = icmp eq ptr %.val, null
  br i1 %i.cb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEEB1E_.exit, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit70
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEB1i_.exit.i unwind label %.body71

.body71:                                          ; preds = %bb.ad
  %i.cc = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 120, i64 noundef 8) #47
  store ptr null, ptr %i.ca, align 8
  br label %common.resume88

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEB1i_.exit.i: ; preds = %bb.ad
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 120, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEEB1E_.exit

common.resume88:                                  ; preds = %bb.ag, %bb.ak, %.body.i, %bb.al, %.body71, %.body84, %.body78, %.body67, %.body61, %.body55, %.body50, %.body46, %.body40, %.body
  %common.resume88.op = phi { ptr, i32 } [ %i.dg, %bb.al ], [ %eh.lpad-body, %.body ], [ %i.cc, %.body71 ], [ %eh.lpad-body85, %.body84 ], [ %eh.lpad-body79, %.body78 ], [ %eh.lpad-body68, %.body67 ], [ %eh.lpad-body62, %.body61 ], [ %eh.lpad-body56, %.body55 ], [ %eh.lpad-body51, %.body50 ], [ %eh.lpad-body47, %.body46 ], [ %eh.lpad-body41, %.body40 ], [ %eh.lpad-body.i, %.body.i ], [ %i.dg, %bb.ak ], [ %eh.lpad-body.i, %bb.ag ]
  resume { ptr, i32 } %common.resume88.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEEB1E_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEB1i_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit70
  store ptr null, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 0, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.ci, align 8
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i73: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.cl = icmp eq i64 %i.cn, %i.cj
  br i1 %i.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEEB1E_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i73
  %.sroa.0.0.i110 = phi i64 [ %i.cn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i73 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEEB1E_.exit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %.sroa.0.0.i110 ; 3 uses
  %i.cn = add nuw nsw i64 %.sroa.0.0.i110, 1      ; 4 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %.body.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i73 unwind label %bb.ah

bb.ag:                                            ; preds = %.lr.ph112
  %i.cq = add i64 %.sroa.0.1.i111, 1              ; 2 uses
  %i.cr = icmp eq i64 %i.cq, %i.cj
  br i1 %i.cr, label %common.resume88, label %.lr.ph112

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ah, %bb.ae
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cs, %bb.ah ], [ %i.co, %bb.ae ] ; 2 uses
  %i.ct = icmp eq i64 %i.cn, %i.cj
  br i1 %i.ct, label %common.resume88, label %.lr.ph112

.lr.ph112:                                        ; preds = %.body.i, %bb.ag
  %.sroa.0.1.i111 = phi i64 [ %i.cq, %bb.ag ], [ %i.cn, %.body.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %.sroa.0.1.i111
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cu) #45
          to label %bb.ag unwind label %bb.ai

bb.ai:                                            ; preds = %.lr.ph112
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i73, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEEB1E_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.cy, align 8
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EBK_.exit, label %.lr.ph114

bb.aj:                                            ; preds = %.lr.ph114
  %i.db = icmp eq i64 %i.dd, %i.cz
  br i1 %i.db, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EBK_.exit, label %.lr.ph114

.lr.ph114:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit, %bb.aj
  %.sroa.0.0.i74113 = phi i64 [ %i.dd, %bb.aj ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [120 x i8], ptr %i.cx, i64 %.sroa.0.0.i74113
  %i.dd = add nuw nsw i64 %.sroa.0.0.i74113, 1    ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.dc)
          to label %bb.aj unwind label %bb.al

bb.ak:                                            ; preds = %.lr.ph116
  %i.de = add i64 %.sroa.0.1.i75115, 1            ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.cz
  br i1 %i.df, label %common.resume88, label %.lr.ph116

bb.al:                                            ; preds = %.lr.ph114
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = icmp eq i64 %i.dd, %i.cz
  br i1 %i.dh, label %common.resume88, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.al, %bb.ak
  %.sroa.0.1.i75115 = phi i64 [ %i.de, %bb.ak ], [ %i.dd, %bb.al ] ; 2 uses
  %i.di = getelementptr inbounds nuw [120 x i8], ptr %i.cx, i64 %.sroa.0.1.i75115
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.di) #45
          to label %bb.ak unwind label %bb.am

bb.am:                                            ; preds = %.lr.ph116
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EBK_.exit: ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 824
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EE5clearB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringxEE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 920
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 968
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringbEE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1016
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringfEE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.do)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1064
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EE5clearBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1112
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxxEE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1160
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxNtNtCsexYYUdYSQU6_5alloc6string6StringEE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1208
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxbEE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1256
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxfEE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i8 2, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1329
  store i8 2, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 6 uses
  %i.ea = load i64, ptr %i.dz, align 8, !range !15, !alias.scope !5261, !noundef !5
  %i.eb = icmp eq i64 %i.ea, -1
  br i1 %i.eb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit81, label %bb.an

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EBK_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i77 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %.body78 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i77: ; preds = %bb.an
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit81 unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i77
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body78

.body78:                                          ; preds = %bb.ao, %bb.aq
  %eh.lpad-body79 = phi { ptr, i32 } [ %i.ee, %bb.aq ], [ %i.ec, %bb.ao ]
  store i64 -1, ptr %i.dz, align 8
  br label %common.resume88

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit81: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EBK_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i77
  store i64 -1, ptr %i.dz, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 6 uses
  %i.eg = load i64, ptr %i.ef, align 8, !range !15, !alias.scope !5262, !noundef !5
  %i.eh = icmp eq i64 %i.eg, -1
  br i1 %i.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit87, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit81
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i83 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %.body84 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i83: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit87 unwind label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i83
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body84

.body84:                                          ; preds = %bb.as, %bb.au
  %eh.lpad-body85 = phi { ptr, i32 } [ %i.ek, %bb.au ], [ %i.ei, %bb.as ]
  store i64 -1, ptr %i.ef, align 8
  br label %common.resume88

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit87: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit81, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i83
  store i64 -1, ptr %i.ef, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.el)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_2PENtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(800) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [376 x i8], align 8               ; 5 uses
  %i.b = alloca [376 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  %i.e = alloca [88 x i8], align 8                ; 7 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [80 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [136 x i8], align 8               ; 5 uses
  %i.k = alloca [136 x i8], align 8               ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [136 x i8], align 8               ; 5 uses
  %i.o = alloca [136 x i8], align 8               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [64 x i8], align 8                ; 5 uses
  %i.r = alloca [64 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 16 uses
  %i.z = alloca [24 x i8], align 8                ; 16 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 7 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bd, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.be = load i32, ptr %i.bd, align 8, !range !33, !noundef !5
  %i.bf = trunc nuw i32 %i.be to i1
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 768
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_2PENtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %.val24 = load ptr, ptr %i.n, align 8, !align !23, !noundef !5 ; 4 uses
  %i.o = icmp eq ptr %.val24, null
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit40, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5334)
  %i.p = getelementptr inbounds nuw i8, ptr %.val24, i64 16
  %.val.i.i.i35 = load ptr, ptr %i.p, align 8, !alias.scope !5334, !align !23, !noundef !5 ; 4 uses
  %i.q = icmp eq ptr %.val.i.i.i35, null
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i37, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i35)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i36 unwind label %.body38, !noalias !5334

.body38:                                          ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i35, i64 noundef 32, i64 noundef 8) #47, !noalias !5334
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef 32, i64 noundef 8) #47
  store ptr null, ptr %i.n, align 8
  br label %common.resume78

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i36: ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i35, i64 noundef 32, i64 noundef 8) #47, !noalias !5334
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i37

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i37: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i36, %bb.f
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef 32, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit40

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit40: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i37, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit34
  store ptr null, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  %.val23 = load ptr, ptr %i.s, align 8, !align !23, !noundef !5 ; 4 uses
  %i.t = icmp eq ptr %.val23, null
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit46, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5335)
  %i.u = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %.val.i.i.i41 = load ptr, ptr %i.u, align 8, !alias.scope !5335, !align !23, !noundef !5 ; 4 uses
  %i.v = icmp eq ptr %.val.i.i.i41, null
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i43, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i41)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i42 unwind label %.body44, !noalias !5335

.body44:                                          ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i41, i64 noundef 32, i64 noundef 8) #47, !noalias !5335
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef 32, i64 noundef 8) #47
  store ptr null, ptr %i.s, align 8
  br label %common.resume78

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i42: ; preds = %bb.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i41, i64 noundef 32, i64 noundef 8) #47, !noalias !5335
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i43

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i43: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i42, %bb.h
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef 32, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit46

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit46: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i43, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit40
  store ptr null, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 0, ptr %i.aa, align 8
  store i64 0, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !15, !alias.scope !5336, !noundef !5
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit46
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body47 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.body47:                                          ; preds = %bb.k, %bb.m
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.aj, %bb.k ]
  store i64 -1, ptr %i.ag, align 8
  br label %common.resume78

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit46, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  store i64 -1, ptr %i.ag, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i32 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.bq, align 8
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8KeyValueEBK_.exit, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.bt = icmp eq i64 %i.bv, %i.br
  br i1 %i.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8KeyValueEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, %bb.n
  %.sroa.0.0.i151 = phi i64 [ %i.bv, %bb.n ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %i.bp, i64 %.sroa.0.0.i151
  %i.bv = add nuw nsw i64 %.sroa.0.0.i151, 1      ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8KeyValueEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bu)
          to label %bb.n unwind label %bb.p

bb.o:                                             ; preds = %.lr.ph153
  %i.bw = add i64 %.sroa.0.1.i152, 1              ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.br
  br i1 %i.bx, label %common.resume78, label %.lr.ph153

bb.p:                                             ; preds = %.lr.ph
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = icmp eq i64 %i.bv, %i.br
  br i1 %i.bz, label %common.resume78, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.p, %bb.o
  %.sroa.0.1.i152 = phi i64 [ %i.bw, %bb.o ], [ %i.bv, %bb.p ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.bp, i64 %.sroa.0.1.i152
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8KeyValueEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ca) #45
          to label %bb.o unwind label %bb.q

bb.q:                                             ; preds = %.lr.ph153
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8KeyValueEBK_.exit: ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %.val27 = load ptr, ptr %i.cc, align 8, !align !23, !noundef !5 ; 4 uses
  %i.cd = icmp eq ptr %.val27, null
  br i1 %i.cd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEEB1E_.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8KeyValueEBK_.exit
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.val27)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEB1i_.exit.i unwind label %.body49

.body49:                                          ; preds = %bb.r
  %i.ce = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef 112, i64 noundef 8) #47
  store ptr null, ptr %i.cc, align 8
  br label %common.resume78

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEB1i_.exit.i: ; preds = %bb.r
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef 112, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEEB1E_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEEB1E_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEB1i_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8KeyValueEBK_.exit
  store ptr null, ptr %i.cc, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.cg = load i64, ptr %i.cf, align 8, !range !15, !alias.scope !5337, !noundef !5
  %i.ch = icmp eq i64 %i.cg, -1
  br i1 %i.ch, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEEB1E_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %.body51 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.body51:                                          ; preds = %bb.t, %bb.v
  %eh.lpad-body52 = phi { ptr, i32 } [ %i.ck, %bb.v ], [ %i.ci, %bb.t ]
  store i64 -1, ptr %i.cf, align 8
  br label %common.resume78

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEEB1E_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  store i64 -1, ptr %i.cf, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.cn, align 8
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionEBK_.exit, label %.lr.ph155

bb.w:                                             ; preds = %.lr.ph155
  %i.cq = icmp eq i64 %i.cs, %i.co
  br i1 %i.cq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionEBK_.exit, label %.lr.ph155

.lr.ph155:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit, %bb.w
  %.sroa.0.0.i54154 = phi i64 [ %i.cs, %bb.w ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [136 x i8], ptr %i.cm, i64 %.sroa.0.0.i54154
  %i.cs = add nuw nsw i64 %.sroa.0.0.i54154, 1    ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.cr)
          to label %bb.w unwind label %bb.y

bb.x:                                             ; preds = %.lr.ph157
  %i.ct = add i64 %.sroa.0.1.i55156, 1            ; 2 uses
  %i.cu = icmp eq i64 %i.ct, %i.co
  br i1 %i.cu, label %common.resume78, label %.lr.ph157

bb.y:                                             ; preds = %.lr.ph155
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = icmp eq i64 %i.cs, %i.co
  br i1 %i.cw, label %common.resume78, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.y, %bb.x
  %.sroa.0.1.i55156 = phi i64 [ %i.ct, %bb.x ], [ %i.cs, %bb.y ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [136 x i8], ptr %i.cm, i64 %.sroa.0.1.i55156
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.cx) #45
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %.lr.ph157
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionEBK_.exit: ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.db, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5338)
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionEBK_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBJ_.exit.i
  %.sroa.0.07.i = phi i64 [ %i.df, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBJ_.exit.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionEBK_.exit ] ; 2 uses
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.sroa.0.07.i
  %i.df = add nuw nsw i64 %.sroa.0.07.i, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5339)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.val.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !5340, !align !23, !noundef !5 ; 4 uses
  %i.dh = icmp eq ptr %.val.i.i, null
  br i1 %i.dh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBJ_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i unwind label %.body.i, !noalias !5340

.body.i:                                          ; preds = %bb.aa
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #47, !noalias !5340
  %i.dj = icmp eq i64 %i.df, %i.dc
  br i1 %i.dj, label %common.resume78, label %.lr.ph159

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.aa
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #47, !noalias !5340
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBJ_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBJ_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %.lr.ph.i
  %i.dk = icmp eq i64 %i.df, %i.dc
  br i1 %i.dk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBK_.exit, label %.lr.ph.i

bb.ab:                                            ; preds = %.lr.ph159
  %i.dl = add i64 %.sroa.0.1.i56158, 1            ; 2 uses
  %i.dm = icmp eq i64 %i.dl, %i.dc
  br i1 %i.dm, label %common.resume78, label %.lr.ph159

.lr.ph159:                                        ; preds = %.body.i, %bb.ab
  %.sroa.0.1.i56158 = phi i64 [ %i.dl, %bb.ab ], [ %i.df, %.body.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.sroa.0.1.i56158
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBJ_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.dn) #45
          to label %bb.ab unwind label %bb.ac

bb.ac:                                            ; preds = %.lr.ph159
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46, !noalias !5338
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBK_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBJ_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionEBK_.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %.val = load ptr, ptr %i.dq, align 8, !align !23, !noundef !5 ; 4 uses
  %i.dr = icmp eq ptr %.val, null
  br i1 %i.dr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit62, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBK_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5341)
  %i.ds = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val.i.i.i57 = load ptr, ptr %i.ds, align 8, !alias.scope !5341, !align !23, !noundef !5 ; 4 uses
  %i.dt = icmp eq ptr %.val.i.i.i57, null
  br i1 %i.dt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i59, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i57)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i58 unwind label %.body60, !noalias !5341

.body60:                                          ; preds = %bb.ae
  %i.du = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i57, i64 noundef 32, i64 noundef 8) #47, !noalias !5341
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #47
  store ptr null, ptr %i.dq, align 8
  br label %common.resume78

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i58: ; preds = %bb.ae
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i57, i64 noundef 32, i64 noundef 8) #47, !noalias !5341
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i59

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i59: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i58, %bb.ad
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit62

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit62: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i59, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryEBK_.exit
  store ptr null, ptr %i.dq, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.dx, align 8
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceEBK_.exit, label %.lr.ph161

bb.af:                                            ; preds = %.lr.ph161
  %i.ea = icmp eq i64 %i.ec, %i.dy
  br i1 %i.ea, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceEBK_.exit, label %.lr.ph161

.lr.ph161:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit62, %bb.af
  %.sroa.0.0.i63160 = phi i64 [ %i.ec, %bb.af ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit62 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [136 x i8], ptr %i.dw, i64 %.sroa.0.0.i63160
  %i.ec = add nuw nsw i64 %.sroa.0.0.i63160, 1    ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.eb)
          to label %bb.af unwind label %bb.ah

bb.ag:                                            ; preds = %.lr.ph163
  %i.ed = add i64 %.sroa.0.1.i64162, 1            ; 2 uses
  %i.ee = icmp eq i64 %i.ed, %i.dy
  br i1 %i.ee, label %common.resume78, label %.lr.ph163

bb.ah:                                            ; preds = %.lr.ph161
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = icmp eq i64 %i.ec, %i.dy
  br i1 %i.eg, label %common.resume78, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.ah, %bb.ag
  %.sroa.0.1.i64162 = phi i64 [ %i.ed, %bb.ag ], [ %i.ec, %bb.ah ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [136 x i8], ptr %i.dw, i64 %.sroa.0.1.i64162
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.eh) #45
          to label %bb.ag unwind label %bb.ai

bb.ai:                                            ; preds = %.lr.ph163
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceEBK_.exit: ; preds = %bb.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit62
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.el, align 8
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit, label %.lr.ph165

bb.aj:                                            ; preds = %.lr.ph165
  %i.eo = icmp eq i64 %i.eq, %i.em
  br i1 %i.eo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit, label %.lr.ph165

.lr.ph165:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceEBK_.exit, %bb.aj
  %.sroa.0.0.i65164 = phi i64 [ %i.eq, %bb.aj ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceEBK_.exit ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [80 x i8], ptr %i.ek, i64 %.sroa.0.0.i65164
  %i.eq = add nuw nsw i64 %.sroa.0.0.i65164, 1    ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ep)
          to label %bb.aj unwind label %bb.al

bb.ak:                                            ; preds = %.lr.ph167
  %i.er = add i64 %.sroa.0.1.i66166, 1            ; 2 uses
  %i.es = icmp eq i64 %i.er, %i.em
  br i1 %i.es, label %common.resume78, label %.lr.ph167

bb.al:                                            ; preds = %.lr.ph165
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = icmp eq i64 %i.eq, %i.em
  br i1 %i.eu, label %common.resume78, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.al, %bb.ak
  %.sroa.0.1.i66166 = phi i64 [ %i.er, %bb.ak ], [ %i.eq, %bb.al ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [80 x i8], ptr %i.ek, i64 %.sroa.0.1.i66166
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ev) #45
          to label %bb.ak unwind label %bb.am

bb.am:                                            ; preds = %.lr.ph167
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit: ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceEBK_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.ez, align 8
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit69, label %.lr.ph169

bb.an:                                            ; preds = %.lr.ph169
  %i.fc = icmp eq i64 %i.fe, %i.fa
  br i1 %i.fc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit69, label %.lr.ph169

.lr.ph169:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit, %bb.an
  %.sroa.0.0.i67168 = phi i64 [ %i.fe, %bb.an ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [80 x i8], ptr %i.ey, i64 %.sroa.0.0.i67168
  %i.fe = add nuw nsw i64 %.sroa.0.0.i67168, 1    ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.fd)
          to label %bb.an unwind label %bb.ap

bb.ao:                                            ; preds = %.lr.ph171
  %i.ff = add i64 %.sroa.0.1.i68170, 1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, %i.fa
  br i1 %i.fg, label %common.resume78, label %.lr.ph171

bb.ap:                                            ; preds = %.lr.ph169
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = icmp eq i64 %i.fe, %i.fa
  br i1 %i.fi, label %common.resume78, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.ap, %bb.ao
  %.sroa.0.1.i68170 = phi i64 [ %i.ff, %bb.ao ], [ %i.fe, %bb.ap ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [80 x i8], ptr %i.ey, i64 %.sroa.0.1.i68170
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.fj) #45
          to label %bb.ao unwind label %bb.aq

bb.aq:                                            ; preds = %.lr.ph171
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit69: ; preds = %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.fn, align 8
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ExportEBK_.exit, label %.lr.ph173

bb.ar:                                            ; preds = %.lr.ph173
  %i.fq = icmp eq i64 %i.fs, %i.fo
  br i1 %i.fq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ExportEBK_.exit, label %.lr.ph173

.lr.ph173:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit69, %bb.ar
  %.sroa.0.0.i70172 = phi i64 [ %i.fs, %bb.ar ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit69 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [88 x i8], ptr %i.fm, i64 %.sroa.0.0.i70172
  %i.fs = add nuw nsw i64 %.sroa.0.0.i70172, 1    ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ExportEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.fr)
          to label %bb.ar unwind label %bb.at

bb.as:                                            ; preds = %.lr.ph175
  %i.ft = add i64 %.sroa.0.1.i71174, 1            ; 2 uses
  %i.fu = icmp eq i64 %i.ft, %i.fo
  br i1 %i.fu, label %common.resume78, label %.lr.ph175

bb.at:                                            ; preds = %.lr.ph173
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = icmp eq i64 %i.fs, %i.fo
  br i1 %i.fw, label %common.resume78, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.at, %bb.as
  %.sroa.0.1.i71174 = phi i64 [ %i.ft, %bb.as ], [ %i.fs, %bb.at ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [88 x i8], ptr %i.fm, i64 %.sroa.0.1.i71174
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ExportEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.fx) #45
          to label %bb.as unwind label %bb.au

bb.au:                                            ; preds = %.lr.ph175
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ExportEBK_.exit: ; preds = %bb.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportEBK_.exit69
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 793
  store i8 2, ptr %i.fz, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.gc, align 8
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBK_.exit, label %.lr.ph177

bb.av:                                            ; preds = %.lr.ph177
  %i.gf = icmp eq i64 %i.gh, %i.gd
  br i1 %i.gf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBK_.exit, label %.lr.ph177

.lr.ph177:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ExportEBK_.exit, %bb.av
  %.sroa.0.0.i72176 = phi i64 [ %i.gh, %bb.av ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ExportEBK_.exit ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [376 x i8], ptr %i.gb, i64 %.sroa.0.0.i72176
  %i.gh = add nuw nsw i64 %.sroa.0.0.i72176, 1    ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %i.gg)
          to label %bb.av unwind label %bb.ax

bb.aw:                                            ; preds = %.lr.ph179
  %i.gi = add i64 %.sroa.0.1.i73178, 1            ; 2 uses
  %i.gj = icmp eq i64 %i.gi, %i.gd
  br i1 %i.gj, label %common.resume78, label %.lr.ph179

bb.ax:                                            ; preds = %.lr.ph177
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = icmp eq i64 %i.gh, %i.gd
  br i1 %i.gl, label %common.resume78, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.ax, %bb.aw
  %.sroa.0.1.i73178 = phi i64 [ %i.gi, %bb.aw ], [ %i.gh, %bb.ax ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [376 x i8], ptr %i.gb, i64 %.sroa.0.1.i73178
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %i.gm) #45
          to label %bb.aw unwind label %bb.ay

bb.ay:                                            ; preds = %.lr.ph179
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBK_.exit: ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ExportEBK_.exit
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %.val28 = load ptr, ptr %i.go, align 8, !align !23, !noundef !5 ; 4 uses
  %i.gp = icmp eq ptr %.val28, null
  br i1 %i.gp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEEB1E_.exit, label %bb.az

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBK_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5342)
  %i.gq = getelementptr inbounds nuw i8, ptr %.val28, i64 32
  %.val.i.i.i74 = load ptr, ptr %i.gq, align 8, !alias.scope !5342, !align !23, !noundef !5 ; 4 uses
  %i.gr = icmp eq ptr %.val.i.i.i74, null
  br i1 %i.gr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i74)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i75 unwind label %.body76, !noalias !5342

.body76:                                          ; preds = %bb.ba
  %i.gs = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i74, i64 noundef 32, i64 noundef 8) #47, !noalias !5342
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28, i64 noundef 48, i64 noundef 8) #47
  store ptr null, ptr %i.go, align 8
  br label %common.resume78

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i75: ; preds = %bb.ba
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i74, i64 noundef 32, i64 noundef 8) #47, !noalias !5342
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i75, %bb.az
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28, i64 noundef 48, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEEB1E_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEEB1E_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBK_.exit
  store ptr null, ptr %i.go, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gt)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_3LnkNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(376) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 5 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.r, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.s = load i32, ptr %i.r, align 8, !range !33, !noundef !5
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6205.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8208.0..sroa_idx209 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %.sroa.6184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.sroa.7187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %.sroa.6165.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.sroa.7168.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %.sroa.6146.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %.sroa.7149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %.sroa.6127.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.7130.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %.sroa.6108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.sroa.7111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.sroa.4219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %.sroa.689.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.sroa.792.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 316
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %.sroa.658.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.761.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.721.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 352
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ac, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %i.bo = load i32, ptr %i.u, align 4, !range !33, !noundef !5
  %i.bp = load i32, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bq = trunc nuw i32 %i.bo to i1
  br i1 %i.bq, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.bp, label %bb.d [
    i32 8, label %bb.e
    i32 18, label %bb.f
    i32 24, label %bb.g
    i32 32, label %bb.h
    i32 40, label %bb.i
    i32 48, label %bb.j
    i32 56, label %bb.k
    i32 66, label %bb.l
    i32 72, label %bb.m
    i32 80, label %bb.n
    i32 88, label %bb.o
    i32 96, label %bb.p
    i32 106, label %bb.q
    i32 114, label %bb.r
end_hunk_2
begin_hunk_3_@_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_3LnkNtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit52: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit46, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i48
  store i64 -1, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !15, !alias.scope !5392, !noundef !5
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit58, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit52
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i54 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body55 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i54: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit58 unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i54
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body55

.body55:                                          ; preds = %bb.s, %bb.u
  %eh.lpad-body56 = phi { ptr, i32 } [ %i.am, %bb.u ], [ %i.ak, %bb.s ]
  store i64 -1, ptr %i.ah, align 8
  br label %common.resume79

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit58: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit52, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i54
  store i64 -1, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !15, !alias.scope !5393, !noundef !5
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit64, label %bb.v

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit58
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i60 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body61 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i60: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit64 unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i60
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body61

.body61:                                          ; preds = %bb.w, %bb.y
  %eh.lpad-body62 = phi { ptr, i32 } [ %i.as, %bb.y ], [ %i.aq, %bb.w ]
  store i64 -1, ptr %i.an, align 8
  br label %common.resume79

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit64: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit58, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i60
  store i64 -1, ptr %i.an, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.au = load i64, ptr %i.at, align 8, !range !15, !alias.scope !5394, !noundef !5
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit70, label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit64
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i66 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body67 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i66: ; preds = %bb.z
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit70 unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i66
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %bb.aa, %bb.ac
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.ay, %bb.ac ], [ %i.aw, %bb.aa ]
  store i64 -1, ptr %i.at, align 8
  br label %common.resume79

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit70: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit64, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i66
  store i64 -1, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !15, !alias.scope !5395, !noundef !5
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit76, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit70
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i72 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body73 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i72: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit76 unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i72
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.body73:                                          ; preds = %bb.ae, %bb.ag
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.be, %bb.ag ], [ %i.bc, %bb.ae ]
  store i64 -1, ptr %i.az, align 8
  br label %common.resume79

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit76: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit70, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i72
  store i64 -1, ptr %i.az, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.val = load ptr, ptr %i.bh, align 8, !align !23, !noundef !5 ; 4 uses
  %i.bi = icmp eq ptr %.val, null
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEEEB1E_.exit, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit76
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEEB1i_.exit.i unwind label %.body77

.body77:                                          ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 144, i64 noundef 8) #47
  store ptr null, ptr %i.bh, align 8
  br label %common.resume79

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEEB1i_.exit.i: ; preds = %bb.ah
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 144, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEEEB1E_.exit

common.resume79:                                  ; preds = %bb.aj, %bb.ak, %.body77, %.body73, %.body67, %.body61, %.body55, %.body49, %.body43, %.body37, %.body
  %common.resume79.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bj, %.body77 ], [ %eh.lpad-body74, %.body73 ], [ %eh.lpad-body68, %.body67 ], [ %eh.lpad-body62, %.body61 ], [ %eh.lpad-body56, %.body55 ], [ %eh.lpad-body50, %.body49 ], [ %eh.lpad-body44, %.body43 ], [ %eh.lpad-body38, %.body37 ], [ %i.bu, %bb.ak ], [ %i.bu, %bb.aj ]
  resume { ptr, i32 } %common.resume79.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEEEB1E_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEEB1i_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit76
  store ptr null, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.bm, align 8
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9ShellItemEBK_.exit, label %.lr.ph

bb.ai:                                            ; preds = %.lr.ph
  %i.bp = icmp eq i64 %i.br, %i.bn
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9ShellItemEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEEEB1E_.exit, %bb.ai
  %.sroa.0.0.i80 = phi i64 [ %i.br, %bb.ai ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEEEB1E_.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [192 x i8], ptr %i.bl, i64 %.sroa.0.0.i80
  %i.br = add nuw nsw i64 %.sroa.0.0.i80, 1       ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9ShellItemEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.bq)
          to label %bb.ai unwind label %bb.ak

bb.aj:                                            ; preds = %.lr.ph82
  %i.bs = add i64 %.sroa.0.1.i81, 1               ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.bn
  br i1 %i.bt, label %common.resume79, label %.lr.ph82

bb.ak:                                            ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = icmp eq i64 %i.br, %i.bn
  br i1 %i.bv, label %common.resume79, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.ak, %bb.aj
  %.sroa.0.1.i81 = phi i64 [ %i.bs, %bb.aj ], [ %i.br, %bb.ak ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [192 x i8], ptr %i.bl, i64 %.sroa.0.1.i81
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9ShellItemEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.bw) #45
          to label %bb.aj unwind label %bb.al

bb.al:                                            ; preds = %.lr.ph82
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9ShellItemEBK_.exit: ; preds = %bb.ai, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataEEEB1E_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.by)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msiNtB5_3MsiNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [376 x i8], align 8               ; 5 uses
  %i.b = alloca [376 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.e = load i32, ptr %i.d, align 8, !range !33, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.811.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.p = load i32, ptr %i.g, align 4, !range !33, !noundef !5
  %i.q = load i32, ptr %i.h, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = trunc nuw i32 %i.p to i1
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.q, label %bb.d [
    i32 8, label %bb.e
    i32 18, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef align 8 ptr @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.i, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream9read_bool(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.t = load i8, ptr %i.c, align 8, !range !17, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB3_16CodedInputStream12read_messageNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEB1v_(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.v = load i64, ptr %i.b, align 8, !range !22, !noundef !5 ; 2 uses
  %i.w = icmp eq i64 %i.v, 2
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.k, align 1, !range !17, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.aa, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureE8push_mutBN_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.ab = load i32, ptr %i.d, align 8, !range !33, !noundef !5
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %._crit_edge, label %bb.b

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.811.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.517.0..sroa_idx, i64 360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.v, ptr %i.a, align 8
  store ptr %i.x, ptr %.sroa.68.0..sroa_idx9, align 8
  %i.ad = load i64, ptr %i.i, align 8, !alias.scope !5399, !noundef !5 ; 3 uses
  %i.ae = load i64, ptr %0, align 8, !range !19, !alias.scope !5399, !noundef !5
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureE8push_mutBN_.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureE8push_mutBN_.exit unwind label %bb.m, !noalias !5400

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %i.a) #45
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ag

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureE8push_mutBN_.exit: ; preds = %bb.k, %bb.l
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !5399, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw [376 x i8], ptr %i.ai, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.aj, ptr noundef nonnull align 8 dereferenceable(376) %i.a, i64 376, i1 false)
  %i.ak = add i64 %i.ad, 1
  store i64 %i.ak, ptr %i.i, align 8, !alias.scope !5399
  br label %bb.i

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge, %bb.j, %bb.g
  %.sroa.0.1 = phi ptr [ %i.z, %bb.g ], [ %i.o, %._crit_edge ], [ %i.x, %bb.j ], [ %i.s, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msiNtB5_3MsiNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !34, !noundef !5
  %.not = icmp eq i8 %i.b, 2
  %spec.select = select i1 %.not, i64 0, i64 2    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 376
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.18 = phi i64 [ %i.q, %.lr.ph ], [ %spec.select, %bb.a ]
  %.sroa.05.07 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.07, i64 376 ; 2 uses
  %i.j = tail call noundef i64 @_RNvXsM_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_9SignatureNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %.sroa.05.07) ; 2 uses
  %i.k = or i64 %i.j, 1
  %i.l = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.m
  %i.n = udiv i8 %.lhs.trunc, 7
  %narrow = add nuw nsw i8 %i.n, 1
  %i.o = zext nneg i8 %narrow to i64
  %i.p = add i64 %i.j, %.sroa.0.18
  %i.q = add i64 %i.p, %i.o                       ; 2 uses
  %i.r = icmp eq ptr %i.i, %i.g
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.1.lcssa = phi i64 [ %spec.select, %bb.a ], [ %i.q, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = tail call noundef i64 @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
  %i.u = add i64 %i.t, %.sroa.0.1.lcssa           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = trunc i64 %i.u to i32
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.v, i32 noundef %i.w)
  ret i64 %i.u
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msiNtB5_3MsiNtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !34, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream10write_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i1 noundef zeroext %i.c) ; 2 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.h, 376
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.b
  %.sroa.0.0 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.b ], [ %i.m, %.lr.ph ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.015, i64 376 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.04.015 = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.m = tail call noundef align 8 ptr @_RINvNtNtCsg2CeFYmfPbl_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEB1o_(i32 noundef 2, ptr noundef nonnull align 8 %.sroa.04.015, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not13 = icmp eq ptr %i.m, null
  br i1 %.not13, label %bb.d, label %.loopexit

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msiNtB5_3MsiNtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(48) initializes((40, 41)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBK_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [376 x i8], ptr %i.c, i64 %.sroa.0.0.i1
  %i.i = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %i.h)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [376 x i8], ptr %i.c, i64 %.sroa.0.1.i2
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %i.n) #45
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %.lr.ph3
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureEBK_.exit: ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_5EntryNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.d = load i32, ptr %i.c, align 8, !range !33, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.616.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.r = load i32, ptr %i.f, align 4, !range !33, !noundef !5
  %i.s = load i32, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = trunc nuw i32 %i.r to i1
  br i1 %i.t, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.s, label %bb.d [
    i32 10, label %bb.e
    i32 16, label %bb.f
    i32 24, label %bb.g
    i32 32, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef align 8 ptr @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.o, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.v = load i64, ptr %i.b, align 8, !range !15, !noundef !5 ; 3 uses
  %i.w = icmp eq i64 %i.v, -1
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB3_16CodedInputStream20read_enum_or_unknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip11CompressionEB1D_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.y = load i32, ptr %i.a, align 8, !range !33, !noundef !5
  %i.z = trunc nuw i32 %i.y to i1
  br i1 %i.z, label %bb.p, label %bb.q

bb.g:                                             ; preds = %bb.c
  %i.aa = tail call { i64, ptr } @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 2 uses
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %.loopexit, label %bb.r

bb.h:                                             ; preds = %bb.c
  %i.ae = tail call { i64, ptr } @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = extractvalue { i64, ptr } %i.ae, 1      ; 2 uses
  %i.ah = trunc nuw i64 %i.af to i1
  br i1 %i.ah, label %.loopexit, label %bb.s

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %.sroa.537.0.copyload = load i64, ptr %.sroa.537.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = load i64, ptr %i.n, align 8, !range !15, !alias.scope !5403, !noundef !5
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.n ], [ %i.ak, %bb.l ]
  store i64 %i.v, ptr %i.n, align 8
  store ptr %i.x, ptr %.sroa.616.0..sroa_idx17, align 8
  store i64 %.sroa.537.0.copyload, ptr %.sroa.7.0..sroa_idx19, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  store i64 %i.v, ptr %i.n, align 8
  store ptr %i.x, ptr %.sroa.616.0..sroa_idx17, align 8
  store i64 %.sroa.537.0.copyload, ptr %.sroa.7.0..sroa_idx19, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.s, %bb.r, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.an = load i32, ptr %i.c, align 8, !range !33, !noundef !5
  %i.ao = trunc nuw i32 %i.an to i1
  br i1 %i.ao, label %._crit_edge, label %bb.b

bb.p:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.q:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.k, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.l, align 8
  store i32 %i.ar, ptr %i.m, align 4
  br label %bb.o

bb.r:                                             ; preds = %bb.g
  %i.as = ptrtoint ptr %i.ac to i64
  store i64 1, ptr %0, align 8
  store i64 %i.as, ptr %i.j, align 8
  br label %bb.o

bb.s:                                             ; preds = %bb.h
  %i.at = ptrtoint ptr %i.ag to i64
  store i64 1, ptr %i.h, align 8
  store i64 %i.at, ptr %i.i, align 8
  br label %bb.o

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.d, %bb.b, %._crit_edge, %bb.p, %bb.i
  %.sroa.0.1 = phi ptr [ %i.x, %bb.i ], [ %i.q, %._crit_edge ], [ %i.aq, %bb.p ], [ %i.u, %bb.d ], [ %i.ac, %bb.g ], [ %i.ag, %bb.h ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

end_hunk_3
begin_hunk_4_@_RNvXs14_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_16CounterSignatureNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size:bb.a
  br i1 %i.ax, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.sroa.0.4.lcssa = phi i64 [ %.sroa.0.3, %bb.g ], [ %i.aw, %.lr.ph ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = tail call noundef i64 @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
  %i.ba = add i64 %i.az, %.sroa.0.4.lcssa         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = trunc i64 %i.ba to i32
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.bb, i32 noundef %i.bc)
  ret i64 %i.ba
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs14_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_16CounterSignatureNtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !range !34, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream10write_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i1 noundef zeroext %i.c) ; 2 uses
  %.not23 = icmp eq ptr %i.d, null
  br i1 %.not23, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.h, %bb.f, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.ah, %._crit_edge ], [ %i.d, %bb.b ], [ %i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.w, %bb.h ], [ %i.af, %.lr.ph ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_int64(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, i64 noundef %i.h) ; 2 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !range !15, !noundef !5
  %.not25 = icmp eq i64 %i.k, -1
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_string(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o) ; 2 uses
  %.not26 = icmp eq ptr %i.p, null
  br i1 %.not26, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i64, ptr %i.q, align 8, !range !15, !noundef !5
  %.not27 = icmp eq i64 %i.r, -1
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
  %i.w = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_string(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v) ; 2 uses
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aa, 208
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.031, i64 208 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.ab
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.sroa.015.031 = phi ptr [ %i.ad, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  %i.af = tail call noundef align 8 ptr @_RINvNtNtCsg2CeFYmfPbl_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEB1o_(i32 noundef 4, ptr noundef nonnull align 8 %.sroa.015.031, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not29 = icmp eq ptr %i.af, null
  br i1 %.not29, label %bb.j, label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs14_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_16CounterSignatureNtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(112) initializes((0, 8), (104, 105)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 2, ptr %i.a, align 8
  store i64 0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !range !15, !alias.scope !5435, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  store i64 -1, ptr %i.b, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  store i64 -1, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !range !15, !alias.scope !5436, !noundef !5
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit14, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i10 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body11 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i10: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit14 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i10
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.g, %bb.i
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.k, %bb.g ]
  store i64 -1, ptr %i.h, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit14: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i10
  store i64 -1, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.s = icmp eq i64 %i.u, %i.q
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit14, %bb.j
  %.sroa.0.0.i15 = phi i64 [ %i.u, %bb.j ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit14 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %.sroa.0.0.i15
  %i.u = add nuw nsw i64 %.sroa.0.0.i15, 1        ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.t)
          to label %bb.j unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph17
  %i.v = add i64 %.sroa.0.1.i16, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.q
  br i1 %i.w, label %common.resume, label %.lr.ph17

bb.l:                                             ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = icmp eq i64 %i.u, %i.q
  br i1 %i.y, label %common.resume, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.l, %bb.k
  %.sroa.0.1.i16 = phi i64 [ %i.v, %bb.k ], [ %i.u, %bb.l ] ; 2 uses
  %i.z = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %.sroa.0.1.i16
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.z) #45
          to label %bb.k unwind label %bb.m

common.resume:                                    ; preds = %bb.k, %bb.l, %.body, %.body11
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body12, %.body11 ], [ %i.x, %bb.l ], [ %i.x, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %.lr.ph17
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_16CounterSignatureNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB2E_16CounterSignatureNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_(ptr noundef nonnull align 8 @_RNvNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB8_16CounterSignatureNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs16_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_16CounterSignatureNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCsg2CeFYmfPbl_8protobuf11text_format5print3fmt(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @545, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXs1A_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_7MachineNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #16 {
switch.lookup:
  %.val1 = load i8, ptr %0, align 1, !range !36, !noundef !5
  %i.a = zext nneg i8 %.val1 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvXs1A_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_7MachineNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.754, i64 %i.a
  %switch.load = load i16, ptr %switch.gep, align 2
  %.val = load i8, ptr %1, align 1, !range !36, !noundef !5
  %i.b = zext nneg i8 %.val to i64
  %switch.gep6 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvXs1A_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_7MachineNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.754, i64 %i.b
  %switch.load7 = load i16, ptr %switch.gep6, align 2
  %i.c = icmp eq i16 %switch.load, %switch.load7
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 35) i8 @_RNvXs1C_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_7MachineNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_str(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #16 {
bb.a:
  switch i64 %1, label %bb.aj [
    i64 15, label %bb.b
    i64 13, label %bb.c
    i64 12, label %bb.e
    i64 11, label %bb.g
    i64 14, label %bb.j
    i64 19, label %bb.o
    i64 17, label %bb.t
    i64 16, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 6864979283648135501
  %i.c = getelementptr i8, ptr %0, i64 7
  %i.d = load i64, ptr %i.c, align 1
  %i.e = xor i64 %i.d, 5645067855621674335
  %i.f = or i64 %i.b, %i.e
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.ak, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 1
  %i.k = xor i64 %i.j, 6864979283648135501
  %i.l = getelementptr i8, ptr %0, i64 5
  %i.m = load i64, ptr %i.l, align 1
  %i.n = xor i64 %i.m, 4704098099232982350
  %i.o = or i64 %i.k, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.ak, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = load i64, ptr %0, align 1
  %i.t = xor i64 %i.s, 6864979283648135501
  %i.u = getelementptr i8, ptr %0, i64 7
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 3762266317555253599
  %i.x = or i64 %i.t, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.ak, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %0, align 1
  %i.ac = xor i64 %i.ab, 6864979283648135501
  %i.ad = getelementptr i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = xor i64 %i.af, 859000129
  %i.ah = or i64 %i.ac, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.ak, label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.al = load i64, ptr %0, align 1
  %i.am = xor i64 %i.al, 6864979283648135501
  %i.an = getelementptr i8, ptr %0, i64 5
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = xor i64 %i.ao, 3762269637314561358
  %i.aq = or i64 %i.am, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.ak, label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.au = load i64, ptr %0, align 1
  %i.av = xor i64 %i.au, 6864979283648135501
  %i.aw = getelementptr i8, ptr %0, i64 3
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = xor i64 %i.ax, 5571587566451181896
  %i.az = or i64 %i.av, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.ak, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.bd = load i64, ptr %0, align 1
  %i.be = xor i64 %i.bd, 6864979283648135501
  %i.bf = getelementptr i8, ptr %0, i64 5
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 3762279554394047822
  %i.bi = or i64 %i.be, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ak, label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.bm = load i64, ptr %0, align 1
  %i.bn = xor i64 %i.bm, 6864979283648135501
  %i.bo = getelementptr i8, ptr %0, i64 7
  %i.bp = load i64, ptr %i.bo, align 1
  %i.bq = xor i64 %i.bp, 4847337981764321631
  %i.br = or i64 %i.bn, %i.bq
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ak, label %bb.s

bb.j:                                             ; preds = %bb.a
  %i.bv = load i64, ptr %0, align 1
  %i.bw = xor i64 %i.bv, 6864979283648135501
  %i.bx = getelementptr i8, ptr %0, i64 6
end_hunk_4
begin_hunk_5_@_RNvXs1g_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_13RichSignatureNtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes:bb.a

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.k = load i32, ptr %i.j, align 4, !noundef !5
  %i.l = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_uint32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, i32 noundef %i.k) ; 2 uses
  %.not26 = icmp eq ptr %i.l, null
  br i1 %.not26, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i32, ptr %i.m, align 8, !range !33, !noundef !5
  %i.o = trunc nuw i32 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.q = load i32, ptr %i.p, align 4, !noundef !5
  %i.r = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_uint32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 3, i32 noundef %i.q) ; 2 uses
  %.not27 = icmp eq ptr %i.r, null
  br i1 %.not27, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !range !15, !noundef !5
  %.not28 = icmp eq i64 %i.t, -1
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x) ; 2 uses
  %.not29 = icmp eq ptr %i.y, null
  br i1 %.not29, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !range !15, !noundef !5
  %.not30 = icmp eq i64 %i.aa, -1
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae) ; 2 uses
  %.not31 = icmp eq ptr %i.af, null
  br i1 %.not31, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aj, 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.018.034, i64 40 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ak
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.sroa.018.034 = phi ptr [ %i.am, %bb.l ], [ %i.ah, %bb.k ] ; 2 uses
  %i.ao = tail call noundef align 8 ptr @_RINvNtNtCsg2CeFYmfPbl_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEB1o_(i32 noundef 6, ptr noundef nonnull align 8 %.sroa.018.034, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not32 = icmp eq ptr %i.ao, null
  br i1 %.not32, label %bb.l, label %.loopexit

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1g_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_13RichSignatureNtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(112) initializes((72, 76), (80, 84), (88, 92)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !range !15, !alias.scope !5694, !noundef !5
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  store i64 -1, ptr %i.d, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  store i64 -1, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !range !15, !alias.scope !5695, !noundef !5
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit14, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i10 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body11 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i10: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit14 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i10
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.g, %bb.i
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.m, %bb.g ]
  store i64 -1, ptr %i.j, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit14: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i10
  store i64 -1, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5696)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit14, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBJ_.exit.i
  %.sroa.0.07.i = phi i64 [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBJ_.exit.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit14 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %.sroa.0.07.i
  %i.v = add nuw nsw i64 %.sroa.0.07.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5697)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.val.i.i = load ptr, ptr %i.w, align 8, !alias.scope !5698, !align !23, !noundef !5 ; 4 uses
  %i.x = icmp eq ptr %.val.i.i, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBJ_.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i unwind label %.body.i, !noalias !5698

.body.i:                                          ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #47, !noalias !5698
  %i.z = icmp eq i64 %i.v, %i.s
  br i1 %i.z, label %common.resume, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #47, !noalias !5698
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBJ_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBJ_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %.lr.ph.i
  %i.aa = icmp eq i64 %i.v, %i.s
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBK_.exit, label %.lr.ph.i

bb.k:                                             ; preds = %.lr.ph
  %i.ab = add i64 %.sroa.0.1.i24, 1               ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.s
  br i1 %i.ac, label %common.resume, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.k
  %.sroa.0.1.i24 = phi i64 [ %i.ab, %bb.k ], [ %i.v, %.body.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %.sroa.0.1.i24
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBJ_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.ad) #45
          to label %bb.k unwind label %bb.l

common.resume:                                    ; preds = %bb.k, %.body.i, %.body, %.body11
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body12, %.body11 ], [ %i.y, %.body.i ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46, !noalias !5696
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBK_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolEBJ_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x.exit14
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1h_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_13RichSignatureNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs1h_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB2E_13RichSignatureNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_(ptr noundef nonnull align 8 @_RNvNvXs1h_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB8_13RichSignatureNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1i_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_13RichSignatureNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCsg2CeFYmfPbl_8protobuf11text_format5print3fmt(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @558, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs1m_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_8RichToolNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.e = load i32, ptr %i.d, align 8, !range !33, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.t = load i32, ptr %i.g, align 4, !range !33, !noundef !5
  %i.u = load i32, ptr %i.h, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = trunc nuw i32 %i.t to i1
  br i1 %i.v, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.u, label %bb.d [
    i32 8, label %bb.e
    i32 16, label %bb.f
    i32 24, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = call noundef align 8 ptr @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.j, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.x = load i32, ptr %i.c, align 8, !range !33, !noundef !5
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.z = load i32, ptr %i.b, align 8, !range !33, !noundef !5
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ab = load i32, ptr %i.a, align 8, !range !33, !noundef !5
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %bb.m, label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.o, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 1, ptr %0, align 8
  store i32 %i.af, ptr %i.p, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.n, %bb.l, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.ag = load i32, ptr %i.d, align 8, !range !33, !noundef !5
  %i.ah = trunc nuw i32 %i.ag to i1
  br i1 %i.ah, label %._crit_edge, label %bb.b

bb.k:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.l, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.m, align 8
  store i32 %i.ak, ptr %i.n, align 4
  br label %bb.j

bb.m:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.n:                                             ; preds = %bb.g
  %i.an = load i32, ptr %i.i, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.j, align 8
  store i32 %i.an, ptr %i.k, align 4
  br label %bb.j

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge, %bb.m, %bb.k, %bb.h
  %.sroa.0.1 = phi ptr [ %i.aj, %bb.k ], [ %i.s, %._crit_edge ], [ %i.am, %bb.m ], [ %i.ae, %bb.h ], [ %i.w, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs1m_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_8RichToolNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !33, !noundef !5
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = or i32 %i.d, 1
  %i.f = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
end_hunk_5
begin_hunk_6_@_RNvXs6_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_3ZipNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from:bb.a

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef align 8 ptr @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.i, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream9read_bool(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.t = load i8, ptr %i.c, align 8, !range !17, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB3_16CodedInputStream12read_messageNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryEB1v_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.v = load i64, ptr %i.b, align 8, !range !22, !noundef !5 ; 2 uses
  %i.w = icmp eq i64 %i.v, 2
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.k, align 1, !range !17, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.aa, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryE8push_mutBN_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.ab = load i32, ptr %i.d, align 8, !range !33, !noundef !5
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %._crit_edge, label %bb.b

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.811.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.517.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.v, ptr %i.a, align 8
  store ptr %i.x, ptr %.sroa.68.0..sroa_idx9, align 8
  %i.ad = load i64, ptr %i.i, align 8, !alias.scope !5936, !noundef !5 ; 3 uses
  %i.ae = load i64, ptr %0, align 8, !range !19, !alias.scope !5936, !noundef !5
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryE8push_mutBN_.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryE8push_mutBN_.exit unwind label %bb.m, !noalias !5937

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #45
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ag

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryE8push_mutBN_.exit: ; preds = %bb.k, %bb.l
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !5936, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.ai, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  %i.ak = add i64 %i.ad, 1
  store i64 %i.ak, ptr %i.i, align 8, !alias.scope !5936
  br label %bb.i

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge, %bb.j, %bb.g
  %.sroa.0.1 = phi ptr [ %i.z, %bb.g ], [ %i.o, %._crit_edge ], [ %i.x, %bb.j ], [ %i.s, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs6_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_3ZipNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !34, !noundef !5
  %.not = icmp eq i8 %i.b, 2
  %spec.select = select i1 %.not, i64 0, i64 2    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 80
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.18 = phi i64 [ %i.q, %.lr.ph ], [ %spec.select, %bb.a ]
  %.sroa.05.07 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.07, i64 80 ; 2 uses
  %i.j = tail call noundef i64 @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_5EntryNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %.sroa.05.07) ; 2 uses
  %i.k = or i64 %i.j, 1
  %i.l = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.m
  %i.n = udiv i8 %.lhs.trunc, 7
  %narrow = add nuw nsw i8 %i.n, 1
  %i.o = zext nneg i8 %narrow to i64
  %i.p = add i64 %i.j, %.sroa.0.18
  %i.q = add i64 %i.p, %i.o                       ; 2 uses
  %i.r = icmp eq ptr %i.i, %i.g
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.1.lcssa = phi i64 [ %spec.select, %bb.a ], [ %i.q, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = tail call noundef i64 @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
  %i.u = add i64 %i.t, %.sroa.0.1.lcssa           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = trunc i64 %i.u to i32
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.v, i32 noundef %i.w)
  ret i64 %i.u
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs6_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_3ZipNtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !34, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream10write_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i1 noundef zeroext %i.c) ; 2 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.h, 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.b
  %.sroa.0.0 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.b ], [ %i.m, %.lr.ph ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.015, i64 80 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.04.015 = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.m = tail call noundef align 8 ptr @_RINvNtNtCsg2CeFYmfPbl_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryEB1o_(i32 noundef 2, ptr noundef nonnull align 8 %.sroa.04.015, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not13 = icmp eq ptr %i.m, null
  br i1 %.not13, label %bb.d, label %.loopexit

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_3ZipNtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(48) initializes((40, 41)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryEBK_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %.sroa.0.0.i1
  %i.i = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %.sroa.0.1.i2
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.n) #45
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %.lr.ph3
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip5EntryEBK_.exit: ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs6_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5titan9go_re_symNtB5_7SummaryNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.b = load i32, ptr %i.a, align 8, !range !33, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.m = load i32, ptr %i.d, align 4, !range !33, !noundef !5
  %i.n = load i32, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = trunc nuw i32 %i.m to i1
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.n, label %bb.d [
    i32 8, label %bb.e
    i32 16, label %bb.f
    i32 24, label %bb.g
    i32 32, label %bb.h
    i32 40, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef align 8 ptr @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.k, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.q = tail call { i64, ptr } @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %.loopexit, label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.u = tail call { i64, ptr } @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %.loopexit, label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.y = tail call { i64, ptr } @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %.loopexit, label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.ac = tail call { i64, ptr } @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %.loopexit, label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.ag = tail call { i64, ptr } @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = extractvalue { i64, ptr } %i.ag, 1      ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1
  br i1 %i.aj, label %.loopexit, label %bb.o

bb.j:                                             ; preds = %bb.e
  %i.ak = ptrtoint ptr %i.s to i64
  store i64 %i.ak, ptr %i.j, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.al = load i32, ptr %i.a, align 8, !range !33, !noundef !5
  %i.am = trunc nuw i32 %i.al to i1
  br i1 %i.am, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %bb.f
  %i.an = ptrtoint ptr %i.w to i64
  store i64 %i.an, ptr %i.i, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.ao = ptrtoint ptr %i.aa to i64
  store i64 %i.ao, ptr %i.h, align 8
  br label %bb.k

bb.n:                                             ; preds = %bb.h
  %i.ap = ptrtoint ptr %i.ae to i64
  store i64 %i.ap, ptr %i.g, align 8
  br label %bb.k

bb.o:                                             ; preds = %bb.i
  %i.aq = ptrtoint ptr %i.ai to i64
  store i64 %i.aq, ptr %i.f, align 8
  br label %bb.k

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.d, %bb.b, %._crit_edge
  %.sroa.0.1 = phi ptr [ %i.l, %._crit_edge ], [ %i.p, %bb.d ], [ %i.aa, %bb.g ], [ %i.w, %bb.f ], [ %i.s, %bb.e ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs6_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5titan9go_re_symNtB5_7SummaryNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %i.b, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = trunc nuw nsw i64 %i.e to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 70, %i.f
  %i.g = udiv i8 %.lhs.trunc.i.i, 7
  %narrow.i = add nuw nsw i8 %i.g, 1
  %i.h = zext nneg i8 %narrow.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = or i64 %i.j, 1
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i8
  %.lhs.trunc.i.i12 = sub nuw nsw i8 70, %i.n
  %i.o = udiv i8 %.lhs.trunc.i.i12, 7
  %narrow.i13 = add nuw nsw i8 %i.o, 1
  %i.p = zext nneg i8 %narrow.i13 to i64
  %i.q = add nuw nsw i64 %.sroa.0.0, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = or i64 %i.s, 1
  %i.v = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i8
  %.lhs.trunc.i.i14 = sub nuw nsw i8 70, %i.w
  %i.x = udiv i8 %.lhs.trunc.i.i14, 7
  %narrow.i15 = add nuw nsw i8 %i.x, 1
  %i.y = zext nneg i8 %narrow.i15 to i64
end_hunk_6
begin_hunk_7_@_RNvXsM_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_9SignatureNtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear:bb.a

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit62
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i64 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body65 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i64: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit68 unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i64
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body65

.body65:                                          ; preds = %bb.w, %bb.y
  %eh.lpad-body66 = phi { ptr, i32 } [ %i.aj, %bb.y ], [ %i.ah, %bb.w ]
  store i64 -1, ptr %i.ae, align 8
  br label %common.resume91

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit68: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit62, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i64
  store i64 -1, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !15, !alias.scope !6288, !noundef !5
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit74, label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit68
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i70 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body71 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i70: ; preds = %bb.z
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit74 unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i70
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.body71:                                          ; preds = %bb.aa, %bb.ac
  %eh.lpad-body72 = phi { ptr, i32 } [ %i.as, %bb.ac ], [ %i.aq, %bb.aa ]
  store i64 -1, ptr %i.an, align 8
  br label %common.resume91

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit74: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit68, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i70
  store i64 -1, ptr %i.an, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.au = load i64, ptr %i.at, align 8, !range !15, !alias.scope !6289, !noundef !5
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit80, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit74
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i76 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body77 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i76: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit80 unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i76
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.body77:                                          ; preds = %bb.ae, %bb.ag
  %eh.lpad-body78 = phi { ptr, i32 } [ %i.ay, %bb.ag ], [ %i.aw, %bb.ae ]
  store i64 -1, ptr %i.at, align 8
  br label %common.resume91

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit80: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit74, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i76
  store i64 -1, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !15, !alias.scope !6290, !noundef !5
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit86, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit80
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i82 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body83 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i82: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit86 unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i82
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.body83:                                          ; preds = %bb.ai, %bb.ak
  %eh.lpad-body84 = phi { ptr, i32 } [ %i.be, %bb.ak ], [ %i.bc, %bb.ai ]
  store i64 -1, ptr %i.az, align 8
  br label %common.resume91

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit86: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit80, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i82
  store i64 -1, ptr %i.az, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.val = load ptr, ptr %i.bh, align 8, !align !23, !noundef !5 ; 4 uses
  %i.bi = icmp eq ptr %.val, null
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEEB1E_.exit, label %bb.al

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit86
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEB1i_.exit.i unwind label %.body87

.body87:                                          ; preds = %bb.al
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #47
  store ptr null, ptr %i.bh, align 8
  br label %common.resume91

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEB1i_.exit.i: ; preds = %bb.al
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEEB1E_.exit

common.resume91:                                  ; preds = %bb.an, %bb.ar, %bb.ao, %bb.as, %.body87, %.body83, %.body77, %.body71, %.body65, %.body59, %.body53, %.body47, %.body41, %.body
  %common.resume91.op = phi { ptr, i32 } [ %i.ci, %bb.as ], [ %eh.lpad-body, %.body ], [ %i.bj, %.body87 ], [ %eh.lpad-body84, %.body83 ], [ %eh.lpad-body78, %.body77 ], [ %eh.lpad-body72, %.body71 ], [ %eh.lpad-body66, %.body65 ], [ %eh.lpad-body60, %.body59 ], [ %eh.lpad-body54, %.body53 ], [ %eh.lpad-body48, %.body47 ], [ %eh.lpad-body42, %.body41 ], [ %i.bu, %bb.ao ], [ %i.ci, %bb.ar ], [ %i.bu, %bb.an ]
  resume { ptr, i32 } %common.resume91.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEEB1E_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEB1i_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit86
  store ptr null, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.bm, align 8
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit, label %.lr.ph

bb.am:                                            ; preds = %.lr.ph
  %i.bp = icmp eq i64 %i.br, %i.bn
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEEB1E_.exit, %bb.am
  %.sroa.0.0.i101 = phi i64 [ %i.br, %bb.am ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEEB1E_.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [208 x i8], ptr %i.bl, i64 %.sroa.0.0.i101
  %i.br = add nuw nsw i64 %.sroa.0.0.i101, 1      ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.bq)
          to label %bb.am unwind label %bb.ao

bb.an:                                            ; preds = %.lr.ph103
  %i.bs = add i64 %.sroa.0.1.i102, 1              ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.bn
  br i1 %i.bt, label %common.resume91, label %.lr.ph103

bb.ao:                                            ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = icmp eq i64 %i.br, %i.bn
  br i1 %i.bv, label %common.resume91, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ao, %bb.an
  %.sroa.0.1.i102 = phi i64 [ %i.bs, %bb.an ], [ %i.br, %bb.ao ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [208 x i8], ptr %i.bl, i64 %.sroa.0.1.i102
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.bw) #45
          to label %bb.an unwind label %bb.ap

bb.ap:                                            ; preds = %.lr.ph103
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit: ; preds = %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEEB1E_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.ca, align 8
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe16CounterSignatureEBK_.exit, label %.lr.ph105

bb.aq:                                            ; preds = %.lr.ph105
  %i.cd = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe16CounterSignatureEBK_.exit, label %.lr.ph105

.lr.ph105:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit, %bb.aq
  %.sroa.0.0.i89104 = phi i64 [ %i.cf, %bb.aq ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [112 x i8], ptr %i.bz, i64 %.sroa.0.0.i89104
  %i.cf = add nuw nsw i64 %.sroa.0.0.i89104, 1    ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe16CounterSignatureEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ce)
          to label %bb.aq unwind label %bb.as

bb.ar:                                            ; preds = %.lr.ph107
  %i.cg = add i64 %.sroa.0.1.i90106, 1            ; 2 uses
  %i.ch = icmp eq i64 %i.cg, %i.cb
  br i1 %i.ch, label %common.resume91, label %.lr.ph107

bb.as:                                            ; preds = %.lr.ph105
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cj, label %common.resume91, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.as, %bb.ar
  %.sroa.0.1.i90106 = phi i64 [ %i.cg, %bb.ar ], [ %i.cf, %bb.as ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [112 x i8], ptr %i.bz, i64 %.sroa.0.1.i90106
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe16CounterSignatureEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ck) #45
          to label %bb.ar unwind label %bb.at

bb.at:                                            ; preds = %.lr.ph107
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe16CounterSignatureEBK_.exit: ; preds = %bb.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cm)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsN_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_9SignatureNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXsN_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB2D_9SignatureNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXsN_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB7_9SignatureNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsO_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_9SignatureNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCsg2CeFYmfPbl_8protobuf11text_format5print3fmt(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @675, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_3fmt5Debug3fmtCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !15, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @677)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @676, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe12ResourceTypeEENtNtB7_3fmt5Debug3fmtB1Q_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !33, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @679)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @676, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13OptionalMagicEENtNtB7_3fmt5Debug3fmtB1Q_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !33, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @680)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @676, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7MachineEENtNtB7_3fmt5Debug3fmtB1Q_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !33, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @681)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @676, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SubsystemEENtNtB7_3fmt5Debug3fmtB1Q_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !33, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @682)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @676, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11ShowCommandEENtNtB7_3fmt5Debug3fmtB1Q_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !33, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_7
begin_hunk_8_@_RNvXsS_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_10SignerInfoNtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.af, 208
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.017.034, i64 208 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.sroa.017.034 = phi ptr [ %i.ai, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ak = tail call noundef align 8 ptr @_RINvNtNtCsg2CeFYmfPbl_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEB1o_(i32 noundef 5, ptr noundef nonnull align 8 %.sroa.017.034, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not32 = icmp eq ptr %i.ak, null
  br i1 %.not32, label %bb.j, label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.h, %bb.f, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.am, %._crit_edge ], [ %i.g, %bb.b ], [ %i.n, %bb.d ], [ %i.u, %bb.f ], [ %i.ab, %bb.h ], [ %i.ak, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsS_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_10SignerInfoNtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !15, !alias.scope !6316, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  store i64 -1, ptr %i.a, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  store i64 -1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !range !15, !alias.scope !6317, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit22, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i18 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body19 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i18: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit22 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i18
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %bb.g, %bb.i
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.j, %bb.g ]
  store i64 -1, ptr %i.g, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit22: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i18
  store i64 -1, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.n = load i64, ptr %i.m, align 8, !range !15, !alias.scope !6318, !noundef !5
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit28, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit22
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i24 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body25 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i24: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit28 unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i24
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body25

.body25:                                          ; preds = %bb.k, %bb.m
  %eh.lpad-body26 = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.p, %bb.k ]
  store i64 -1, ptr %i.m, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit28: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit22, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i24
  store i64 -1, ptr %i.m, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.t = load i64, ptr %i.s, align 8, !range !15, !alias.scope !6319, !noundef !5
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit34, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit28
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i30 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body31 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i30: ; preds = %bb.n
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit34 unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i30
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body31

.body31:                                          ; preds = %bb.o, %bb.q
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.x, %bb.q ], [ %i.v, %bb.o ]
  store i64 -1, ptr %i.s, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit34: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i30
  store i64 -1, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph
  %i.ad = icmp eq i64 %i.af, %i.ab
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit34, %bb.r
  %.sroa.0.0.i35 = phi i64 [ %i.af, %bb.r ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit34 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.z, i64 %.sroa.0.0.i35
  %i.af = add nuw nsw i64 %.sroa.0.0.i35, 1       ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.ae)
          to label %bb.r unwind label %bb.t

bb.s:                                             ; preds = %.lr.ph37
  %i.ag = add i64 %.sroa.0.1.i36, 1               ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.ab
  br i1 %i.ah, label %common.resume, label %.lr.ph37

bb.t:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = icmp eq i64 %i.af, %i.ab
  br i1 %i.aj, label %common.resume, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.t, %bb.s
  %.sroa.0.1.i36 = phi i64 [ %i.ag, %bb.s ], [ %i.af, %bb.t ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [208 x i8], ptr %i.z, i64 %.sroa.0.1.i36
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.ak) #45
          to label %bb.s unwind label %bb.u

common.resume:                                    ; preds = %bb.s, %bb.t, %.body, %.body19, %.body25, %.body31
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body32, %.body31 ], [ %eh.lpad-body26, %.body25 ], [ %eh.lpad-body20, %.body19 ], [ %i.ai, %bb.t ], [ %i.ai, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %.lr.ph37
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateEBK_.exit: ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit34
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsT_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_10SignerInfoNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXsT_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB2D_10SignerInfoNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXsT_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB7_10SignerInfoNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsU_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_10SignerInfoNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCsg2CeFYmfPbl_8protobuf11text_format5print3fmt(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @698, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXsY_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_11CertificateNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #43
  %i.h = load i32, ptr %i.g, align 8, !range !33, !noundef !5
  %i.i = trunc nuw i32 %i.h to i1
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %.sroa.6114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.7117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %.sroa.695.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %.sroa.798.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %.sroa.676.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.sroa.779.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %.sroa.653.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.756.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %.sroa.634.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.737.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %.sroa.616.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %i.z = load i32, ptr %i.j, align 4, !range !33, !noundef !5
  %i.aa = load i32, ptr %i.k, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ab = trunc nuw i32 %i.z to i1
  br i1 %i.ab, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.aa, label %bb.d [
    i32 10, label %bb.e
    i32 18, label %bb.f
    i32 26, label %bb.g
    i32 32, label %bb.h
    i32 42, label %bb.i
    i32 50, label %bb.j
    i32 58, label %bb.k
    i32 64, label %bb.l
    i32 72, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef align 8 ptr @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.t, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ad = load i64, ptr %i.f, align 8, !range !15, !noundef !5 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.ae, label %bb.n, label %bb.o

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ag = load i64, ptr %i.e, align 8, !range !15, !noundef !5 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = load ptr, ptr %.sroa.4136.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.ah, label %bb.v, label %bb.w

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.aj = load i64, ptr %i.d, align 8, !range !15, !noundef !5 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, -1
  %i.al = load ptr, ptr %.sroa.4139.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.ak, label %bb.ab, label %bb.ac

bb.h:                                             ; preds = %bb.c
  %i.am = tail call { i64, ptr } @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %.loopexit, label %bb.ah

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.aq = load i64, ptr %i.c, align 8, !range !15, !noundef !5 ; 3 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = load ptr, ptr %.sroa.4142.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.ar, label %bb.ai, label %bb.aj

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
end_hunk_8
begin_hunk_9_@_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_11CertificateNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor:bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf4tlshNtB4_4TlshNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.070 = alloca [48 x i8], align 8          ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  switch i64 %2, label %.loopexit244.1.1 [
    i64 70, label %.split
    i64 72, label %.split.fold.split420
    i64 74, label %.split93
    i64 76, label %.split93.fold.split
    i64 134, label %.split.fold.split
    i64 136, label %.split.fold.split417
    i64 138, label %.split93.fold.split418
    i64 140, label %.split93.fold.split419
  ]

.loopexit244.1.1:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

.split93.fold.split:                              ; preds = %bb.a
  br label %.split93

.split93.fold.split418:                           ; preds = %bb.a
  br label %.split93

.split93.fold.split419:                           ; preds = %bb.a
  br label %.split93

.split93:                                         ; preds = %bb.a, %.split93.fold.split419, %.split93.fold.split418, %.split93.fold.split
  %.lcssa331.ph = phi i8 [ 0, %.split93.fold.split ], [ 1, %.split93.fold.split418 ], [ 0, %bb.a ], [ 1, %.split93.fold.split419 ]
  %.not.lcssa.ph = phi i64 [ 32, %.split93.fold.split ], [ 64, %.split93.fold.split418 ], [ 32, %bb.a ], [ 64, %.split93.fold.split419 ]
  %.lcssa326.ph = phi i8 [ 1, %.split93.fold.split ], [ 0, %.split93.fold.split418 ], [ 0, %bb.a ], [ 1, %.split93.fold.split419 ]
  %.sroa.576.0.lcssa.ph = phi i64 [ 2, %.split93.fold.split ], [ 0, %.split93.fold.split418 ], [ 0, %bb.a ], [ 2, %.split93.fold.split419 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6378
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 3, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !6378
  %i.i = load i64, ptr %i.c, align 8, !range !9, !noalias !6378, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !noalias !6378, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit, !prof !6

bb.b:                                             ; preds = %.split93
  %i.n = load i64, ptr %i.m, align 8, !noalias !6378
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #44, !noalias !6378
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit: ; preds = %.split93
  %i.o = load ptr, ptr %i.m, align 8, !noalias !6378, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6378
  br label %bb.d

.split.fold.split:                                ; preds = %bb.a
  br label %.split

.split.fold.split417:                             ; preds = %bb.a
  br label %.split

.split.fold.split420:                             ; preds = %bb.a
  br label %.split

.split:                                           ; preds = %bb.a, %.split.fold.split420, %.split.fold.split417, %.split.fold.split
  %.lcssa331.ph.ph = phi i8 [ 1, %.split.fold.split ], [ 1, %.split.fold.split417 ], [ 0, %bb.a ], [ 0, %.split.fold.split420 ]
  %.not.lcssa.ph.ph = phi i64 [ 64, %.split.fold.split ], [ 64, %.split.fold.split417 ], [ 32, %bb.a ], [ 32, %.split.fold.split420 ]
  %.lcssa326.ph.ph = phi i8 [ 0, %.split.fold.split ], [ 1, %.split.fold.split417 ], [ 0, %bb.a ], [ 1, %.split.fold.split420 ]
  %.sroa.576.0.lcssa.ph.ph = phi i64 [ 0, %.split.fold.split ], [ 2, %.split.fold.split417 ], [ 0, %bb.a ], [ 2, %.split.fold.split420 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6379
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 1, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !6379
  %i.p = load i64, ptr %i.b, align 8, !range !9, !noalias !6379, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !noalias !6379, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.q, label %bb.c, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109, !prof !6

bb.c:                                             ; preds = %.split
  %i.u = load i64, ptr %i.t, align 8, !noalias !6379
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #44, !noalias !6379
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109: ; preds = %.split
  %i.v = load ptr, ptr %i.t, align 8, !noalias !6379, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6379
  br label %bb.d

bb.d:                                             ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit
  %.sink424.a = phi i64 [ %i.s, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %i.l, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sink422 = phi ptr [ %i.v, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %i.o, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sink = phi i64 [ 1, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ 3, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sroa.576.0.lcssa.ph385 = phi i64 [ %.sroa.576.0.lcssa.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.sroa.576.0.lcssa.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.lcssa326.ph383 = phi i8 [ %.lcssa326.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.lcssa326.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.lcssa328.ph381 = phi i8 [ 0, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ 1, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.not.lcssa.ph379 = phi i64 [ %.not.lcssa.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.not.lcssa.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.lcssa331.ph377 = phi i8 [ %.lcssa331.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.lcssa331.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  store i64 %.sink424.a, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sink422, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sink, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6380
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.not.lcssa.ph379, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.y = load i64, ptr %i.a, align 8, !range !9, !noalias !6380, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !10, !noalias !6380, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.h, !prof !6

bb.e:                                             ; preds = %.noexc
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !6380
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #44
          to label %.noexc110 unwind label %bb.f

.noexc110:                                        ; preds = %bb.e
  unreachable

.body121:                                         ; preds = %bb.aa, %bb.f, %.body
  %.pn97 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ae, %bb.f ], [ %i.df, %bb.aa ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #45
          to label %common.resume unwind label %bb.ad

bb.f:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body121

bb.g:                                             ; preds = %bb.az
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %i.ac, align 8, !noalias !6380, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6380
  store i64 %i.ab, ptr %i.f, align 8, !alias.scope !6380
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !6380
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 %.not.lcssa.ph379, ptr %i.ah, align 8, !alias.scope !6380
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = icmp samesign eq i64 %i.al, 0
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119
  %.sroa.023.0281 = phi i64 [ %.sroa.576.0.lcssa.ph385, %.lr.ph ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 ] ; 8 uses
  %.sroa.045.0280 = phi ptr [ %i.aj, %.lr.ph ], [ %i.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.045.0280, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ar = add i64 %.sroa.023.0281, 2              ; 7 uses
  %i.as = or disjoint i64 %.sroa.023.0281, 1
  %or.cond.i106.not = icmp ult i64 %i.as, %2
  br i1 %or.cond.i106.not, label %bb.j, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

bb.j:                                             ; preds = %bb.i
  %i.at = icmp eq i64 %.sroa.023.0281, 0
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.au = icmp eq i64 %i.ar, %2
  br i1 %i.au, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0281
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !6382, !noundef !5
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.k, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119, %bb.h
  %.sroa.023.0.lcssa = phi i64 [ %.sroa.576.0.lcssa.ph385, %bb.h ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ay = add i64 %.sroa.023.0.lcssa, 2           ; 12 uses
  %i.az = or disjoint i64 %.sroa.023.0.lcssa, 1
  %or.cond.i103.not = icmp ult i64 %i.az, %2
  br i1 %or.cond.i103.not, label %bb.m, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

bb.m:                                             ; preds = %._crit_edge
  %i.ba = icmp eq i64 %.sroa.023.0.lcssa, 0
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bb = icmp eq i64 %i.ay, %2                   ; 2 uses
  br i1 %i.bb, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0.lcssa
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !6383, !noundef !5
  %i.be = icmp sgt i8 %i.bd, -65
  br i1 %i.be, label %bb.n, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.al, %bb.aj, %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.al ], [ %i.dc, %bb.x ], [ %i.ey, %bb.aj ], [ %i.cx, %bb.v ], [ %lpad.loopexit.split-lp477, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #45
          to label %.body121 unwind label %bb.ad

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i115, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i141, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i135, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.az, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105.thread
  %lpad.loopexit.split-lp477 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !6382, !noundef !5
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6384

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread: ; preds = %bb.k, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0281 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  invoke void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3rev3RevNtNtNtBU_3str4iter5CharsEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread
  %i.bk = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bl = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  switch i64 %i.bl, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bm = load i8, ptr %i.bk, align 1, !alias.scope !6385, !noundef !5 ; 2 uses
  switch i8 %i.bm, label %bb.r [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.p
  %.pr.i = load i8, ptr %i.bk, align 1, !alias.scope !6385
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i, %bb.q
  %i.bn = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bm, %bb.q ]
  %cond.i = icmp eq i8 %i.bn, 43                  ; 2 uses
  %i.bo = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.bl, %i.bo        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i112 = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.bp = icmp samesign ult i64 %.sroa.15.0.i, 3
  br i1 %i.bp, label %.preheader.i, label %.preheader59.i

.preheader.i:                                     ; preds = %bb.r
  %.not5467.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5467.i, label %.loopexit239, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bq = load i8, ptr %.sroa.0.0.i112, align 1, !alias.scope !6385, !noundef !5 ; 2 uses
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = icmp ugt i8 %i.bq, 57
  %i.bt = add nsw i32 %i.br, -65
  %i.bu = and i32 %i.bt, -33
  %i.bv = add nuw nsw i32 %i.bu, 10
  %i.bw = add nsw i32 %i.br, -48
  %.sroa.02.0.i57.i.peel = select i1 %i.bs, i32 %i.bv, i32 %i.bw ; 2 uses
  %i.bx = icmp ugt i32 %.sroa.02.0.i57.i.peel, 15
  br i1 %i.bx, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.preheader.i
  %i.by = icmp eq i64 %.sroa.15.0.i, 1
  %i.bz = trunc nuw nsw i32 %.sroa.02.0.i57.i.peel to i8 ; 2 uses
  br i1 %i.by, label %.loopexit239, label %.lr.ph.i

bb.t:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.166.i, i64 1
  %i.cb = add nsw i64 %.sroa.15.165.i, -1         ; 2 uses
  %i.cc = shl nuw i8 %.sroa.043.064.i, 4
  %i.cd = trunc nuw nsw i32 %.sroa.02.0.i.i to i8
  %i.ce = or disjoint i8 %i.cc, %i.cd             ; 2 uses
  %.not53.i = icmp eq i64 %i.cb, 0
  br i1 %.not53.i, label %.loopexit239, label %.preheader59.i

.preheader59.i:                                   ; preds = %bb.r, %bb.t
  %.sroa.0.166.i = phi ptr [ %i.ca, %bb.t ], [ %.sroa.0.0.i112, %bb.r ] ; 2 uses
  %.sroa.15.165.i = phi i64 [ %i.cb, %bb.t ], [ %.sroa.15.0.i, %bb.r ]
  %.sroa.043.064.i = phi i8 [ %i.ce, %bb.t ], [ 0, %bb.r ] ; 2 uses
  %i.cf = icmp ugt i8 %.sroa.043.064.i, 15
  br i1 %i.cf, label %.loopexit, label %bb.u, !prof !6

bb.u:                                             ; preds = %.preheader59.i
  %i.cg = load i8, ptr %.sroa.0.166.i, align 1, !alias.scope !6385, !noundef !5 ; 2 uses
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = icmp ugt i8 %i.cg, 57
  %i.cj = add nsw i32 %i.ch, -65
  %i.ck = and i32 %i.cj, -33
  %i.cl = add nuw nsw i32 %i.ck, 10
  %i.cm = add nsw i32 %i.ch, -48
  %.sroa.02.0.i.i = select i1 %i.ci, i32 %i.cl, i32 %i.cm ; 2 uses
  %i.cn = icmp ugt i32 %.sroa.02.0.i.i, 15
  br i1 %i.cn, label %.loopexit, label %bb.t

.lr.ph.i:                                         ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i112, i64 1
  %.pre = load i8, ptr %i.co, align 1, !alias.scope !6385 ; 2 uses
  %i.cp = zext i8 %.pre to i32                    ; 2 uses
  %i.cq = icmp ugt i8 %.pre, 57
  %i.cr = add nsw i32 %i.cp, -65
  %i.cs = and i32 %i.cr, -33
  %i.ct = add nuw nsw i32 %i.cs, 10
  %i.cu = add nsw i32 %i.cp, -48
  %.sroa.02.0.i57.i = select i1 %i.cq, i32 %i.ct, i32 %i.cu ; 2 uses
  %i.cv = icmp ugt i32 %.sroa.02.0.i57.i, 15
  br i1 %i.cv, label %.loopexit, label %.loopexit239.loopexit.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.q, %bb.p, %.lr.ph.i, %.lr.ph.preheader.i, %.preheader59.i, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.cw, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit239.loopexit.loopexit:                   ; preds = %.lr.ph.i
  %i.cz = shl nuw i8 %i.bz, 4
  %i.da = trunc nuw nsw i32 %.sroa.02.0.i57.i to i8
  %i.db = or disjoint i8 %i.cz, %i.da
  br label %.loopexit239

.loopexit239:                                     ; preds = %bb.t, %bb.s, %.loopexit239.loopexit.loopexit, %.preheader.i
  %.sroa.8.0.i = phi i8 [ %i.db, %.loopexit239.loopexit.loopexit ], [ 0, %.preheader.i ], [ %i.bz, %bb.s ], [ %i.ce, %bb.t ]
  store i8 %.sroa.8.0.i, ptr %.sroa.045.0280, align 1
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i115 unwind label %bb.x

bb.x:                                             ; preds = %.loopexit239
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i115: ; preds = %.loopexit239
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.de = icmp eq ptr %i.aq, %i.am
  br i1 %i.de, label %._crit_edge, label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit139, %.loopexit350, %.loopexit492, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body121 unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.f

bb.ac:                                            ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.ad:                                            ; preds = %.body, %.body121
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105: ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !6383, !noundef !5
  %i.dk = icmp sgt i8 %i.dj, -65
  br i1 %i.dk, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6384

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105.thread: ; preds = %bb.n, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0.lcssa ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  invoke void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3rev3RevNtNtNtBU_3str4iter5CharsEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dm)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !5 ; 2 uses
  switch i64 %i.dq, label %thread-pre-split.i132 [
    i64 0, label %.split.us.i
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dr = load i8, ptr %i.do, align 1, !alias.scope !6386, !noundef !5 ; 2 uses
  switch i8 %i.dr, label %bb.ag [
    i8 43, label %.split.us.i
    i8 45, label %.split.us.i
  ]

thread-pre-split.i132:                            ; preds = %bb.ae
  %.pr.i133 = load i8, ptr %i.do, align 1, !alias.scope !6386
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split.i132, %bb.af
  %i.ds = phi i8 [ %.pr.i133, %thread-pre-split.i132 ], [ %i.dr, %bb.af ]
  %cond.i123 = icmp eq i8 %i.ds, 43               ; 2 uses
  %i.dt = sext i1 %cond.i123 to i64
  %.sroa.15.0.i124 = add nsw i64 %i.dq, %i.dt     ; 4 uses
  %.sroa.0.0.idx.i125 = zext i1 %cond.i123 to i64
  %.sroa.0.0.i126 = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.0.0.idx.i125 ; 2 uses
  %i.du = icmp samesign ult i64 %.sroa.15.0.i124, 17
  br i1 %i.du, label %.preheader.i129, label %.preheader60.split.i.preheader

.preheader.i129:                                  ; preds = %bb.ag
  %.not5373.i = icmp eq i64 %.sroa.15.0.i124, 0
  br i1 %.not5373.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.split.i

.preheader60.split.i:                             ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i458, i64 1
  %i.dw = add nsw i64 %.sroa.15.1.i457, -1        ; 2 uses
  %.not52.i = icmp eq i64 %i.dw, 0
  br i1 %.not52.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader60.split.i.preheader

.preheader60.split.i.preheader:                   ; preds = %bb.ag, %.preheader60.split.i
  %.sroa.0.1.i458 = phi ptr [ %i.dv, %.preheader60.split.i ], [ %.sroa.0.0.i126, %bb.ag ] ; 2 uses
  %.sroa.15.1.i457 = phi i64 [ %i.dw, %.preheader60.split.i ], [ %.sroa.15.0.i124, %bb.ag ]
  %.sroa.042.0.i456 = phi i64 [ %i.ei, %.preheader60.split.i ], [ 0, %bb.ag ] ; 2 uses
  %i.dx = icmp ugt i64 %.sroa.042.0.i456, 1152921504606846975
  br i1 %i.dx, label %.split.us.i, label %bb.ah, !prof !6

bb.ah:                                            ; preds = %.preheader60.split.i.preheader
  %i.dy = shl nuw i64 %.sroa.042.0.i456, 4        ; 2 uses
  %i.dz = load i8, ptr %.sroa.0.1.i458, align 1, !alias.scope !6386, !noundef !5 ; 2 uses
  %i.ea = zext i8 %i.dz to i32                    ; 2 uses
  %i.eb = icmp ugt i8 %i.dz, 57
  %i.ec = add nsw i32 %i.ea, -65
  %i.ed = and i32 %i.ec, -33
  %i.ee = add nuw nsw i32 %i.ed, 10
  %i.ef = add nsw i32 %i.ea, -48
  %spec.select.i127 = select i1 %i.eb, i32 %i.ee, i32 %i.ef ; 2 uses
  %i.eg = icmp ugt i32 %spec.select.i127, 15
  %i.eh = zext nneg i32 %spec.select.i127 to i64
  %i.ei = add i64 %i.dy, %i.eh                    ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %i.dy
  %or.cond = select i1 %i.eg, i1 true, i1 %i.ej, !prof !25
  br i1 %or.cond, label %.split.us.i, label %.preheader60.split.i, !prof !25

.lr.ph.split.i:                                   ; preds = %.preheader.i129, %bb.ai
  %.sroa.0.276.i = phi ptr [ %i.eu, %bb.ai ], [ %.sroa.0.0.i126, %.preheader.i129 ] ; 2 uses
  %.sroa.15.275.i = phi i64 [ %i.et, %bb.ai ], [ %.sroa.15.0.i124, %.preheader.i129 ]
  %.sroa.042.274.i = phi i64 [ %i.ew, %bb.ai ], [ 0, %.preheader.i129 ]
  %i.ek = load i8, ptr %.sroa.0.276.i, align 1, !alias.scope !6386, !noundef !5 ; 2 uses
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  %i.em = icmp ugt i8 %i.ek, 57
  %i.en = add nsw i32 %i.el, -65
  %i.eo = and i32 %i.en, -33
  %i.ep = add nuw nsw i32 %i.eo, 10
  %i.eq = add nsw i32 %i.el, -48
  %spec.select82.i = select i1 %i.em, i32 %i.ep, i32 %i.eq ; 2 uses
  %i.er = icmp ult i32 %spec.select82.i, 16
  br i1 %i.er, label %bb.ai, label %.split.us.i

bb.ai:                                            ; preds = %.lr.ph.split.i
  %i.es = shl i64 %.sroa.042.274.i, 4
  %i.et = add nsw i64 %.sroa.15.275.i, -1         ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.276.i, i64 1
  %i.ev = zext nneg i32 %spec.select82.i to i64
  %i.ew = or disjoint i64 %i.es, %i.ev            ; 2 uses
  %.not53.i131 = icmp eq i64 %i.et, 0
  br i1 %.not53.i131, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.split.i

.split.us.i:                                      ; preds = %.preheader60.split.i.preheader, %bb.ah, %.lr.ph.split.i, %bb.ae, %bb.af, %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.ex, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i135 unwind label %bb.aj

bb.aj:                                            ; preds = %.split.us.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i135: ; preds = %.split.us.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader60.split.i, %bb.ai, %.preheader.i129
  %.sroa.11205.0 = phi i64 [ %i.ew, %bb.ai ], [ 0, %.preheader.i129 ], [ %i.ei, %.preheader60.split.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i141 unwind label %bb.al

bb.al:                                            ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i141: ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fc = add i64 %.sroa.023.0.lcssa, 4           ; 8 uses
  %i.fd = icmp ugt i64 %i.ay, %i.fc
  %i.fe = icmp ugt i64 %i.fc, %2
  %or.cond.i100 = or i1 %i.fd, %i.fe
  br i1 %or.cond.i100, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, label %bb.an, !prof !6387

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145
  br i1 %i.bb, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %3 = icmp eq i64 %i.ay, 0
  br i1 %3, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  %i.ff = icmp eq i64 %i.fc, %2
  br i1 %i.ff, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102

bb.aq:                                            ; preds = %bb.ao
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !6388, !noundef !5
  %i.fi = icmp sgt i8 %i.fh, -65
  br i1 %i.fi, label %bb.ap, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102: ; preds = %bb.ap
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !6388, !noundef !5
  %i.fl = icmp sgt i8 %i.fk, -65
  br i1 %i.fl, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6384

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread: ; preds = %bb.ap, %bb.an, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay ; 2 uses
  %.pr.i147 = load i8, ptr %4, align 1, !alias.scope !6389
  %cond.i148 = icmp eq i8 %.pr.i147, 43           ; 2 uses
  %.sroa.0.0.idx.i150 = zext i1 %cond.i148 to i64
  %.sroa.0.0.i151 = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0.0.idx.i150 ; 2 uses
  %i.fm = load i8, ptr %.sroa.0.0.i151, align 1, !alias.scope !6389, !noundef !5 ; 2 uses
  %i.fn = zext i8 %i.fm to i32                    ; 2 uses
  %i.fo = icmp ugt i8 %i.fm, 57
  %i.fp = add nsw i32 %i.fn, -65
  %i.fq = and i32 %i.fp, -33
  %i.fr = add nuw nsw i32 %i.fq, 10
  %i.fs = add nsw i32 %i.fn, -48
  %spec.select82.i173.peel = select i1 %i.fo, i32 %i.fr, i32 %i.fs ; 2 uses
  %i.ft = icmp ult i32 %spec.select82.i173.peel, 16
  br i1 %i.ft, label %bb.ar, label %.loopexit492

bb.ar:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i151, i64 1
  %i.fv = zext nneg i32 %spec.select82.i173.peel to i64 ; 2 uses
  br i1 %cond.i148, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread.peel.newph

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread.peel.newph: ; preds = %bb.ar
  %i.fw = load i8, ptr %i.fu, align 1, !alias.scope !6389, !noundef !5 ; 2 uses
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  %i.fy = icmp ugt i8 %i.fw, 57
  %i.fz = add nsw i32 %i.fx, -65
  %i.ga = and i32 %i.fz, -33
  %i.gb = add nuw nsw i32 %i.ga, 10
  %i.gc = add nsw i32 %i.fx, -48
  %spec.select82.i173 = select i1 %i.fy, i32 %i.gb, i32 %i.gc ; 2 uses
  %i.gd = icmp ult i32 %spec.select82.i173, 16
  br i1 %i.gd, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit, label %.loopexit492

.loopexit492:                                     ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread.peel.newph, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.ge, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.z

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread.peel.newph
  %i.gf = zext nneg i32 %spec.select82.i173 to i64
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176: ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit, %bb.ar
  %.lcssa471 = phi i64 [ %i.fv, %bb.ar ], [ %i.gf, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit ]
  %.sroa.042.274.i172.lcssa470 = phi i64 [ 0, %bb.ar ], [ %i.fv, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit ]
  %i.gg = load i64, ptr %i.ah, align 8, !noundef !5 ; 4 uses
  %i.gh = icmp sgt i64 %i.gg, -1
  call void @llvm.assume(i1 %i.gh)
  %.not289 = icmp eq i64 %i.gg, 0
  br i1 %.not289, label %._crit_edge285, label %.lr.ph284

._crit_edge285:                                   ; preds = %bb.ay, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.070)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.070, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.070.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.070, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.070.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.070, i64 48, i1 false)
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11205.0, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.042.274.i172.lcssa470, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.lcssa471, ptr %.sroa.772.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.lcssa331.ph377, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %.lcssa328.ph381, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %.lcssa326.ph383, ptr %.sroa.10.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.070)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av

.lr.ph284:                                        ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176, %bb.ay
  %.sroa.023.1283 = phi i64 [ %i.gj, %bb.ay ], [ %i.fc, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176 ] ; 8 uses
  %.sroa.086.0282 = phi i64 [ %i.gi, %bb.ay ], [ 0, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176 ] ; 2 uses
  %i.gi = add nuw nsw i64 %.sroa.086.0282, 1      ; 2 uses
  %i.gj = add i64 %.sroa.023.1283, 2              ; 6 uses
  %i.gk = or disjoint i64 %.sroa.023.1283, 1
  %or.cond.i.not = icmp ult i64 %i.gk, %2
  br i1 %or.cond.i.not, label %bb.as, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

bb.as:                                            ; preds = %.lr.ph284
  %i.gl = icmp eq i64 %.sroa.023.1283, 0
  br i1 %i.gl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.gm = icmp eq i64 %i.gj, %2
  br i1 %i.gm, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

bb.au:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.1283
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !6390, !noundef !5
  %i.gp = icmp sgt i8 %i.go, -65
  br i1 %i.gp, label %bb.at, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

bb.av:                                            ; preds = %.loopexit244.1.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit204, %._crit_edge285
  ret void

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.at
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 %i.gj
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !6390, !noundef !5
  %i.gs = icmp sgt i8 %i.gr, -65
  br i1 %i.gs, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6384

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108, %bb.i, %bb.l, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit, %.lr.ph284, %bb.au, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145, %bb.aq, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105, %._crit_edge, %bb.o
  %i.gt = phi i64 [ %i.ay, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102 ], [ %.sroa.023.0.lcssa, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105 ], [ %i.ay, %bb.aq ], [ %i.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 ], [ %.sroa.023.1283, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %.sroa.023.0.lcssa, %bb.o ], [ %.sroa.023.0.lcssa, %._crit_edge ], [ %.sroa.023.1283, %bb.au ], [ %.sroa.023.1283, %.lr.ph284 ], [ %.sroa.023.0281, %bb.l ], [ %.sroa.023.0281, %bb.i ], [ %.sroa.023.0281, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108 ]
  %i.gu = phi i64 [ %i.fc, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102 ], [ %i.ay, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105 ], [ %i.fc, %bb.aq ], [ %i.fc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 ], [ %i.gj, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %i.ay, %bb.o ], [ %i.ay, %._crit_edge ], [ %i.gj, %bb.au ], [ %i.gj, %.lr.ph284 ], [ %i.ar, %bb.l ], [ %i.ar, %bb.i ], [ %i.ar, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108 ]
  %i.gv = phi ptr [ @701, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102 ], [ @700, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105 ], [ @701, %bb.aq ], [ @701, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 ], [ @702, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ @700, %bb.o ], [ @700, %._crit_edge ], [ @702, %bb.au ], [ @702, %.lr.ph284 ], [ @699, %bb.l ], [ @699, %bb.i ], [ @699, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.gt, i64 noundef %i.gu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv) #44
          to label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.cont: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.at, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.1283 ; 2 uses
  %.pr.i178 = load i8, ptr %i.gw, align 1, !alias.scope !6391
  %cond.i179 = icmp eq i8 %.pr.i178, 43           ; 2 uses
  %.sroa.0.0.idx.i181 = zext i1 %cond.i179 to i64
  %.sroa.0.0.i182 = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.0.0.idx.i181 ; 2 uses
  %i.gx = load i8, ptr %.sroa.0.0.i182, align 1, !alias.scope !6391, !noundef !5 ; 2 uses
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = icmp ugt i8 %i.gx, 57
  %i.ha = add nsw i32 %i.gy, -65
  %i.hb = and i32 %i.ha, -33
  %i.hc = add nuw nsw i32 %i.hb, 10
  %i.hd = add nsw i32 %i.gy, -48
  %.sroa.02.0.i57.i201.peel = select i1 %i.gz, i32 %i.hc, i32 %i.hd ; 2 uses
  %i.he = icmp ugt i32 %.sroa.02.0.i57.i201.peel, 15
  br i1 %i.he, label %.loopexit350, label %bb.aw

bb.aw:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %i.hf = trunc nuw nsw i32 %.sroa.02.0.i57.i201.peel to i8 ; 2 uses
  br i1 %cond.i179, label %bb.ax, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %bb.aw
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i182, i64 1
  %.pre357 = load i8, ptr %i.hg, align 1, !alias.scope !6391 ; 2 uses
  %i.hh = zext i8 %.pre357 to i32                 ; 2 uses
  %i.hi = icmp ugt i8 %.pre357, 57
  %i.hj = add nsw i32 %i.hh, -65
  %i.hk = and i32 %i.hj, -33
  %i.hl = add nuw nsw i32 %i.hk, 10
  %i.hm = add nsw i32 %i.hh, -48
  %.sroa.02.0.i57.i201 = select i1 %i.hi, i32 %i.hl, i32 %i.hm ; 2 uses
  %i.hn = icmp ugt i32 %.sroa.02.0.i57.i201, 15
  br i1 %i.hn, label %.loopexit350, label %.loopexit351

.loopexit350:                                     ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, %.lr.ph.i197
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.ho, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.z

.loopexit351:                                     ; preds = %.lr.ph.i197
  %i.hp = shl nuw i8 %i.hf, 4
  %i.hq = trunc nuw nsw i32 %.sroa.02.0.i57.i201 to i8
  %i.hr = or disjoint i8 %i.hp, %i.hq
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit351, %bb.aw
  %.lcssa = phi i8 [ %i.hf, %bb.aw ], [ %i.hr, %.loopexit351 ]
  %i.hs = xor i64 %.sroa.086.0282, -1
  %i.ht = add nsw i64 %i.gg, %i.hs                ; 3 uses
  %i.hu = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.hv = icmp ult i64 %i.ht, %i.hu
  br i1 %i.hv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hw = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ht
  store i8 %.lcssa, ptr %i.hx, align 1
  %exitcond.not = icmp eq i64 %i.gi, %i.gg
  br i1 %exitcond.not, label %._crit_edge285, label %.lr.ph284

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ht, i64 noundef %i.hu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #44
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit139: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit204 unwind label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

common.resume:                                    ; preds = %.body121, %bb.ba
  %common.resume.op = phi { ptr, i32 } [ %i.hy, %bb.ba ], [ %.pn97, %.body121 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit204: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 6 uses
  %i.c = icmp ugt i64 %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
end_hunk_9
begin_hunk_10_@_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_6ImportNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size:bb.a
  %i.bd = udiv i8 %.lhs.trunc.i.i7.i, 7
  %narrow.i8.i = add nuw nsw i8 %i.bd, 1
  %i.be = zext nneg i8 %narrow.i8.i to i64
  %i.bf = add i64 %.sroa.0.1.i, %i.be
  br label %_RNvXsG_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_8FunctionNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size.exit

_RNvXsG_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_8FunctionNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.2.i = phi i64 [ %i.bf, %bb.j ], [ %.sroa.0.1.i, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 40
  %i.bh = tail call noundef i64 @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
  %i.bi = add i64 %i.bh, %.sroa.0.2.i             ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 48
  %i.bk = trunc i64 %i.bi to i32
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.bj, i32 noundef %i.bk)
  %i.bl = or i64 %i.bi, 1
  %i.bm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bl, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.bn
  %i.bo = udiv i8 %.lhs.trunc, 7
  %narrow = add nuw nsw i8 %i.bo, 1
  %i.bp = zext nneg i8 %narrow to i64
  %i.bq = add i64 %i.bi, %.sroa.0.212
  %i.br = add i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = icmp eq ptr %i.aa, %i.y
  br i1 %i.bs, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvXsG_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_8FunctionNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size.exit, %bb.e
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.1, %bb.e ], [ %i.br, %_RNvXsG_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_8FunctionNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = tail call noundef i64 @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt)
  %i.bv = add i64 %i.bu, %.sroa.0.2.lcssa         ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bx = trunc i64 %i.bv to i32
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.bw, i32 noundef %i.bx)
  ret i64 %i.bv
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_6ImportNtNtCsg2CeFYmfPbl_8protobuf7message7Message14is_initialized(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !range !15, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !5
  %.not3 = icmp eq i64 %i.c, 0
  br i1 %.not3, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.01.05 = phi ptr [ %i.l, %.lr.ph ], [ %i.e, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 32
  %i.k = load i32, ptr %i.j, align 8, !range !33, !noundef !5
  %.not4.not = icmp ne i32 %i.k, 0                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 56 ; 2 uses
  %i.m = icmp ne ptr %i.l, %i.h
  %or.cond.not = select i1 %.not4.not, i1 %i.m, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.c ], [ %.not4.not, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_6ImportNtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !range !15, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_string(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f) ; 2 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, i64 noundef %i.k) ; 2 uses
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.p, 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.w, %._crit_edge ], [ %i.g, %bb.b ], [ %i.l, %bb.d ], [ %i.u, %.lr.ph ]
  ret ptr %.sroa.0.0

bb.f:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 56 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.08.020 = phi ptr [ %i.s, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.u = tail call noundef align 8 ptr @_RINvNtNtCsg2CeFYmfPbl_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionEB1o_(i32 noundef 3, ptr noundef nonnull align 8 %.sroa.08.020, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not18 = icmp eq ptr %i.u, null
  br i1 %.not18, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_6ImportNtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !15, !alias.scope !6660, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.resume:                                    ; preds = %bb.g, %bb.h, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  resume { ptr, i32 } %common.resume.op

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  store i64 -1, ptr %i.a, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  store i64 -1, ptr %i.a, align 8
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionEBK_.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.n, %i.j
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, %bb.f
  %.sroa.0.0.i4 = phi i64 [ %i.n, %bb.f ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %.sroa.0.0.i4
  %i.n = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %bb.f unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph6
  %i.o = add i64 %.sroa.0.1.i5, 1                 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %common.resume, label %.lr.ph6

bb.h:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq i64 %i.n, %i.j
  br i1 %i.r, label %common.resume, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.h, %bb.g
  %.sroa.0.1.i5 = phi i64 [ %i.o, %bb.g ], [ %i.n, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %.sroa.0.1.i5
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s) #45
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph6
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionEBK_.exit: ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsv_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_6ImportNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXsv_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB2D_6ImportNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXsv_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB7_6ImportNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsw_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_6ImportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCsg2CeFYmfPbl_8protobuf11text_format5print3fmt(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @747, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !17, !noalias !6665, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7gfv9tzbXmh_6yara_x.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7gfv9tzbXmh_6yara_x.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_data0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBU_EE9call_onceBh_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_datas0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBU_EE9call_onceBh_(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_datas1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBU_EE9call_onceBh_(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(112) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_datas2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBU_EE9call_onceBh_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_datas3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBU_EE9call_onceBh_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(112) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_datas4_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBU_EE9call_onceBh_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_datas5_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBU_EE9call_onceBh_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(112) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_datas6_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBU_EE9call_onceBh_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_datas7_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBU_EE9call_onceBh_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(112) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNvMs13_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_16CounterSignature33generated_message_descriptor_datas_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBU_EE9call_onceBh_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(112) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs19_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_7Section33generated_message_descriptor_data0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBU_EE9call_onceBh_(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs19_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_7Section33generated_message_descriptor_datas0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBU_EE9call_onceBh_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs19_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_7Section33generated_message_descriptor_datas1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBU_EE9call_onceBh_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(136) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvYNCNvMs19_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_7Section33generated_message_descriptor_datas2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBU_EE9call_onceBh_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvYNCNvMs19_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_7Section33generated_message_descriptor_datas3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBU_EE9call_onceBh_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(136) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvYNCNvMs19_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_7Section33generated_message_descriptor_datas4_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBU_EE9call_onceBh_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvYNCNvMs19_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtBb_7Section33generated_message_descriptor_datas5_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBU_EE9call_onceBh_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(136) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

end_hunk_10
begin_hunk_11_@llvm.smax.i32
!6170 = !{!6043}
!6171 = !{!6044}
!6172 = !{!6046}
!6173 = !{!6048}
!6174 = !{!6051, !6050}
!6175 = !{!6051}
!6176 = !{!6053}
!6177 = !{!6055}
!6178 = !{!6057}
!6179 = !{!6059}
!6180 = !{!6061}
!6181 = !{!6063}
!6182 = !{!6064}
!6183 = !{!6066}
!6184 = !{!6068}
!6185 = !{!6070}
!6186 = !{!6072}
!6187 = !{!6074}
!6188 = !{!6076}
!6189 = !{!6078}
!6190 = !{!6080}
!6191 = !{!6082}
!6192 = !{!6084}
!6193 = !{!6086}
!6194 = !{!6088}
!6195 = !{!6088, !6086}
!6196 = !{!6090}
!6197 = !{!6092}
!6198 = !{!6094}
!6199 = !{!6096}
!6200 = !{!6098}
!6201 = !{!6100}
!6202 = !{!6102}
!6203 = !{!6104}
!6204 = !{!6106}
!6205 = !{!6108}
!6206 = !{!6110}
!6207 = !{!6112}
!6208 = !{!6112, !6110}
!6209 = distinct !{!6209, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6210 = distinct !{!6210, !6209, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6211 = distinct !{!6211, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6212 = distinct !{!6212, !6211, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6213 = !{!6210}
!6214 = !{!6212}
!6215 = distinct !{!6215, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6216 = distinct !{!6216, !6215, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6217 = distinct !{!6217, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6218 = distinct !{!6218, !6217, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6219 = !{!6216}
!6220 = !{!6218}
!6221 = distinct !{!6221, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6222 = distinct !{!6222, !6221, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6223 = !{!6222}
!6224 = distinct !{!6224, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6225 = distinct !{!6225, !6224, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6226 = !{!6225}
!6227 = distinct !{!6227, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6228 = distinct !{!6228, !6227, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6229 = distinct !{!6229, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6230 = distinct !{!6230, !6229, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6231 = distinct !{!6231, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6232 = distinct !{!6232, !6231, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6233 = distinct !{!6233, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6234 = distinct !{!6234, !6233, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6235 = distinct !{!6235, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6236 = distinct !{!6236, !6235, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6237 = distinct !{!6237, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6238 = distinct !{!6238, !6237, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6239 = distinct !{!6239, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6240 = distinct !{!6240, !6239, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6241 = distinct !{!6241, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6242 = distinct !{!6242, !6241, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6243 = distinct !{!6243, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6244 = distinct !{!6244, !6243, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6245 = distinct !{!6245, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateE8push_mutBN_"}
!6246 = distinct !{!6246, !6245, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateE8push_mutBN_: argument 0"}
!6247 = distinct !{!6247, !6245, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateE8push_mutBN_: argument 1"}
!6248 = distinct !{!6248, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe16CounterSignatureE8push_mutBN_"}
!6249 = distinct !{!6249, !6248, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe16CounterSignatureE8push_mutBN_: argument 0"}
!6250 = distinct !{!6250, !6248, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe16CounterSignatureE8push_mutBN_: argument 1"}
!6251 = !{!6228}
!6252 = !{!6230}
!6253 = !{!6232}
!6254 = !{!6234}
!6255 = !{!6236}
!6256 = !{!6238}
!6257 = !{!6240}
!6258 = !{!6242}
!6259 = !{!6244}
!6260 = !{!6246}
!6261 = !{!6247}
!6262 = !{!6249}
!6263 = !{!6250}
!6264 = distinct !{!6264, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6265 = distinct !{!6265, !6264, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6266 = distinct !{!6266, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6267 = distinct !{!6267, !6266, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6268 = distinct !{!6268, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6269 = distinct !{!6269, !6268, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6270 = distinct !{!6270, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6271 = distinct !{!6271, !6270, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6272 = distinct !{!6272, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6273 = distinct !{!6273, !6272, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6274 = distinct !{!6274, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6275 = distinct !{!6275, !6274, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6276 = distinct !{!6276, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6277 = distinct !{!6277, !6276, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6278 = distinct !{!6278, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6279 = distinct !{!6279, !6278, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6280 = distinct !{!6280, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6281 = distinct !{!6281, !6280, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6282 = !{!6265}
!6283 = !{!6267}
!6284 = !{!6269}
!6285 = !{!6271}
!6286 = !{!6273}
!6287 = !{!6275}
!6288 = !{!6277}
!6289 = !{!6279}
!6290 = !{!6281}
!6291 = distinct !{!6291, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6292 = distinct !{!6292, !6291, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6293 = distinct !{!6293, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6294 = distinct !{!6294, !6293, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6295 = distinct !{!6295, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6296 = distinct !{!6296, !6295, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6297 = distinct !{!6297, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6298 = distinct !{!6298, !6297, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6299 = distinct !{!6299, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateE8push_mutBN_"}
!6300 = distinct !{!6300, !6299, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateE8push_mutBN_: argument 0"}
!6301 = distinct !{!6301, !6299, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe11CertificateE8push_mutBN_: argument 1"}
!6302 = !{!6292}
!6303 = !{!6294}
!6304 = !{!6296}
!6305 = !{!6298}
!6306 = !{!6300}
!6307 = !{!6301}
!6308 = distinct !{!6308, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6309 = distinct !{!6309, !6308, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6310 = distinct !{!6310, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6311 = distinct !{!6311, !6310, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6312 = distinct !{!6312, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6313 = distinct !{!6313, !6312, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6314 = distinct !{!6314, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6315 = distinct !{!6315, !6314, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6316 = !{!6309}
!6317 = !{!6311}
!6318 = !{!6313}
!6319 = !{!6315}
!6320 = distinct !{!6320, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6321 = distinct !{!6321, !6320, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6322 = distinct !{!6322, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6323 = distinct !{!6323, !6322, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6324 = distinct !{!6324, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6325 = distinct !{!6325, !6324, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6326 = distinct !{!6326, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6327 = distinct !{!6327, !6326, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6328 = distinct !{!6328, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6329 = distinct !{!6329, !6328, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6330 = distinct !{!6330, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6331 = distinct !{!6331, !6330, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6332 = !{!6321}
!6333 = !{!6323}
!6334 = !{!6325}
!6335 = !{!6327}
!6336 = !{!6329}
!6337 = !{!6331}
!6338 = distinct !{!6338, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6339 = distinct !{!6339, !6338, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6340 = distinct !{!6340, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6341 = distinct !{!6341, !6340, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6342 = distinct !{!6342, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6343 = distinct !{!6343, !6342, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6344 = distinct !{!6344, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6345 = distinct !{!6345, !6344, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6346 = distinct !{!6346, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6347 = distinct !{!6347, !6346, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6348 = distinct !{!6348, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6349 = distinct !{!6349, !6348, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6350 = !{!6339}
!6351 = !{!6341}
!6352 = !{!6343}
!6353 = !{!6345}
!6354 = !{!6347}
!6355 = !{!6349}
!6356 = distinct !{!6356, i1 true, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x"}
!6357 = distinct !{!6357, !6356, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x: argument 0"}
!6358 = distinct !{!6358, i1 true, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x"}
!6359 = distinct !{!6359, !6358, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x: argument 0"}
!6360 = distinct !{!6360, i1 true, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x"}
!6361 = distinct !{!6361, !6360, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x: argument 0"}
!6362 = distinct !{!6362, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!6363 = distinct !{!6363, !6362, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!6364 = distinct !{!6364, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!6365 = distinct !{!6365, !6364, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!6366 = distinct !{!6366, i1 true, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl"}
!6367 = distinct !{!6367, !6366, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl: argument 0"}
!6368 = distinct !{!6368, i1 true, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl"}
!6369 = distinct !{!6369, !6368, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!6370 = distinct !{!6370, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!6371 = distinct !{!6371, !6370, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!6372 = distinct !{!6372, i1 true, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl"}
!6373 = distinct !{!6373, !6372, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!6374 = distinct !{!6374, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!6375 = distinct !{!6375, !6374, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!6376 = distinct !{!6376, i1 true, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl"}
!6377 = distinct !{!6377, !6376, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl: argument 0"}
!6378 = !{!6357}
!6379 = !{!6359}
!6380 = !{!6361}
!6381 = !{!"branch_weights", i32 2146410443, i32 1073205}
!6382 = !{!6363}
!6383 = !{!6365}
!6384 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!6385 = !{!6367}
!6386 = !{!6369}
!6387 = !{!"branch_weights", i32 1073205, i32 2146410443}
!6388 = !{!6371}
!6389 = !{!6373}
!6390 = !{!6375}
!6391 = !{!6377}
!6392 = distinct !{!6392, i1 true, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x"}
!6393 = distinct !{!6393, !6392, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x: argument 0"}
!6394 = distinct !{!6394, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x"}
!6395 = distinct !{!6395, !6394, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x: argument 0"}
!6396 = distinct !{!6396, i1 true, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x"}
!6397 = distinct !{!6397, !6396, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x: argument 0"}
!6398 = distinct !{!6398, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x"}
!6399 = distinct !{!6399, !6398, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x: argument 0"}
!6400 = !{!6395, !6393}
!6401 = !{!6393}
!6402 = !{!6399, !6397}
!6403 = !{!6397}
!6404 = distinct !{!6404, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x"}
!6405 = distinct !{!6405, !6404, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x: argument 0"}
!6406 = distinct !{!6406, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x"}
!6407 = distinct !{!6407, !6406, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x: argument 0"}
!6408 = !{!6405}
!6409 = !{!6407}
!6410 = distinct !{!6410, i1 true, !"_RNvXsb_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_19TopLevelEnumerationNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor"}
!6411 = distinct !{!6411, !6410, !"_RNvXsb_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_19TopLevelEnumerationNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor: argument 0"}
!6412 = distinct !{!6412, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6413 = distinct !{!6413, !6412, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6414 = distinct !{!6414, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6415 = distinct !{!6415, !6414, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6416 = distinct !{!6416, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6417 = distinct !{!6417, !6416, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6418 = distinct !{!6418, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6419 = distinct !{!6419, !6418, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6420 = distinct !{!6420, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x"}
!6421 = distinct !{!6421, !6420, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x: argument 0"}
!6422 = distinct !{!6422, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6423 = distinct !{!6423, !6422, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6424 = distinct !{!6424, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6425 = distinct !{!6425, !6424, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6426 = distinct !{!6426, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6427 = distinct !{!6427, !6426, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6428 = distinct !{!6428, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6429 = distinct !{!6429, !6428, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6430 = distinct !{!6430, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x"}
!6431 = distinct !{!6431, !6430, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x: argument 0"}
!6432 = !{!6411}
!6433 = !{!6421, !6419, !6417, !6415, !6413}
!6434 = !{!6431, !6429, !6427, !6425, !6423}
!6435 = distinct !{!6435, i1 true, !"_RNvXsb_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor"}
!6436 = distinct !{!6436, !6435, !"_RNvXsb_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor: argument 0"}
!6437 = distinct !{!6437, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6438 = distinct !{!6438, !6437, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6439 = distinct !{!6439, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6440 = distinct !{!6440, !6439, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6441 = distinct !{!6441, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6442 = distinct !{!6442, !6441, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6443 = distinct !{!6443, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6444 = distinct !{!6444, !6443, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6445 = distinct !{!6445, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x"}
!6446 = distinct !{!6446, !6445, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x: argument 0"}
!6447 = distinct !{!6447, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6448 = distinct !{!6448, !6447, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6449 = distinct !{!6449, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6450 = distinct !{!6450, !6449, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6451 = distinct !{!6451, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6452 = distinct !{!6452, !6451, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6453 = distinct !{!6453, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6454 = distinct !{!6454, !6453, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6455 = distinct !{!6455, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x"}
!6456 = distinct !{!6456, !6455, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x: argument 0"}
!6457 = !{i8 -1, i8 96}
!6458 = !{!6436}
!6459 = !{!6446, !6444, !6442, !6440, !6438}
!6460 = !{!6456, !6454, !6452, !6450, !6448}
!6461 = distinct !{!6461, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6462 = distinct !{!6462, !6461, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6463 = distinct !{!6463, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6464 = distinct !{!6464, !6463, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6465 = !{!6462}
!6466 = !{!6464}
!6467 = distinct !{!6467, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6468 = distinct !{!6468, !6467, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6469 = distinct !{!6469, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6470 = distinct !{!6470, !6469, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6471 = !{!6468}
!6472 = !{!6470}
!6473 = distinct !{!6473, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6474 = distinct !{!6474, !6473, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6475 = distinct !{!6475, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6476 = distinct !{!6476, !6475, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6477 = distinct !{!6477, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6478 = distinct !{!6478, !6477, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6479 = distinct !{!6479, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6480 = distinct !{!6480, !6479, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6481 = distinct !{!6481, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6482 = distinct !{!6482, !6481, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6483 = !{!6474}
!6484 = !{!6476}
!6485 = !{!6478}
!6486 = !{!6480}
!6487 = !{!6482}
!6488 = distinct !{!6488, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6489 = distinct !{!6489, !6488, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6490 = distinct !{!6490, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6491 = distinct !{!6491, !6490, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6492 = distinct !{!6492, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6493 = distinct !{!6493, !6492, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6494 = distinct !{!6494, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6495 = distinct !{!6495, !6494, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6496 = distinct !{!6496, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x"}
!6497 = distinct !{!6497, !6496, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6498 = !{!6489}
!6499 = !{!6491}
!6500 = !{!6493}
!6501 = !{!6495}
!6502 = !{!6497}
!6503 = distinct !{!6503, i1 true, !"_RNvXsf_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_17InlineEnumerationNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor"}
!6504 = distinct !{!6504, !6503, !"_RNvXsf_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_17InlineEnumerationNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor: argument 0"}
!6505 = distinct !{!6505, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6506 = distinct !{!6506, !6505, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6507 = distinct !{!6507, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6508 = distinct !{!6508, !6507, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6509 = distinct !{!6509, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6510 = distinct !{!6510, !6509, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6511 = distinct !{!6511, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6512 = distinct !{!6512, !6511, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6513 = distinct !{!6513, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x"}
!6514 = distinct !{!6514, !6513, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x: argument 0"}
!6515 = distinct !{!6515, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6516 = distinct !{!6516, !6515, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6517 = distinct !{!6517, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6518 = distinct !{!6518, !6517, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6519 = distinct !{!6519, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6520 = distinct !{!6520, !6519, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6521 = distinct !{!6521, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6522 = distinct !{!6522, !6521, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6523 = distinct !{!6523, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x"}
!6524 = distinct !{!6524, !6523, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x: argument 0"}
!6525 = !{!6504}
!6526 = !{!6514, !6512, !6510, !6508, !6506}
!6527 = !{!6524, !6522, !6520, !6518, !6516}
!6528 = distinct !{!6528, i1 true, !"_RNvXsh_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_14FileAttributesNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor"}
!6529 = distinct !{!6529, !6528, !"_RNvXsh_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_14FileAttributesNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor: argument 0"}
!6530 = distinct !{!6530, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6531 = distinct !{!6531, !6530, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6532 = distinct !{!6532, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6533 = distinct !{!6533, !6532, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6534 = distinct !{!6534, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6535 = distinct !{!6535, !6534, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6536 = distinct !{!6536, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6537 = distinct !{!6537, !6536, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6538 = distinct !{!6538, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x"}
!6539 = distinct !{!6539, !6538, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x: argument 0"}
!6540 = distinct !{!6540, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6541 = distinct !{!6541, !6540, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6542 = distinct !{!6542, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6543 = distinct !{!6543, !6542, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6544 = distinct !{!6544, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6545 = distinct !{!6545, !6544, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6546 = distinct !{!6546, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6547 = distinct !{!6547, !6546, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6548 = distinct !{!6548, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x"}
!6549 = distinct !{!6549, !6548, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x: argument 0"}
!6550 = !{i16 1, i16 16385}
!6551 = !{!6529}
!6552 = !{!6539, !6537, !6535, !6533, !6531}
!6553 = !{!6549, !6547, !6545, !6543, !6541}
!6554 = distinct !{!6554, i1 true, !"_RNvXsl_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor"}
!6555 = distinct !{!6555, !6554, !"_RNvXsl_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor: argument 0"}
!6556 = distinct !{!6556, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6557 = distinct !{!6557, !6556, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6558 = distinct !{!6558, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6559 = distinct !{!6559, !6558, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6560 = distinct !{!6560, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6561 = distinct !{!6561, !6560, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6562 = distinct !{!6562, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6563 = distinct !{!6563, !6562, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
!6564 = distinct !{!6564, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x"}
!6565 = distinct !{!6565, !6564, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x: argument 0"}
!6566 = distinct !{!6566, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x"}
!6567 = distinct !{!6567, !6566, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6568 = distinct !{!6568, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x"}
!6569 = distinct !{!6569, !6568, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorECs7gfv9tzbXmh_6yara_x: argument 0"}
!6570 = distinct !{!6570, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x"}
!6571 = distinct !{!6571, !6570, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file18FileDescriptorImplECs7gfv9tzbXmh_6yara_x: argument 0"}
!6572 = distinct !{!6572, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x"}
!6573 = distinct !{!6573, !6572, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorEECs7gfv9tzbXmh_6yara_x: argument 0"}
end_hunk_11
