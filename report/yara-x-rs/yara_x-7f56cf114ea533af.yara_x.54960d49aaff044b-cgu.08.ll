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
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !4875, !noundef !5
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4914)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.c = load i8, ptr %2, align 1, !alias.scope !4915, !noalias !4916, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i8, ptr %i.b, align 1, !alias.scope !4915, !noalias !4916, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.g = load i8, ptr %i.d, align 1, !alias.scope !4915, !noalias !4916, !noundef !5 ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !alias.scope !4915, !noalias !4916, !noundef !5 ; 2 uses
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
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !4917, !noalias !4916, !noundef !5 ; 2 uses
  %i.n = add i64 %.sroa.06.036.i.i.i.i, %i.i      ; 5 uses
  %i.o = icmp ult i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %.split41.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %.lr.ph.split.i.i.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef range(i64 2, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #42, !noalias !4918
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !4917, !noalias !4916, !noundef !5 ; 2 uses
  %i.r = icmp ult i8 %i.q, %i.m
  br i1 %i.r, label %bb.h, label %bb.e

.split41.us.i.i.i.i:                              ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef range(i64 2, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #42, !noalias !4918
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
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !4919, !noalias !4916, !noundef !5 ; 2 uses
  %i.ae = add i64 %.sroa.06.036.us.i.i.i.i, %i.z  ; 5 uses
  %i.af = icmp ult i64 %i.ae, 4
  br i1 %i.af, label %bb.k, label %.split41.us.i10.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !4919, !noalias !4916, !noundef !5 ; 2 uses
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef range(i64 2, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #42, !noalias !4918
  unreachable

.split41.us.i10.i.i.i:                            ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef range(i64 2, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #42, !noalias !4918
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
  %i.bg = tail call { i64, i64 } @_RNvMs0_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_5Shift7reverse(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 2, -9223372036854775808) 4, i64 noundef %.sroa.03.0.i.i.i, i64 noundef %.6.i.i.i), !noalias !4920 ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bg, 1      ; 5 uses
  %i.bi = extractvalue { i64, i64 } %i.bg, 0      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4923)
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
  %i.bm = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !4924, !nonnull !5, !noundef !5
  %i.bn = tail call { i64, ptr } %i.bm(i8 noundef %.sroa.15.32.extract.trunc, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.bl), !inline_history !4900 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4926)
  %i.bu = icmp ult i64 %.6.i.i.i, 4
  %i.bv = add i64 %.6.i.i.i, -1                   ; 2 uses
  %.first_iter.i.i = icmp ult i64 %i.bv, 4
  br i1 %.first_iter.i.i, label %.lr.ph69.i.split.us.i.preheader, label %.lr.ph69.i.split.i

.lr.ph69.i.split.us.i.preheader:                  ; preds = %.lr.ph69.i.i
  %i.bw = icmp eq i64 %.6.i.i.i, 4
  %i.bx = add nuw nsw i64 %.6.i.i.i, -4
  %.not33.i.i.us.us.i67 = icmp eq i64 %.6.i.i.i, 0
  %i.by = add nsw i64 %.6.i.i.i, -1               ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  %.not33.i.i.us.us.i = icmp eq i64 %i.by, 0
  %i.ca = add nsw i64 %.6.i.i.i, -2               ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ca
  %.not33.i.i.us.us.i.1 = icmp eq i64 %i.ca, 0
  %i.cc = add nsw i64 %.6.i.i.i, -3               ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %i.cc
  %.not33.i.i.us.us.i.2 = icmp eq i64 %i.cc, 0
  %i.ce = add nsw i64 %.6.i.i.i, -4               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %.6.i.i.i
  %i.ch = add nuw nsw i64 %.6.i.i.i, 1            ; 3 uses
  %exitcond120.not.i.us.i = icmp eq i64 %i.ch, 4
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch
  %i.cj = add nuw nsw i64 %.6.i.i.i, 2            ; 3 uses
  %exitcond120.not.i.us.i.1 = icmp eq i64 %i.cj, 4
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj
  %i.cl = add nuw nsw i64 %.6.i.i.i, 3            ; 3 uses
  %exitcond120.not.i.us.i.2 = icmp eq i64 %i.cl, 4
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cl
  br label %.lr.ph69.i.split.us.i

.lr.ph69.i.split.us.i:                            ; preds = %.lr.ph69.i.split.us.i.preheader, %.backedge.i.us.i
  %.sroa.01.0.i67.i.us.i = phi i64 [ %.sroa.01.0.i.be.i.us.i, %.backedge.i.us.i ], [ %1, %.lr.ph69.i.split.us.i.preheader ] ; 5 uses
  %i.cn = add i64 %.sroa.01.0.i67.i.us.i, -4      ; 14 uses
  %i.co = icmp ult i64 %i.cn, %1
  br i1 %i.co, label %bb.s, label %.split49.us.i

bb.s:                                             ; preds = %.lr.ph69.i.split.us.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !4927, !noalias !4928, !noundef !5 ; 2 uses
  %i.cr = and i8 %i.cq, 63
  %i.cs = zext nneg i8 %i.cr to i64
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.be
  %.not32.i.i.us.i = icmp eq i64 %i.cu, 0
  br i1 %.not32.i.i.us.i, label %.backedge.i.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %bb.s
  %i.cv = add i64 %.sroa.01.0.i67.i.us.i, -5      ; 4 uses
  br i1 %.not33.i.i.us.us.i67, label %.critedge.i.i.split.us.us.i, label %.lr.ph69

bb.t:                                             ; preds = %bb.z
  br i1 %.not33.i.i.us.us.i, label %.critedge.i.i.split.us.us.i, label %.lr.ph69.1

.lr.ph69.1:                                       ; preds = %bb.t
  %i.cw = add i64 %i.cv, %i.by                    ; 3 uses
  %i.cx = icmp ult i64 %i.cw, %1
  br i1 %i.cx, label %bb.u, label %.split45.us.i

bb.u:                                             ; preds = %.lr.ph69.1
  %i.cy = load i8, ptr %i.cb, align 1, !alias.scope !4929, !noalias !4930, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.db = icmp eq i8 %i.cy, %i.da
  br i1 %i.db, label %bb.v, label %.loopexit.i.us.i

bb.v:                                             ; preds = %bb.u
  br i1 %.not33.i.i.us.us.i.1, label %.critedge.i.i.split.us.us.i, label %.lr.ph69.2

.lr.ph69.2:                                       ; preds = %bb.v
  %i.dc = add i64 %i.cv, %i.ca                    ; 3 uses
  %i.dd = icmp ult i64 %i.dc, %1
  br i1 %i.dd, label %bb.w, label %.split45.us.i

bb.w:                                             ; preds = %.lr.ph69.2
  %i.de = load i8, ptr %i.cd, align 1, !alias.scope !4929, !noalias !4930, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.dc
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.dh = icmp eq i8 %i.de, %i.dg
  br i1 %i.dh, label %bb.x, label %.loopexit.i.us.i

bb.x:                                             ; preds = %bb.w
  br i1 %.not33.i.i.us.us.i.2, label %.critedge.i.i.split.us.us.i, label %.lr.ph69.3

.lr.ph69.3:                                       ; preds = %bb.x
  %i.di = add i64 %i.cv, %i.cc                    ; 3 uses
  %i.dj = icmp ult i64 %i.di, %1
  br i1 %i.dj, label %bb.y, label %.split45.us.i

bb.y:                                             ; preds = %.lr.ph69.3
  %i.dk = load i8, ptr %i.cf, align 1, !alias.scope !4929, !noalias !4930, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %i.di
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.dn = icmp eq i8 %i.dk, %i.dm
  br i1 %i.dn, label %.critedge.i.i.split.us.us.i, label %.loopexit.i.us.i

.lr.ph69:                                         ; preds = %.split.us.us.i
  %3 = add i64 %i.cv, %.6.i.i.i                   ; 3 uses
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %bb.z, label %.split45.us.i

bb.z:                                             ; preds = %.lr.ph69
  %i.do = load i8, ptr %i.bz, align 1, !alias.scope !4929, !noalias !4930, !noundef !5
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.dr = icmp eq i8 %i.do, %i.dq
  br i1 %i.dr, label %bb.t, label %.loopexit.i.us.i

.critedge.i.i.split.us.us.i:                      ; preds = %bb.t, %bb.v, %bb.x, %bb.y, %.split.us.us.i
  %.sroa.012.0.i.i.us.us.i.lcssa = phi i64 [ %.6.i.i.i, %.split.us.us.i ], [ %i.by, %bb.t ], [ %i.ca, %bb.v ], [ %i.cc, %bb.x ], [ %i.ce, %bb.y ]
  %.not34.i.i.us.i = icmp eq i8 %i.c, %i.cq
  br i1 %.not34.i.i.us.i, label %.preheader.i.us.i, label %.loopexit.i.us.i

.loopexit.i.us.i:                                 ; preds = %bb.z, %bb.u, %bb.w, %bb.y, %.critedge.i.i.split.us.us.i
  %.sroa.012.0.i.i.us.us.i15 = phi i64 [ %.sroa.012.0.i.i.us.us.i.lcssa, %.critedge.i.i.split.us.us.i ], [ %.6.i.i.i, %bb.z ], [ %i.by, %bb.u ], [ %i.ca, %bb.w ], [ %i.cc, %bb.y ]
  %.neg.i.i.us.i = add i64 %.sroa.01.0.i67.i.us.i, %i.bt
  %i.ds = add i64 %.neg.i.i.us.i, %.sroa.012.0.i.i.us.us.i15
  br label %.backedge.i.us.i

.preheader.i.us.i:                                ; preds = %.critedge.i.i.split.us.us.i
  br i1 %i.bu, label %.lr.ph62.i.us.i, label %._crit_edge.i.us.i

.lr.ph62.i.us.i:                                  ; preds = %.preheader.i.us.i
  %i.dt = add nuw i64 %.6.i.i.i, %i.cn            ; 2 uses
  %i.du = icmp ult i64 %i.dt, %1
  br i1 %i.du, label %bb.aa, label %.split53.us.i.loopexit

bb.aa:                                            ; preds = %.lr.ph62.i.us.i
  %i.dv = load i8, ptr %i.cg, align 1, !alias.scope !4929, !noalias !4930, !noundef !5
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %i.dt
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.dy = icmp eq i8 %i.dv, %i.dx
  br i1 %i.dy, label %bb.ab, label %._crit_edge.i.us.i.thread

bb.ab:                                            ; preds = %bb.aa
  br i1 %exitcond120.not.i.us.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph62.i.us.i.1

.lr.ph62.i.us.i.1:                                ; preds = %bb.ab
  %i.dz = add nuw i64 %i.ch, %i.cn                ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %1
  br i1 %i.ea, label %bb.ac, label %.split53.us.i.loopexit

bb.ac:                                            ; preds = %.lr.ph62.i.us.i.1
  %i.eb = load i8, ptr %i.ci, align 1, !alias.scope !4929, !noalias !4930, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.ee = icmp eq i8 %i.eb, %i.ed
  br i1 %i.ee, label %bb.ad, label %._crit_edge.i.us.i.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %exitcond120.not.i.us.i.1, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph62.i.us.i.2

.lr.ph62.i.us.i.2:                                ; preds = %bb.ad
  %i.ef = add nuw i64 %i.cj, %i.cn                ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %1
  br i1 %i.eg, label %bb.ae, label %.split53.us.i.loopexit

bb.ae:                                            ; preds = %.lr.ph62.i.us.i.2
  %i.eh = load i8, ptr %i.ck, align 1, !alias.scope !4929, !noalias !4930, !noundef !5
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %i.ef
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.ek = icmp eq i8 %i.eh, %i.ej
  br i1 %i.ek, label %bb.af, label %._crit_edge.i.us.i.thread

bb.af:                                            ; preds = %bb.ae
  br i1 %exitcond120.not.i.us.i.2, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph62.i.us.i.3

.lr.ph62.i.us.i.3:                                ; preds = %bb.af
  %i.el = add nuw i64 %i.cl, %i.cn                ; 2 uses
  %i.em = icmp ult i64 %i.el, %1
  br i1 %i.em, label %bb.ag, label %.split53.us.i.loopexit

bb.ag:                                            ; preds = %.lr.ph62.i.us.i.3
  %i.en = load i8, ptr %i.cm, align 1, !alias.scope !4929, !noalias !4930, !noundef !5
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.eq = icmp eq i8 %i.en, %i.ep
  br i1 %i.eq, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %._crit_edge.i.us.i.thread

._crit_edge.i.us.i:                               ; preds = %.preheader.i.us.i
  br i1 %i.bw, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %._crit_edge.i.us.i.thread

._crit_edge.i.us.i.thread:                        ; preds = %bb.aa, %bb.ac, %bb.ae, %bb.ag, %._crit_edge.i.us.i
  %i.er = sub i64 %.sroa.01.0.i67.i.us.i, %i.bh
  br label %.backedge.i.us.i

.backedge.i.us.i:                                 ; preds = %._crit_edge.i.us.i.thread, %.loopexit.i.us.i, %bb.s
  %.sroa.01.0.i.be.i.us.i = phi i64 [ %i.cn, %bb.s ], [ %i.ds, %.loopexit.i.us.i ], [ %i.er, %._crit_edge.i.us.i.thread ] ; 2 uses
  %.not31.i.i.us.i = icmp ult i64 %.sroa.01.0.i.be.i.us.i, 4
  br i1 %.not31.i.i.us.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph69.i.split.us.i

.lr.ph69.i.split.i:                               ; preds = %.lr.ph69.i.i
  %.not33.i.i.i = icmp eq i64 %.6.i.i.i, 0
  br i1 %.not33.i.i.i, label %.lr.ph69.i.split.split.us.split.us.i.preheader, label %.lr.ph69.i.split.split.i

.lr.ph69.i.split.split.us.split.us.i.preheader:   ; preds = %.lr.ph69.i.split.i
  %i.es = add nuw i64 %1, 4                       ; 2 uses
  br label %.lr.ph69.i.split.split.us.split.us.i

.lr.ph69.i.split.split.us.split.us.i:             ; preds = %.lr.ph69.i.split.split.us.split.us.i.preheader, %.backedge.i.us71.us.i
  %.sroa.01.0.i67.i.us58.us.i = phi i64 [ %.sroa.01.0.i.be.i.us72.us.i, %.backedge.i.us71.us.i ], [ %1, %.lr.ph69.i.split.split.us.split.us.i.preheader ] ; 8 uses
  %i.et = add i64 %.sroa.01.0.i67.i.us58.us.i, -4 ; 6 uses
  %i.eu = icmp ult i64 %i.et, %1
  br i1 %i.eu, label %bb.ah, label %.split49.us.i

bb.ah:                                            ; preds = %.lr.ph69.i.split.split.us.split.us.i
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !4927, !noalias !4928, !noundef !5 ; 2 uses
  %i.ex = and i8 %i.ew, 63
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = and i64 %i.ez, %i.be
  %.not32.i.i.us59.us.i = icmp eq i64 %i.fa, 0
  br i1 %.not32.i.i.us59.us.i, label %.backedge.i.us71.us.i, label %.split.us.us86.i

.split.us.us86.i:                                 ; preds = %bb.ah
  %.not34.i.i.us60.us.i = icmp eq i8 %i.c, %i.ew
  br i1 %.not34.i.i.us60.us.i, label %.lr.ph62.i.us64.us.i.preheader, label %.loopexit.i.us61.us.i

.lr.ph62.i.us64.us.i.preheader:                   ; preds = %.split.us.us86.i
  %i.fb = sub i64 %i.es, %.sroa.01.0.i67.i.us58.us.i ; 3 uses
  %exitcond.not = icmp eq i64 %i.es, %.sroa.01.0.i67.i.us58.us.i
  %exitcond.1.not = icmp eq i64 %i.fb, 1
  %or.cond = or i1 %exitcond.not, %exitcond.1.not
  br i1 %or.cond, label %.split53.us.i, label %bb.ai

.loopexit.i.us61.us.i:                            ; preds = %.split.us.us86.i
  %.reass.us.us.i = add i64 %.sroa.01.0.i67.i.us58.us.i, -1
  br label %.backedge.i.us71.us.i

bb.ai:                                            ; preds = %.lr.ph62.i.us64.us.i.preheader
  %i.fc = getelementptr i8, ptr %0, i64 %.sroa.01.0.i67.i.us58.us.i
  %i.fd = getelementptr i8, ptr %i.fc, i64 -3
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.ff = icmp eq i8 %i.e, %i.fe
  br i1 %i.ff, label %.lr.ph62.i.us64.us.i.2, label %._crit_edge.i.loopexit.us67.us.i

.lr.ph62.i.us64.us.i.2:                           ; preds = %bb.ai
  %exitcond.2.not = icmp eq i64 %i.fb, 2
  br i1 %exitcond.2.not, label %.split53.us.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph62.i.us64.us.i.2
  %i.fg = getelementptr i8, ptr %0, i64 %.sroa.01.0.i67.i.us58.us.i
  %i.fh = getelementptr i8, ptr %i.fg, i64 -2
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.fj = icmp eq i8 %i.g, %i.fi
  br i1 %i.fj, label %.lr.ph62.i.us64.us.i.3, label %._crit_edge.i.loopexit.us67.us.i

.lr.ph62.i.us64.us.i.3:                           ; preds = %bb.aj
  %exitcond.3.not = icmp eq i64 %i.fb, 3
  br i1 %exitcond.3.not, label %.split53.us.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph62.i.us64.us.i.3
  %i.fk = getelementptr i8, ptr %0, i64 %.sroa.01.0.i67.i.us58.us.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.fn = icmp eq i8 %i.h, %i.fm
  br i1 %i.fn, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %._crit_edge.i.loopexit.us67.us.i

._crit_edge.i.loopexit.us67.us.i:                 ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.fo = sub i64 %.sroa.01.0.i67.i.us58.us.i, %i.bh
  br label %.backedge.i.us71.us.i

.backedge.i.us71.us.i:                            ; preds = %._crit_edge.i.loopexit.us67.us.i, %.loopexit.i.us61.us.i, %bb.ah
  %.sroa.01.0.i.be.i.us72.us.i = phi i64 [ %i.et, %bb.ah ], [ %.reass.us.us.i, %.loopexit.i.us61.us.i ], [ %i.fo, %._crit_edge.i.loopexit.us67.us.i ] ; 2 uses
  %.not31.i.i.us73.us.i = icmp ult i64 %.sroa.01.0.i.be.i.us72.us.i, 4
  br i1 %.not31.i.i.us73.us.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph69.i.split.split.us.split.us.i

.lr.ph69.i.split.split.i:                         ; preds = %.lr.ph69.i.split.i, %.backedge.i.i
  %.sroa.01.0.i67.i.i = phi i64 [ %i.fp, %.backedge.i.i ], [ %1, %.lr.ph69.i.split.i ]
  %i.fp = add nsw i64 %.sroa.01.0.i67.i.i, -4     ; 6 uses
  %i.fq = icmp ult i64 %i.fp, %1
  br i1 %i.fq, label %bb.al, label %.split49.us.i

bb.al:                                            ; preds = %.lr.ph69.i.split.split.i
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !4927, !noalias !4928, !noundef !5
  %i.ft = and i8 %i.fs, 63
  %i.fu = zext nneg i8 %i.ft to i64
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.be
  %.not32.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not32.i.i.i, label %.backedge.i.i, label %.split.i

.backedge.i.i:                                    ; preds = %bb.al
  %.not31.i.i.i = icmp ult i64 %i.fp, 4
  br i1 %.not31.i.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph69.i.split.split.i

.split49.us.i:                                    ; preds = %.lr.ph69.i.split.split.i, %.lr.ph69.i.split.split.us.split.us.i, %.lr.ph69.i.split.us.i
  %.us-phi50.i = phi i64 [ %i.cn, %.lr.ph69.i.split.us.i ], [ %i.et, %.lr.ph69.i.split.split.us.split.us.i ], [ %i.fp, %.lr.ph69.i.split.split.i ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi50.i, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #42
  unreachable

.split.i:                                         ; preds = %bb.al
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #42
  unreachable

.split45.us.i:                                    ; preds = %.lr.ph69.3, %.lr.ph69.2, %.lr.ph69.1, %.lr.ph69
  %.lcssa74 = phi i64 [ %3, %.lr.ph69 ], [ %i.cw, %.lr.ph69.1 ], [ %i.dc, %.lr.ph69.2 ], [ %i.di, %.lr.ph69.3 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa74, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #42
  unreachable

.split53.us.i.loopexit:                           ; preds = %.lr.ph62.i.us.i.3, %.lr.ph62.i.us.i.2, %.lr.ph62.i.us.i.1, %.lr.ph62.i.us.i
  %i.fx = add i64 %i.bx, %.sroa.01.0.i67.i.us.i
  %umax169.le = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.fx)
  br label %.split53.us.i

.split53.us.i:                                    ; preds = %.lr.ph62.i.us64.us.i.preheader, %.lr.ph62.i.us64.us.i.2, %.lr.ph62.i.us64.us.i.3, %.split53.us.i.loopexit
  %.us-phi54.i = phi i64 [ %umax169.le, %.split53.us.i.loopexit ], [ %1, %.lr.ph62.i.us64.us.i.3 ], [ %1, %.lr.ph62.i.us64.us.i.2 ], [ %1, %.lr.ph62.i.us64.us.i.preheader ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi54.i, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #42
  unreachable

.lr.ph60.i.i:                                     ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4932)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.6.i.i.i, i64 range(i64 0, -9223372036854775808) 4) ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.backedge18.i.i, %.lr.ph60.i.i
  %.sroa.01.0.i459.i.i = phi i64 [ %1, %.lr.ph60.i.i ], [ %.sroa.01.0.i4.be.i.i, %.backedge18.i.i ] ; 5 uses
  %.sroa.011.0.i58.i.i = phi i64 [ 4, %.lr.ph60.i.i ], [ %.sroa.011.0.i.be.i.i, %.backedge18.i.i ] ; 3 uses
  %i.fy = add i64 %.sroa.01.0.i459.i.i, -4        ; 8 uses
  %i.fz = icmp ult i64 %i.fy, %1
  br i1 %i.fz, label %bb.an, label %.noexc9

bb.an:                                            ; preds = %bb.am
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !4933, !noalias !4934, !noundef !5 ; 2 uses
  %i.gc = and i8 %i.gb, 63
  %i.gd = zext nneg i8 %i.gc to i64
  %i.ge = shl nuw i64 1, %i.gd
  %i.gf = and i64 %i.ge, %i.be
  %.not37.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not37.i.i.i, label %.backedge18.i.i, label %bb.ao

.backedge18.i.i:                                  ; preds = %.loopexit16.i.i, %.thread.i.i, %bb.an
  %.sroa.011.0.i.be.i.i = phi i64 [ 4, %bb.an ], [ 4, %.loopexit16.i.i ], [ %i.bh, %.thread.i.i ]
  %.sroa.01.0.i4.be.i.i = phi i64 [ %i.fy, %bb.an ], [ %i.hb, %.loopexit16.i.i ], [ %i.ha, %.thread.i.i ] ; 2 uses
  %.not36.i.i.i = icmp ult i64 %.sroa.01.0.i4.be.i.i, 4
  br i1 %.not36.i.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %bb.am

.noexc9:                                          ; preds = %bb.am
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @442) #42
  unreachable

bb.ao:                                            ; preds = %bb.an
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.011.0.i58.i.i, i64 %.6.i.i.i) ; 4 uses
  %i.gg = add i64 %.sroa.01.0.i459.i.i, -5
  %.first_iter = icmp ult i64 %..i.i.i, 5
  %.not38.i.i.i65 = icmp eq i64 %..i.i.i, 0
  br i1 %.not38.i.i.i65, label %.critedge.i7.i.i, label %.lr.ph

bb.ap:                                            ; preds = %bb.ar
  %.not38.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not38.i.i.i, label %.critedge.i7.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %bb.ap
  %.sroa.015.0.i.i.i66 = phi i64 [ %i.gh, %bb.ap ], [ %..i.i.i, %bb.ao ] ; 3 uses
  %i.gh = add i64 %.sroa.015.0.i.i.i66, -1        ; 5 uses
  br i1 %.first_iter, label %bb.aq, label %.noexc10

bb.aq:                                            ; preds = %.lr.ph
  %i.gi = add i64 %i.gg, %.sroa.015.0.i.i.i66     ; 3 uses
  %i.gj = icmp ult i64 %i.gi, %1
  br i1 %i.gj, label %bb.ar, label %.noexc11

.noexc10:                                         ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gh, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #42
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 %i.gh
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !4935, !noalias !4936, !noundef !5
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 %i.gi
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !4933, !noalias !4934, !noundef !5
  %i.go = icmp eq i8 %i.gl, %i.gn
  br i1 %i.go, label %bb.ap, label %.loopexit16.i.i

.noexc11:                                         ; preds = %bb.aq
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gi, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @444) #42
  unreachable

.critedge.i7.i.i:                                 ; preds = %bb.ap, %bb.ao
  %.sroa.015.0.i.i.i.lcssa = phi i64 [ %..i.i.i, %bb.ao ], [ %i.gh, %bb.ap ]
  %.not39.i.i.i = icmp eq i8 %i.c, %i.gb
  br i1 %.not39.i.i.i, label %.preheader14.i.i, label %.loopexit16.i.i

.preheader14.i.i:                                 ; preds = %.critedge.i7.i.i
  %i.gp = icmp ult i64 %.6.i.i.i, %.sroa.011.0.i58.i.i
  br i1 %i.gp, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

.lr.ph.i.i:                                       ; preds = %.preheader14.i.i, %bb.au
  %.sroa.021.0.i55.i.i = phi i64 [ %i.gz, %bb.au ], [ %.6.i.i.i, %.preheader14.i.i ] ; 4 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.021.0.i55.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %.noexc12, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i
  %i.gq = add nuw i64 %.sroa.021.0.i55.i.i, %i.fy ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %1
  br i1 %i.gr, label %bb.at, label %.noexc13

.noexc12:                                         ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @445) #42
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.021.0.i55.i.i
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !4935, !noalias !4936, !noundef !5
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 %i.gq
  %i.gv = load i8, ptr %i.gu, align 1, !alias.scope !4933, !noalias !4934, !noundef !5
  %i.gw = icmp eq i8 %i.gt, %i.gv
  br i1 %i.gw, label %bb.au, label %.thread.i.i

.noexc13:                                         ; preds = %bb.as
  %i.gx = add i64 %.6.i.i.i, -4
  %i.gy = add i64 %i.gx, %.sroa.01.0.i459.i.i
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.gy)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #42
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.gz = add i64 %.sroa.021.0.i55.i.i, 1         ; 2 uses
  %exitcond119.not.i.i = icmp eq i64 %i.gz, %.sroa.011.0.i58.i.i
  br i1 %exitcond119.not.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.at
  %i.ha = sub i64 %.sroa.01.0.i459.i.i, %i.bh
  br label %.backedge18.i.i

.loopexit16.i.i:                                  ; preds = %bb.ar, %.critedge.i7.i.i
  %.sroa.015.0.i.i.i36 = phi i64 [ %.sroa.015.0.i.i.i.lcssa, %.critedge.i7.i.i ], [ %.sroa.015.0.i.i.i66, %bb.ar ]
  %.neg.i5.i.i = add i64 %.sroa.01.0.i459.i.i, %i.bt
  %i.hb = add i64 %.neg.i5.i.i, %.sroa.015.0.i.i.i36
  br label %.backedge18.i.i

_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit: ; preds = %bb.a
  %i.hc = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.hd = getelementptr i8, ptr %2, i64 3
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !4937, !noundef !5
  %i.hf = zext i8 %i.he to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hc) ]
  %i.hg = getelementptr i8, ptr %2, i64 2
  %.sroa.5.0.peel.i = load i8, ptr %i.hg, align 1, !alias.scope !4937, !noundef !5
  %i.hh = zext i8 %.sroa.5.0.peel.i to i32
  %i.hi = getelementptr i8, ptr %2, i64 1
  %.sroa.5.0.i = load i8, ptr %i.hi, align 1, !alias.scope !4937, !noundef !5
  %i.hj = shl nuw nsw i32 %i.hf, 2
  %i.hk = shl nuw nsw i32 %i.hh, 1
  %i.hl = add nuw nsw i32 %i.hj, %i.hk
  %i.hm = zext i8 %.sroa.5.0.i to i32
  %i.hn = add nuw nsw i32 %i.hl, %i.hm
  %.sroa.5.0.i.1 = load i8, ptr %2, align 1, !alias.scope !4937, !noundef !5
  %i.ho = shl nuw nsw i32 %i.hn, 1
  %i.hp = zext i8 %.sroa.5.0.i.1 to i32
  %i.hq = add nuw nsw i32 %i.ho, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.hs = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.hr, ptr noundef nonnull readonly %0), !noalias !4938
  %i.ht = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.hc, ptr noundef nonnull readonly %2) ; 5 uses
  %i.hu = icmp ugt i64 %i.ht, %i.hs
  br i1 %i.hu, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %bb.av

bb.av:                                            ; preds = %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit
  %i.hv = sub nsw i64 0, %i.ht
  %i.hw = getelementptr inbounds i8, ptr %i.hr, i64 %i.hv ; 2 uses
  %i.hx = icmp sgt i64 %i.ht, 0
  br i1 %i.hx, label %.lr.ph.i.i17, label %.preheader.i.i.preheader

.lr.ph.i.i17:                                     ; preds = %bb.av, %.lr.ph.i.i17
  %.sroa.09.02.i.i = phi ptr [ %i.hy, %.lr.ph.i.i17 ], [ %i.hr, %bb.av ]
  %.sroa.012.01.i.i = phi i32 [ %i.ic, %.lr.ph.i.i17 ], [ 0, %bb.av ]
  %i.hy = getelementptr inbounds i8, ptr %.sroa.09.02.i.i, i64 -1 ; 3 uses
  %i.hz = load i8, ptr %i.hy, align 1, !alias.scope !4939, !noalias !4938, !noundef !5
  %i.ia = shl i32 %.sroa.012.01.i.i, 1
  %i.ib = zext i8 %i.hz to i32
  %i.ic = add i32 %i.ia, %i.ib                    ; 2 uses
  %i.id = icmp ult ptr %i.hw, %i.hy
  br i1 %i.id, label %.lr.ph.i.i17, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i17, %bb.av
  %.sroa.012.1.i.i.ph = phi i32 [ 0, %bb.av ], [ %i.ic, %.lr.ph.i.i17 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.ay
  %.sroa.012.1.i.i = phi i32 [ %i.ip, %bb.ay ], [ %.sroa.012.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.ig, %bb.ay ], [ %i.hw, %.preheader.i.i.preheader ] ; 4 uses
  %i.ie = icmp eq i32 %i.hq, %.sroa.012.1.i.i
  br i1 %i.ie, label %bb.ax, label %bb.aw, !prof !6

bb.aw:                                            ; preds = %bb.ax, %.preheader.i.i
  %.not.i.i = icmp ugt ptr %.sroa.01.0.i.i, %0
  br i1 %.not.i.i, label %bb.ay, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

bb.ax:                                            ; preds = %.preheader.i.i
  %i.if = tail call noundef zeroext i1 @_RNvNtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarp12is_equal_raw(ptr noundef nonnull %.sroa.01.0.i.i, ptr noundef nonnull readonly %2, i64 noundef %i.ht) #48
  br i1 %i.if, label %bb.az, label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  %i.ig = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -1 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ht
end_hunk_0
