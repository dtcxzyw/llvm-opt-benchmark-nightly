Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/nm.nm.2154a145be2cfcfb-cgu.7?download=true
inline.NumInlined: 183
inline.NumDeleted: 76
begin_hunk_0_@_RINvMs3_NtCseHTIzroA4w0_6object4readNtB6_8FileKind5parseRShECs2RpUvwn4Ihr_2nm:bb.a
  %i.aa = icmp eq i8 %i.i, -2
  %or.cond17.i = and i1 %or.cond16.i, %i.aa
  br i1 %or.cond17.i, label %bb.x, label %bb.d

bb.j:                                             ; preds = %bb.c
  %i.ab = icmp eq i8 %i.e, -6
  %i.ac = icmp eq i8 %i.g, -19
  %or.cond18.i = and i1 %i.ab, %i.ac
  %i.ad = icmp eq i8 %i.i, -2
  %or.cond19.i = and i1 %or.cond18.i, %i.ad
  br i1 %or.cond19.i, label %bb.ac, label %bb.d

bb.k:                                             ; preds = %bb.c
  %i.ae = icmp eq i8 %i.e, -2
  %i.af = icmp eq i8 %i.g, -70
  %or.cond20.i = and i1 %i.ae, %i.af
  br i1 %or.cond20.i, label %bb.ad, label %bb.d

bb.l:                                             ; preds = %bb.c
  %i.ag = icmp eq i8 %i.e, 90
  br i1 %i.ag, label %bb.af, label %bb.d

bb.m:                                             ; preds = %bb.c
  %i.ah = icmp eq i8 %i.e, 1
  br i1 %i.ah, label %bb.x, label %bb.d

bb.n:                                             ; preds = %bb.c
  %i.ai = icmp eq i8 %i.e, -90
  br i1 %i.ai, label %bb.x, label %bb.d

bb.o:                                             ; preds = %bb.c
  %i.aj = icmp eq i8 %i.e, 1
  br i1 %i.aj, label %bb.x, label %bb.d

bb.p:                                             ; preds = %bb.c
  %i.ak = icmp eq i8 %i.e, 1
  br i1 %i.ak, label %bb.x, label %bb.d

bb.q:                                             ; preds = %bb.c
  %i.al = icmp eq i8 %i.e, 1
  br i1 %i.al, label %bb.x, label %bb.d

bb.r:                                             ; preds = %bb.c
  %i.am = icmp eq i8 %i.e, 1
  br i1 %i.am, label %bb.x, label %bb.d

bb.s:                                             ; preds = %bb.c
  %i.an = icmp eq i8 %i.e, 0
  %i.ao = and i8 %i.i, %i.g
  %i.ap = icmp eq i8 %i.ao, -1
  %or.cond22.i = and i1 %i.an, %i.ap
  br i1 %or.cond22.i, label %bb.ak, label %bb.d

bb.t:                                             ; preds = %bb.c
  switch i8 %i.e, label %bb.d [
    i8 -33, label %bb.x
    i8 -9, label %bb.ao
  ]

bb.u:                                             ; preds = %bb.e
  switch i8 %i.g, label %bb.d [
    i8 97, label %bb.v
    i8 116, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.aq = icmp eq i8 %i.i, 114
  %i.ar = icmp eq i8 %i.k, 99
  %or.cond.i = and i1 %i.aq, %i.ar
  %i.as = icmp eq i8 %i.m, 104
  %or.cond1.i = and i1 %or.cond.i, %i.as
  %i.at = icmp eq i8 %i.o, 62
  %or.cond2.i = and i1 %or.cond1.i, %i.at
  %i.au = icmp eq i8 %i.q, 10
  %or.cond3.i = and i1 %or.cond2.i, %i.au
  br i1 %or.cond3.i, label %bb.x, label %bb.d

bb.w:                                             ; preds = %bb.u
  %i.av = icmp eq i8 %i.i, 104
  %i.aw = icmp eq i8 %i.k, 105
  %or.cond4.i = and i1 %i.av, %i.aw
  %i.ax = icmp eq i8 %i.m, 110
  %or.cond5.i = and i1 %or.cond4.i, %i.ax
  %i.ay = icmp eq i8 %i.o, 62
  %or.cond6.i = and i1 %or.cond5.i, %i.ay
  %i.az = icmp eq i8 %i.q, 10
  %or.cond7.i = and i1 %or.cond6.i, %i.az
  br i1 %or.cond7.i, label %bb.x, label %bb.d

bb.x:                                             ; preds = %bb.ao, %_RINvNtNtNtCseHTIzroA4w0_6object4read4coff4file20anon_object_class_idRShECs2RpUvwn4Ihr_2nm.exit.i, %bb.al, %bb.aj, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.i, %bb.f, %bb.f
  %.sroa.099.0.i = phi i8 [ 14, %bb.ao ], [ 1, %bb.f ], [ 0, %bb.v ], [ 4, %bb.y ], [ 6, %bb.aa ], [ 5, %bb.z ], [ 8, %bb.ac ], [ 7, %bb.ab ], [ 10, %bb.ae ], [ %.sroa.099.1.i, %bb.aj ], [ 9, %bb.ad ], [ 13, %bb.t ], [ 3, %bb.al ], [ 0, %bb.w ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.f ], [ 7, %bb.i ], [ 2, %_RINvNtNtNtCseHTIzroA4w0_6object4read4coff4file20anon_object_class_idRShECs2RpUvwn4Ihr_2nm.exit.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.099.0.i, ptr %i.ba, align 8, !alias.scope !18
  store ptr null, ptr %0, align 8, !alias.scope !18
  br label %_RINvMs3_NtCseHTIzroA4w0_6object4readNtB6_8FileKind8parse_atRShECs2RpUvwn4Ihr_2nm.exit

bb.y:                                             ; preds = %bb.f
  %i.bb = icmp eq i8 %i.g, 108
  %i.bc = icmp eq i8 %i.i, 100
  %or.cond8.i = and i1 %i.bb, %i.bc
  %i.bd = icmp eq i8 %i.k, 95
  %or.cond9.i = and i1 %or.cond8.i, %i.bd
  %i.be = icmp eq i8 %i.m, 118
  %or.cond10.i = and i1 %or.cond9.i, %i.be
  %i.bf = icmp eq i8 %i.o, 49
  %or.cond11.i = and i1 %or.cond10.i, %i.bf
  %i.bg = icmp eq i8 %i.q, 32
  %or.cond12.i = and i1 %or.cond11.i, %i.bg
  br i1 %or.cond12.i, label %bb.x, label %bb.d

bb.z:                                             ; preds = %bb.g
  switch i8 %i.k, label %bb.d [
    i8 1, label %bb.x
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %bb.x

bb.ab:                                            ; preds = %bb.h
  switch i8 %i.i, label %bb.d [
    i8 -50, label %bb.x
    i8 -49, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.j
  br label %bb.x

bb.ad:                                            ; preds = %bb.k
  switch i8 %i.i, label %bb.d [
    i8 -66, label %bb.x
    i8 -65, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %bb.x

bb.af:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20
  call void @_RINvNtNtNtCseHTIzroA4w0_6object4read2pe4file21optional_header_magicRShECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !18
  %i.bh = load ptr, ptr %i.a, align 8, !noalias !20, !noundef !6
  %.not103.i = icmp eq ptr %i.bh, null
  br i1 %.not103.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  store ptr @1, ptr %0, align 8, !alias.scope !18
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 19, ptr %i.bi, align 8, !alias.scope !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  br label %_RINvMs3_NtCseHTIzroA4w0_6object4readNtB6_8FileKind8parse_atRShECs2RpUvwn4Ihr_2nm.exit

bb.ah:                                            ; preds = %bb.af
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bk = load i16, ptr %i.bj, align 8, !noalias !20, !noundef !6
  switch i16 %i.bk, label %bb.ag [
    i16 267, label %bb.aj
    i16 523, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.099.1.i = phi i8 [ 12, %bb.ai ], [ 11, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  br label %bb.x

bb.ak:                                            ; preds = %bb.s
  switch i8 %i.k, label %bb.d [
    i8 0, label %bb.al
    i8 2, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.bl = icmp eq i8 %i.m, 0
  br i1 %i.bl, label %bb.x, label %bb.d

bb.am:                                            ; preds = %bb.ak
  %i.bm = icmp eq i8 %i.m, 0
  br i1 %i.bm, label %bb.an, label %bb.d

bb.an:                                            ; preds = %bb.am
  %i.bn = tail call noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atNtNtBc_2pe16AnonObjectHeaderECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 0), !noalias !21 ; 7 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_RINvNtNtNtCseHTIzroA4w0_6object4read4coff4file20anon_object_class_idRShECs2RpUvwn4Ihr_2nm.exit.thread.i, label %_RINvNtNtNtCseHTIzroA4w0_6object4read4coff4file20anon_object_class_idRShECs2RpUvwn4Ihr_2nm.exit.i

_RINvNtNtNtCseHTIzroA4w0_6object4read4coff4file20anon_object_class_idRShECs2RpUvwn4Ihr_2nm.exit.i: ; preds = %bb.an
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %.sroa.10.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.10.1.copyload.i = load i8, ptr %.sroa.10.1..sroa_idx.i, align 1, !noalias !18
  %.sroa.11.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 17
  %.sroa.11.1.copyload.i = load i8, ptr %.sroa.11.1..sroa_idx.i, align 1, !noalias !18
  %.sroa.12.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 18
  %.sroa.12.1.copyload.i = load i8, ptr %.sroa.12.1..sroa_idx.i, align 1, !noalias !18
  %.sroa.13.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 19
  %.sroa.13.1.copyload.i = load ptr, ptr %.sroa.13.1..sroa_idx.i, align 1, !noalias !18
  %.sroa.22.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 27
  %.sroa.22.1.copyload.i = load i8, ptr %.sroa.22.1..sroa_idx.i, align 1, !noalias !18
  %i.bp = load <4 x i8>, ptr %i.bo, align 1, !noalias !18
  %.fr = freeze <4 x i8> %i.bp
  %.sroa.10.1.copyload.i.fr = freeze i8 %.sroa.10.1.copyload.i
  %i.bq = icmp eq i8 %.sroa.10.1.copyload.i.fr, -18
  %.sroa.11.1.copyload.i.fr = freeze i8 %.sroa.11.1.copyload.i
  %i.br = icmp eq i8 %.sroa.11.1.copyload.i.fr, -70
  %.sroa.12.1.copyload.i.fr = freeze i8 %.sroa.12.1.copyload.i
  %i.bs = icmp eq i8 %.sroa.12.1.copyload.i.fr, -87
  %.sroa.22.1.copyload.i.fr = freeze i8 %.sroa.22.1.copyload.i
  %i.bt = icmp eq i8 %.sroa.22.1.copyload.i.fr, -72
  %i.bu = icmp eq ptr %.sroa.13.1.copyload.i, inttoptr (i64 -2547793880193913013 to ptr)
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.bv = icmp eq i32 %.fr.scalar, -776298041
  %op.rdx = and i1 %i.bv, %i.bq
  %3 = and i1 %op.rdx, %i.br
  %op.rdx4 = and i1 %3, %i.bs
  %4 = and i1 %op.rdx4, %i.bt
  %op.rdx5 = select i1 %4, i1 %i.bu, i1 false
  br i1 %op.rdx5, label %bb.x, label %_RINvNtNtNtCseHTIzroA4w0_6object4read4coff4file20anon_object_class_idRShECs2RpUvwn4Ihr_2nm.exit.thread.i

_RINvNtNtNtCseHTIzroA4w0_6object4read4coff4file20anon_object_class_idRShECs2RpUvwn4Ihr_2nm.exit.thread.i: ; preds = %_RINvNtNtNtCseHTIzroA4w0_6object4read4coff4file20anon_object_class_idRShECs2RpUvwn4Ihr_2nm.exit.i, %bb.an
  store ptr @2, ptr %0, align 8, !alias.scope !18
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 24, ptr %i.bw, align 8, !alias.scope !18
  br label %_RINvMs3_NtCseHTIzroA4w0_6object4readNtB6_8FileKind8parse_atRShECs2RpUvwn4Ihr_2nm.exit

bb.ao:                                            ; preds = %bb.t
  br label %bb.x

_RINvMs3_NtCseHTIzroA4w0_6object4readNtB6_8FileKind8parse_atRShECs2RpUvwn4Ihr_2nm.exit: ; preds = %bb.b, %bb.d, %bb.x, %bb.ag, %_RINvNtNtNtCseHTIzroA4w0_6object4read4coff4file20anon_object_class_idRShECs2RpUvwn4Ihr_2nm.exit.thread.i
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2RpUvwn4Ihr_2nm(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void %0(), !inline_history !22
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !23
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !7, !alias.scope !26, !noundef !6 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !26
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !26
  %i.j = load i64, ptr %i.a, align 8, !range !8, !noalias !26, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !9, !noalias !26, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #20
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !26, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !26
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16), (28, 29)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(28) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val = load i32, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call i32 @llvm.bswap.i32(i32 %.val)
  %.sroa.03.0.i.i = select i1 %2, i32 %i.b, i32 %.val ; 2 uses
  %i.c = zext i32 %.sroa.03.0.i.i to i64          ; 2 uses
  %i.d = icmp eq i32 %.sroa.03.0.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %5, 28                           ; 3 uses
  %i.f = icmp ult i64 %4, %i.e
  %i.g = sub nuw nsw i64 %4, %i.e
  %.not.i = icmp samesign ult i64 %i.g, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %or.cond = select i1 %i.f, i1 true, i1 %.not.i
  br i1 %or.cond, label %select.unfold, label %bb.c

select.unfold:                                    ; preds = %bb.b
  store ptr @5, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 38, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14 = load i32, ptr %i.j, align 1           ; 2 uses
  %i.k = tail call i32 @llvm.bswap.i32(i32 %.val14)
  %.sroa.03.0.i.i15 = select i1 %2, i32 %i.k, i32 %.val14
  %i.l = zext i1 %2 to i8
  store ptr %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 28, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.03.0.i.i15, ptr %.sroa.613.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %select.unfold
  %.sink = phi i8 [ %i.l, %bb.c ], [ 2, %select.unfold ]
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sink, ptr %.sroa.7.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader5parseRShECs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atINtNtBc_5macho12MachHeader32NtNtBc_6endian10EndiannessEECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @7, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 39, ptr %i.c, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.val = load i32, ptr %i.a, align 1
  switch i32 %.val, label %bb.d [
    i32 -17958194, label %bb.e
    i32 -822415874, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store ptr @6, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 25, ptr %i.d, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object5macho12MachHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16), (28, 29)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(32) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val = load i32, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call i32 @llvm.bswap.i32(i32 %.val)
  %.sroa.03.0.i.i = select i1 %2, i32 %i.b, i32 %.val ; 2 uses
  %i.c = zext i32 %.sroa.03.0.i.i to i64          ; 2 uses
  %i.d = icmp eq i32 %.sroa.03.0.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %5, 32                           ; 3 uses
  %i.f = icmp ult i64 %4, %i.e
  %i.g = sub nuw nsw i64 %4, %i.e
  %.not.i = icmp samesign ult i64 %i.g, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %or.cond = select i1 %i.f, i1 true, i1 %.not.i
  br i1 %or.cond, label %select.unfold, label %bb.c

select.unfold:                                    ; preds = %bb.b
  store ptr @5, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 38, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14 = load i32, ptr %i.j, align 1           ; 2 uses
  %i.k = tail call i32 @llvm.bswap.i32(i32 %.val14)
  %.sroa.03.0.i.i15 = select i1 %2, i32 %i.k, i32 %.val14
  %i.l = zext i1 %2 to i8
  store ptr %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 32, ptr %.sroa.512.0..sroa_idx, align 8
end_hunk_0
