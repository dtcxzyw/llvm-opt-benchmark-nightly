Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i32 noundef range(i32 0, 255) %3, i32 noundef range(i32 0, 2) %4, i32 %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %6, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %8, i64 noundef %9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %10, i1 noundef zeroext %11, i1 noundef zeroext %12, i1 noundef zeroext %13) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !21
  %i.c = sub i64 %9, %i.b                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.e = load i32, ptr %i.d, align 8, !noundef !21
  %i.f = and i32 %i.e, 2
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %12, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0 = phi i64 [ %i.c, %bb.a ], [ %i.k, %bb.d ] ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.i(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4, i32 %5, i64 noundef %9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %10) #45
  %i.j = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.j, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.k = sub i64 0, %i.c
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.m(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5) #45
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  br i1 %13, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.c, %.split
  br i1 %11, label %bb.s, label %bb.r

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.n = icmp slt i64 %.sroa.0.0, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !21, !nonnull !21 ; 3 uses
  br i1 %i.n, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.r(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  tail call void %i.p(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @372, i64 noundef 1, i8 noundef 5) #45
  %i.s = icmp samesign ult i64 %.sroa.0.0, 128
  br i1 %i.s, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void %i.p(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5) #45
  %i.t = sub i64 0, %.sroa.0.0                    ; 6 uses
  %i.u = icmp slt i64 %i.t, 129
  br i1 %i.u, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.v = icmp samesign ult i64 %.sroa.0.0, 32768
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = icmp samesign ult i64 %.sroa.0.0, 2147483648
  %. = select i1 %i.w, i8 4, i8 6
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.p, %bb.k, %bb.l, %bb.m, %bb.j
  %.sroa.012.0 = phi i8 [ 0, %bb.j ], [ %.42, %bb.p ], [ 0, %bb.k ], [ 2, %bb.o ], [ 2, %bb.l ], [ %., %bb.m ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.j ], [ %i.t, %bb.p ], [ %i.t, %bb.k ], [ %i.t, %bb.o ], [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.m ]
  br i1 %13, label %bb.q, label %.split

bb.o:                                             ; preds = %bb.k
  %i.x = icmp samesign ult i64 %i.t, 32769
  br i1 %i.x, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = icmp samesign ult i64 %i.t, 2147483649
  %.42 = select i1 %i.y, i8 4, i8 6
  br label %bb.n

.split:                                           ; preds = %bb.q, %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 51
  %i.aa = load i8, ptr %i.z, align 1, !range !27, !noundef !21
  %i.ab = shl nuw nsw i8 %i.aa, 2
  %spec.select = zext nneg i8 %i.ab to i32
  %i.ac = tail call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %8, i64 noundef %.sroa.0.1, i32 noundef 64, i32 noundef %spec.select) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.ag(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4, i32 %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.ae, i64 noundef %.sroa.0.0, i8 noundef %.sroa.012.0, i8 noundef 7) #45
  br label %bb.g

bb.q:                                             ; preds = %bb.n
  tail call void %i.p(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
  br label %.split

bb.r:                                             ; preds = %bb.x, %bb.g
  ret void

bb.s:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !21, !nonnull !21 ; 3 uses
  tail call void %i.ai(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
  tail call void %i.ai(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @373, i64 noundef 1, i8 noundef 6) #45
  %i.aj = icmp ult i64 %9, 65536
  br i1 %i.aj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = icmp ult i64 %9, 4294967296
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 51
  %i.am = load i8, ptr %i.al, align 1, !range !27, !noundef !21
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  br i1 %i.ak, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 51
  %i.ap = load i8, ptr %i.ao, align 1, !range !27, !noundef !21
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.split36, label %.split37

.split37:                                         ; preds = %bb.u
  %i.ar = tail call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %8, i64 noundef %9, i32 noundef 16, i32 noundef 2)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br i1 %i.an, label %.split28, label %.split29

.split29:                                         ; preds = %bb.v
  %i.as = tail call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %8, i64 noundef %9, i32 noundef 64, i32 noundef 2)
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  br i1 %i.an, label %.split32, label %.split33

.split33:                                         ; preds = %bb.w
  %i.at = tail call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %8, i64 noundef %9, i32 noundef 32, i32 noundef 2)
  br label %bb.x

.split28:                                         ; preds = %bb.v
  %i.au = tail call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %8, i64 noundef %9, i32 noundef 64, i32 noundef 6)
  br label %bb.x

.split32:                                         ; preds = %bb.w
  %i.av = tail call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %8, i64 noundef %9, i32 noundef 32, i32 noundef 6)
  br label %bb.x

bb.x:                                             ; preds = %.split36, %.split37, %.split32, %.split33, %.split28, %.split29
  %phi.call38.pn = phi { ptr, i64 } [ %i.at, %.split33 ], [ %i.as, %.split29 ], [ %i.au, %.split28 ], [ %i.av, %.split32 ], [ %i.ay, %.split36 ], [ %i.ar, %.split37 ] ; 2 uses
  %.sroa.012.1 = phi i8 [ 5, %.split33 ], [ 7, %.split29 ], [ 7, %.split28 ], [ 5, %.split32 ], [ 3, %.split36 ], [ 3, %.split37 ]
  %.sroa.014.0 = extractvalue { ptr, i64 } %phi.call38.pn, 0
  %.sroa.4.0 = extractvalue { ptr, i64 } %phi.call38.pn, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.ax(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4, i32 %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.014.0, i64 noundef %.sroa.4.0, i64 noundef %9, i8 noundef %.sroa.012.1, i8 noundef 7) #45
  tail call void %i.ai(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @374, i64 noundef 1, i8 noundef 6) #45
  br label %bb.r

.split36:                                         ; preds = %bb.u
  %i.ay = tail call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %8, i64 noundef %9, i32 noundef 16, i32 noundef 6)
  br label %bb.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x867decoder8handlersNtB4_20OpCodeHandler_Simple6decode(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) initializes((32, 34)) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !range !28, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handlerNtB4_18DeclareDataHandler6encode(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(152) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !noundef !21
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 15
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !noundef !21 ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.f, %i.i
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 15
  %3 = load i8, ptr %i.k, align 1
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = load i64, ptr %4, align 8                  ; 7 uses
  %i.l = lshr i64 %5, 48
  %i.m = trunc i64 %i.l to i8
  %i.n = lshr i64 %5, 40
  %i.o = trunc i64 %i.n to i8
  %i.p = lshr i64 %5, 32
  %i.q = trunc i64 %i.p to i8
  %i.r = lshr i64 %5, 24
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %5, 16
  %i.u = trunc i64 %i.t to i8
  %i.v = lshr i64 %5, 8
  %i.w = trunc i64 %i.v to i8
  %i.x = trunc i64 %5 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 27
  %6 = load i8, ptr %i.y, align 1
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %8 = load i32, ptr %7, align 8                  ; 3 uses
  %i.z = lshr i32 %8, 16
  %i.aa = trunc i32 %i.z to i8
  %i.ab = lshr i32 %8, 8
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = trunc i32 %8 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit10
  %.sroa.01.024 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit10 ] ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.01.024, 1        ; 2 uses
  switch i64 %.sroa.01.024, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction26try_get_declare_byte_value.exit [
    i64 0, label %bb.s
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  br label %bb.s

bb.f:                                             ; preds = %bb.b
  br label %bb.s

bb.g:                                             ; preds = %bb.b
  br label %bb.s

bb.h:                                             ; preds = %bb.b
  br label %bb.s

bb.i:                                             ; preds = %bb.b
  br label %bb.s

bb.j:                                             ; preds = %bb.b
  br label %bb.s

bb.k:                                             ; preds = %bb.b
  br label %bb.s

bb.l:                                             ; preds = %bb.b
  br label %bb.s

bb.m:                                             ; preds = %bb.b
  br label %bb.s

bb.n:                                             ; preds = %bb.b
  br label %bb.s

bb.o:                                             ; preds = %bb.b
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  br label %bb.s

bb.q:                                             ; preds = %bb.b
  br label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit11: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit10, %bb.a, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction26try_get_declare_byte_value.exit
  ret void

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction26try_get_declare_byte_value.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9990)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !9990, !noundef !21 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit11

bb.r:                                             ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction26try_get_declare_byte_value.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9991)
  %i.av = load i64, ptr %i.au, align 8, !range !22, !alias.scope !9992, !noundef !21
  %i.aw = icmp samesign ult i64 %i.av, 31
  br i1 %i.aw, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i: ; preds = %bb.r
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 1)
  %i.ax = load i64, ptr %i.aq, align 8, !alias.scope !9993, !noundef !21 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i, %bb.r
  %i.az = phi i64 [ %i.ax, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i ], [ 0, %bb.r ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !9993, !nonnull !21, !noundef !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.bc, ptr noundef nonnull readonly align 1 dereferenceable(31) @375, i64 31, i1 false), !noalias !9993
  %i.bd = add nuw i64 %i.az, 31
  store i64 %i.bd, ptr %i.aq, align 8, !alias.scope !9993
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit11

bb.s:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i = phi i8 [ %3, %bb.q ], [ %i.aj, %bb.c ], [ %i.ah, %bb.d ], [ %i.af, %bb.e ], [ %i.ad, %bb.f ], [ %i.ac, %bb.g ], [ %i.aa, %bb.h ], [ %6, %bb.i ], [ %i.x, %bb.j ], [ %i.w, %bb.k ], [ %i.u, %bb.l ], [ %i.s, %bb.m ], [ %i.q, %bb.n ], [ %i.o, %bb.o ], [ %i.m, %bb.p ], [ %i.al, %bb.b ]
  %i.be = load i64, ptr %i.am, align 8, !alias.scope !9994, !noundef !21 ; 3 uses
  %i.bf = load i64, ptr %1, align 8, !range !22, !alias.scope !9994, !noundef !21
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit10

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #44
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit10: ; preds = %bb.t, %bb.s
  %i.bh = load ptr, ptr %i.an, align 8, !alias.scope !9994, !nonnull !21, !noundef !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be
  store i8 %.sroa.0.0.i, ptr %i.bi, align 1
  %i.bj = add i64 %i.be, 1
  store i64 %i.bj, ptr %i.am, align 8, !alias.scope !9994
  %i.bk = load i64, ptr %i.ao, align 8, !noundef !21
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.ao, align 8
  %exitcond.not = icmp eq i64 %i.ap, %i.j
  br i1 %exitcond.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit11, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x867encoder7op_codeNtB4_10OpCodeInfo3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, i16 noundef range(i16 0, 4936) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [4 x i8], align 4                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [4 x i8], align 4                 ; 25 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [1 x i8], align 1                ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [1 x i8], align 1                ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [1 x i8], align 1                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [1 x i8], align 1                ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [1 x i8], align 1                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [1 x i8], align 1                ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [88 x i8], align 8               ; 75 uses
  %i.aq = trunc i32 %3 to i16                     ; 2 uses
  %i.ar = lshr i32 %2, 30
  %i.as = trunc nuw nsw i32 %i.ar to i16          ; 2 uses
  %spec.select = and i16 %i.as, 1
  %i.at = or i16 %i.as, 2
  %i.au = icmp slt i32 %2, 0
  %.sroa.0.1 = select i1 %i.au, i16 %i.at, i16 %spec.select
  %i.av = and i32 %5, 3                           ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.av, 2
  %switch.select = select i1 %switch.selectcmp, i16 512, i16 960
  %switch.selectcmp457 = icmp eq i32 %i.av, 1
  %switch.select458 = select i1 %switch.selectcmp457, i16 64, i16 %switch.select
  %i.aw = or disjoint i16 %.sroa.0.1, %switch.select458 ; 7 uses
  %i.ax = trunc i32 %4 to i8
  %i.ay = and i8 %i.ax, 7                         ; 4 uses
  %i.az = icmp samesign ult i8 %i.ay, 6
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = lshr i32 %3, 20
  %i.bb = and i32 %i.ba, 3
  switch i32 %i.bb, label %default.unreachable436 [
    i32 0, label %bb.c
    i32 1, label %switch.lookup
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable436:                           ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %bb.et, %bb.cu, %bb.al, %bb.l, %bb.k, %switch.lookup, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.cl
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bc = lshr i32 %3, 30
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  %. = and i8 %i.bd, 1
  br label %switch.lookup

bb.d:                                             ; preds = %bb.a
  br label %switch.lookup

bb.e:                                             ; preds = %bb.a
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.c, %bb.e, %bb.d
  %.sroa.014.0 = phi i8 [ 2, %bb.a ], [ 4, %bb.e ], [ %., %bb.c ], [ 3, %bb.d ] ; 2 uses
  %i.be = and i32 %4, 24
  %switch.downshift = lshr i32 1075843072, %i.be
  %switch.masked = trunc i32 %switch.downshift to i8 ; 2 uses
  %i.bf = lshr i32 %4, 2
  %switch.shiftamt463 = and i32 %i.bf, 24
  %switch.downshift464 = lshr i32 1075843072, %switch.shiftamt463
  %switch.masked465 = trunc i32 %switch.downshift464 to i8 ; 3 uses
  %i.bg = icmp sgt i32 %3, -1
  %i.bh = lshr i32 %3, 27
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = and i8 %i.bi, 7                         ; 2 uses
  %.sroa.020.0 = select i1 %i.bg, i8 -1, i8 %i.bj ; 2 uses
  %i.bk = and i32 %4, 8192
  %i.bl = icmp eq i32 %i.bk, 0
  %.sroa.022.0 = select i1 %i.bl, i8 -1, i8 %i.bj ; 2 uses
  %i.bm = lshr i32 %4, 7
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = and i8 %i.bn, 31                        ; 3 uses
  %i.bp = icmp samesign ult i8 %i.bo, 19
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = lshr i32 %3, 24
  %i.br = trunc nuw i32 %i.bq to i8
  %i.bs = and i8 %i.br, 7                         ; 4 uses
  %i.bt = icmp ne i8 %i.bs, 7
  tail call void @llvm.assume(i1 %i.bt)
  switch i8 %i.bs, label %default.unreachable436 [
    i8 0, label %bb.k
    i8 1, label %bb.k
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

bb.f:                                             ; preds = %switch.lookup
  %i.bu = or disjoint i16 %i.aw, 4
  br label %bb.k

bb.g:                                             ; preds = %switch.lookup
  br label %bb.k

bb.h:                                             ; preds = %switch.lookup
  br label %bb.k

bb.i:                                             ; preds = %switch.lookup
  br label %bb.k

bb.j:                                             ; preds = %switch.lookup
  br label %bb.k

bb.k:                                             ; preds = %switch.lookup, %switch.lookup, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.013.0 = phi i8 [ 1, %bb.j ], [ 2, %switch.lookup ], [ 0, %bb.f ], [ 3, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 2, %switch.lookup ]
  %.sroa.011.0 = phi i8 [ 2, %bb.j ], [ %i.bs, %switch.lookup ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ %i.bs, %switch.lookup ] ; 2 uses
  %.sroa.0.3 = phi i16 [ %i.aw, %bb.j ], [ %i.aw, %switch.lookup ], [ %i.bu, %bb.f ], [ %i.aw, %bb.g ], [ %i.aw, %bb.h ], [ %i.aw, %bb.i ], [ %i.aw, %switch.lookup ] ; 4 uses
  %i.bv = lshr i32 %3, 22
  %i.bw = and i32 %i.bv, 3
  switch i32 %i.bw, label %default.unreachable436 [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.sroa.0.4 = phi i16 [ %.sroa.0.3, %bb.k ], [ %i.bx, %bb.m ], [ %i.by, %bb.n ], [ %i.bz, %bb.o ] ; 2 uses
  switch i8 %i.ay, label %default.unreachable436 [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.cl
    i8 3, label %bb.r
    i8 4, label %bb.ab
    i8 5, label %bb.s
  ]

bb.m:                                             ; preds = %bb.k
  %i.bx = or i16 %.sroa.0.3, 8
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.by = or i16 %.sroa.0.3, 16
  br label %bb.l

bb.o:                                             ; preds = %bb.k
  %i.bz = or i16 %.sroa.0.3, 32
  br label %bb.l

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter14format_operand:bb.a
  %.val.i = load ptr, ptr %i.mr, align 8, !alias.scope !10733, !nonnull !21, !noundef !21 ; 2 uses
  %.val1.i = load i64, ptr %i.ms, align 8, !alias.scope !10733, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10734)
  %i.og = icmp eq i64 %.val1.i, 0
  br i1 %i.og, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ci, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i
  %.sroa.0.013.i.i.i = phi i64 [ %i.oi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i ], [ 0, %bb.ci ] ; 2 uses
  %i.oh = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.013.i.i.i ; 2 uses
  %i.oi = add nuw nsw i64 %.sroa.0.013.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.oh, align 8, !range !24, !alias.scope !10734, !noalias !10733, !noundef !21 ; 2 uses
  %i.oj = icmp sgt i64 %.val8.i.i.i, 0
  br i1 %i.oj, label %bb.cj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i.i
  %i.ok = getelementptr i8, ptr %i.oh, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ok, align 8, !alias.scope !10734, !noalias !10733, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10735
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i: ; preds = %bb.cj, %.lr.ph.i.i.i
  %i.ol = icmp eq i64 %i.oi, %.val1.i
  br i1 %i.ol, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i, %bb.ci
  %.val2.i = load i64, ptr %i.l, align 8, !range !22, !alias.scope !10733, !noundef !21 ; 2 uses
  %i.om = icmp eq i64 %.val2.i, 0
  br i1 %i.om, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit, label %bb.ck

bb.ck:                                            ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i
  %i.on = shl nuw i64 %.val2.i, 5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.on, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !10733
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit

bb.cl:                                            ; preds = %bb.bu
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !noundef !21
  %i.oq = load i8, ptr %i.bo, align 1, !range !27, !noundef !21
  %i.or = and i64 %i.op, 65535                    ; 2 uses
  %i.os = load i8, ptr %i.bg, align 1, !range !27, !noundef !21
  %i.ot = shl nuw nsw i8 %i.oq, 1
  %i.ou = shl nuw nsw i8 %i.os, 2
  %.sroa.0192.1771 = or disjoint i8 %i.ou, %i.ot
  %.sroa.0192.1 = zext nneg i8 %.sroa.0192.1771 to i32
  %i.ov = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, i64 noundef %i.or, i32 noundef 16, i32 noundef %.sroa.0192.1)
          to label %bb.cm unwind label %.thread659 ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %i.ow = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !invariant.load !21, !nonnull !21 ; 4 uses
  invoke void %i.ox(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 1, i8 noundef 5)
          to label %bb.cn unwind label %.thread659

bb.cn:                                            ; preds = %bb.cm
  %i.oy = extractvalue { ptr, i64 } %i.ov, 1
  %i.oz = extractvalue { ptr, i64 } %i.ov, 0
  %i.pa = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.pb = load ptr, ptr %i.pa, align 8, !invariant.load !21, !nonnull !21 ; 2 uses
  invoke void %i.pb(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.oz, i64 noundef %i.oy, i64 noundef %i.or, i8 noundef 3, i8 noundef 10)
          to label %bb.co unwind label %.thread659

bb.co:                                            ; preds = %bb.cn
  invoke void %i.ox(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @401, i64 noundef 1, i8 noundef 6)
          to label %bb.cp unwind label %.thread659

bb.cp:                                            ; preds = %bb.co
  %i.pc = load i32, ptr %i.ak, align 8, !noundef !21
  %i.pd = and i32 %i.pc, 64
  %.not243 = icmp eq i32 %i.pd, 0
  br i1 %.not243, label %.invoke, label %bb.cq

.invoke:                                          ; preds = %bb.cq, %bb.cp
  %i.pe = load i8, ptr %i.bo, align 1, !range !27, !noundef !21
  %i.pf = load i8, ptr %i.bg, align 1, !range !27, !noundef !21
  %i.pg = shl nuw nsw i8 %i.pe, 1
  %i.ph = shl nuw nsw i8 %i.pf, 2
  %.sroa.0195.1773 = or disjoint i8 %i.ph, %i.pg
  %.sroa.0195.1 = zext nneg i8 %.sroa.0195.1773 to i32
  %spec.select = select i1 %i.af, i32 %i.ah, i32 %i.ai
  %spec.select797 = select i1 %i.af, i32 32, i32 16
  %i.pi = zext i32 %spec.select to i64
  %i.pj = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, i64 noundef %i.pi, i32 noundef %spec.select797, i32 noundef %.sroa.0195.1)
          to label %bb.cr unwind label %.thread659 ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  invoke void %i.ox(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %.invoke unwind label %.thread659

bb.cr:                                            ; preds = %.invoke
  invoke void %i.ox(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 1, i8 noundef 5)
          to label %bb.cs unwind label %.thread659

bb.cs:                                            ; preds = %bb.cr
  %.sroa.3.0 = extractvalue { ptr, i64 } %i.pj, 1
  %.sroa.0131.0 = extractvalue { ptr, i64 } %i.pj, 0
  %i.pk = add nsw i8 %i.nd, -3
  %switch.and268 = and i8 %i.pk, -3
  %switch.selectcmp269 = icmp eq i8 %switch.and268, 0
  %i.pl = select i1 %switch.selectcmp269, i8 12, i8 11
  invoke void %i.pb(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0131.0, i64 noundef %.sroa.3.0, i64 noundef %.sroa.0154.1, i8 noundef %.sroa.0101.1, i8 noundef %i.pl)
          to label %bb.ci unwind label %.thread659

bb.ct:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit462
  %i.pm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val308 = load ptr, ptr %i.pm, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val308, i64 noundef %.val307, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10736
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit: ; preds = %bb.ck, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val305 = load i64, ptr %i.k, align 8, !range !59, !noundef !21 ; 2 uses
  %i.pn = icmp sgt i64 %.val305, 0
  br i1 %i.pn, label %bb.cu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit472

bb.cu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit
  %i.po = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val306 = load ptr, ptr %i.po, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val306, i64 noundef %.val305, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10737
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit472

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit472: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aw

bb.cv:                                            ; preds = %bb.e, %bb.e
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.pq(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 1, i8 noundef 5) #45
  %i.pr = icmp eq i8 %.sroa.0107.0, 6
  br i1 %i.pr, label %bb.cw, label %bb.do

bb.cw:                                            ; preds = %bb.cv
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pt = load i32, ptr %i.ps, align 8, !noundef !21
  %i.pu = trunc i32 %i.pt to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cx:                                            ; preds = %bb.e
  %trunc = trunc nuw i32 %5 to i8
  switch i8 %trunc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.cy
    i8 1, label %bb.cz
    i8 2, label %bb.da
    i8 3, label %bb.db
    i8 4, label %bb.dc
    i8 5, label %bb.dd
    i8 6, label %bb.de
    i8 7, label %bb.df
    i8 8, label %bb.dg
    i8 9, label %bb.dh
    i8 10, label %bb.di
    i8 11, label %bb.dj
    i8 12, label %bb.dk
    i8 13, label %bb.dl
    i8 14, label %bb.dm
    i8 15, label %bb.dn
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.pw = load i8, ptr %i.pv, align 4, !alias.scope !10738, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cz:                                            ; preds = %bb.cx
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.py = load i8, ptr %i.px, align 1, !alias.scope !10738, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.da:                                            ; preds = %bb.cx
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.qa = load i8, ptr %i.pz, align 2, !alias.scope !10738, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.db:                                            ; preds = %bb.cx
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.qc = load i8, ptr %i.qb, align 1, !alias.scope !10738, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dc:                                            ; preds = %bb.cx
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qe = load i32, ptr %i.qd, align 8, !alias.scope !10738, !noundef !21
  %i.qf = trunc i32 %i.qe to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dd:                                            ; preds = %bb.cx
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qh = load i32, ptr %i.qg, align 8, !alias.scope !10738, !noundef !21
  %i.qi = lshr i32 %i.qh, 8
  %i.qj = trunc i32 %i.qi to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.de:                                            ; preds = %bb.cx
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ql = load i32, ptr %i.qk, align 8, !alias.scope !10738, !noundef !21
  %i.qm = lshr i32 %i.ql, 16
  %i.qn = trunc i32 %i.qm to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.df:                                            ; preds = %bb.cx
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 27
  %6 = load i8, ptr %i.qo, align 1, !alias.scope !10738
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dg:                                            ; preds = %bb.cx
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qq = load i64, ptr %i.qp, align 8, !alias.scope !10738, !noundef !21
  %i.qr = trunc i64 %i.qq to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dh:                                            ; preds = %bb.cx
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !alias.scope !10738, !noundef !21
  %i.qu = lshr i64 %i.qt, 8
  %i.qv = trunc i64 %i.qu to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.di:                                            ; preds = %bb.cx
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !alias.scope !10738, !noundef !21
  %i.qy = lshr i64 %i.qx, 16
  %i.qz = trunc i64 %i.qy to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dj:                                            ; preds = %bb.cx
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rb = load i64, ptr %i.ra, align 8, !alias.scope !10738, !noundef !21
  %i.rc = lshr i64 %i.rb, 24
  %i.rd = trunc i64 %i.rc to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dk:                                            ; preds = %bb.cx
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rf = load i64, ptr %i.re, align 8, !alias.scope !10738, !noundef !21
  %i.rg = lshr i64 %i.rf, 32
  %i.rh = trunc i64 %i.rg to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dl:                                            ; preds = %bb.cx
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rj = load i64, ptr %i.ri, align 8, !alias.scope !10738, !noundef !21
  %i.rk = lshr i64 %i.rj, 40
  %i.rl = trunc i64 %i.rk to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dm:                                            ; preds = %bb.cx
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !alias.scope !10738, !noundef !21
  %i.ro = lshr i64 %i.rn, 48
  %i.rp = trunc i64 %i.ro to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dn:                                            ; preds = %bb.cx
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 15
  %7 = load i8, ptr %i.rq, align 1, !alias.scope !10738
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.do:                                            ; preds = %bb.cv
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rs = load i64, ptr %i.rr, align 8, !noundef !21
  %i.rt = trunc i64 %i.rs to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.do, %bb.cw
  %.sroa.0133.1 = phi i8 [ %i.pu, %bb.cw ], [ %i.rt, %bb.do ], [ 0, %bb.cx ], [ %i.pw, %bb.cy ], [ %i.py, %bb.cz ], [ %i.qa, %bb.da ], [ %i.qc, %bb.db ], [ %i.qf, %bb.dc ], [ %i.qj, %bb.dd ], [ %i.qn, %bb.de ], [ %6, %bb.df ], [ %i.qr, %bb.dg ], [ %i.qv, %bb.dh ], [ %i.qz, %bb.di ], [ %i.rd, %bb.dj ], [ %i.rh, %bb.dk ], [ %i.rl, %bb.dl ], [ %i.rp, %bb.dm ], [ %7, %bb.dn ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10740)
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ry = load i8, ptr %i.rx, align 4, !range !40, !alias.scope !10740, !noundef !21 ; 3 uses
  %i.rz = shl nuw nsw i8 %i.ry, 2
  %narrow.i474 = add nuw nsw i8 %i.rz, -40
  %switch.offset.i475 = zext i8 %narrow.i474 to i64
  %narrow22.i476 = mul nuw i8 %i.ry, 48           ; 2 uses
  %i.sa = or disjoint i8 %narrow22.i476, 8
  %switch.offset12.i477 = zext i8 %i.sa to i64
  %switch.idx.mult14.i479 = zext i8 %narrow22.i476 to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 %switch.offset.i475
  %.sroa.01.4.in.i484 = getelementptr inbounds nuw i8, ptr %i.ru, i64 %switch.offset12.i477
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 %switch.idx.mult14.i479 ; 3 uses
  %.sroa.9.4.in.i485 = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 40
  %.sroa.0.0.i486 = load i32, ptr %i.sb, align 4, !alias.scope !10740, !noundef !21
  %.sroa.01.1.i487 = load ptr, ptr %.sroa.01.4.in.i484, align 8, !alias.scope !10740, !nonnull !21, !noundef !21
  %.sroa.9.1.i488 = load i64, ptr %.sroa.9.4.in.i485, align 8, !alias.scope !10740, !noundef !21
  %.sroa.02.0.i489 = load ptr, ptr %i.sd, align 8, !alias.scope !10740, !nonnull !21, !noundef !21
  %.sroa.93.0.i490 = load i64, ptr %i.se, align 8, !alias.scope !10740, !noundef !21
  %.sroa.04.0.in.i491 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i492 = load ptr, ptr %.sroa.04.0.in.i491, align 8, !alias.scope !10740, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i493 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i494 = load i64, ptr %.sroa.3.0.in.i493, align 8, !alias.scope !10740, !noundef !21
  %..i.i495 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i486, i32 255)
  %i.sf = trunc nuw i32 %..i.i495 to i8
  store ptr %.sroa.01.1.i487, ptr %i.h, align 8, !alias.scope !10739
  %i.sg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.9.1.i488, ptr %i.sg, align 8, !alias.scope !10739
  %i.sh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.02.0.i489, ptr %i.sh, align 8, !alias.scope !10739
  %i.si = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.93.0.i490, ptr %i.si, align 8, !alias.scope !10739
  %i.sj = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.sroa.04.0.i492, ptr %i.sj, align 8, !alias.scope !10739
  %i.sk = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.sroa.3.0.i494, ptr %i.sk, align 8, !alias.scope !10739
  %i.sl = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 %i.sf, ptr %i.sl, align 8, !alias.scope !10739
  %i.sm = getelementptr inbounds nuw i8, ptr %i.h, i64 49
  store i8 %i.ry, ptr %i.sm, align 1, !alias.scope !10739
  %i.sn = getelementptr inbounds nuw i8, ptr %i.h, i64 50
  %i.so = lshr i32 %i.rw, 15
  %i.sp = trunc i32 %i.so to i8
  %i.sq = and i8 %i.sp, 1
  store i8 %i.sq, ptr %i.sn, align 2, !alias.scope !10739
  %i.sr = getelementptr inbounds nuw i8, ptr %i.h, i64 51 ; 2 uses
  %i.ss = lshr i32 %i.rw, 16
  %i.st = trunc i32 %i.ss to i8
  %i.su = and i8 %i.st, 1
  store i8 %i.su, ptr %i.sr, align 1, !alias.scope !10739
  %i.sv = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.sw = lshr i32 %i.rw, 17
  %i.sx = trunc i32 %i.sw to i8
  %i.sy = and i8 %i.sx, 1
  store i8 %i.sy, ptr %i.sv, align 4, !alias.scope !10739
  %i.sz = getelementptr inbounds nuw i8, ptr %i.h, i64 53 ; 2 uses
  %i.ta = lshr i32 %i.rw, 14
  %i.tb = trunc i32 %i.ta to i8
  %i.tc = and i8 %i.tb, 1
  store i8 %i.tc, ptr %i.sz, align 1, !alias.scope !10739
  %i.td = getelementptr inbounds nuw i8, ptr %i.h, i64 54 ; 2 uses
  %i.te = lshr i32 %i.rw, 19
  %i.tf = trunc i32 %i.te to i8
  %i.tg = and i8 %i.tf, 1
  store i8 %i.tg, ptr %i.td, align 2, !alias.scope !10739
  %i.th = getelementptr inbounds nuw i8, ptr %i.h, i64 55
  store i8 0, ptr %i.th, align 1, !alias.scope !10739
  store i32 0, ptr %i.p, align 4
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.tj = load ptr, ptr %i.ti, align 8, !noundef !21 ; 2 uses
  %.not237 = icmp eq ptr %i.tj, null
  br i1 %.not237, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.tl = load ptr, ptr %i.tk, align 8, !nonnull !21, !align !25, !noundef !21
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tn = load ptr, ptr %i.tm, align 8, !invariant.load !21, !nonnull !21
  call void %i.tn(ptr noundef nonnull %i.tj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #45
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.tp = load ptr, ptr %i.to, align 8, !noundef !21 ; 2 uses
  %.not238 = icmp eq ptr %i.tp, null
  br i1 %.not238, label %.thread675, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.tr = load ptr, ptr %i.tq, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ts = zext i8 %.sroa.0133.1 to i64            ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.tu = load ptr, ptr %i.tt, align 8, !invariant.load !21, !nonnull !21
  call void %i.tu(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noundef nonnull %i.tp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, i64 noundef %i.ts, i32 noundef 1) #45
  %.pr674 = load i64, ptr %i.g, align 8           ; 5 uses
  %.not239 = icmp eq i64 %.pr674, -3
  br i1 %.not239, label %.thread675, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.tv = load i32, ptr %i.rv, align 8, !noundef !21
  %i.tw = and i32 %i.tv, 33554432
  %i.tx = icmp ne i32 %i.tw, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ru, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, i64 noundef %i.ts, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, i1 noundef zeroext %i.tx, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit496 unwind label %bb.dt

.thread675:                                       ; preds = %bb.dq, %bb.dr
  %i.ty = load i8, ptr %i.td, align 2, !range !27, !noundef !21
  %i.tz = trunc nuw i8 %i.ty to i1
  br i1 %i.tz, label %bb.dx, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %lpad.thr_comm.split-lp680 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i497 = add i64 %.pr674, -1
  %switch.i498 = icmp ult i64 %.0.val.off.i497, -4
  br i1 %switch.i498, label %bb.du, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.du:                                            ; preds = %bb.dt
  %i.ua = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val304 = load ptr, ptr %i.ua, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val304, i64 noundef %.pr674, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10741
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit496: ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.0.val.off.i500 = add i64 %.pr674, -1
  %switch.i501 = icmp ult i64 %.0.val.off.i500, -4
  br i1 %switch.i501, label %bb.dv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit502

bb.dv:                                            ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit496
  %i.ub = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val302 = load ptr, ptr %i.ub, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val302, i64 noundef %.pr674, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10742
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit502

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit502: ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit496.thread, %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit496, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aw

bb.dw:                                            ; preds = %.thread675
  %i.uc = zext i8 %.sroa.0133.1 to i64
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit496.thread

bb.dx:                                            ; preds = %.thread675
  %i.ud = sext i8 %.sroa.0133.1 to i64            ; 2 uses
  %i.ue = icmp slt i8 %.sroa.0133.1, 0
  br i1 %i.ue, label %bb.dy, label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit496.thread

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit496.thread: ; preds = %bb.dy, %bb.dx, %bb.dw
  %.sroa.0154.2 = phi i64 [ %i.ud, %bb.dy ], [ %i.ud, %bb.dx ], [ %i.uc, %bb.dw ]
  %.sroa.0133.2 = phi i8 [ %i.ur, %bb.dy ], [ %.sroa.0133.1, %bb.dx ], [ %.sroa.0133.1, %bb.dw ]
  %.sroa.0101.2 = phi i8 [ 0, %bb.dy ], [ 0, %bb.dx ], [ 1, %bb.dw ]
  %i.uf = zext i8 %.sroa.0133.2 to i64
  %i.ug = load i8, ptr %i.sz, align 1, !range !27, !noundef !21
  %i.uh = load i8, ptr %i.sr, align 1, !range !27, !noundef !21
  %i.ui = shl nuw nsw i8 %i.ug, 1
  %i.uj = shl nuw nsw i8 %i.uh, 2
  %.sroa.0201.1767 = or disjoint i8 %i.uj, %i.ui
  %.sroa.0201.1 = zext nneg i8 %.sroa.0201.1767 to i32
  %i.uk = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ru, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, i64 noundef %i.uf, i32 noundef 8, i32 noundef %.sroa.0201.1) ; 2 uses
  %i.ul = extractvalue { ptr, i64 } %i.uk, 0
  %i.um = extractvalue { ptr, i64 } %i.uk, 1
  %i.un = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.uo = load ptr, ptr %i.un, align 8, !invariant.load !21, !nonnull !21
  call void %i.uo(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ul, i64 noundef %i.um, i64 noundef %.sroa.0154.2, i8 noundef %.sroa.0101.2, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit502

bb.dy:                                            ; preds = %bb.dx
  %i.up = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.uq = load ptr, ptr %i.up, align 8, !invariant.load !21, !nonnull !21
  call void %i.uq(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.ur = sub i8 0, %.sroa.0133.1
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit496.thread

bb.dz:                                            ; preds = %bb.e, %bb.e
  %i.us = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ut = load ptr, ptr %i.us, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.ut(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 1, i8 noundef 5) #45
  switch i8 %.sroa.0107.0, label %bb.eb [
    i8 8, label %bb.ea
    i8 11, label %bb.ek
  ]

bb.ea:                                            ; preds = %bb.dz
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.uv = load i32, ptr %i.uu, align 8, !noundef !21
  %i.uw = trunc i32 %i.uv to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eb:                                            ; preds = %bb.e, %bb.dz
  %trunc.i = trunc nuw i32 %5 to i8
  switch i8 %trunc.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.ec
    i8 1, label %bb.ed
    i8 2, label %bb.ee
    i8 3, label %bb.ef
    i8 4, label %bb.eg
    i8 5, label %bb.eh
    i8 6, label %bb.ei
    i8 7, label %bb.ej
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.uy = load i16, ptr %i.ux, align 4, !alias.scope !10743
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ed:                                            ; preds = %bb.eb
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.va = load i16, ptr %i.uz, align 2, !alias.scope !10743
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ee:                                            ; preds = %bb.eb
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vc = load i32, ptr %i.vb, align 8, !alias.scope !10743, !noundef !21
  %i.vd = trunc i32 %i.vc to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ef:                                            ; preds = %bb.eb
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 26
  %8 = load i16, ptr %i.ve, align 2, !alias.scope !10743
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eg:                                            ; preds = %bb.eb
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !alias.scope !10743, !noundef !21
  %i.vh = trunc i64 %i.vg to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eh:                                            ; preds = %bb.eb
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vj = load i64, ptr %i.vi, align 8, !alias.scope !10743, !noundef !21
  %i.vk = lshr i64 %i.vj, 16
  %i.vl = trunc i64 %i.vk to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ei:                                            ; preds = %bb.eb
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vn = load i64, ptr %i.vm, align 8, !alias.scope !10743, !noundef !21
  %i.vo = lshr i64 %i.vn, 32
  %i.vp = trunc i64 %i.vo to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ej:                                            ; preds = %bb.eb
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 14
  %9 = load i16, ptr %i.vq, align 2, !alias.scope !10743
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ek:                                            ; preds = %bb.dz
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vs = load i32, ptr %i.vr, align 8, !noundef !21
  %i.vt = trunc i32 %i.vs to i8
  %i.vu = sext i8 %i.vt to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ek, %bb.ea
  %.sroa.0140.1 = phi i16 [ %i.uw, %bb.ea ], [ %i.vu, %bb.ek ], [ 0, %bb.eb ], [ %i.uy, %bb.ec ], [ %i.va, %bb.ed ], [ %i.vd, %bb.ee ], [ %8, %bb.ef ], [ %i.vh, %bb.eg ], [ %i.vl, %bb.eh ], [ %i.vp, %bb.ei ], [ %9, %bb.ej ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.vx = load i32, ptr %i.vw, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10745)
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.vz = load i8, ptr %i.vy, align 4, !range !40, !alias.scope !10745, !noundef !21 ; 3 uses
  %i.wa = shl nuw nsw i8 %i.vz, 2
  %narrow.i506 = add nuw nsw i8 %i.wa, -40
  %switch.offset.i507 = zext i8 %narrow.i506 to i64
  %narrow22.i508 = mul nuw i8 %i.vz, 48           ; 2 uses
  %i.wb = or disjoint i8 %narrow22.i508, 8
  %switch.offset12.i509 = zext i8 %i.wb to i64
  %switch.idx.mult14.i511 = zext i8 %narrow22.i508 to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 %switch.offset.i507
  %.sroa.01.4.in.i516 = getelementptr inbounds nuw i8, ptr %i.vv, i64 %switch.offset12.i509
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vv, i64 %switch.idx.mult14.i511 ; 3 uses
  %.sroa.9.4.in.i517 = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 32
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 40
  %.sroa.0.0.i518 = load i32, ptr %i.wc, align 4, !alias.scope !10745, !noundef !21
  %.sroa.01.1.i519 = load ptr, ptr %.sroa.01.4.in.i516, align 8, !alias.scope !10745, !nonnull !21, !noundef !21
  %.sroa.9.1.i520 = load i64, ptr %.sroa.9.4.in.i517, align 8, !alias.scope !10745, !noundef !21
  %.sroa.02.0.i521 = load ptr, ptr %i.we, align 8, !alias.scope !10745, !nonnull !21, !noundef !21
  %.sroa.93.0.i522 = load i64, ptr %i.wf, align 8, !alias.scope !10745, !noundef !21
  %.sroa.04.0.in.i523 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i524 = load ptr, ptr %.sroa.04.0.in.i523, align 8, !alias.scope !10745, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i525 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i526 = load i64, ptr %.sroa.3.0.in.i525, align 8, !alias.scope !10745, !noundef !21
  %..i.i527 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i518, i32 255)
  %i.wg = trunc nuw i32 %..i.i527 to i8
  store ptr %.sroa.01.1.i519, ptr %i.f, align 8, !alias.scope !10744
  %i.wh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.9.1.i520, ptr %i.wh, align 8, !alias.scope !10744
  %i.wi = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.02.0.i521, ptr %i.wi, align 8, !alias.scope !10744
  %i.wj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.93.0.i522, ptr %i.wj, align 8, !alias.scope !10744
  %i.wk = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.04.0.i524, ptr %i.wk, align 8, !alias.scope !10744
  %i.wl = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sroa.3.0.i526, ptr %i.wl, align 8, !alias.scope !10744
  %i.wm = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 %i.wg, ptr %i.wm, align 8, !alias.scope !10744
  %i.wn = getelementptr inbounds nuw i8, ptr %i.f, i64 49
  store i8 %i.vz, ptr %i.wn, align 1, !alias.scope !10744
  %i.wo = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  %i.wp = lshr i32 %i.vx, 15
  %i.wq = trunc i32 %i.wp to i8
  %i.wr = and i8 %i.wq, 1
  store i8 %i.wr, ptr %i.wo, align 2, !alias.scope !10744
  %i.ws = getelementptr inbounds nuw i8, ptr %i.f, i64 51 ; 2 uses
  %i.wt = lshr i32 %i.vx, 16
  %i.wu = trunc i32 %i.wt to i8
  %i.wv = and i8 %i.wu, 1
  store i8 %i.wv, ptr %i.ws, align 1, !alias.scope !10744
  %i.ww = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.wx = lshr i32 %i.vx, 17
  %i.wy = trunc i32 %i.wx to i8
  %i.wz = and i8 %i.wy, 1
  store i8 %i.wz, ptr %i.ww, align 4, !alias.scope !10744
  %i.xa = getelementptr inbounds nuw i8, ptr %i.f, i64 53 ; 2 uses
  %i.xb = lshr i32 %i.vx, 14
  %i.xc = trunc i32 %i.xb to i8
  %i.xd = and i8 %i.xc, 1
  store i8 %i.xd, ptr %i.xa, align 1, !alias.scope !10744
  %i.xe = getelementptr inbounds nuw i8, ptr %i.f, i64 54 ; 2 uses
  %i.xf = lshr i32 %i.vx, 19
  %i.xg = trunc i32 %i.xf to i8
  %i.xh = and i8 %i.xg, 1
  store i8 %i.xh, ptr %i.xe, align 2, !alias.scope !10744
  %i.xi = getelementptr inbounds nuw i8, ptr %i.f, i64 55
  store i8 0, ptr %i.xi, align 1, !alias.scope !10744
  store i32 0, ptr %i.p, align 4
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.xk = load ptr, ptr %i.xj, align 8, !noundef !21 ; 2 uses
  %.not232 = icmp eq ptr %i.xk, null
  br i1 %.not232, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.xm = load ptr, ptr %i.xl, align 8, !nonnull !21, !align !25, !noundef !21
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8, !invariant.load !21, !nonnull !21
  call void %i.xo(ptr noundef nonnull %i.xk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f) #45
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.xq = load ptr, ptr %i.xp, align 8, !noundef !21 ; 2 uses
  %.not233 = icmp eq ptr %i.xq, null
  br i1 %.not233, label %.thread700, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.xs = load ptr, ptr %i.xr, align 8, !nonnull !21, !align !25, !noundef !21
  %i.xt = zext i16 %.sroa.0140.1 to i64           ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8, !invariant.load !21, !nonnull !21
  call void %i.xv(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull %i.xq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, i64 noundef %i.xt, i32 noundef 2) #45
  %.pr699 = load i64, ptr %i.e, align 8           ; 5 uses
  %.not234 = icmp eq i64 %.pr699, -3
  br i1 %.not234, label %.thread700, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xw = load i32, ptr %i.vw, align 8, !noundef !21
  %i.xx = and i32 %i.xw, 33554432
  %i.xy = icmp ne i32 %i.xx, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.vv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, i64 noundef %i.xt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, i1 noundef zeroext %i.xy, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit528 unwind label %bb.ep

.thread700:                                       ; preds = %bb.em, %bb.en
  %i.xz = load i8, ptr %i.xe, align 2, !range !27, !noundef !21
  %i.ya = trunc nuw i8 %i.xz to i1
  br i1 %i.ya, label %bb.et, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %lpad.thr_comm.split-lp705 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i529 = add i64 %.pr699, -1
  %switch.i530 = icmp ult i64 %.0.val.off.i529, -4
  br i1 %switch.i530, label %bb.eq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.eq:                                            ; preds = %bb.ep
  %i.yb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val300 = load ptr, ptr %i.yb, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val300, i64 noundef %.pr699, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10746
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit528: ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.0.val.off.i532 = add i64 %.pr699, -1
  %switch.i533 = icmp ult i64 %.0.val.off.i532, -4
  br i1 %switch.i533, label %bb.er, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit534

bb.er:                                            ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit528
  %i.yc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val298 = load ptr, ptr %i.yc, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val298, i64 noundef %.pr699, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10747
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit534

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit534: ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit528.thread, %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit528, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aw

bb.es:                                            ; preds = %.thread700
  %i.yd = zext i16 %.sroa.0140.1 to i64
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit528.thread

bb.et:                                            ; preds = %.thread700
  %i.ye = sext i16 %.sroa.0140.1 to i64           ; 2 uses
  %i.yf = icmp slt i16 %.sroa.0140.1, 0
  br i1 %i.yf, label %bb.eu, label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit528.thread

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit528.thread: ; preds = %bb.eu, %bb.et, %bb.es
  %.sroa.0154.3 = phi i64 [ %i.ye, %bb.eu ], [ %i.ye, %bb.et ], [ %i.yd, %bb.es ]
  %.sroa.0140.2 = phi i16 [ %i.ys, %bb.eu ], [ %.sroa.0140.1, %bb.et ], [ %.sroa.0140.1, %bb.es ]
  %.sroa.0101.3 = phi i8 [ 2, %bb.eu ], [ 2, %bb.et ], [ 3, %bb.es ]
  %i.yg = zext i16 %.sroa.0140.2 to i64
  %i.yh = load i8, ptr %i.xa, align 1, !range !27, !noundef !21
  %i.yi = load i8, ptr %i.ws, align 1, !range !27, !noundef !21
  %i.yj = shl nuw nsw i8 %i.yh, 1
  %i.yk = shl nuw nsw i8 %i.yi, 2
  %.sroa.0204.1768 = or disjoint i8 %i.yk, %i.yj
  %.sroa.0204.1 = zext nneg i8 %.sroa.0204.1768 to i32
  %i.yl = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.vv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, i64 noundef %i.yg, i32 noundef 16, i32 noundef %.sroa.0204.1) ; 2 uses
  %i.ym = extractvalue { ptr, i64 } %i.yl, 0
  %i.yn = extractvalue { ptr, i64 } %i.yl, 1
  %i.yo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.yp = load ptr, ptr %i.yo, align 8, !invariant.load !21, !nonnull !21
  call void %i.yp(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ym, i64 noundef %i.yn, i64 noundef %.sroa.0154.3, i8 noundef %.sroa.0101.3, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit534

bb.eu:                                            ; preds = %bb.et
  %i.yq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.yr = load ptr, ptr %i.yq, align 8, !invariant.load !21, !nonnull !21
  call void %i.yr(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.ys = sub i16 0, %.sroa.0140.1
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit528.thread

bb.ev:                                            ; preds = %bb.e, %bb.e
  %i.yt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.yu = load ptr, ptr %i.yt, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.yu(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 1, i8 noundef 5) #45
  switch i8 %.sroa.0107.0, label %bb.ex [
    i8 9, label %bb.ew
    i8 12, label %bb.fc
  ]

bb.ew:                                            ; preds = %bb.ev
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yw = load i32, ptr %i.yv, align 8, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ex:                                            ; preds = %bb.e, %bb.ev
  %trunc.i535 = trunc nuw i32 %5 to i8
  switch i8 %trunc.i535, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.ey
    i8 1, label %bb.ez
    i8 2, label %bb.fa
    i8 3, label %bb.fb
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.yy = load i32, ptr %i.yx, align 4, !alias.scope !10748
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ez:                                            ; preds = %bb.ex
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.za = load i32, ptr %i.yz, align 8, !alias.scope !10748, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fa:                                            ; preds = %bb.ex
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zc = load i64, ptr %i.zb, align 8, !alias.scope !10748, !noundef !21
  %i.zd = trunc i64 %i.zc to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fb:                                            ; preds = %bb.ex
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 12
  %10 = load i32, ptr %i.ze, align 4, !alias.scope !10748
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fc:                                            ; preds = %bb.ev
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zg = load i32, ptr %i.zf, align 8, !noundef !21
  %i.zh = shl i32 %i.zg, 24
  %i.zi = ashr exact i32 %i.zh, 24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.fc, %bb.ew
  %.sroa.0147.1 = phi i32 [ %i.yw, %bb.ew ], [ %i.zi, %bb.fc ], [ 0, %bb.ex ], [ %i.yy, %bb.ey ], [ %i.za, %bb.ez ], [ %i.zd, %bb.fa ], [ %10, %bb.fb ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.zl = load i32, ptr %i.zk, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10750)
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.zn = load i8, ptr %i.zm, align 4, !range !40, !alias.scope !10750, !noundef !21 ; 3 uses
  %i.zo = shl nuw nsw i8 %i.zn, 2
  %narrow.i539 = add nuw nsw i8 %i.zo, -40
  %switch.offset.i540 = zext i8 %narrow.i539 to i64
  %narrow22.i541 = mul nuw i8 %i.zn, 48           ; 2 uses
  %i.zp = or disjoint i8 %narrow22.i541, 8
  %switch.offset12.i542 = zext i8 %i.zp to i64
  %switch.idx.mult14.i544 = zext i8 %narrow22.i541 to i64
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zj, i64 %switch.offset.i540
  %.sroa.01.4.in.i549 = getelementptr inbounds nuw i8, ptr %i.zj, i64 %switch.offset12.i542
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zj, i64 %switch.idx.mult14.i544 ; 3 uses
  %.sroa.9.4.in.i550 = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 32
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zr, i64 40
  %.sroa.0.0.i551 = load i32, ptr %i.zq, align 4, !alias.scope !10750, !noundef !21
  %.sroa.01.1.i552 = load ptr, ptr %.sroa.01.4.in.i549, align 8, !alias.scope !10750, !nonnull !21, !noundef !21
  %.sroa.9.1.i553 = load i64, ptr %.sroa.9.4.in.i550, align 8, !alias.scope !10750, !noundef !21
  %.sroa.02.0.i554 = load ptr, ptr %i.zs, align 8, !alias.scope !10750, !nonnull !21, !noundef !21
  %.sroa.93.0.i555 = load i64, ptr %i.zt, align 8, !alias.scope !10750, !noundef !21
  %.sroa.04.0.in.i556 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i557 = load ptr, ptr %.sroa.04.0.in.i556, align 8, !alias.scope !10750, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i558 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i559 = load i64, ptr %.sroa.3.0.in.i558, align 8, !alias.scope !10750, !noundef !21
  %..i.i560 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i551, i32 255)
  %i.zu = trunc nuw i32 %..i.i560 to i8
  store ptr %.sroa.01.1.i552, ptr %i.d, align 8, !alias.scope !10749
  %i.zv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.9.1.i553, ptr %i.zv, align 8, !alias.scope !10749
  %i.zw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.02.0.i554, ptr %i.zw, align 8, !alias.scope !10749
  %i.zx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.93.0.i555, ptr %i.zx, align 8, !alias.scope !10749
  %i.zy = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.04.0.i557, ptr %i.zy, align 8, !alias.scope !10749
  %i.zz = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.3.0.i559, ptr %i.zz, align 8, !alias.scope !10749
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 %i.zu, ptr %i.aaa, align 8, !alias.scope !10749
  %i.aab = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  store i8 %i.zn, ptr %i.aab, align 1, !alias.scope !10749
  %i.aac = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  %i.aad = lshr i32 %i.zl, 15
  %i.aae = trunc i32 %i.aad to i8
  %i.aaf = and i8 %i.aae, 1
  store i8 %i.aaf, ptr %i.aac, align 2, !alias.scope !10749
  %i.aag = getelementptr inbounds nuw i8, ptr %i.d, i64 51 ; 2 uses
  %i.aah = lshr i32 %i.zl, 16
  %i.aai = trunc i32 %i.aah to i8
  %i.aaj = and i8 %i.aai, 1
  store i8 %i.aaj, ptr %i.aag, align 1, !alias.scope !10749
  %i.aak = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.aal = lshr i32 %i.zl, 17
  %i.aam = trunc i32 %i.aal to i8
  %i.aan = and i8 %i.aam, 1
  store i8 %i.aan, ptr %i.aak, align 4, !alias.scope !10749
  %i.aao = getelementptr inbounds nuw i8, ptr %i.d, i64 53 ; 2 uses
  %i.aap = lshr i32 %i.zl, 14
  %i.aaq = trunc i32 %i.aap to i8
  %i.aar = and i8 %i.aaq, 1
  store i8 %i.aar, ptr %i.aao, align 1, !alias.scope !10749
  %i.aas = getelementptr inbounds nuw i8, ptr %i.d, i64 54 ; 2 uses
  %i.aat = lshr i32 %i.zl, 19
  %i.aau = trunc i32 %i.aat to i8
  %i.aav = and i8 %i.aau, 1
  store i8 %i.aav, ptr %i.aas, align 2, !alias.scope !10749
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.d, i64 55
  store i8 0, ptr %i.aaw, align 1, !alias.scope !10749
  store i32 0, ptr %i.p, align 4
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aay = load ptr, ptr %i.aax, align 8, !noundef !21 ; 2 uses
  %.not227 = icmp eq ptr %i.aay, null
  br i1 %.not227, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aba = load ptr, ptr %i.aaz, align 8, !nonnull !21, !align !25, !noundef !21
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 24
  %i.abc = load ptr, ptr %i.abb, align 8, !invariant.load !21, !nonnull !21
  call void %i.abc(ptr noundef nonnull %i.aay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d) #45
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.abe = load ptr, ptr %i.abd, align 8, !noundef !21 ; 2 uses
  %.not228 = icmp eq ptr %i.abe, null
  br i1 %.not228, label %.thread725, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.abg = load ptr, ptr %i.abf, align 8, !nonnull !21, !align !25, !noundef !21
  %i.abh = zext i32 %.sroa.0147.1 to i64          ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8, !invariant.load !21, !nonnull !21
  call void %i.abj(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.abe, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, i64 noundef %i.abh, i32 noundef 4) #45
  %.pr724 = load i64, ptr %i.c, align 8           ; 5 uses
  %.not229 = icmp eq i64 %.pr724, -3
  br i1 %.not229, label %.thread725, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.abk = load i32, ptr %i.zk, align 8, !noundef !21
  %i.abl = and i32 %i.abk, 33554432
  %i.abm = icmp ne i32 %i.abl, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.zj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, i64 noundef %i.abh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, i1 noundef zeroext %i.abm, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit561 unwind label %bb.fh

.thread725:                                       ; preds = %bb.fe, %bb.ff
  %i.abn = load i8, ptr %i.aas, align 2, !range !27, !noundef !21
  %i.abo = trunc nuw i8 %i.abn to i1
  br i1 %i.abo, label %bb.fl, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %lpad.thr_comm.split-lp730 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i562 = add i64 %.pr724, -1
  %switch.i563 = icmp ult i64 %.0.val.off.i562, -4
  br i1 %switch.i563, label %bb.fi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.fi:                                            ; preds = %bb.fh
  %i.abp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val296 = load ptr, ptr %i.abp, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val296, i64 noundef %.pr724, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10751
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit561: ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.0.val.off.i565 = add i64 %.pr724, -1
  %switch.i566 = icmp ult i64 %.0.val.off.i565, -4
  br i1 %switch.i566, label %bb.fj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit567

bb.fj:                                            ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit561
  %i.abq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val294 = load ptr, ptr %i.abq, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val294, i64 noundef %.pr724, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10752
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit567

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit567: ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit561.thread, %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit561, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aw

bb.fk:                                            ; preds = %.thread725
  %i.abr = zext i32 %.sroa.0147.1 to i64
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit561.thread

bb.fl:                                            ; preds = %.thread725
  %i.abs = sext i32 %.sroa.0147.1 to i64          ; 2 uses
  %i.abt = icmp slt i32 %.sroa.0147.1, 0
  br i1 %i.abt, label %bb.fm, label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit561.thread

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit561.thread: ; preds = %bb.fm, %bb.fl, %bb.fk
  %.sroa.0154.4 = phi i64 [ %i.abs, %bb.fm ], [ %i.abs, %bb.fl ], [ %i.abr, %bb.fk ]
  %.sroa.0147.2 = phi i32 [ %i.acg, %bb.fm ], [ %.sroa.0147.1, %bb.fl ], [ %.sroa.0147.1, %bb.fk ]
  %.sroa.0101.4 = phi i8 [ 4, %bb.fm ], [ 4, %bb.fl ], [ 5, %bb.fk ]
  %i.abu = zext i32 %.sroa.0147.2 to i64
  %i.abv = load i8, ptr %i.aao, align 1, !range !27, !noundef !21
  %i.abw = load i8, ptr %i.aag, align 1, !range !27, !noundef !21
  %i.abx = shl nuw nsw i8 %i.abv, 1
  %i.aby = shl nuw nsw i8 %i.abw, 2
  %.sroa.0207.1769 = or disjoint i8 %i.aby, %i.abx
  %.sroa.0207.1 = zext nneg i8 %.sroa.0207.1769 to i32
  %i.abz = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.zj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, i64 noundef %i.abu, i32 noundef 32, i32 noundef %.sroa.0207.1) ; 2 uses
  %i.aca = extractvalue { ptr, i64 } %i.abz, 0
  %i.acb = extractvalue { ptr, i64 } %i.abz, 1
  %i.acc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.acd = load ptr, ptr %i.acc, align 8, !invariant.load !21, !nonnull !21
  call void %i.acd(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.0, i32 %.sroa.52.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aca, i64 noundef %i.acb, i64 noundef %.sroa.0154.4, i8 noundef %.sroa.0101.4, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit567

bb.fm:                                            ; preds = %bb.fl
  %i.ace = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.acf = load ptr, ptr %i.ace, align 8, !invariant.load !21, !nonnull !21
  call void %i.acf(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.acg = sub i32 0, %.sroa.0147.1
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit561.thread

bb.fn:                                            ; preds = %bb.e, %bb.e, %bb.e
  %i.ach = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aci = load ptr, ptr %i.ach, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.aci(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 1, i8 noundef 5) #45
  switch i8 %.sroa.0107.0, label %bb.fq [
    i8 14, label %bb.fo
    i8 13, label %bb.fp
    i8 10, label %bb.ft
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ack = load i32, ptr %i.acj, align 8, !noundef !21
  %i.acl = sext i32 %i.ack to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fp:                                            ; preds = %bb.fn
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_operand:bb.a
  %i.po = trunc nuw i32 %..i.i464 to i8
  store ptr %.sroa.01.1.i456, ptr %i.m, align 8, !alias.scope !11088
  %i.pp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.9.1.i457, ptr %i.pp, align 8, !alias.scope !11088
  %i.pq = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.02.0.i458, ptr %i.pq, align 8, !alias.scope !11088
  %i.pr = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.93.0.i459, ptr %i.pr, align 8, !alias.scope !11088
  %i.ps = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %.sroa.04.0.i461, ptr %i.ps, align 8, !alias.scope !11088
  %i.pt = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %.sroa.3.0.i463, ptr %i.pt, align 8, !alias.scope !11088
  %i.pu = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i8 %i.po, ptr %i.pu, align 8, !alias.scope !11088
  %i.pv = getelementptr inbounds nuw i8, ptr %i.m, i64 49
  store i8 %i.ph, ptr %i.pv, align 1, !alias.scope !11088
  %i.pw = getelementptr inbounds nuw i8, ptr %i.m, i64 50
  %i.px = lshr i32 %i.pf, 15
  %i.py = trunc i32 %i.px to i8
  %i.pz = and i8 %i.py, 1
  store i8 %i.pz, ptr %i.pw, align 2, !alias.scope !11088
  %i.qa = getelementptr inbounds nuw i8, ptr %i.m, i64 51 ; 3 uses
  %i.qb = lshr i32 %i.pf, 16
  %i.qc = trunc i32 %i.qb to i8
  %i.qd = and i8 %i.qc, 1                         ; 2 uses
  store i8 %i.qd, ptr %i.qa, align 1, !alias.scope !11088
  %i.qe = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.qf = lshr i32 %i.pf, 17
  %i.qg = trunc i32 %i.qf to i8
  %i.qh = and i8 %i.qg, 1
  store i8 %i.qh, ptr %i.qe, align 4, !alias.scope !11088
  %i.qi = getelementptr inbounds nuw i8, ptr %i.m, i64 53 ; 3 uses
  %i.qj = lshr i32 %i.pf, 18
  %i.qk = trunc i32 %i.qj to i8
  %i.ql = and i8 %i.qk, 1                         ; 2 uses
  store i8 %i.ql, ptr %i.qi, align 1, !alias.scope !11088
  %i.qm = getelementptr inbounds nuw i8, ptr %i.m, i64 54
  store i8 0, ptr %i.qm, align 2, !alias.scope !11088
  %i.qn = getelementptr inbounds nuw i8, ptr %i.m, i64 55
  store i8 0, ptr %i.qn, align 1, !alias.scope !11088
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.qp = load ptr, ptr %i.qo, align 8, !noundef !21 ; 2 uses
  %.not250 = icmp eq ptr %i.qp, null
  br i1 %.not250, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.qr = load ptr, ptr %i.qq, align 8, !nonnull !21, !align !25, !noundef !21
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.qt(ptr noundef nonnull %i.qp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %._crit_edge867 unwind label %.thread770

._crit_edge867:                                   ; preds = %bb.cc
  %.pre868 = load i8, ptr %i.qi, align 1, !range !27
  %.pre869 = load i8, ptr %i.qa, align 1, !range !27
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge867, %bb.cb
  %i.qu = phi i8 [ %.pre869, %._crit_edge867 ], [ %i.qd, %bb.cb ]
  %i.qv = phi i8 [ %.pre868, %._crit_edge867 ], [ %i.ql, %bb.cb ]
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !noundef !21
  %i.qy = and i64 %i.qx, 65535                    ; 2 uses
  %i.qz = shl nuw nsw i8 %i.qv, 1
  %i.ra = shl nuw nsw i8 %i.qu, 2
  %.sroa.0199.1831 = or disjoint i8 %i.ra, %i.qz
  %.sroa.0199.1 = zext nneg i8 %.sroa.0199.1831 to i32
  %i.rb = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, i64 noundef %i.qy, i32 noundef 16, i32 noundef %.sroa.0199.1)
          to label %bb.ce unwind label %.thread770 ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %i.rc = extractvalue { ptr, i64 } %i.rb, 0
  %i.rd = extractvalue { ptr, i64 } %i.rb, 1
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.rf = load ptr, ptr %i.re, align 8, !invariant.load !21, !nonnull !21 ; 2 uses
  invoke void %i.rf(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rc, i64 noundef %i.rd, i64 noundef %i.qy, i8 noundef 3, i8 noundef 10)
          to label %bb.cf unwind label %.thread770

bb.cf:                                            ; preds = %bb.ce
  invoke void %.val345(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @400, i64 noundef 1, i8 noundef 6)
          to label %.invoke963 unwind label %.thread770

.invoke963:                                       ; preds = %bb.cf
  %i.rg = load i8, ptr %i.qi, align 1, !range !27, !noundef !21
  %i.rh = load i8, ptr %i.qa, align 1, !range !27, !noundef !21
  %i.ri = shl nuw nsw i8 %i.rg, 1
  %i.rj = shl nuw nsw i8 %i.rh, 2
  %.sroa.0202.1833 = or disjoint i8 %i.rj, %i.ri
  %.sroa.0202.1 = zext nneg i8 %.sroa.0202.1833 to i32
  %spec.select966 = select i1 %i.ah, i32 %i.aj, i32 %i.ak
  %spec.select967 = select i1 %i.ah, i32 32, i32 16
  %i.rk = zext i32 %spec.select966 to i64
  %i.rl = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, i64 noundef %i.rk, i32 noundef %spec.select967, i32 noundef %.sroa.0202.1)
          to label %bb.cg unwind label %.thread770 ; 2 uses

bb.cg:                                            ; preds = %.invoke963
  %.sroa.0130.0 = extractvalue { ptr, i64 } %i.rl, 0
  %.sroa.3.0 = extractvalue { ptr, i64 } %i.rl, 1
  %i.rm = add nsw i8 %i.ma, -3
  %switch.and281 = and i8 %i.rm, -3
  %switch.selectcmp282 = icmp eq i8 %switch.and281, 0
  %i.rn = select i1 %switch.selectcmp282, i8 12, i8 11
  invoke void %i.rf(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0130.0, i64 noundef %.sroa.3.0, i64 noundef %.sroa.0153.1, i8 noundef %.sroa.099.1, i8 noundef %i.rn)
          to label %bb.ch unwind label %.thread770

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bx

bb.ci:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit438
  %i.ro = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val322 = load ptr, ptr %i.ro, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val322, i64 noundef %.val321, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11090
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit: ; preds = %bb.bz, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.val319 = load i64, ptr %i.q, align 8, !range !59, !noundef !21 ; 2 uses
  %i.rp = icmp sgt i64 %.val319, 0
  br i1 %i.rp, label %bb.cj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit470

bb.cj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val320 = load ptr, ptr %i.rq, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val320, i64 noundef %.val319, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11091
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit470

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit470: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.am

bb.ck:                                            ; preds = %bb.d
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rs = load i32, ptr %i.rr, align 8, !noundef !21
  %i.rt = trunc i32 %i.rs to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cl:                                            ; preds = %bb.d
  %trunc = trunc nuw i32 %5 to i8
  switch i8 %trunc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.cm
    i8 1, label %bb.cn
    i8 2, label %bb.co
    i8 3, label %bb.cp
    i8 4, label %bb.cq
    i8 5, label %bb.cr
    i8 6, label %bb.cs
    i8 7, label %bb.ct
    i8 8, label %bb.cu
    i8 9, label %bb.cv
    i8 10, label %bb.cw
    i8 11, label %bb.cx
    i8 12, label %bb.cy
    i8 13, label %bb.cz
    i8 14, label %bb.da
    i8 15, label %bb.db
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.rv = load i8, ptr %i.ru, align 4, !alias.scope !11092, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cn:                                            ; preds = %bb.cl
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.rx = load i8, ptr %i.rw, align 1, !alias.scope !11092, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.co:                                            ; preds = %bb.cl
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.rz = load i8, ptr %i.ry, align 2, !alias.scope !11092, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cp:                                            ; preds = %bb.cl
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !11092, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cq:                                            ; preds = %bb.cl
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sd = load i32, ptr %i.sc, align 8, !alias.scope !11092, !noundef !21
  %i.se = trunc i32 %i.sd to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cr:                                            ; preds = %bb.cl
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sg = load i32, ptr %i.sf, align 8, !alias.scope !11092, !noundef !21
  %i.sh = lshr i32 %i.sg, 8
  %i.si = trunc i32 %i.sh to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cs:                                            ; preds = %bb.cl
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sk = load i32, ptr %i.sj, align 8, !alias.scope !11092, !noundef !21
  %i.sl = lshr i32 %i.sk, 16
  %i.sm = trunc i32 %i.sl to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ct:                                            ; preds = %bb.cl
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 27
  %6 = load i8, ptr %i.sn, align 1, !alias.scope !11092
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cu:                                            ; preds = %bb.cl
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sp = load i64, ptr %i.so, align 8, !alias.scope !11092, !noundef !21
  %i.sq = trunc i64 %i.sp to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cv:                                            ; preds = %bb.cl
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ss = load i64, ptr %i.sr, align 8, !alias.scope !11092, !noundef !21
  %i.st = lshr i64 %i.ss, 8
  %i.su = trunc i64 %i.st to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cw:                                            ; preds = %bb.cl
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !alias.scope !11092, !noundef !21
  %i.sx = lshr i64 %i.sw, 16
  %i.sy = trunc i64 %i.sx to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cx:                                            ; preds = %bb.cl
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ta = load i64, ptr %i.sz, align 8, !alias.scope !11092, !noundef !21
  %i.tb = lshr i64 %i.ta, 24
  %i.tc = trunc i64 %i.tb to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cy:                                            ; preds = %bb.cl
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !11092, !noundef !21
  %i.tf = lshr i64 %i.te, 32
  %i.tg = trunc i64 %i.tf to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.cz:                                            ; preds = %bb.cl
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ti = load i64, ptr %i.th, align 8, !alias.scope !11092, !noundef !21
  %i.tj = lshr i64 %i.ti, 40
  %i.tk = trunc i64 %i.tj to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.da:                                            ; preds = %bb.cl
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tm = load i64, ptr %i.tl, align 8, !alias.scope !11092, !noundef !21
  %i.tn = lshr i64 %i.tm, 48
  %i.to = trunc i64 %i.tn to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.db:                                            ; preds = %bb.cl
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 15
  %7 = load i8, ptr %i.tp, align 1, !alias.scope !11092
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dc:                                            ; preds = %bb.d
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tr = load i64, ptr %i.tq, align 8, !noundef !21
  %i.ts = trunc i64 %i.tr to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.d, %bb.dc, %bb.ck
  %.sroa.0132.1 = phi i8 [ %i.rt, %bb.ck ], [ 3, %bb.d ], [ %i.ts, %bb.dc ], [ 0, %bb.cl ], [ %i.rv, %bb.cm ], [ %i.rx, %bb.cn ], [ %i.rz, %bb.co ], [ %i.sb, %bb.cp ], [ %i.se, %bb.cq ], [ %i.si, %bb.cr ], [ %i.sm, %bb.cs ], [ %6, %bb.ct ], [ %i.sq, %bb.cu ], [ %i.su, %bb.cv ], [ %i.sy, %bb.cw ], [ %i.tc, %bb.cx ], [ %i.tg, %bb.cy ], [ %i.tk, %bb.cz ], [ %i.to, %bb.da ], [ %7, %bb.db ] ; 7 uses
  store i32 0, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.tu = load ptr, ptr %i.tt, align 8, !noundef !21 ; 2 uses
  %.not243 = icmp eq ptr %i.tu, null
  br i1 %.not243, label %.thread786, label %bb.dd

.thread786:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  store i64 -3, ptr %i.l, align 8
  br label %bb.dn

bb.dd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.tw = load ptr, ptr %i.tv, align 8, !nonnull !21, !align !25, !noundef !21
  %i.tx = zext i8 %.sroa.0132.1 to i64            ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  %i.tz = load ptr, ptr %i.ty, align 8, !invariant.load !21, !nonnull !21
  call void %i.tz(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, ptr noundef nonnull %i.tu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, i64 noundef %i.tx, i32 noundef 1) #45
  %.pr785 = load i64, ptr %i.l, align 8           ; 5 uses
  %.not244 = icmp eq i64 %.pr785, -3
  br i1 %.not244, label %bb.dn, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ua = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ub = load i32, ptr %i.ua, align 8, !noundef !21
  %i.uc = and i32 %i.ub, 1
  %i.ud = icmp eq i32 %i.uc, 0
  br i1 %i.ud, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.uf = load ptr, ptr %i.ue, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 1776 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val337 = load i32, ptr %i.uh, align 8, !noundef !21
  %i.ui = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val338 = load ptr, ptr %i.ui, align 8         ; 2 uses
  %i.uj = and i32 %.val337, 40
  %or.cond.i494 = icmp eq i32 %i.uj, 0            ; 2 uses
  %.sroa.3.0.in.v.i495 = select i1 %or.cond.i494, i64 16, i64 40
  %.sroa.3.0.in.i496 = getelementptr inbounds nuw i8, ptr %i.ug, i64 %.sroa.3.0.in.v.i495
  %.sroa.0.0.in.v.i = select i1 %or.cond.i494, i64 8, i64 32
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.ug, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i497 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !11093, !nonnull !21, !noundef !21
  %.sroa.3.0.i498 = load i64, ptr %.sroa.3.0.in.i496, align 8, !alias.scope !11093, !noundef !21
  invoke void %.val338(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i497, i64 noundef %.sroa.3.0.i498, i8 noundef 4) #45
          to label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit unwind label %bb.dg, !inline_history !5

bb.dg:                                            ; preds = %bb.dk, %bb.df, %bb.dj, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit
  %lpad.thr_comm.split-lp912 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i499 = add nsw i64 %.pr785, -1
  %switch.i500 = icmp ult i64 %.0.val.off.i499, -4
  br i1 %switch.i500, label %bb.dh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.dh:                                            ; preds = %bb.dg
  %i.uk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val318 = load ptr, ptr %i.uk, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val318, i64 noundef %.pr785, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11094
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit: ; preds = %bb.df
  invoke void %.val338(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.di unwind label %bb.dg

bb.di:                                            ; preds = %bb.de, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.un = load i32, ptr %i.um, align 8, !noundef !21 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11095)
  call void @llvm.experimental.noalias.scope.decl(metadata !11096)
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.up = load i8, ptr %i.uo, align 4, !range !40, !alias.scope !11096, !noundef !21 ; 3 uses
  %i.uq = shl nuw nsw i8 %i.up, 2
  %narrow.i502 = add nuw nsw i8 %i.uq, -40
  %switch.offset.i503 = zext i8 %narrow.i502 to i64
  %narrow22.i504 = mul nuw i8 %i.up, 48           ; 2 uses
  %i.ur = or disjoint i8 %narrow22.i504, 8
  %switch.offset12.i505 = zext i8 %i.ur to i64
  %switch.idx.mult14.i507 = zext i8 %narrow22.i504 to i64
  %i.us = getelementptr inbounds nuw i8, ptr %i.ul, i64 %switch.offset.i503
  %.sroa.01.4.in.i512 = getelementptr inbounds nuw i8, ptr %i.ul, i64 %switch.offset12.i505
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ul, i64 %switch.idx.mult14.i507 ; 3 uses
  %.sroa.9.4.in.i513 = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 40
  %.sroa.0.0.i514 = load i32, ptr %i.us, align 4, !alias.scope !11096, !noundef !21
  %.sroa.01.1.i515 = load ptr, ptr %.sroa.01.4.in.i512, align 8, !alias.scope !11096, !nonnull !21, !noundef !21
  %.sroa.9.1.i516 = load i64, ptr %.sroa.9.4.in.i513, align 8, !alias.scope !11096, !noundef !21
  %.sroa.02.0.i517 = load ptr, ptr %i.uu, align 8, !alias.scope !11096, !nonnull !21, !noundef !21
  %.sroa.93.0.i518 = load i64, ptr %i.uv, align 8, !alias.scope !11096, !noundef !21
  %.sroa.04.0.in.i519 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i520 = load ptr, ptr %.sroa.04.0.in.i519, align 8, !alias.scope !11096, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i521 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i522 = load i64, ptr %.sroa.3.0.in.i521, align 8, !alias.scope !11096, !noundef !21
  %..i.i523 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i514, i32 255)
  %i.uw = trunc nuw i32 %..i.i523 to i8
  store ptr %.sroa.01.1.i515, ptr %i.k, align 8, !alias.scope !11095
  %i.ux = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.9.1.i516, ptr %i.ux, align 8, !alias.scope !11095
  %i.uy = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.02.0.i517, ptr %i.uy, align 8, !alias.scope !11095
  %i.uz = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.93.0.i518, ptr %i.uz, align 8, !alias.scope !11095
  %i.va = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %.sroa.04.0.i520, ptr %i.va, align 8, !alias.scope !11095
  %i.vb = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %.sroa.3.0.i522, ptr %i.vb, align 8, !alias.scope !11095
  %i.vc = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i8 %i.uw, ptr %i.vc, align 8, !alias.scope !11095
  %i.vd = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  store i8 %i.up, ptr %i.vd, align 1, !alias.scope !11095
  %i.ve = getelementptr inbounds nuw i8, ptr %i.k, i64 50
  %i.vf = lshr i32 %i.un, 15
  %i.vg = trunc i32 %i.vf to i8
  %i.vh = and i8 %i.vg, 1
  store i8 %i.vh, ptr %i.ve, align 2, !alias.scope !11095
  %i.vi = getelementptr inbounds nuw i8, ptr %i.k, i64 51
  %i.vj = lshr i32 %i.un, 16
  %i.vk = trunc i32 %i.vj to i8
  %i.vl = and i8 %i.vk, 1
  store i8 %i.vl, ptr %i.vi, align 1, !alias.scope !11095
  %i.vm = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.vn = lshr i32 %i.un, 17
  %i.vo = trunc i32 %i.vn to i8
  %i.vp = and i8 %i.vo, 1
  store i8 %i.vp, ptr %i.vm, align 4, !alias.scope !11095
  %i.vq = getelementptr inbounds nuw i8, ptr %i.k, i64 53
  %i.vr = lshr i32 %i.un, 14
  %i.vs = trunc i32 %i.vr to i8
  %i.vt = and i8 %i.vs, 1
  store i8 %i.vt, ptr %i.vq, align 1, !alias.scope !11095
  %i.vu = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.vv = lshr i32 %i.un, 19
  %i.vw = trunc i32 %i.vv to i8
  %i.vx = and i8 %i.vw, 1
  store i8 %i.vx, ptr %i.vu, align 2, !alias.scope !11095
  %i.vy = getelementptr inbounds nuw i8, ptr %i.k, i64 55
  store i8 0, ptr %i.vy, align 1, !alias.scope !11095
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.wa = load ptr, ptr %i.vz, align 8, !noundef !21 ; 2 uses
  %.not246 = icmp eq ptr %i.wa, null
  br i1 %.not246, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.wc = load ptr, ptr %i.wb, align 8, !nonnull !21, !align !25, !noundef !21
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.we = load ptr, ptr %i.wd, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.we(ptr noundef nonnull %i.wa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %._crit_edge852 unwind label %bb.dg

._crit_edge852:                                   ; preds = %bb.dj
  %.pre853 = load i32, ptr %i.um, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %._crit_edge852, %bb.di
  %i.wf = phi i32 [ %.pre853, %._crit_edge852 ], [ %i.un, %bb.di ]
  %i.wg = and i32 %i.wf, 33554432
  %i.wh = icmp ne i32 %i.wg, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ul, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, i64 noundef %i.tx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, i1 noundef zeroext %i.wh, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.dl unwind label %bb.dg

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.0.val.off.i525 = add nsw i64 %.pr785, -1
  %switch.i526 = icmp ult i64 %.0.val.off.i525, -4
  br i1 %switch.i526, label %bb.dm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit527

bb.dm:                                            ; preds = %bb.dl
  %i.wi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val316 = load ptr, ptr %i.wi, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val316, i64 noundef %.pr785, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11097
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit527

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit527: ; preds = %.thread918, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.am

bb.dn:                                            ; preds = %bb.dd, %.thread786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.wl = load i32, ptr %i.wk, align 8, !noundef !21 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11098)
  call void @llvm.experimental.noalias.scope.decl(metadata !11099)
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.wn = load i8, ptr %i.wm, align 4, !range !40, !alias.scope !11099, !noundef !21 ; 3 uses
  %i.wo = shl nuw nsw i8 %i.wn, 2
  %narrow.i472 = add nuw nsw i8 %i.wo, -40
  %switch.offset.i473 = zext i8 %narrow.i472 to i64
  %narrow22.i474 = mul nuw i8 %i.wn, 48           ; 2 uses
  %i.wp = or disjoint i8 %narrow22.i474, 8
  %switch.offset12.i475 = zext i8 %i.wp to i64
  %switch.idx.mult14.i477 = zext i8 %narrow22.i474 to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wj, i64 %switch.offset.i473
  %.sroa.01.4.in.i482 = getelementptr inbounds nuw i8, ptr %i.wj, i64 %switch.offset12.i475
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wj, i64 %switch.idx.mult14.i477 ; 3 uses
  %.sroa.9.4.in.i483 = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 32
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 40
  %.sroa.0.0.i484 = load i32, ptr %i.wq, align 4, !alias.scope !11099, !noundef !21
  %.sroa.01.1.i485 = load ptr, ptr %.sroa.01.4.in.i482, align 8, !alias.scope !11099, !nonnull !21, !noundef !21
  %.sroa.9.1.i486 = load i64, ptr %.sroa.9.4.in.i483, align 8, !alias.scope !11099, !noundef !21
  %.sroa.02.0.i487 = load ptr, ptr %i.ws, align 8, !alias.scope !11099, !nonnull !21, !noundef !21
  %.sroa.93.0.i488 = load i64, ptr %i.wt, align 8, !alias.scope !11099, !noundef !21
  %.sroa.04.0.in.i489 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i490 = load ptr, ptr %.sroa.04.0.in.i489, align 8, !alias.scope !11099, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i491 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i492 = load i64, ptr %.sroa.3.0.in.i491, align 8, !alias.scope !11099, !noundef !21
  %..i.i493 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i484, i32 255)
  %i.wu = trunc nuw i32 %..i.i493 to i8
  store ptr %.sroa.01.1.i485, ptr %i.j, align 8, !alias.scope !11098
  %i.wv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.9.1.i486, ptr %i.wv, align 8, !alias.scope !11098
  %i.ww = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.02.0.i487, ptr %i.ww, align 8, !alias.scope !11098
  %i.wx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.93.0.i488, ptr %i.wx, align 8, !alias.scope !11098
  %i.wy = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %.sroa.04.0.i490, ptr %i.wy, align 8, !alias.scope !11098
  %i.wz = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.3.0.i492, ptr %i.wz, align 8, !alias.scope !11098
  %i.xa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i8 %i.wu, ptr %i.xa, align 8, !alias.scope !11098
  %i.xb = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  store i8 %i.wn, ptr %i.xb, align 1, !alias.scope !11098
  %i.xc = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  %i.xd = lshr i32 %i.wl, 15
  %i.xe = trunc i32 %i.xd to i8
  %i.xf = and i8 %i.xe, 1
  store i8 %i.xf, ptr %i.xc, align 2, !alias.scope !11098
  %i.xg = getelementptr inbounds nuw i8, ptr %i.j, i64 51 ; 2 uses
  %i.xh = lshr i32 %i.wl, 16
  %i.xi = trunc i32 %i.xh to i8
  %i.xj = and i8 %i.xi, 1
  store i8 %i.xj, ptr %i.xg, align 1, !alias.scope !11098
  %i.xk = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.xl = lshr i32 %i.wl, 17
  %i.xm = trunc i32 %i.xl to i8
  %i.xn = and i8 %i.xm, 1
  store i8 %i.xn, ptr %i.xk, align 4, !alias.scope !11098
  %i.xo = getelementptr inbounds nuw i8, ptr %i.j, i64 53 ; 2 uses
  %i.xp = lshr i32 %i.wl, 14
  %i.xq = trunc i32 %i.xp to i8
  %i.xr = and i8 %i.xq, 1
  store i8 %i.xr, ptr %i.xo, align 1, !alias.scope !11098
  %i.xs = getelementptr inbounds nuw i8, ptr %i.j, i64 54 ; 2 uses
  %i.xt = lshr i32 %i.wl, 19
  %i.xu = trunc i32 %i.xt to i8
  %i.xv = and i8 %i.xu, 1                         ; 2 uses
  store i8 %i.xv, ptr %i.xs, align 2, !alias.scope !11098
  %i.xw = getelementptr inbounds nuw i8, ptr %i.j, i64 55
  store i8 0, ptr %i.xw, align 1, !alias.scope !11098
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.xy = load ptr, ptr %i.xx, align 8, !noundef !21 ; 2 uses
  %.not245 = icmp eq ptr %i.xy, null
  br i1 %.not245, label %bb.do, label %._crit_edge854

._crit_edge854:                                   ; preds = %bb.dn
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ya = load ptr, ptr %i.xz, align 8, !nonnull !21, !align !25, !noundef !21
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 24
  %i.yc = load ptr, ptr %i.yb, align 8, !invariant.load !21, !nonnull !21
  call void %i.yc(ptr noundef nonnull %i.xy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
  %.pre855 = load i8, ptr %i.xs, align 2, !range !27
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge854, %bb.dn
  %i.yd = phi i8 [ %.pre855, %._crit_edge854 ], [ %i.xv, %bb.dn ]
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.yf = zext i8 %.sroa.0132.1 to i64
  br label %.thread918

bb.dq:                                            ; preds = %bb.do
  %i.yg = sext i8 %.sroa.0132.1 to i64            ; 2 uses
  %i.yh = icmp slt i8 %.sroa.0132.1, 0
  br i1 %i.yh, label %bb.dr, label %.thread918

.thread918:                                       ; preds = %bb.dr, %bb.dq, %bb.dp
  %.sroa.0153.2 = phi i64 [ %i.yg, %bb.dr ], [ %i.yg, %bb.dq ], [ %i.yf, %bb.dp ]
  %.sroa.0132.2 = phi i8 [ %i.yu, %bb.dr ], [ %.sroa.0132.1, %bb.dq ], [ %.sroa.0132.1, %bb.dp ]
  %.sroa.099.2 = phi i8 [ 0, %bb.dr ], [ 0, %bb.dq ], [ 1, %bb.dp ]
  %i.yi = zext i8 %.sroa.0132.2 to i64
  %i.yj = load i8, ptr %i.xo, align 1, !range !27, !noundef !21
  %i.yk = load i8, ptr %i.xg, align 1, !range !27, !noundef !21
  %i.yl = shl nuw nsw i8 %i.yj, 1
  %i.ym = shl nuw nsw i8 %i.yk, 2
  %.sroa.0208.1826 = or disjoint i8 %i.ym, %i.yl
  %.sroa.0208.1 = zext nneg i8 %.sroa.0208.1826 to i32
  %i.yn = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.wj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j, i64 noundef %i.yi, i32 noundef 8, i32 noundef %.sroa.0208.1) ; 2 uses
  %i.yo = extractvalue { ptr, i64 } %i.yn, 0
  %i.yp = extractvalue { ptr, i64 } %i.yn, 1
  %i.yq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.yr = load ptr, ptr %i.yq, align 8, !invariant.load !21, !nonnull !21
  call void %i.yr(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.yo, i64 noundef %i.yp, i64 noundef %.sroa.0153.2, i8 noundef %.sroa.099.2, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit527

bb.dr:                                            ; preds = %bb.dq
  %i.ys = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.yt = load ptr, ptr %i.ys, align 8, !invariant.load !21, !nonnull !21
  call void %i.yt(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.yu = sub i8 0, %.sroa.0132.1
  br label %.thread918

bb.ds:                                            ; preds = %bb.d
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yw = load i32, ptr %i.yv, align 8, !noundef !21
  %i.yx = trunc i32 %i.yw to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dt:                                            ; preds = %bb.d
  %trunc.i = trunc nuw i32 %5 to i8
  switch i8 %trunc.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.du
    i8 1, label %bb.dv
    i8 2, label %bb.dw
    i8 3, label %bb.dx
    i8 4, label %bb.dy
    i8 5, label %bb.dz
    i8 6, label %bb.ea
    i8 7, label %bb.eb
  ]

bb.du:                                            ; preds = %bb.dt
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.yz = load i16, ptr %i.yy, align 4, !alias.scope !11100
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dv:                                            ; preds = %bb.dt
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.zb = load i16, ptr %i.za, align 2, !alias.scope !11100
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dw:                                            ; preds = %bb.dt
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zd = load i32, ptr %i.zc, align 8, !alias.scope !11100, !noundef !21
  %i.ze = trunc i32 %i.zd to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dx:                                            ; preds = %bb.dt
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 26
  %8 = load i16, ptr %i.zf, align 2, !alias.scope !11100
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dy:                                            ; preds = %bb.dt
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zh = load i64, ptr %i.zg, align 8, !alias.scope !11100, !noundef !21
  %i.zi = trunc i64 %i.zh to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dz:                                            ; preds = %bb.dt
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zk = load i64, ptr %i.zj, align 8, !alias.scope !11100, !noundef !21
  %i.zl = lshr i64 %i.zk, 16
  %i.zm = trunc i64 %i.zl to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ea:                                            ; preds = %bb.dt
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zo = load i64, ptr %i.zn, align 8, !alias.scope !11100, !noundef !21
  %i.zp = lshr i64 %i.zo, 32
  %i.zq = trunc i64 %i.zp to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eb:                                            ; preds = %bb.dt
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 14
  %9 = load i16, ptr %i.zr, align 2, !alias.scope !11100
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ec:                                            ; preds = %bb.d
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zt = load i32, ptr %i.zs, align 8, !noundef !21
  %i.zu = trunc i32 %i.zt to i8
  %i.zv = sext i8 %i.zu to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ec, %bb.ds
  %.sroa.0139.1 = phi i16 [ %i.yx, %bb.ds ], [ %i.zv, %bb.ec ], [ 0, %bb.dt ], [ %i.yz, %bb.du ], [ %i.zb, %bb.dv ], [ %i.ze, %bb.dw ], [ %8, %bb.dx ], [ %i.zi, %bb.dy ], [ %i.zm, %bb.dz ], [ %i.zq, %bb.ea ], [ %9, %bb.eb ] ; 7 uses
  store i32 0, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.zx = load ptr, ptr %i.zw, align 8, !noundef !21 ; 2 uses
  %.not238 = icmp eq ptr %i.zx, null
  br i1 %.not238, label %.thread798, label %bb.ed

.thread798:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  store i64 -3, ptr %i.i, align 8
  br label %bb.en

bb.ed:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.zz = load ptr, ptr %i.zy, align 8, !nonnull !21, !align !25, !noundef !21
  %i.aaa = zext i16 %.sroa.0139.1 to i64          ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zz, i64 24
  %i.aac = load ptr, ptr %i.aab, align 8, !invariant.load !21, !nonnull !21
  call void %i.aac(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noundef nonnull %i.zx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, i64 noundef %i.aaa, i32 noundef 2) #45
  %.pr797 = load i64, ptr %i.i, align 8           ; 5 uses
  %.not239 = icmp eq i64 %.pr797, -3
  br i1 %.not239, label %bb.en, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aad = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aae = load i32, ptr %i.aad, align 8, !noundef !21
  %i.aaf = and i32 %i.aae, 1
  %i.aag = icmp eq i32 %i.aaf, 0
  br i1 %i.aag, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aai = load ptr, ptr %i.aah, align 8, !nonnull !21, !align !25, !noundef !21
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 1776 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val335 = load i32, ptr %i.aak, align 8, !noundef !21
  %i.aal = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val336 = load ptr, ptr %i.aal, align 8        ; 2 uses
  %i.aam = and i32 %.val335, 40
  %or.cond.i553 = icmp eq i32 %i.aam, 0           ; 2 uses
  %.sroa.3.0.in.v.i554 = select i1 %or.cond.i553, i64 16, i64 40
  %.sroa.3.0.in.i555 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %.sroa.3.0.in.v.i554
  %.sroa.0.0.in.v.i556 = select i1 %or.cond.i553, i64 8, i64 32
  %.sroa.0.0.in.i557 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %.sroa.0.0.in.v.i556
  %.sroa.0.0.i558 = load ptr, ptr %.sroa.0.0.in.i557, align 8, !alias.scope !11101, !nonnull !21, !noundef !21
  %.sroa.3.0.i559 = load i64, ptr %.sroa.3.0.in.i555, align 8, !alias.scope !11101, !noundef !21
  invoke void %.val336(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i558, i64 noundef %.sroa.3.0.i559, i8 noundef 4) #45
          to label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit560 unwind label %bb.eg, !inline_history !5

bb.eg:                                            ; preds = %bb.ek, %bb.ef, %bb.ej, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit560
  %lpad.thr_comm.split-lp925 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i561 = add nsw i64 %.pr797, -1
  %switch.i562 = icmp ult i64 %.0.val.off.i561, -4
  br i1 %switch.i562, label %bb.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.eh:                                            ; preds = %bb.eg
  %i.aan = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val314 = load ptr, ptr %i.aan, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val314, i64 noundef %.pr797, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11102
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit560: ; preds = %bb.ef
  invoke void %.val336(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.ei unwind label %bb.eg

bb.ei:                                            ; preds = %bb.ee, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 8, !noundef !21 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11103)
  call void @llvm.experimental.noalias.scope.decl(metadata !11104)
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aas = load i8, ptr %i.aar, align 4, !range !40, !alias.scope !11104, !noundef !21 ; 3 uses
  %i.aat = shl nuw nsw i8 %i.aas, 2
  %narrow.i564 = add nuw nsw i8 %i.aat, -40
  %switch.offset.i565 = zext i8 %narrow.i564 to i64
  %narrow22.i566 = mul nuw i8 %i.aas, 48          ; 2 uses
  %i.aau = or disjoint i8 %narrow22.i566, 8
  %switch.offset12.i567 = zext i8 %i.aau to i64
  %switch.idx.mult14.i569 = zext i8 %narrow22.i566 to i64
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aao, i64 %switch.offset.i565
  %.sroa.01.4.in.i574 = getelementptr inbounds nuw i8, ptr %i.aao, i64 %switch.offset12.i567
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aao, i64 %switch.idx.mult14.i569 ; 3 uses
  %.sroa.9.4.in.i575 = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 32
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 40
  %.sroa.0.0.i576 = load i32, ptr %i.aav, align 4, !alias.scope !11104, !noundef !21
  %.sroa.01.1.i577 = load ptr, ptr %.sroa.01.4.in.i574, align 8, !alias.scope !11104, !nonnull !21, !noundef !21
  %.sroa.9.1.i578 = load i64, ptr %.sroa.9.4.in.i575, align 8, !alias.scope !11104, !noundef !21
  %.sroa.02.0.i579 = load ptr, ptr %i.aax, align 8, !alias.scope !11104, !nonnull !21, !noundef !21
  %.sroa.93.0.i580 = load i64, ptr %i.aay, align 8, !alias.scope !11104, !noundef !21
  %.sroa.04.0.in.i581 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i582 = load ptr, ptr %.sroa.04.0.in.i581, align 8, !alias.scope !11104, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i583 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i584 = load i64, ptr %.sroa.3.0.in.i583, align 8, !alias.scope !11104, !noundef !21
  %..i.i585 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i576, i32 255)
  %i.aaz = trunc nuw i32 %..i.i585 to i8
  store ptr %.sroa.01.1.i577, ptr %i.h, align 8, !alias.scope !11103
  %i.aba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.9.1.i578, ptr %i.aba, align 8, !alias.scope !11103
  %i.abb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.02.0.i579, ptr %i.abb, align 8, !alias.scope !11103
  %i.abc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.93.0.i580, ptr %i.abc, align 8, !alias.scope !11103
  %i.abd = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.sroa.04.0.i582, ptr %i.abd, align 8, !alias.scope !11103
  %i.abe = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.sroa.3.0.i584, ptr %i.abe, align 8, !alias.scope !11103
  %i.abf = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 %i.aaz, ptr %i.abf, align 8, !alias.scope !11103
  %i.abg = getelementptr inbounds nuw i8, ptr %i.h, i64 49
  store i8 %i.aas, ptr %i.abg, align 1, !alias.scope !11103
  %i.abh = getelementptr inbounds nuw i8, ptr %i.h, i64 50
  %i.abi = lshr i32 %i.aaq, 15
  %i.abj = trunc i32 %i.abi to i8
  %i.abk = and i8 %i.abj, 1
  store i8 %i.abk, ptr %i.abh, align 2, !alias.scope !11103
  %i.abl = getelementptr inbounds nuw i8, ptr %i.h, i64 51
  %i.abm = lshr i32 %i.aaq, 16
  %i.abn = trunc i32 %i.abm to i8
  %i.abo = and i8 %i.abn, 1
  store i8 %i.abo, ptr %i.abl, align 1, !alias.scope !11103
  %i.abp = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.abq = lshr i32 %i.aaq, 17
  %i.abr = trunc i32 %i.abq to i8
  %i.abs = and i8 %i.abr, 1
  store i8 %i.abs, ptr %i.abp, align 4, !alias.scope !11103
  %i.abt = getelementptr inbounds nuw i8, ptr %i.h, i64 53
  %i.abu = lshr i32 %i.aaq, 14
  %i.abv = trunc i32 %i.abu to i8
  %i.abw = and i8 %i.abv, 1
  store i8 %i.abw, ptr %i.abt, align 1, !alias.scope !11103
  %i.abx = getelementptr inbounds nuw i8, ptr %i.h, i64 54
  %i.aby = lshr i32 %i.aaq, 19
  %i.abz = trunc i32 %i.aby to i8
  %i.aca = and i8 %i.abz, 1
  store i8 %i.aca, ptr %i.abx, align 2, !alias.scope !11103
  %i.acb = getelementptr inbounds nuw i8, ptr %i.h, i64 55
  store i8 0, ptr %i.acb, align 1, !alias.scope !11103
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.acd = load ptr, ptr %i.acc, align 8, !noundef !21 ; 2 uses
  %.not241 = icmp eq ptr %i.acd, null
  br i1 %.not241, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.acf = load ptr, ptr %i.ace, align 8, !nonnull !21, !align !25, !noundef !21
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  %i.ach = load ptr, ptr %i.acg, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.ach(ptr noundef nonnull %i.acd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %._crit_edge859 unwind label %bb.eg

._crit_edge859:                                   ; preds = %bb.ej
  %.pre860 = load i32, ptr %i.aap, align 8
  br label %bb.ek

bb.ek:                                            ; preds = %._crit_edge859, %bb.ei
  %i.aci = phi i32 [ %.pre860, %._crit_edge859 ], [ %i.aaq, %bb.ei ]
  %i.acj = and i32 %i.aci, 33554432
  %i.ack = icmp ne i32 %i.acj, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aao, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, i64 noundef %i.aaa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, i1 noundef zeroext %i.ack, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.el unwind label %bb.eg

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.0.val.off.i587 = add nsw i64 %.pr797, -1
  %switch.i588 = icmp ult i64 %.0.val.off.i587, -4
  br i1 %switch.i588, label %bb.em, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit589

bb.em:                                            ; preds = %bb.el
  %i.acl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val312 = load ptr, ptr %i.acl, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val312, i64 noundef %.pr797, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11105
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit589

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit589: ; preds = %.thread931, %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.am

bb.en:                                            ; preds = %bb.ed, %.thread798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aco = load i32, ptr %i.acn, align 8, !noundef !21 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11106)
  call void @llvm.experimental.noalias.scope.decl(metadata !11107)
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.acq = load i8, ptr %i.acp, align 4, !range !40, !alias.scope !11107, !noundef !21 ; 3 uses
  %i.acr = shl nuw nsw i8 %i.acq, 2
  %narrow.i531 = add nuw nsw i8 %i.acr, -40
  %switch.offset.i532 = zext i8 %narrow.i531 to i64
  %narrow22.i533 = mul nuw i8 %i.acq, 48          ; 2 uses
  %i.acs = or disjoint i8 %narrow22.i533, 8
  %switch.offset12.i534 = zext i8 %i.acs to i64
  %switch.idx.mult14.i536 = zext i8 %narrow22.i533 to i64
  %i.act = getelementptr inbounds nuw i8, ptr %i.acm, i64 %switch.offset.i532
  %.sroa.01.4.in.i541 = getelementptr inbounds nuw i8, ptr %i.acm, i64 %switch.offset12.i534
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acm, i64 %switch.idx.mult14.i536 ; 3 uses
  %.sroa.9.4.in.i542 = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acu, i64 40
  %.sroa.0.0.i543 = load i32, ptr %i.act, align 4, !alias.scope !11107, !noundef !21
  %.sroa.01.1.i544 = load ptr, ptr %.sroa.01.4.in.i541, align 8, !alias.scope !11107, !nonnull !21, !noundef !21
  %.sroa.9.1.i545 = load i64, ptr %.sroa.9.4.in.i542, align 8, !alias.scope !11107, !noundef !21
  %.sroa.02.0.i546 = load ptr, ptr %i.acv, align 8, !alias.scope !11107, !nonnull !21, !noundef !21
  %.sroa.93.0.i547 = load i64, ptr %i.acw, align 8, !alias.scope !11107, !noundef !21
  %.sroa.04.0.in.i548 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i549 = load ptr, ptr %.sroa.04.0.in.i548, align 8, !alias.scope !11107, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i550 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i551 = load i64, ptr %.sroa.3.0.in.i550, align 8, !alias.scope !11107, !noundef !21
  %..i.i552 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i543, i32 255)
  %i.acx = trunc nuw i32 %..i.i552 to i8
  store ptr %.sroa.01.1.i544, ptr %i.g, align 8, !alias.scope !11106
  %i.acy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.9.1.i545, ptr %i.acy, align 8, !alias.scope !11106
  %i.acz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.02.0.i546, ptr %i.acz, align 8, !alias.scope !11106
  %i.ada = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.93.0.i547, ptr %i.ada, align 8, !alias.scope !11106
  %i.adb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %.sroa.04.0.i549, ptr %i.adb, align 8, !alias.scope !11106
  %i.adc = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.3.0.i551, ptr %i.adc, align 8, !alias.scope !11106
  %i.add = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 %i.acx, ptr %i.add, align 8, !alias.scope !11106
  %i.ade = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  store i8 %i.acq, ptr %i.ade, align 1, !alias.scope !11106
  %i.adf = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.adg = lshr i32 %i.aco, 15
  %i.adh = trunc i32 %i.adg to i8
  %i.adi = and i8 %i.adh, 1
  store i8 %i.adi, ptr %i.adf, align 2, !alias.scope !11106
  %i.adj = getelementptr inbounds nuw i8, ptr %i.g, i64 51 ; 2 uses
  %i.adk = lshr i32 %i.aco, 16
  %i.adl = trunc i32 %i.adk to i8
  %i.adm = and i8 %i.adl, 1
  store i8 %i.adm, ptr %i.adj, align 1, !alias.scope !11106
  %i.adn = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.ado = lshr i32 %i.aco, 17
  %i.adp = trunc i32 %i.ado to i8
  %i.adq = and i8 %i.adp, 1
  store i8 %i.adq, ptr %i.adn, align 4, !alias.scope !11106
  %i.adr = getelementptr inbounds nuw i8, ptr %i.g, i64 53 ; 2 uses
  %i.ads = lshr i32 %i.aco, 14
  %i.adt = trunc i32 %i.ads to i8
  %i.adu = and i8 %i.adt, 1
  store i8 %i.adu, ptr %i.adr, align 1, !alias.scope !11106
  %i.adv = getelementptr inbounds nuw i8, ptr %i.g, i64 54 ; 2 uses
  %i.adw = lshr i32 %i.aco, 19
  %i.adx = trunc i32 %i.adw to i8
  %i.ady = and i8 %i.adx, 1                       ; 2 uses
  store i8 %i.ady, ptr %i.adv, align 2, !alias.scope !11106
  %i.adz = getelementptr inbounds nuw i8, ptr %i.g, i64 55
  store i8 0, ptr %i.adz, align 1, !alias.scope !11106
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aeb = load ptr, ptr %i.aea, align 8, !noundef !21 ; 2 uses
  %.not240 = icmp eq ptr %i.aeb, null
  br i1 %.not240, label %bb.eo, label %._crit_edge861

._crit_edge861:                                   ; preds = %bb.en
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aed = load ptr, ptr %i.aec, align 8, !nonnull !21, !align !25, !noundef !21
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 24
  %i.aef = load ptr, ptr %i.aee, align 8, !invariant.load !21, !nonnull !21
  call void %i.aef(ptr noundef nonnull %i.aeb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
  %.pre862 = load i8, ptr %i.adv, align 2, !range !27
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge861, %bb.en
  %i.aeg = phi i8 [ %.pre862, %._crit_edge861 ], [ %i.ady, %bb.en ]
  %i.aeh = trunc nuw i8 %i.aeg to i1
  br i1 %i.aeh, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aei = zext i16 %.sroa.0139.1 to i64
  br label %.thread931

bb.eq:                                            ; preds = %bb.eo
  %i.aej = sext i16 %.sroa.0139.1 to i64          ; 2 uses
  %i.aek = icmp slt i16 %.sroa.0139.1, 0
  br i1 %i.aek, label %bb.er, label %.thread931

.thread931:                                       ; preds = %bb.er, %bb.eq, %bb.ep
  %.sroa.0153.3 = phi i64 [ %i.aej, %bb.er ], [ %i.aej, %bb.eq ], [ %i.aei, %bb.ep ]
  %.sroa.0139.2 = phi i16 [ %i.aex, %bb.er ], [ %.sroa.0139.1, %bb.eq ], [ %.sroa.0139.1, %bb.ep ]
  %.sroa.099.3 = phi i8 [ 2, %bb.er ], [ 2, %bb.eq ], [ 3, %bb.ep ]
  %i.ael = zext i16 %.sroa.0139.2 to i64
  %i.aem = load i8, ptr %i.adr, align 1, !range !27, !noundef !21
  %i.aen = load i8, ptr %i.adj, align 1, !range !27, !noundef !21
  %i.aeo = shl nuw nsw i8 %i.aem, 1
  %i.aep = shl nuw nsw i8 %i.aen, 2
  %.sroa.0211.1827 = or disjoint i8 %i.aep, %i.aeo
  %.sroa.0211.1 = zext nneg i8 %.sroa.0211.1827 to i32
  %i.aeq = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.acm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, i64 noundef %i.ael, i32 noundef 16, i32 noundef %.sroa.0211.1) ; 2 uses
  %i.aer = extractvalue { ptr, i64 } %i.aeq, 0
  %i.aes = extractvalue { ptr, i64 } %i.aeq, 1
  %i.aet = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aeu = load ptr, ptr %i.aet, align 8, !invariant.load !21, !nonnull !21
  call void %i.aeu(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aer, i64 noundef %i.aes, i64 noundef %.sroa.0153.3, i8 noundef %.sroa.099.3, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit589

bb.er:                                            ; preds = %bb.eq
  %i.aev = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aew = load ptr, ptr %i.aev, align 8, !invariant.load !21, !nonnull !21
  call void %i.aew(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.aex = sub i16 0, %.sroa.0139.1
  br label %.thread931

bb.es:                                            ; preds = %bb.d
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aez = load i32, ptr %i.aey, align 8, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.et:                                            ; preds = %bb.d
  %trunc.i590 = trunc nuw i32 %5 to i8
  switch i8 %trunc.i590, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.eu
    i8 1, label %bb.ev
    i8 2, label %bb.ew
    i8 3, label %bb.ex
  ]

bb.eu:                                            ; preds = %bb.et
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.afb = load i32, ptr %i.afa, align 4, !alias.scope !11108
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ev:                                            ; preds = %bb.et
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.afd = load i32, ptr %i.afc, align 8, !alias.scope !11108, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ew:                                            ; preds = %bb.et
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aff = load i64, ptr %i.afe, align 8, !alias.scope !11108, !noundef !21
  %i.afg = trunc i64 %i.aff to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ex:                                            ; preds = %bb.et
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %10 = load i32, ptr %i.afh, align 4, !alias.scope !11108
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ey:                                            ; preds = %bb.d
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.afj = load i32, ptr %i.afi, align 8, !noundef !21
  %i.afk = shl i32 %i.afj, 24
  %i.afl = ashr exact i32 %i.afk, 24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.ey, %bb.es
  %.sroa.0146.1 = phi i32 [ %i.aez, %bb.es ], [ %i.afl, %bb.ey ], [ 0, %bb.et ], [ %i.afb, %bb.eu ], [ %i.afd, %bb.ev ], [ %i.afg, %bb.ew ], [ %10, %bb.ex ] ; 7 uses
  store i32 0, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.afn = load ptr, ptr %i.afm, align 8, !noundef !21 ; 2 uses
  %.not233 = icmp eq ptr %i.afn, null
  br i1 %.not233, label %.thread810, label %bb.ez

.thread810:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  store i64 -3, ptr %i.f, align 8
  br label %bb.fj

bb.ez:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.afp = load ptr, ptr %i.afo, align 8, !nonnull !21, !align !25, !noundef !21
  %i.afq = zext i32 %.sroa.0146.1 to i64          ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afp, i64 24
  %i.afs = load ptr, ptr %i.afr, align 8, !invariant.load !21, !nonnull !21
  call void %i.afs(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull %i.afn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, i64 noundef %i.afq, i32 noundef 4) #45
  %.pr809 = load i64, ptr %i.f, align 8           ; 5 uses
  %.not234 = icmp eq i64 %.pr809, -3
  br i1 %.not234, label %bb.fj, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aft = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.afu = load i32, ptr %i.aft, align 8, !noundef !21
  %i.afv = and i32 %i.afu, 1
  %i.afw = icmp eq i32 %i.afv, 0
  br i1 %i.afw, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.afy = load ptr, ptr %i.afx, align 8, !nonnull !21, !align !25, !noundef !21
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 1776 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val333 = load i32, ptr %i.aga, align 8, !noundef !21
  %i.agb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val334 = load ptr, ptr %i.agb, align 8        ; 2 uses
  %i.agc = and i32 %.val333, 40
  %or.cond.i616 = icmp eq i32 %i.agc, 0           ; 2 uses
  %.sroa.3.0.in.v.i617 = select i1 %or.cond.i616, i64 16, i64 40
  %.sroa.3.0.in.i618 = getelementptr inbounds nuw i8, ptr %i.afz, i64 %.sroa.3.0.in.v.i617
  %.sroa.0.0.in.v.i619 = select i1 %or.cond.i616, i64 8, i64 32
  %.sroa.0.0.in.i620 = getelementptr inbounds nuw i8, ptr %i.afz, i64 %.sroa.0.0.in.v.i619
  %.sroa.0.0.i621 = load ptr, ptr %.sroa.0.0.in.i620, align 8, !alias.scope !11109, !nonnull !21, !noundef !21
  %.sroa.3.0.i622 = load i64, ptr %.sroa.3.0.in.i618, align 8, !alias.scope !11109, !noundef !21
  invoke void %.val334(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i621, i64 noundef %.sroa.3.0.i622, i8 noundef 4) #45
          to label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit623 unwind label %bb.fc, !inline_history !5

bb.fc:                                            ; preds = %bb.fg, %bb.fb, %bb.ff, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit623
  %lpad.thr_comm.split-lp938 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i624 = add nsw i64 %.pr809, -1
  %switch.i625 = icmp ult i64 %.0.val.off.i624, -4
  br i1 %switch.i625, label %bb.fd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.fd:                                            ; preds = %bb.fc
  %i.agd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val310 = load ptr, ptr %i.agd, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val310, i64 noundef %.pr809, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11110
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit623: ; preds = %bb.fb
  invoke void %.val334(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.fe unwind label %bb.fc

bb.fe:                                            ; preds = %bb.fa, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_keyword.exit623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.agg = load i32, ptr %i.agf, align 8, !noundef !21 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11111)
  call void @llvm.experimental.noalias.scope.decl(metadata !11112)
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.agi = load i8, ptr %i.agh, align 4, !range !40, !alias.scope !11112, !noundef !21 ; 3 uses
  %i.agj = shl nuw nsw i8 %i.agi, 2
  %narrow.i627 = add nuw nsw i8 %i.agj, -40
  %switch.offset.i628 = zext i8 %narrow.i627 to i64
  %narrow22.i629 = mul nuw i8 %i.agi, 48          ; 2 uses
  %i.agk = or disjoint i8 %narrow22.i629, 8
  %switch.offset12.i630 = zext i8 %i.agk to i64
  %switch.idx.mult14.i632 = zext i8 %narrow22.i629 to i64
  %i.agl = getelementptr inbounds nuw i8, ptr %i.age, i64 %switch.offset.i628
  %.sroa.01.4.in.i637 = getelementptr inbounds nuw i8, ptr %i.age, i64 %switch.offset12.i630
  %i.agm = getelementptr inbounds nuw i8, ptr %i.age, i64 %switch.idx.mult14.i632 ; 3 uses
  %.sroa.9.4.in.i638 = getelementptr inbounds nuw i8, ptr %i.agm, i64 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 32
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 40
  %.sroa.0.0.i639 = load i32, ptr %i.agl, align 4, !alias.scope !11112, !noundef !21
  %.sroa.01.1.i640 = load ptr, ptr %.sroa.01.4.in.i637, align 8, !alias.scope !11112, !nonnull !21, !noundef !21
  %.sroa.9.1.i641 = load i64, ptr %.sroa.9.4.in.i638, align 8, !alias.scope !11112, !noundef !21
  %.sroa.02.0.i642 = load ptr, ptr %i.agn, align 8, !alias.scope !11112, !nonnull !21, !noundef !21
  %.sroa.93.0.i643 = load i64, ptr %i.ago, align 8, !alias.scope !11112, !noundef !21
  %.sroa.04.0.in.i644 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i645 = load ptr, ptr %.sroa.04.0.in.i644, align 8, !alias.scope !11112, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i646 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i647 = load i64, ptr %.sroa.3.0.in.i646, align 8, !alias.scope !11112, !noundef !21
  %..i.i648 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i639, i32 255)
  %i.agp = trunc nuw i32 %..i.i648 to i8
  store ptr %.sroa.01.1.i640, ptr %i.e, align 8, !alias.scope !11111
  %i.agq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.9.1.i641, ptr %i.agq, align 8, !alias.scope !11111
  %i.agr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.02.0.i642, ptr %i.agr, align 8, !alias.scope !11111
  %i.ags = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.93.0.i643, ptr %i.ags, align 8, !alias.scope !11111
  %i.agt = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.04.0.i645, ptr %i.agt, align 8, !alias.scope !11111
  %i.agu = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.3.0.i647, ptr %i.agu, align 8, !alias.scope !11111
  %i.agv = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i8 %i.agp, ptr %i.agv, align 8, !alias.scope !11111
  %i.agw = getelementptr inbounds nuw i8, ptr %i.e, i64 49
  store i8 %i.agi, ptr %i.agw, align 1, !alias.scope !11111
  %i.agx = getelementptr inbounds nuw i8, ptr %i.e, i64 50
  %i.agy = lshr i32 %i.agg, 15
  %i.agz = trunc i32 %i.agy to i8
  %i.aha = and i8 %i.agz, 1
  store i8 %i.aha, ptr %i.agx, align 2, !alias.scope !11111
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.e, i64 51
  %i.ahc = lshr i32 %i.agg, 16
  %i.ahd = trunc i32 %i.ahc to i8
  %i.ahe = and i8 %i.ahd, 1
  store i8 %i.ahe, ptr %i.ahb, align 1, !alias.scope !11111
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ahg = lshr i32 %i.agg, 17
  %i.ahh = trunc i32 %i.ahg to i8
  %i.ahi = and i8 %i.ahh, 1
  store i8 %i.ahi, ptr %i.ahf, align 4, !alias.scope !11111
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.e, i64 53
  %i.ahk = lshr i32 %i.agg, 14
  %i.ahl = trunc i32 %i.ahk to i8
  %i.ahm = and i8 %i.ahl, 1
  store i8 %i.ahm, ptr %i.ahj, align 1, !alias.scope !11111
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %i.aho = lshr i32 %i.agg, 19
  %i.ahp = trunc i32 %i.aho to i8
  %i.ahq = and i8 %i.ahp, 1
  store i8 %i.ahq, ptr %i.ahn, align 2, !alias.scope !11111
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.e, i64 55
  store i8 0, ptr %i.ahr, align 1, !alias.scope !11111
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aht = load ptr, ptr %i.ahs, align 8, !noundef !21 ; 2 uses
  %.not236 = icmp eq ptr %i.aht, null
  br i1 %.not236, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ahv = load ptr, ptr %i.ahu, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 24
  %i.ahx = load ptr, ptr %i.ahw, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.ahx(ptr noundef nonnull %i.aht, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %._crit_edge845 unwind label %bb.fc

._crit_edge845:                                   ; preds = %bb.ff
  %.pre846 = load i32, ptr %i.agf, align 8
  br label %bb.fg

bb.fg:                                            ; preds = %._crit_edge845, %bb.fe
  %i.ahy = phi i32 [ %.pre846, %._crit_edge845 ], [ %i.agg, %bb.fe ]
  %i.ahz = and i32 %i.ahy, 33554432
  %i.aia = icmp ne i32 %i.ahz, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.1, i32 %.sroa.53.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.age, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, i64 noundef %i.afq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i1 noundef zeroext %i.aia, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.fh unwind label %bb.fc

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.0.val.off.i650 = add nsw i64 %.pr809, -1
  %switch.i651 = icmp ult i64 %.0.val.off.i650, -4
  br i1 %switch.i651, label %bb.fi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit652

bb.fi:                                            ; preds = %bb.fh
  %i.aib = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val308 = load ptr, ptr %i.aib, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val308, i64 noundef %.pr809, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11113
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit652

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit652: ; preds = %.thread944, %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.am

bb.fj:                                            ; preds = %bb.ez, %.thread810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aie = load i32, ptr %i.aid, align 8, !noundef !21 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11114)
  call void @llvm.experimental.noalias.scope.decl(metadata !11115)
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aig = load i8, ptr %i.aif, align 4, !range !40, !alias.scope !11115, !noundef !21 ; 3 uses
  %i.aih = shl nuw nsw i8 %i.aig, 2
  %narrow.i594 = add nuw nsw i8 %i.aih, -40
  %switch.offset.i595 = zext i8 %narrow.i594 to i64
  %narrow22.i596 = mul nuw i8 %i.aig, 48          ; 2 uses
  %i.aii = or disjoint i8 %narrow22.i596, 8
  %switch.offset12.i597 = zext i8 %i.aii to i64
  %switch.idx.mult14.i599 = zext i8 %narrow22.i596 to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aic, i64 %switch.offset.i595
  %.sroa.01.4.in.i604 = getelementptr inbounds nuw i8, ptr %i.aic, i64 %switch.offset12.i597
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aic, i64 %switch.idx.mult14.i599 ; 3 uses
  %.sroa.9.4.in.i605 = getelementptr inbounds nuw i8, ptr %i.aik, i64 16
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter14format_operand:bb.a
  %i.xe = trunc nuw i32 %..i.i625 to i8
  store ptr %.sroa.01.1.i617, ptr %i.i, align 8, !alias.scope !11482
  %i.xf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.9.1.i618, ptr %i.xf, align 8, !alias.scope !11482
  %i.xg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.02.0.i619, ptr %i.xg, align 8, !alias.scope !11482
  %i.xh = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.93.0.i620, ptr %i.xh, align 8, !alias.scope !11482
  %i.xi = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.sroa.04.0.i622, ptr %i.xi, align 8, !alias.scope !11482
  %i.xj = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.3.0.i624, ptr %i.xj, align 8, !alias.scope !11482
  %i.xk = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 %i.xe, ptr %i.xk, align 8, !alias.scope !11482
  %i.xl = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  store i8 %i.wx, ptr %i.xl, align 1, !alias.scope !11482
  %i.xm = getelementptr inbounds nuw i8, ptr %i.i, i64 50
  %i.xn = lshr i32 %i.wv, 15
  %i.xo = trunc i32 %i.xn to i8
  %i.xp = and i8 %i.xo, 1
  store i8 %i.xp, ptr %i.xm, align 2, !alias.scope !11482
  %i.xq = getelementptr inbounds nuw i8, ptr %i.i, i64 51 ; 3 uses
  %i.xr = lshr i32 %i.wv, 16
  %i.xs = trunc i32 %i.xr to i8
  %i.xt = and i8 %i.xs, 1                         ; 2 uses
  store i8 %i.xt, ptr %i.xq, align 1, !alias.scope !11482
  %i.xu = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.xv = lshr i32 %i.wv, 17
  %i.xw = trunc i32 %i.xv to i8
  %i.xx = and i8 %i.xw, 1
  store i8 %i.xx, ptr %i.xu, align 4, !alias.scope !11482
  %i.xy = getelementptr inbounds nuw i8, ptr %i.i, i64 53 ; 3 uses
  %i.xz = lshr i32 %i.wv, 18
  %i.ya = trunc i32 %i.xz to i8
  %i.yb = and i8 %i.ya, 1                         ; 2 uses
  store i8 %i.yb, ptr %i.xy, align 1, !alias.scope !11482
  %i.yc = getelementptr inbounds nuw i8, ptr %i.i, i64 54
  store i8 0, ptr %i.yc, align 2, !alias.scope !11482
  %i.yd = getelementptr inbounds nuw i8, ptr %i.i, i64 55
  store i8 0, ptr %i.yd, align 1, !alias.scope !11482
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.yf = load ptr, ptr %i.ye, align 8, !noundef !21 ; 2 uses
  %.not249 = icmp eq ptr %i.yf, null
  br i1 %.not249, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.loopexit933
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.yh = load ptr, ptr %i.yg, align 8, !nonnull !21, !align !25, !noundef !21
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.yj(ptr noundef nonnull %i.yf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %._crit_edge unwind label %.thread803.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.di
  %.pre948 = load i8, ptr %i.xy, align 1, !range !27
  %.pre949 = load i8, ptr %i.xq, align 1, !range !27
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge, %.loopexit933
  %i.yk = phi i8 [ %.pre949, %._crit_edge ], [ %i.xt, %.loopexit933 ]
  %i.yl = phi i8 [ %.pre948, %._crit_edge ], [ %i.yb, %.loopexit933 ]
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yn = load i64, ptr %i.ym, align 8, !noundef !21
  %i.yo = and i64 %i.yn, 65535                    ; 2 uses
  %i.yp = shl nuw nsw i8 %i.yl, 1
  %i.yq = shl nuw nsw i8 %i.yk, 2
  %.sroa.0201.1916 = or disjoint i8 %i.yq, %i.yp
  %.sroa.0201.1 = zext nneg i8 %.sroa.0201.1916 to i32
  %i.yr = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.i, i64 noundef %i.yo, i32 noundef 16, i32 noundef %.sroa.0201.1)
          to label %bb.dk unwind label %.thread803.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dk:                                            ; preds = %bb.dj
  %i.ys = extractvalue { ptr, i64 } %i.yr, 0
  %i.yt = extractvalue { ptr, i64 } %i.yr, 1
  %i.yu = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.yv = load ptr, ptr %i.yu, align 8, !invariant.load !21, !nonnull !21 ; 2 uses
  invoke void %i.yv(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ys, i64 noundef %i.yt, i64 noundef %i.yo, i8 noundef 3, i8 noundef 10)
          to label %bb.dl unwind label %.thread803.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk
  invoke void %.val377(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @400, i64 noundef 1, i8 noundef 6)
          to label %.invoke1007 unwind label %.thread803.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke1007:                                      ; preds = %bb.dl
  %i.yw = load i8, ptr %i.xy, align 1, !range !27, !noundef !21
  %i.yx = load i8, ptr %i.xq, align 1, !range !27, !noundef !21
  %i.yy = shl nuw nsw i8 %i.yw, 1
  %i.yz = shl nuw nsw i8 %i.yx, 2
  %.sroa.0204.1918 = or disjoint i8 %i.yz, %i.yy
  %.sroa.0204.1 = zext nneg i8 %.sroa.0204.1918 to i32
  %spec.select1010 = select i1 %i.ah, i32 %i.aj, i32 %i.ak
  %spec.select1011 = select i1 %i.ah, i32 32, i32 16
  %i.za = zext i32 %spec.select1010 to i64
  %i.zb = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.i, i64 noundef %i.za, i32 noundef %spec.select1011, i32 noundef %.sroa.0204.1)
          to label %bb.dm unwind label %.thread803.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dm:                                            ; preds = %.invoke1007
  %.sroa.0134.0 = extractvalue { ptr, i64 } %i.zb, 0
  %.sroa.3.0 = extractvalue { ptr, i64 } %i.zb, 1
  %i.zc = add nsw i8 %i.tb, -3
  %switch.and278 = and i8 %i.zc, -3
  %switch.selectcmp279 = icmp eq i8 %switch.and278, 0
  %i.zd = select i1 %switch.selectcmp279, i8 12, i8 11
  invoke void %i.yv(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0134.0, i64 noundef %.sroa.3.0, i64 noundef %.sroa.0157.1, i8 noundef %.sroa.0105.1, i8 noundef %i.zd)
          to label %bb.dn unwind label %.thread803.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dc

bb.do:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit584
  %i.ze = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val319 = load ptr, ptr %i.ze, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val319, i64 noundef %.val318, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11484
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit: ; preds = %bb.de, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val316 = load i64, ptr %i.m, align 8, !range !59, !noundef !21 ; 2 uses
  %i.zf = icmp sgt i64 %.val316, 0
  br i1 %i.zf, label %bb.dp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit631

bb.dp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit
  %i.zg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val317 = load ptr, ptr %i.zg, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val317, i64 noundef %.val316, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11485
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit631

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit631: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bp

bb.dq:                                            ; preds = %bb.d
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zi = load i32, ptr %i.zh, align 8, !noundef !21
  %i.zj = trunc i32 %i.zi to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dr:                                            ; preds = %bb.d
  %trunc = trunc nuw i32 %5 to i8
  switch i8 %trunc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.ds
    i8 1, label %bb.dt
    i8 2, label %bb.du
    i8 3, label %bb.dv
    i8 4, label %bb.dw
    i8 5, label %bb.dx
    i8 6, label %bb.dy
    i8 7, label %bb.dz
    i8 8, label %bb.ea
    i8 9, label %bb.eb
    i8 10, label %bb.ec
    i8 11, label %bb.ed
    i8 12, label %bb.ee
    i8 13, label %bb.ef
    i8 14, label %bb.eg
    i8 15, label %bb.eh
  ]

bb.ds:                                            ; preds = %bb.dr
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.zl = load i8, ptr %i.zk, align 4, !alias.scope !11486, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dt:                                            ; preds = %bb.dr
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.zn = load i8, ptr %i.zm, align 1, !alias.scope !11486, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.du:                                            ; preds = %bb.dr
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.zp = load i8, ptr %i.zo, align 2, !alias.scope !11486, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dv:                                            ; preds = %bb.dr
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.zr = load i8, ptr %i.zq, align 1, !alias.scope !11486, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dw:                                            ; preds = %bb.dr
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zt = load i32, ptr %i.zs, align 8, !alias.scope !11486, !noundef !21
  %i.zu = trunc i32 %i.zt to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dx:                                            ; preds = %bb.dr
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zw = load i32, ptr %i.zv, align 8, !alias.scope !11486, !noundef !21
  %i.zx = lshr i32 %i.zw, 8
  %i.zy = trunc i32 %i.zx to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dy:                                            ; preds = %bb.dr
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aaa = load i32, ptr %i.zz, align 8, !alias.scope !11486, !noundef !21
  %i.aab = lshr i32 %i.aaa, 16
  %i.aac = trunc i32 %i.aab to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dz:                                            ; preds = %bb.dr
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 27
  %6 = load i8, ptr %i.aad, align 1, !alias.scope !11486
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ea:                                            ; preds = %bb.dr
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aaf = load i64, ptr %i.aae, align 8, !alias.scope !11486, !noundef !21
  %i.aag = trunc i64 %i.aaf to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eb:                                            ; preds = %bb.dr
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aai = load i64, ptr %i.aah, align 8, !alias.scope !11486, !noundef !21
  %i.aaj = lshr i64 %i.aai, 8
  %i.aak = trunc i64 %i.aaj to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ec:                                            ; preds = %bb.dr
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aam = load i64, ptr %i.aal, align 8, !alias.scope !11486, !noundef !21
  %i.aan = lshr i64 %i.aam, 16
  %i.aao = trunc i64 %i.aan to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ed:                                            ; preds = %bb.dr
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aaq = load i64, ptr %i.aap, align 8, !alias.scope !11486, !noundef !21
  %i.aar = lshr i64 %i.aaq, 24
  %i.aas = trunc i64 %i.aar to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ee:                                            ; preds = %bb.dr
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aau = load i64, ptr %i.aat, align 8, !alias.scope !11486, !noundef !21
  %i.aav = lshr i64 %i.aau, 32
  %i.aaw = trunc i64 %i.aav to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ef:                                            ; preds = %bb.dr
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aay = load i64, ptr %i.aax, align 8, !alias.scope !11486, !noundef !21
  %i.aaz = lshr i64 %i.aay, 40
  %i.aba = trunc i64 %i.aaz to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eg:                                            ; preds = %bb.dr
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abc = load i64, ptr %i.abb, align 8, !alias.scope !11486, !noundef !21
  %i.abd = lshr i64 %i.abc, 48
  %i.abe = trunc i64 %i.abd to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eh:                                            ; preds = %bb.dr
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 15
  %7 = load i8, ptr %i.abf, align 1, !alias.scope !11486
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ei:                                            ; preds = %bb.d
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abh = load i64, ptr %i.abg, align 8, !noundef !21
  %i.abi = trunc i64 %i.abh to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.ei, %bb.dq
  %.sroa.0136.1 = phi i8 [ %i.zj, %bb.dq ], [ %i.abi, %bb.ei ], [ 0, %bb.dr ], [ %i.zl, %bb.ds ], [ %i.zn, %bb.dt ], [ %i.zp, %bb.du ], [ %i.zr, %bb.dv ], [ %i.zu, %bb.dw ], [ %i.zy, %bb.dx ], [ %i.aac, %bb.dy ], [ %6, %bb.dz ], [ %i.aag, %bb.ea ], [ %i.aak, %bb.eb ], [ %i.aao, %bb.ec ], [ %i.aas, %bb.ed ], [ %i.aaw, %bb.ee ], [ %i.aba, %bb.ef ], [ %i.abe, %bb.eg ], [ %7, %bb.eh ] ; 7 uses
  store i32 0, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11488)
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.abn = load i8, ptr %i.abm, align 4, !range !40, !alias.scope !11488, !noundef !21 ; 3 uses
  %i.abo = shl nuw nsw i8 %i.abn, 2
  %narrow.i633 = add nuw nsw i8 %i.abo, -40
  %switch.offset.i634 = zext i8 %narrow.i633 to i64
  %narrow22.i635 = mul nuw i8 %i.abn, 48          ; 2 uses
  %i.abp = or disjoint i8 %narrow22.i635, 8
  %switch.offset12.i636 = zext i8 %i.abp to i64
  %switch.idx.mult14.i638 = zext i8 %narrow22.i635 to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abj, i64 %switch.offset.i634
  %.sroa.01.4.in.i643 = getelementptr inbounds nuw i8, ptr %i.abj, i64 %switch.offset12.i636
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abj, i64 %switch.idx.mult14.i638 ; 3 uses
  %.sroa.9.4.in.i644 = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 32
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 40
  %.sroa.0.0.i645 = load i32, ptr %i.abq, align 4, !alias.scope !11488, !noundef !21
  %.sroa.01.1.i646 = load ptr, ptr %.sroa.01.4.in.i643, align 8, !alias.scope !11488, !nonnull !21, !noundef !21
  %.sroa.9.1.i647 = load i64, ptr %.sroa.9.4.in.i644, align 8, !alias.scope !11488, !noundef !21
  %.sroa.02.0.i648 = load ptr, ptr %i.abs, align 8, !alias.scope !11488, !nonnull !21, !noundef !21
  %.sroa.93.0.i649 = load i64, ptr %i.abt, align 8, !alias.scope !11488, !noundef !21
  %.sroa.04.0.in.i650 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i651 = load ptr, ptr %.sroa.04.0.in.i650, align 8, !alias.scope !11488, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i652 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i653 = load i64, ptr %.sroa.3.0.in.i652, align 8, !alias.scope !11488, !noundef !21
  %..i.i654 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i645, i32 255)
  %i.abu = trunc nuw i32 %..i.i654 to i8
  store ptr %.sroa.01.1.i646, ptr %i.h, align 8, !alias.scope !11487
  %i.abv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.9.1.i647, ptr %i.abv, align 8, !alias.scope !11487
  %i.abw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.02.0.i648, ptr %i.abw, align 8, !alias.scope !11487
  %i.abx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.93.0.i649, ptr %i.abx, align 8, !alias.scope !11487
  %i.aby = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.sroa.04.0.i651, ptr %i.aby, align 8, !alias.scope !11487
  %i.abz = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.sroa.3.0.i653, ptr %i.abz, align 8, !alias.scope !11487
  %i.aca = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 %i.abu, ptr %i.aca, align 8, !alias.scope !11487
  %i.acb = getelementptr inbounds nuw i8, ptr %i.h, i64 49
  store i8 %i.abn, ptr %i.acb, align 1, !alias.scope !11487
  %i.acc = getelementptr inbounds nuw i8, ptr %i.h, i64 50
  %i.acd = lshr i32 %i.abl, 15
  %i.ace = trunc i32 %i.acd to i8
  %i.acf = and i8 %i.ace, 1
  store i8 %i.acf, ptr %i.acc, align 2, !alias.scope !11487
  %i.acg = getelementptr inbounds nuw i8, ptr %i.h, i64 51 ; 2 uses
  %i.ach = lshr i32 %i.abl, 16
  %i.aci = trunc i32 %i.ach to i8
  %i.acj = and i8 %i.aci, 1
  store i8 %i.acj, ptr %i.acg, align 1, !alias.scope !11487
  %i.ack = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.acl = lshr i32 %i.abl, 17
  %i.acm = trunc i32 %i.acl to i8
  %i.acn = and i8 %i.acm, 1
  store i8 %i.acn, ptr %i.ack, align 4, !alias.scope !11487
  %i.aco = getelementptr inbounds nuw i8, ptr %i.h, i64 53 ; 2 uses
  %i.acp = lshr i32 %i.abl, 14
  %i.acq = trunc i32 %i.acp to i8
  %i.acr = and i8 %i.acq, 1
  store i8 %i.acr, ptr %i.aco, align 1, !alias.scope !11487
  %i.acs = getelementptr inbounds nuw i8, ptr %i.h, i64 54 ; 2 uses
  %i.act = lshr i32 %i.abl, 19
  %i.acu = trunc i32 %i.act to i8
  %i.acv = and i8 %i.acu, 1
  store i8 %i.acv, ptr %i.acs, align 2, !alias.scope !11487
  %i.acw = getelementptr inbounds nuw i8, ptr %i.h, i64 55
  store i8 0, ptr %i.acw, align 1, !alias.scope !11487
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.acy = load ptr, ptr %i.acx, align 8, !noundef !21 ; 2 uses
  %.not243 = icmp eq ptr %i.acy, null
  br i1 %.not243, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ada = load ptr, ptr %i.acz, align 8, !nonnull !21, !align !25, !noundef !21
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 24
  %i.adc = load ptr, ptr %i.adb, align 8, !invariant.load !21, !nonnull !21
  call void %i.adc(ptr noundef nonnull %i.acy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #45
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ade = load ptr, ptr %i.add, align 8, !noundef !21 ; 2 uses
  %.not244 = icmp eq ptr %i.ade, null
  br i1 %.not244, label %.thread819, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.adg = load ptr, ptr %i.adf, align 8, !nonnull !21, !align !25, !noundef !21
  %i.adh = zext i8 %.sroa.0136.1 to i64           ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 24
  %i.adj = load ptr, ptr %i.adi, align 8, !invariant.load !21, !nonnull !21
  call void %i.adj(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noundef nonnull %i.ade, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, i64 noundef %i.adh, i32 noundef 1) #45
  %.pr818 = load i64, ptr %i.g, align 8           ; 5 uses
  %.not245 = icmp eq i64 %.pr818, -3
  br i1 %.not245, label %.thread819, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.adk = load i32, ptr %i.abk, align 8, !noundef !21
  %i.adl = and i32 %i.adk, 33554432
  %i.adm = icmp ne i32 %i.adl, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.abj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, i64 noundef %i.adh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, i1 noundef zeroext %i.adm, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit656 unwind label %bb.en

.thread819:                                       ; preds = %bb.ek, %bb.el
  %i.adn = load i8, ptr %i.acs, align 2, !range !27, !noundef !21
  %i.ado = trunc nuw i8 %i.adn to i1
  br i1 %i.ado, label %bb.er, label %bb.eq

bb.en:                                            ; preds = %bb.em
  %lpad.thr_comm.split-lp824 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i657 = add i64 %.pr818, -1
  %switch.i658 = icmp ult i64 %.0.val.off.i657, -4
  br i1 %switch.i658, label %bb.eo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.eo:                                            ; preds = %bb.en
  %i.adp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val315 = load ptr, ptr %i.adp, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val315, i64 noundef %.pr818, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11489
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit656: ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.0.val.off.i660 = add i64 %.pr818, -1
  %switch.i661 = icmp ult i64 %.0.val.off.i660, -4
  br i1 %switch.i661, label %bb.ep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit662

bb.ep:                                            ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit656
  %i.adq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val313 = load ptr, ptr %i.adq, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val313, i64 noundef %.pr818, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11490
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit662

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit662: ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit656.thread, %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit656, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bp

bb.eq:                                            ; preds = %.thread819
  %i.adr = zext i8 %.sroa.0136.1 to i64
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit656.thread

bb.er:                                            ; preds = %.thread819
  %i.ads = sext i8 %.sroa.0136.1 to i64           ; 2 uses
  %i.adt = icmp slt i8 %.sroa.0136.1, 0
  br i1 %i.adt, label %bb.es, label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit656.thread

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit656.thread: ; preds = %bb.es, %bb.er, %bb.eq
  %.sroa.0157.2 = phi i64 [ %i.ads, %bb.es ], [ %i.ads, %bb.er ], [ %i.adr, %bb.eq ]
  %.sroa.0136.2 = phi i8 [ %i.aeg, %bb.es ], [ %.sroa.0136.1, %bb.er ], [ %.sroa.0136.1, %bb.eq ]
  %.sroa.0105.2 = phi i8 [ 0, %bb.es ], [ 0, %bb.er ], [ 1, %bb.eq ]
  %i.adu = zext i8 %.sroa.0136.2 to i64
  %i.adv = load i8, ptr %i.aco, align 1, !range !27, !noundef !21
  %i.adw = load i8, ptr %i.acg, align 1, !range !27, !noundef !21
  %i.adx = shl nuw nsw i8 %i.adv, 1
  %i.ady = shl nuw nsw i8 %i.adw, 2
  %.sroa.0210.1909 = or disjoint i8 %i.ady, %i.adx
  %.sroa.0210.1 = zext nneg i8 %.sroa.0210.1909 to i32
  %i.adz = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.abj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, i64 noundef %i.adu, i32 noundef 8, i32 noundef %.sroa.0210.1) ; 2 uses
  %i.aea = extractvalue { ptr, i64 } %i.adz, 0
  %i.aeb = extractvalue { ptr, i64 } %i.adz, 1
  %i.aec = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aed = load ptr, ptr %i.aec, align 8, !invariant.load !21, !nonnull !21
  call void %i.aed(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aea, i64 noundef %i.aeb, i64 noundef %.sroa.0157.2, i8 noundef %.sroa.0105.2, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit662

bb.es:                                            ; preds = %bb.er
  %i.aee = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aef = load ptr, ptr %i.aee, align 8, !invariant.load !21, !nonnull !21
  call void %i.aef(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.aeg = sub i8 0, %.sroa.0136.1
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit656.thread

bb.et:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter21show_sign_extend_info.exit
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aei = load i32, ptr %i.aeh, align 8, !noundef !21
  %i.aej = trunc i32 %i.aei to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eu:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter21show_sign_extend_info.exit
  %trunc.i = trunc nuw i32 %5 to i8
  switch i8 %trunc.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.ev
    i8 1, label %bb.ew
    i8 2, label %bb.ex
    i8 3, label %bb.ey
    i8 4, label %bb.ez
    i8 5, label %bb.fa
    i8 6, label %bb.fb
    i8 7, label %bb.fc
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ael = load i16, ptr %i.aek, align 4, !alias.scope !11491
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ew:                                            ; preds = %bb.eu
  %i.aem = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.aen = load i16, ptr %i.aem, align 2, !alias.scope !11491
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ex:                                            ; preds = %bb.eu
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aep = load i32, ptr %i.aeo, align 8, !alias.scope !11491, !noundef !21
  %i.aeq = trunc i32 %i.aep to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ey:                                            ; preds = %bb.eu
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 26
  %8 = load i16, ptr %i.aer, align 2, !alias.scope !11491
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ez:                                            ; preds = %bb.eu
  %i.aes = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aet = load i64, ptr %i.aes, align 8, !alias.scope !11491, !noundef !21
  %i.aeu = trunc i64 %i.aet to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fa:                                            ; preds = %bb.eu
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aew = load i64, ptr %i.aev, align 8, !alias.scope !11491, !noundef !21
  %i.aex = lshr i64 %i.aew, 16
  %i.aey = trunc i64 %i.aex to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fb:                                            ; preds = %bb.eu
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afa = load i64, ptr %i.aez, align 8, !alias.scope !11491, !noundef !21
  %i.afb = lshr i64 %i.afa, 32
  %i.afc = trunc i64 %i.afb to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fc:                                            ; preds = %bb.eu
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 14
  %9 = load i16, ptr %i.afd, align 2, !alias.scope !11491
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fd:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter21show_sign_extend_info.exit
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aff = load i32, ptr %i.afe, align 8, !noundef !21
  %i.afg = trunc i32 %i.aff to i8
  %i.afh = sext i8 %i.afg to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.fd, %bb.et
  %.sroa.0143.1 = phi i16 [ %i.aej, %bb.et ], [ %i.afh, %bb.fd ], [ 0, %bb.eu ], [ %i.ael, %bb.ev ], [ %i.aen, %bb.ew ], [ %i.aeq, %bb.ex ], [ %8, %bb.ey ], [ %i.aeu, %bb.ez ], [ %i.aey, %bb.fa ], [ %i.afc, %bb.fb ], [ %9, %bb.fc ] ; 7 uses
  store i32 0, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.afj = load i32, ptr %i.afi, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11493)
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.afl = load i8, ptr %i.afk, align 4, !range !40, !alias.scope !11493, !noundef !21 ; 3 uses
  %i.afm = shl nuw nsw i8 %i.afl, 2
  %narrow.i666 = add nuw nsw i8 %i.afm, -40
  %switch.offset.i667 = zext i8 %narrow.i666 to i64
  %narrow22.i668 = mul nuw i8 %i.afl, 48          ; 2 uses
  %i.afn = or disjoint i8 %narrow22.i668, 8
  %switch.offset12.i669 = zext i8 %i.afn to i64
  %switch.idx.mult14.i671 = zext i8 %narrow22.i668 to i64
  %i.afo = getelementptr inbounds nuw i8, ptr %i.au, i64 %switch.offset.i667
  %.sroa.01.4.in.i676 = getelementptr inbounds nuw i8, ptr %i.au, i64 %switch.offset12.i669
  %i.afp = getelementptr inbounds nuw i8, ptr %i.au, i64 %switch.idx.mult14.i671 ; 3 uses
  %.sroa.9.4.in.i677 = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 32
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afp, i64 40
  %.sroa.0.0.i678 = load i32, ptr %i.afo, align 4, !alias.scope !11493, !noundef !21
  %.sroa.01.1.i679 = load ptr, ptr %.sroa.01.4.in.i676, align 8, !alias.scope !11493, !nonnull !21, !noundef !21
  %.sroa.9.1.i680 = load i64, ptr %.sroa.9.4.in.i677, align 8, !alias.scope !11493, !noundef !21
  %.sroa.02.0.i681 = load ptr, ptr %i.afq, align 8, !alias.scope !11493, !nonnull !21, !noundef !21
  %.sroa.93.0.i682 = load i64, ptr %i.afr, align 8, !alias.scope !11493, !noundef !21
  %.sroa.04.0.in.i683 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i684 = load ptr, ptr %.sroa.04.0.in.i683, align 8, !alias.scope !11493, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i685 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i686 = load i64, ptr %.sroa.3.0.in.i685, align 8, !alias.scope !11493, !noundef !21
  %..i.i687 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i678, i32 255)
  %i.afs = trunc nuw i32 %..i.i687 to i8
  store ptr %.sroa.01.1.i679, ptr %i.f, align 8, !alias.scope !11492
  %i.aft = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.9.1.i680, ptr %i.aft, align 8, !alias.scope !11492
  %i.afu = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.02.0.i681, ptr %i.afu, align 8, !alias.scope !11492
  %i.afv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.93.0.i682, ptr %i.afv, align 8, !alias.scope !11492
  %i.afw = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.04.0.i684, ptr %i.afw, align 8, !alias.scope !11492
  %i.afx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sroa.3.0.i686, ptr %i.afx, align 8, !alias.scope !11492
  %i.afy = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 %i.afs, ptr %i.afy, align 8, !alias.scope !11492
  %i.afz = getelementptr inbounds nuw i8, ptr %i.f, i64 49
  store i8 %i.afl, ptr %i.afz, align 1, !alias.scope !11492
  %i.aga = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  %i.agb = lshr i32 %i.afj, 15
  %i.agc = trunc i32 %i.agb to i8
  %i.agd = and i8 %i.agc, 1
  store i8 %i.agd, ptr %i.aga, align 2, !alias.scope !11492
  %i.age = getelementptr inbounds nuw i8, ptr %i.f, i64 51 ; 2 uses
  %i.agf = lshr i32 %i.afj, 16
  %i.agg = trunc i32 %i.agf to i8
  %i.agh = and i8 %i.agg, 1
  store i8 %i.agh, ptr %i.age, align 1, !alias.scope !11492
  %i.agi = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.agj = lshr i32 %i.afj, 17
  %i.agk = trunc i32 %i.agj to i8
  %i.agl = and i8 %i.agk, 1
  store i8 %i.agl, ptr %i.agi, align 4, !alias.scope !11492
  %i.agm = getelementptr inbounds nuw i8, ptr %i.f, i64 53 ; 2 uses
  %i.agn = lshr i32 %i.afj, 14
  %i.ago = trunc i32 %i.agn to i8
  %i.agp = and i8 %i.ago, 1
  store i8 %i.agp, ptr %i.agm, align 1, !alias.scope !11492
  %i.agq = getelementptr inbounds nuw i8, ptr %i.f, i64 54 ; 2 uses
  %i.agr = lshr i32 %i.afj, 19
  %i.ags = trunc i32 %i.agr to i8
  %i.agt = and i8 %i.ags, 1
  store i8 %i.agt, ptr %i.agq, align 2, !alias.scope !11492
  %i.agu = getelementptr inbounds nuw i8, ptr %i.f, i64 55
  store i8 0, ptr %i.agu, align 1, !alias.scope !11492
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.agw = load ptr, ptr %i.agv, align 8, !noundef !21 ; 2 uses
  %.not239 = icmp eq ptr %i.agw, null
  br i1 %.not239, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.agy = load ptr, ptr %i.agx, align 8, !nonnull !21, !align !25, !noundef !21
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 24
  %i.aha = load ptr, ptr %i.agz, align 8, !invariant.load !21, !nonnull !21
  call void %i.aha(ptr noundef nonnull %i.agw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f) #45
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ahc = load ptr, ptr %i.ahb, align 8, !noundef !21 ; 2 uses
  %.not240 = icmp eq ptr %i.ahc, null
  br i1 %.not240, label %.thread844, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ahe = load ptr, ptr %i.ahd, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ahf = zext i16 %.sroa.0143.1 to i64          ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 24
  %i.ahh = load ptr, ptr %i.ahg, align 8, !invariant.load !21, !nonnull !21
  call void %i.ahh(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull %i.ahc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, i64 noundef %i.ahf, i32 noundef 2) #45
  %.pr843 = load i64, ptr %i.e, align 8           ; 5 uses
  %.not241 = icmp eq i64 %.pr843, -3
  br i1 %.not241, label %.thread844, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ahi = load i32, ptr %i.afi, align 8, !noundef !21
  %i.ahj = and i32 %i.ahi, 33554432
  %i.ahk = icmp ne i32 %i.ahj, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, i64 noundef %i.ahf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, i1 noundef zeroext %i.ahk, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit689 unwind label %bb.fi

.thread844:                                       ; preds = %bb.ff, %bb.fg
  %i.ahl = load i8, ptr %i.agq, align 2, !range !27, !noundef !21
  %i.ahm = trunc nuw i8 %i.ahl to i1
  br i1 %i.ahm, label %bb.fm, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %lpad.thr_comm.split-lp849 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i690 = add i64 %.pr843, -1
  %switch.i691 = icmp ult i64 %.0.val.off.i690, -4
  br i1 %switch.i691, label %bb.fj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.fj:                                            ; preds = %bb.fi
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val311 = load ptr, ptr %i.ahn, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val311, i64 noundef %.pr843, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11494
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit689: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.0.val.off.i693 = add i64 %.pr843, -1
  %switch.i694 = icmp ult i64 %.0.val.off.i693, -4
  br i1 %switch.i694, label %bb.fk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit695

bb.fk:                                            ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit689
  %i.aho = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val309 = load ptr, ptr %i.aho, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val309, i64 noundef %.pr843, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11495
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit695

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit695: ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit689.thread, %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit689, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bp

bb.fl:                                            ; preds = %.thread844
  %i.ahp = zext i16 %.sroa.0143.1 to i64
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit689.thread

bb.fm:                                            ; preds = %.thread844
  %i.ahq = sext i16 %.sroa.0143.1 to i64          ; 2 uses
  %i.ahr = icmp slt i16 %.sroa.0143.1, 0
  br i1 %i.ahr, label %bb.fn, label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit689.thread

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit689.thread: ; preds = %bb.fn, %bb.fm, %bb.fl
  %.sroa.0157.3 = phi i64 [ %i.ahq, %bb.fn ], [ %i.ahq, %bb.fm ], [ %i.ahp, %bb.fl ]
  %.sroa.0143.2 = phi i16 [ %i.aic, %bb.fn ], [ %.sroa.0143.1, %bb.fm ], [ %.sroa.0143.1, %bb.fl ]
  %.sroa.0105.3 = phi i8 [ 2, %bb.fn ], [ 2, %bb.fm ], [ 3, %bb.fl ]
  %i.ahs = zext i16 %.sroa.0143.2 to i64
  %i.aht = load i8, ptr %i.agm, align 1, !range !27, !noundef !21
  %i.ahu = load i8, ptr %i.age, align 1, !range !27, !noundef !21
  %i.ahv = shl nuw nsw i8 %i.aht, 1
  %i.ahw = shl nuw nsw i8 %i.ahu, 2
  %.sroa.0213.1910 = or disjoint i8 %i.ahw, %i.ahv
  %.sroa.0213.1 = zext nneg i8 %.sroa.0213.1910 to i32
  %i.ahx = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, i64 noundef %i.ahs, i32 noundef 16, i32 noundef %.sroa.0213.1) ; 2 uses
  %i.ahy = extractvalue { ptr, i64 } %i.ahx, 0
  %i.ahz = extractvalue { ptr, i64 } %i.ahx, 1
  %i.aia = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aib = load ptr, ptr %i.aia, align 8, !invariant.load !21, !nonnull !21
  call void %i.aib(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ahy, i64 noundef %i.ahz, i64 noundef %.sroa.0157.3, i8 noundef %.sroa.0105.3, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit695

bb.fn:                                            ; preds = %bb.fm
  call void %.val340(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.aic = sub i16 0, %.sroa.0143.1
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit689.thread

bb.fo:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter21show_sign_extend_info.exit398
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aie = load i32, ptr %i.aid, align 8, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fp:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter21show_sign_extend_info.exit398
  %trunc.i696 = trunc nuw i32 %5 to i8
  switch i8 %trunc.i696, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.fq
    i8 1, label %bb.fr
    i8 2, label %bb.fs
    i8 3, label %bb.ft
  ]

bb.fq:                                            ; preds = %bb.fp
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aig = load i32, ptr %i.aif, align 4, !alias.scope !11496
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fr:                                            ; preds = %bb.fp
  %i.aih = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aii = load i32, ptr %i.aih, align 8, !alias.scope !11496, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fs:                                            ; preds = %bb.fp
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aik = load i64, ptr %i.aij, align 8, !alias.scope !11496, !noundef !21
  %i.ail = trunc i64 %i.aik to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ft:                                            ; preds = %bb.fp
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 12
  %10 = load i32, ptr %i.aim, align 4, !alias.scope !11496
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fu:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter21show_sign_extend_info.exit398
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aio = load i32, ptr %i.ain, align 8, !noundef !21
  %i.aip = shl i32 %i.aio, 24
  %i.aiq = ashr exact i32 %i.aip, 24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fu, %bb.fo
  %.sroa.0150.1 = phi i32 [ %i.aie, %bb.fo ], [ %i.aiq, %bb.fu ], [ 0, %bb.fp ], [ %i.aig, %bb.fq ], [ %i.aii, %bb.fr ], [ %i.ail, %bb.fs ], [ %10, %bb.ft ] ; 7 uses
  store i32 0, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ais = load i32, ptr %i.air, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11498)
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aiu = load i8, ptr %i.ait, align 4, !range !40, !alias.scope !11498, !noundef !21 ; 3 uses
  %i.aiv = shl nuw nsw i8 %i.aiu, 2
  %narrow.i700 = add nuw nsw i8 %i.aiv, -40
  %switch.offset.i701 = zext i8 %narrow.i700 to i64
  %narrow22.i702 = mul nuw i8 %i.aiu, 48          ; 2 uses
  %i.aiw = or disjoint i8 %narrow22.i702, 8
  %switch.offset12.i703 = zext i8 %i.aiw to i64
  %switch.idx.mult14.i705 = zext i8 %narrow22.i702 to i64
  %i.aix = getelementptr inbounds nuw i8, ptr %i.bk, i64 %switch.offset.i701
  %.sroa.01.4.in.i710 = getelementptr inbounds nuw i8, ptr %i.bk, i64 %switch.offset12.i703
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.bk, i64 %switch.idx.mult14.i705 ; 3 uses
  %.sroa.9.4.in.i711 = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 32
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiy, i64 40
  %.sroa.0.0.i712 = load i32, ptr %i.aix, align 4, !alias.scope !11498, !noundef !21
  %.sroa.01.1.i713 = load ptr, ptr %.sroa.01.4.in.i710, align 8, !alias.scope !11498, !nonnull !21, !noundef !21
  %.sroa.9.1.i714 = load i64, ptr %.sroa.9.4.in.i711, align 8, !alias.scope !11498, !noundef !21
  %.sroa.02.0.i715 = load ptr, ptr %i.aiz, align 8, !alias.scope !11498, !nonnull !21, !noundef !21
  %.sroa.93.0.i716 = load i64, ptr %i.aja, align 8, !alias.scope !11498, !noundef !21
  %.sroa.04.0.in.i717 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i718 = load ptr, ptr %.sroa.04.0.in.i717, align 8, !alias.scope !11498, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i719 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i720 = load i64, ptr %.sroa.3.0.in.i719, align 8, !alias.scope !11498, !noundef !21
  %..i.i721 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i712, i32 255)
  %i.ajb = trunc nuw i32 %..i.i721 to i8
  store ptr %.sroa.01.1.i713, ptr %i.d, align 8, !alias.scope !11497
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.9.1.i714, ptr %i.ajc, align 8, !alias.scope !11497
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.02.0.i715, ptr %i.ajd, align 8, !alias.scope !11497
  %i.aje = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.93.0.i716, ptr %i.aje, align 8, !alias.scope !11497
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.04.0.i718, ptr %i.ajf, align 8, !alias.scope !11497
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.3.0.i720, ptr %i.ajg, align 8, !alias.scope !11497
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 %i.ajb, ptr %i.ajh, align 8, !alias.scope !11497
  %i.aji = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  store i8 %i.aiu, ptr %i.aji, align 1, !alias.scope !11497
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  %i.ajk = lshr i32 %i.ais, 15
  %i.ajl = trunc i32 %i.ajk to i8
  %i.ajm = and i8 %i.ajl, 1
  store i8 %i.ajm, ptr %i.ajj, align 2, !alias.scope !11497
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.d, i64 51 ; 2 uses
  %i.ajo = lshr i32 %i.ais, 16
  %i.ajp = trunc i32 %i.ajo to i8
  %i.ajq = and i8 %i.ajp, 1
  store i8 %i.ajq, ptr %i.ajn, align 1, !alias.scope !11497
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ajs = lshr i32 %i.ais, 17
  %i.ajt = trunc i32 %i.ajs to i8
  %i.aju = and i8 %i.ajt, 1
  store i8 %i.aju, ptr %i.ajr, align 4, !alias.scope !11497
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.d, i64 53 ; 2 uses
  %i.ajw = lshr i32 %i.ais, 14
  %i.ajx = trunc i32 %i.ajw to i8
  %i.ajy = and i8 %i.ajx, 1
  store i8 %i.ajy, ptr %i.ajv, align 1, !alias.scope !11497
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.d, i64 54 ; 2 uses
  %i.aka = lshr i32 %i.ais, 19
  %i.akb = trunc i32 %i.aka to i8
  %i.akc = and i8 %i.akb, 1
  store i8 %i.akc, ptr %i.ajz, align 2, !alias.scope !11497
  %i.akd = getelementptr inbounds nuw i8, ptr %i.d, i64 55
  store i8 0, ptr %i.akd, align 1, !alias.scope !11497
  %i.ake = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.akf = load ptr, ptr %i.ake, align 8, !noundef !21 ; 2 uses
  %.not235 = icmp eq ptr %i.akf, null
  br i1 %.not235, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.akh = load ptr, ptr %i.akg, align 8, !nonnull !21, !align !25, !noundef !21
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 24
  %i.akj = load ptr, ptr %i.aki, align 8, !invariant.load !21, !nonnull !21
  call void %i.akj(ptr noundef nonnull %i.akf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d) #45
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.akl = load ptr, ptr %i.akk, align 8, !noundef !21 ; 2 uses
  %.not236 = icmp eq ptr %i.akl, null
  br i1 %.not236, label %.thread869, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.akn = load ptr, ptr %i.akm, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ako = zext i32 %.sroa.0150.1 to i64          ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akn, i64 24
  %i.akq = load ptr, ptr %i.akp, align 8, !invariant.load !21, !nonnull !21
  call void %i.akq(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.akl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, i64 noundef %i.ako, i32 noundef 4) #45
  %.pr868 = load i64, ptr %i.c, align 8           ; 5 uses
  %.not237 = icmp eq i64 %.pr868, -3
  br i1 %.not237, label %.thread869, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.akr = load i32, ptr %i.air, align 8, !noundef !21
  %i.aks = and i32 %i.akr, 33554432
  %i.akt = icmp ne i32 %i.aks, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.bk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, i64 noundef %i.ako, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, i1 noundef zeroext %i.akt, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit723 unwind label %bb.fz

.thread869:                                       ; preds = %bb.fw, %bb.fx
  %i.aku = load i8, ptr %i.ajz, align 2, !range !27, !noundef !21
  %i.akv = trunc nuw i8 %i.aku to i1
  br i1 %i.akv, label %bb.gd, label %bb.gc

bb.fz:                                            ; preds = %bb.fy
  %lpad.thr_comm.split-lp874 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i724 = add i64 %.pr868, -1
  %switch.i725 = icmp ult i64 %.0.val.off.i724, -4
  br i1 %switch.i725, label %bb.ga, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.ga:                                            ; preds = %bb.fz
  %i.akw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val307 = load ptr, ptr %i.akw, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val307, i64 noundef %.pr868, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11499
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit723: ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.0.val.off.i727 = add i64 %.pr868, -1
  %switch.i728 = icmp ult i64 %.0.val.off.i727, -4
  br i1 %switch.i728, label %bb.gb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit729

bb.gb:                                            ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit723
  %i.akx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val305 = load ptr, ptr %i.akx, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val305, i64 noundef %.pr868, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11500
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit729

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit729: ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit723.thread, %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit723, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bp

bb.gc:                                            ; preds = %.thread869
  %i.aky = zext i32 %.sroa.0150.1 to i64
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit723.thread

bb.gd:                                            ; preds = %.thread869
  %i.akz = sext i32 %.sroa.0150.1 to i64          ; 2 uses
  %i.ala = icmp slt i32 %.sroa.0150.1, 0
  br i1 %i.ala, label %bb.ge, label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit723.thread

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit723.thread: ; preds = %bb.ge, %bb.gd, %bb.gc
  %.sroa.0157.4 = phi i64 [ %i.akz, %bb.ge ], [ %i.akz, %bb.gd ], [ %i.aky, %bb.gc ]
  %.sroa.0150.2 = phi i32 [ %i.all, %bb.ge ], [ %.sroa.0150.1, %bb.gd ], [ %.sroa.0150.1, %bb.gc ]
  %.sroa.0105.4 = phi i8 [ 4, %bb.ge ], [ 4, %bb.gd ], [ 5, %bb.gc ]
  %i.alb = zext i32 %.sroa.0150.2 to i64
  %i.alc = load i8, ptr %i.ajv, align 1, !range !27, !noundef !21
  %i.ald = load i8, ptr %i.ajn, align 1, !range !27, !noundef !21
  %i.ale = shl nuw nsw i8 %i.alc, 1
  %i.alf = shl nuw nsw i8 %i.ald, 2
  %.sroa.0216.1911 = or disjoint i8 %i.alf, %i.ale
  %.sroa.0216.1 = zext nneg i8 %.sroa.0216.1911 to i32
  %i.alg = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, i64 noundef %i.alb, i32 noundef 32, i32 noundef %.sroa.0216.1) ; 2 uses
  %i.alh = extractvalue { ptr, i64 } %i.alg, 0
  %i.ali = extractvalue { ptr, i64 } %i.alg, 1
  %i.alj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.alk = load ptr, ptr %i.alj, align 8, !invariant.load !21, !nonnull !21
  call void %i.alk(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.56.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.alh, i64 noundef %i.ali, i64 noundef %.sroa.0157.4, i8 noundef %.sroa.0105.4, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit729

bb.ge:                                            ; preds = %bb.gd
  call void %.val339(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.all = sub i32 0, %.sroa.0150.1
  br label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit723.thread

bb.gf:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter21show_sign_extend_info.exit410
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aln = load i32, ptr %i.alm, align 8, !noundef !21
  %i.alo = sext i32 %i.aln to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.gg:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter21show_sign_extend_info.exit410
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.alq = load i32, ptr %i.alp, align 8, !noundef !21
  %i.alr = zext i32 %i.alq to i64
  %sext = shl i64 %i.alr, 56
  %i.als = ashr exact i64 %sext, 56
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.gh:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter21show_sign_extend_info.exit410
  %trunc.i730 = trunc nuw i32 %5 to i8
  switch i8 %trunc.i730, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.gi
    i8 1, label %bb.gj
  ]
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter14format_operand:bb.a
  %i.ui = phi i32 [ %.pre907, %._crit_edge906 ], [ %i.ug, %bb.cx ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !11817)
  call void @llvm.experimental.noalias.scope.decl(metadata !11818)
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.uk = load i8, ptr %i.uj, align 4, !range !40, !alias.scope !11818, !noundef !21 ; 3 uses
  %i.ul = shl nuw nsw i8 %i.uk, 2
  %narrow.i488 = add nuw nsw i8 %i.ul, -40
  %switch.offset.i489 = zext i8 %narrow.i488 to i64
  %narrow22.i490 = mul nuw i8 %i.uk, 48           ; 2 uses
  %i.um = or disjoint i8 %narrow22.i490, 8
  %switch.offset12.i491 = zext i8 %i.um to i64
  %switch.idx.mult14.i493 = zext i8 %narrow22.i490 to i64
  %i.un = getelementptr inbounds nuw i8, ptr %i.ap, i64 %switch.offset.i489
  %.sroa.01.4.in.i498 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %switch.offset12.i491
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ap, i64 %switch.idx.mult14.i493 ; 3 uses
  %.sroa.9.4.in.i499 = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 32
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 40
  %.sroa.0.0.i500 = load i32, ptr %i.un, align 4, !alias.scope !11818, !noundef !21
  %.sroa.01.1.i501 = load ptr, ptr %.sroa.01.4.in.i498, align 8, !alias.scope !11818, !nonnull !21, !noundef !21
  %.sroa.9.1.i502 = load i64, ptr %.sroa.9.4.in.i499, align 8, !alias.scope !11818, !noundef !21
  %.sroa.02.0.i503 = load ptr, ptr %i.up, align 8, !alias.scope !11818, !nonnull !21, !noundef !21
  %.sroa.93.0.i504 = load i64, ptr %i.uq, align 8, !alias.scope !11818, !noundef !21
  %.sroa.04.0.in.i505 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i506 = load ptr, ptr %.sroa.04.0.in.i505, align 8, !alias.scope !11818, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i507 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i508 = load i64, ptr %.sroa.3.0.in.i507, align 8, !alias.scope !11818, !noundef !21
  %..i.i509 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i500, i32 255)
  %i.ur = trunc nuw i32 %..i.i509 to i8
  store ptr %.sroa.01.1.i501, ptr %i.m, align 8, !alias.scope !11817
  %i.us = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.9.1.i502, ptr %i.us, align 8, !alias.scope !11817
  %i.ut = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.02.0.i503, ptr %i.ut, align 8, !alias.scope !11817
  %i.uu = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.93.0.i504, ptr %i.uu, align 8, !alias.scope !11817
  %i.uv = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %.sroa.04.0.i506, ptr %i.uv, align 8, !alias.scope !11817
  %i.uw = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %.sroa.3.0.i508, ptr %i.uw, align 8, !alias.scope !11817
  %i.ux = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i8 %i.ur, ptr %i.ux, align 8, !alias.scope !11817
  %i.uy = getelementptr inbounds nuw i8, ptr %i.m, i64 49
  store i8 %i.uk, ptr %i.uy, align 1, !alias.scope !11817
  %i.uz = getelementptr inbounds nuw i8, ptr %i.m, i64 50
  %i.va = lshr i32 %i.ui, 15
  %i.vb = trunc i32 %i.va to i8
  %i.vc = and i8 %i.vb, 1
  store i8 %i.vc, ptr %i.uz, align 2, !alias.scope !11817
  %i.vd = getelementptr inbounds nuw i8, ptr %i.m, i64 51 ; 2 uses
  %i.ve = lshr i32 %i.ui, 16
  %i.vf = trunc i32 %i.ve to i8
  %i.vg = and i8 %i.vf, 1                         ; 2 uses
  store i8 %i.vg, ptr %i.vd, align 1, !alias.scope !11817
  %i.vh = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.vi = lshr i32 %i.ui, 17
  %i.vj = trunc i32 %i.vi to i8
  %i.vk = and i8 %i.vj, 1
  store i8 %i.vk, ptr %i.vh, align 4, !alias.scope !11817
  %i.vl = getelementptr inbounds nuw i8, ptr %i.m, i64 53 ; 2 uses
  %i.vm = lshr i32 %i.ui, 18
  %i.vn = trunc i32 %i.vm to i8
  %i.vo = and i8 %i.vn, 1                         ; 2 uses
  store i8 %i.vo, ptr %i.vl, align 1, !alias.scope !11817
  %i.vp = getelementptr inbounds nuw i8, ptr %i.m, i64 54
  store i8 0, ptr %i.vp, align 2, !alias.scope !11817
  %i.vq = getelementptr inbounds nuw i8, ptr %i.m, i64 55
  store i8 0, ptr %i.vq, align 1, !alias.scope !11817
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.vs = load ptr, ptr %i.vr, align 8, !noundef !21 ; 2 uses
  %.not260 = icmp eq ptr %i.vs, null
  br i1 %.not260, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.vu = load ptr, ptr %i.vt, align 8, !nonnull !21, !align !25, !noundef !21
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.vw(ptr noundef nonnull %i.vs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %._crit_edge908 unwind label %.loopexit.split-lp858.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge908:                                   ; preds = %bb.da
  %.pre909 = load i8, ptr %i.vl, align 1, !range !27
  %.pre910 = load i8, ptr %i.vd, align 1, !range !27
  br label %bb.db

bb.db:                                            ; preds = %._crit_edge908, %bb.cz
  %i.vx = phi i8 [ %.pre910, %._crit_edge908 ], [ %i.vg, %bb.cz ]
  %i.vy = phi i8 [ %.pre909, %._crit_edge908 ], [ %i.vo, %bb.cz ]
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wa = load i64, ptr %i.vz, align 8, !noundef !21
  %i.wb = and i64 %i.wa, 65535                    ; 2 uses
  %i.wc = shl nuw nsw i8 %i.vy, 1
  %i.wd = shl nuw nsw i8 %i.vx, 2
  %.sroa.0210.1845 = or disjoint i8 %i.wd, %i.wc
  %.sroa.0210.1 = zext nneg i8 %.sroa.0210.1845 to i32
  %i.we = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, i64 noundef %i.wb, i32 noundef 16, i32 noundef %.sroa.0210.1)
          to label %bb.dc unwind label %.loopexit.split-lp858.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.wf = extractvalue { ptr, i64 } %i.we, 0
  %i.wg = extractvalue { ptr, i64 } %i.we, 1
  invoke void %i.tt(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.wf, i64 noundef %i.wg, i64 noundef %i.wb, i8 noundef 3, i8 noundef 10)
          to label %bb.dd unwind label %.loopexit.split-lp858.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ch

bb.de:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit469
  %i.wh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val334 = load ptr, ptr %i.wh, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val334, i64 noundef %.val333, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11819
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit: ; preds = %bb.cj, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.val331 = load i64, ptr %i.u, align 8, !range !59, !noundef !21 ; 2 uses
  %i.wi = icmp sgt i64 %.val331, 0
  br i1 %i.wi, label %bb.df, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit515

bb.df:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit
  %i.wj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val332 = load ptr, ptr %i.wj, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val332, i64 noundef %.val331, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11820
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit515

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit515: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_.exit, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.am

bb.dg:                                            ; preds = %bb.d
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wl = load i32, ptr %i.wk, align 8, !noundef !21
  %i.wm = trunc i32 %i.wl to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dh:                                            ; preds = %bb.d
  %trunc = trunc nuw i32 %5 to i8
  switch i8 %trunc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.di
    i8 1, label %bb.dj
    i8 2, label %bb.dk
    i8 3, label %bb.dl
    i8 4, label %bb.dm
    i8 5, label %bb.dn
    i8 6, label %bb.do
    i8 7, label %bb.dp
    i8 8, label %bb.dq
    i8 9, label %bb.dr
    i8 10, label %bb.ds
    i8 11, label %bb.dt
    i8 12, label %bb.du
    i8 13, label %bb.dv
    i8 14, label %bb.dw
    i8 15, label %bb.dx
  ]

bb.di:                                            ; preds = %bb.dh
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.wo = load i8, ptr %i.wn, align 4, !alias.scope !11821, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dj:                                            ; preds = %bb.dh
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.wq = load i8, ptr %i.wp, align 1, !alias.scope !11821, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dk:                                            ; preds = %bb.dh
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ws = load i8, ptr %i.wr, align 2, !alias.scope !11821, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dl:                                            ; preds = %bb.dh
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.wu = load i8, ptr %i.wt, align 1, !alias.scope !11821, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dm:                                            ; preds = %bb.dh
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ww = load i32, ptr %i.wv, align 8, !alias.scope !11821, !noundef !21
  %i.wx = trunc i32 %i.ww to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dn:                                            ; preds = %bb.dh
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wz = load i32, ptr %i.wy, align 8, !alias.scope !11821, !noundef !21
  %i.xa = lshr i32 %i.wz, 8
  %i.xb = trunc i32 %i.xa to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.do:                                            ; preds = %bb.dh
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xd = load i32, ptr %i.xc, align 8, !alias.scope !11821, !noundef !21
  %i.xe = lshr i32 %i.xd, 16
  %i.xf = trunc i32 %i.xe to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dp:                                            ; preds = %bb.dh
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 27
  %6 = load i8, ptr %i.xg, align 1, !alias.scope !11821
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dq:                                            ; preds = %bb.dh
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xi = load i64, ptr %i.xh, align 8, !alias.scope !11821, !noundef !21
  %i.xj = trunc i64 %i.xi to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dr:                                            ; preds = %bb.dh
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xl = load i64, ptr %i.xk, align 8, !alias.scope !11821, !noundef !21
  %i.xm = lshr i64 %i.xl, 8
  %i.xn = trunc i64 %i.xm to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ds:                                            ; preds = %bb.dh
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !11821, !noundef !21
  %i.xq = lshr i64 %i.xp, 16
  %i.xr = trunc i64 %i.xq to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dt:                                            ; preds = %bb.dh
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xt = load i64, ptr %i.xs, align 8, !alias.scope !11821, !noundef !21
  %i.xu = lshr i64 %i.xt, 24
  %i.xv = trunc i64 %i.xu to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.du:                                            ; preds = %bb.dh
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xx = load i64, ptr %i.xw, align 8, !alias.scope !11821, !noundef !21
  %i.xy = lshr i64 %i.xx, 32
  %i.xz = trunc i64 %i.xy to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dv:                                            ; preds = %bb.dh
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yb = load i64, ptr %i.ya, align 8, !alias.scope !11821, !noundef !21
  %i.yc = lshr i64 %i.yb, 40
  %i.yd = trunc i64 %i.yc to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dw:                                            ; preds = %bb.dh
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yf = load i64, ptr %i.ye, align 8, !alias.scope !11821, !noundef !21
  %i.yg = lshr i64 %i.yf, 48
  %i.yh = trunc i64 %i.yg to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dx:                                            ; preds = %bb.dh
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %7 = load i8, ptr %i.yi, align 1, !alias.scope !11821
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.dy:                                            ; preds = %bb.d
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yk = load i64, ptr %i.yj, align 8, !noundef !21
  %i.yl = trunc i64 %i.yk to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dy, %bb.dg
  %.sroa.0137.1 = phi i8 [ %i.wm, %bb.dg ], [ %i.yl, %bb.dy ], [ 0, %bb.dh ], [ %i.wo, %bb.di ], [ %i.wq, %bb.dj ], [ %i.ws, %bb.dk ], [ %i.wu, %bb.dl ], [ %i.wx, %bb.dm ], [ %i.xb, %bb.dn ], [ %i.xf, %bb.do ], [ %6, %bb.dp ], [ %i.xj, %bb.dq ], [ %i.xn, %bb.dr ], [ %i.xr, %bb.ds ], [ %i.xv, %bb.dt ], [ %i.xz, %bb.du ], [ %i.yd, %bb.dv ], [ %i.yh, %bb.dw ], [ %7, %bb.dx ] ; 7 uses
  store i32 0, ptr %i.z, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.yn = load ptr, ptr %i.ym, align 8, !noundef !21 ; 2 uses
  %.not249 = icmp eq ptr %i.yn, null
  br i1 %.not249, label %.thread798, label %bb.dz

.thread798:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  store i64 -3, ptr %i.l, align 8
  br label %bb.eh

bb.dz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.yp = load ptr, ptr %i.yo, align 8, !nonnull !21, !align !25, !noundef !21
  %i.yq = zext i8 %.sroa.0137.1 to i64            ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.ys = load ptr, ptr %i.yr, align 8, !invariant.load !21, !nonnull !21
  call void %i.ys(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, ptr noundef nonnull %i.yn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, i64 noundef %i.yq, i32 noundef 1) #45
  %.pr797 = load i64, ptr %i.l, align 8           ; 5 uses
  %.not250 = icmp eq i64 %.pr797, -3
  br i1 %.not250, label %bb.eh, label %bb.ec

bb.ea:                                            ; preds = %bb.ee, %bb.ed
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i561 = add nsw i64 %.pr797, -1
  %switch.i562 = icmp ult i64 %.0.val.off.i561, -4
  br i1 %switch.i562, label %bb.eb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.eb:                                            ; preds = %bb.ea
  %i.yt = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val330 = load ptr, ptr %i.yt, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val330, i64 noundef %.pr797, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11822
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.ec:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 8, !noundef !21 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11823)
  call void @llvm.experimental.noalias.scope.decl(metadata !11824)
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.yy = load i8, ptr %i.yx, align 4, !range !40, !alias.scope !11824, !noundef !21 ; 3 uses
  %i.yz = shl nuw nsw i8 %i.yy, 2
  %narrow.i517 = add nuw nsw i8 %i.yz, -40
  %switch.offset.i518 = zext i8 %narrow.i517 to i64
  %narrow22.i519 = mul nuw i8 %i.yy, 48           ; 2 uses
  %i.za = or disjoint i8 %narrow22.i519, 8
  %switch.offset12.i520 = zext i8 %i.za to i64
  %switch.idx.mult14.i522 = zext i8 %narrow22.i519 to i64
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yu, i64 %switch.offset.i518
  %.sroa.01.4.in.i527 = getelementptr inbounds nuw i8, ptr %i.yu, i64 %switch.offset12.i520
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yu, i64 %switch.idx.mult14.i522 ; 3 uses
  %.sroa.9.4.in.i528 = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 32
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 40
  %.sroa.0.0.i529 = load i32, ptr %i.zb, align 4, !alias.scope !11824, !noundef !21
  %.sroa.01.1.i530 = load ptr, ptr %.sroa.01.4.in.i527, align 8, !alias.scope !11824, !nonnull !21, !noundef !21
  %.sroa.9.1.i531 = load i64, ptr %.sroa.9.4.in.i528, align 8, !alias.scope !11824, !noundef !21
  %.sroa.02.0.i532 = load ptr, ptr %i.zd, align 8, !alias.scope !11824, !nonnull !21, !noundef !21
  %.sroa.93.0.i533 = load i64, ptr %i.ze, align 8, !alias.scope !11824, !noundef !21
  %.sroa.04.0.in.i534 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i535 = load ptr, ptr %.sroa.04.0.in.i534, align 8, !alias.scope !11824, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i536 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i537 = load i64, ptr %.sroa.3.0.in.i536, align 8, !alias.scope !11824, !noundef !21
  %..i.i538 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i529, i32 255)
  %i.zf = trunc nuw i32 %..i.i538 to i8
  store ptr %.sroa.01.1.i530, ptr %i.k, align 8, !alias.scope !11823
  %i.zg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.9.1.i531, ptr %i.zg, align 8, !alias.scope !11823
  %i.zh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.02.0.i532, ptr %i.zh, align 8, !alias.scope !11823
  %i.zi = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.93.0.i533, ptr %i.zi, align 8, !alias.scope !11823
  %i.zj = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %.sroa.04.0.i535, ptr %i.zj, align 8, !alias.scope !11823
  %i.zk = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %.sroa.3.0.i537, ptr %i.zk, align 8, !alias.scope !11823
  %i.zl = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i8 %i.zf, ptr %i.zl, align 8, !alias.scope !11823
  %i.zm = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  store i8 %i.yy, ptr %i.zm, align 1, !alias.scope !11823
  %i.zn = getelementptr inbounds nuw i8, ptr %i.k, i64 50
  %i.zo = lshr i32 %i.yw, 15
  %i.zp = trunc i32 %i.zo to i8
  %i.zq = and i8 %i.zp, 1
  store i8 %i.zq, ptr %i.zn, align 2, !alias.scope !11823
  %i.zr = getelementptr inbounds nuw i8, ptr %i.k, i64 51
  %i.zs = lshr i32 %i.yw, 16
  %i.zt = trunc i32 %i.zs to i8
  %i.zu = and i8 %i.zt, 1
  store i8 %i.zu, ptr %i.zr, align 1, !alias.scope !11823
  %i.zv = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.zw = lshr i32 %i.yw, 17
  %i.zx = trunc i32 %i.zw to i8
  %i.zy = and i8 %i.zx, 1
  store i8 %i.zy, ptr %i.zv, align 4, !alias.scope !11823
  %i.zz = getelementptr inbounds nuw i8, ptr %i.k, i64 53
  %i.aaa = lshr i32 %i.yw, 14
  %i.aab = trunc i32 %i.aaa to i8
  %i.aac = and i8 %i.aab, 1
  store i8 %i.aac, ptr %i.zz, align 1, !alias.scope !11823
  %i.aad = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.aae = lshr i32 %i.yw, 19
  %i.aaf = trunc i32 %i.aae to i8
  %i.aag = and i8 %i.aaf, 1
  store i8 %i.aag, ptr %i.aad, align 2, !alias.scope !11823
  %i.aah = getelementptr inbounds nuw i8, ptr %i.k, i64 55
  store i8 0, ptr %i.aah, align 1, !alias.scope !11823
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aaj = load ptr, ptr %i.aai, align 8, !noundef !21 ; 2 uses
  %.not252 = icmp eq ptr %i.aaj, null
  br i1 %.not252, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aal = load ptr, ptr %i.aak, align 8, !nonnull !21, !align !25, !noundef !21
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 24
  %i.aan = load ptr, ptr %i.aam, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.aan(ptr noundef nonnull %i.aaj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %._crit_edge885 unwind label %bb.ea

._crit_edge885:                                   ; preds = %bb.ed
  %.pre886 = load i32, ptr %i.yv, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %._crit_edge885, %bb.ec
  %i.aao = phi i32 [ %.pre886, %._crit_edge885 ], [ %i.yw, %bb.ec ]
  %i.aap = and i32 %i.aao, 33554432
  %i.aaq = icmp ne i32 %i.aap, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.yu, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, i64 noundef %i.yq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, i1 noundef zeroext %i.aaq, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.ef unwind label %bb.ea

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.0.val.off.i566 = add nsw i64 %.pr797, -1
  %switch.i567 = icmp ult i64 %.0.val.off.i566, -4
  br i1 %switch.i567, label %bb.eg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit568

bb.eg:                                            ; preds = %bb.ef
  %i.aar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val328 = load ptr, ptr %i.aar, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val328, i64 noundef %.pr797, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11825
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit568

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit568: ; preds = %.thread964, %bb.ef, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.am

bb.eh:                                            ; preds = %bb.dz, %.thread798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aau = load i32, ptr %i.aat, align 8, !noundef !21 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11826)
  call void @llvm.experimental.noalias.scope.decl(metadata !11827)
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aaw = load i8, ptr %i.aav, align 4, !range !40, !alias.scope !11827, !noundef !21 ; 3 uses
  %i.aax = shl nuw nsw i8 %i.aaw, 2
  %narrow.i539 = add nuw nsw i8 %i.aax, -40
  %switch.offset.i540 = zext i8 %narrow.i539 to i64
  %narrow22.i541 = mul nuw i8 %i.aaw, 48          ; 2 uses
  %i.aay = or disjoint i8 %narrow22.i541, 8
  %switch.offset12.i542 = zext i8 %i.aay to i64
  %switch.idx.mult14.i544 = zext i8 %narrow22.i541 to i64
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aas, i64 %switch.offset.i540
  %.sroa.01.4.in.i549 = getelementptr inbounds nuw i8, ptr %i.aas, i64 %switch.offset12.i542
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aas, i64 %switch.idx.mult14.i544 ; 3 uses
  %.sroa.9.4.in.i550 = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 32
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 40
  %.sroa.0.0.i551 = load i32, ptr %i.aaz, align 4, !alias.scope !11827, !noundef !21
  %.sroa.01.1.i552 = load ptr, ptr %.sroa.01.4.in.i549, align 8, !alias.scope !11827, !nonnull !21, !noundef !21
  %.sroa.9.1.i553 = load i64, ptr %.sroa.9.4.in.i550, align 8, !alias.scope !11827, !noundef !21
  %.sroa.02.0.i554 = load ptr, ptr %i.abb, align 8, !alias.scope !11827, !nonnull !21, !noundef !21
  %.sroa.93.0.i555 = load i64, ptr %i.abc, align 8, !alias.scope !11827, !noundef !21
  %.sroa.04.0.in.i556 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i557 = load ptr, ptr %.sroa.04.0.in.i556, align 8, !alias.scope !11827, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i558 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i559 = load i64, ptr %.sroa.3.0.in.i558, align 8, !alias.scope !11827, !noundef !21
  %..i.i560 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i551, i32 255)
  %i.abd = trunc nuw i32 %..i.i560 to i8
  store ptr %.sroa.01.1.i552, ptr %i.j, align 8, !alias.scope !11826
  %i.abe = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.9.1.i553, ptr %i.abe, align 8, !alias.scope !11826
  %i.abf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.02.0.i554, ptr %i.abf, align 8, !alias.scope !11826
  %i.abg = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.93.0.i555, ptr %i.abg, align 8, !alias.scope !11826
  %i.abh = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %.sroa.04.0.i557, ptr %i.abh, align 8, !alias.scope !11826
  %i.abi = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.3.0.i559, ptr %i.abi, align 8, !alias.scope !11826
  %i.abj = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i8 %i.abd, ptr %i.abj, align 8, !alias.scope !11826
  %i.abk = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  store i8 %i.aaw, ptr %i.abk, align 1, !alias.scope !11826
  %i.abl = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  %i.abm = lshr i32 %i.aau, 15
  %i.abn = trunc i32 %i.abm to i8
  %i.abo = and i8 %i.abn, 1
  store i8 %i.abo, ptr %i.abl, align 2, !alias.scope !11826
  %i.abp = getelementptr inbounds nuw i8, ptr %i.j, i64 51 ; 2 uses
  %i.abq = lshr i32 %i.aau, 16
  %i.abr = trunc i32 %i.abq to i8
  %i.abs = and i8 %i.abr, 1
  store i8 %i.abs, ptr %i.abp, align 1, !alias.scope !11826
  %i.abt = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.abu = lshr i32 %i.aau, 17
  %i.abv = trunc i32 %i.abu to i8
  %i.abw = and i8 %i.abv, 1
  store i8 %i.abw, ptr %i.abt, align 4, !alias.scope !11826
  %i.abx = getelementptr inbounds nuw i8, ptr %i.j, i64 53 ; 2 uses
  %i.aby = lshr i32 %i.aau, 14
  %i.abz = trunc i32 %i.aby to i8
  %i.aca = and i8 %i.abz, 1
  store i8 %i.aca, ptr %i.abx, align 1, !alias.scope !11826
  %i.acb = getelementptr inbounds nuw i8, ptr %i.j, i64 54 ; 2 uses
  %i.acc = lshr i32 %i.aau, 19
  %i.acd = trunc i32 %i.acc to i8
  %i.ace = and i8 %i.acd, 1                       ; 2 uses
  store i8 %i.ace, ptr %i.acb, align 2, !alias.scope !11826
  %i.acf = getelementptr inbounds nuw i8, ptr %i.j, i64 55
  store i8 0, ptr %i.acf, align 1, !alias.scope !11826
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ach = load ptr, ptr %i.acg, align 8, !noundef !21 ; 2 uses
  %.not251 = icmp eq ptr %i.ach, null
  br i1 %.not251, label %bb.ei, label %._crit_edge887

._crit_edge887:                                   ; preds = %bb.eh
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.acj = load ptr, ptr %i.aci, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  %i.acl = load ptr, ptr %i.ack, align 8, !invariant.load !21, !nonnull !21
  call void %i.acl(ptr noundef nonnull %i.ach, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
  %.pre888 = load i8, ptr %i.acb, align 2, !range !27
  br label %bb.ei

bb.ei:                                            ; preds = %._crit_edge887, %bb.eh
  %i.acm = phi i8 [ %.pre888, %._crit_edge887 ], [ %i.ace, %bb.eh ]
  %i.acn = trunc nuw i8 %i.acm to i1
  br i1 %i.acn, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aco = zext i8 %.sroa.0137.1 to i64
  br label %.thread964

bb.ek:                                            ; preds = %bb.ei
  %i.acp = sext i8 %.sroa.0137.1 to i64           ; 2 uses
  %i.acq = icmp slt i8 %.sroa.0137.1, 0
  br i1 %i.acq, label %bb.el, label %.thread964

.thread964:                                       ; preds = %bb.el, %bb.ek, %bb.ej
  %.sroa.0158.2 = phi i64 [ %i.acp, %bb.el ], [ %i.acp, %bb.ek ], [ %i.aco, %bb.ej ]
  %.sroa.0137.2 = phi i8 [ %i.add, %bb.el ], [ %.sroa.0137.1, %bb.ek ], [ %.sroa.0137.1, %bb.ej ]
  %.sroa.0107.2 = phi i8 [ 0, %bb.el ], [ 0, %bb.ek ], [ 1, %bb.ej ]
  %i.acr = zext i8 %.sroa.0137.2 to i64
  %i.acs = load i8, ptr %i.abx, align 1, !range !27, !noundef !21
  %i.act = load i8, ptr %i.abp, align 1, !range !27, !noundef !21
  %i.acu = shl nuw nsw i8 %i.acs, 1
  %i.acv = shl nuw nsw i8 %i.act, 2
  %.sroa.0213.1838 = or disjoint i8 %i.acv, %i.acu
  %.sroa.0213.1 = zext nneg i8 %.sroa.0213.1838 to i32
  %i.acw = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aas, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j, i64 noundef %i.acr, i32 noundef 8, i32 noundef %.sroa.0213.1) ; 2 uses
  %i.acx = extractvalue { ptr, i64 } %i.acw, 0
  %i.acy = extractvalue { ptr, i64 } %i.acw, 1
  %i.acz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ada = load ptr, ptr %i.acz, align 8, !invariant.load !21, !nonnull !21
  call void %i.ada(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.acx, i64 noundef %i.acy, i64 noundef %.sroa.0158.2, i8 noundef %.sroa.0107.2, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit568

bb.el:                                            ; preds = %bb.ek
  %i.adb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.adc = load ptr, ptr %i.adb, align 8, !invariant.load !21, !nonnull !21
  call void %i.adc(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.add = sub i8 0, %.sroa.0137.1
  br label %.thread964

bb.em:                                            ; preds = %bb.d
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.adf = load i32, ptr %i.ade, align 8, !noundef !21
  %i.adg = trunc i32 %i.adf to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.en:                                            ; preds = %bb.d
  %trunc.i = trunc nuw i32 %5 to i8
  switch i8 %trunc.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.eo
    i8 1, label %bb.ep
    i8 2, label %bb.eq
    i8 3, label %bb.er
    i8 4, label %bb.es
    i8 5, label %bb.et
    i8 6, label %bb.eu
    i8 7, label %bb.ev
  ]

bb.eo:                                            ; preds = %bb.en
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.adi = load i16, ptr %i.adh, align 4, !alias.scope !11828
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ep:                                            ; preds = %bb.en
  %i.adj = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.adk = load i16, ptr %i.adj, align 2, !alias.scope !11828
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eq:                                            ; preds = %bb.en
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.adm = load i32, ptr %i.adl, align 8, !alias.scope !11828, !noundef !21
  %i.adn = trunc i32 %i.adm to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.er:                                            ; preds = %bb.en
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 26
  %8 = load i16, ptr %i.ado, align 2, !alias.scope !11828
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.es:                                            ; preds = %bb.en
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adq = load i64, ptr %i.adp, align 8, !alias.scope !11828, !noundef !21
  %i.adr = trunc i64 %i.adq to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.et:                                            ; preds = %bb.en
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adt = load i64, ptr %i.ads, align 8, !alias.scope !11828, !noundef !21
  %i.adu = lshr i64 %i.adt, 16
  %i.adv = trunc i64 %i.adu to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.eu:                                            ; preds = %bb.en
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adx = load i64, ptr %i.adw, align 8, !alias.scope !11828, !noundef !21
  %i.ady = lshr i64 %i.adx, 32
  %i.adz = trunc i64 %i.ady to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ev:                                            ; preds = %bb.en
  %i.aea = getelementptr inbounds nuw i8, ptr %1, i64 14
  %9 = load i16, ptr %i.aea, align 2, !alias.scope !11828
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.ew:                                            ; preds = %bb.d
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aec = load i32, ptr %i.aeb, align 8, !noundef !21
  %i.aed = trunc i32 %i.aec to i8
  %i.aee = sext i8 %i.aed to i16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.ew, %bb.em
  %.sroa.0144.1 = phi i16 [ %i.adg, %bb.em ], [ %i.aee, %bb.ew ], [ 0, %bb.en ], [ %i.adi, %bb.eo ], [ %i.adk, %bb.ep ], [ %i.adn, %bb.eq ], [ %8, %bb.er ], [ %i.adr, %bb.es ], [ %i.adv, %bb.et ], [ %i.adz, %bb.eu ], [ %9, %bb.ev ] ; 7 uses
  store i32 0, ptr %i.z, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aeg = load ptr, ptr %i.aef, align 8, !noundef !21 ; 2 uses
  %.not244 = icmp eq ptr %i.aeg, null
  br i1 %.not244, label %.thread810, label %bb.ex

.thread810:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  store i64 -3, ptr %i.i, align 8
  br label %bb.ff

bb.ex:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aei = load ptr, ptr %i.aeh, align 8, !nonnull !21, !align !25, !noundef !21
  %i.aej = zext i16 %.sroa.0144.1 to i64          ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aei, i64 24
  %i.ael = load ptr, ptr %i.aek, align 8, !invariant.load !21, !nonnull !21
  call void %i.ael(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noundef nonnull %i.aeg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, i64 noundef %i.aej, i32 noundef 2) #45
  %.pr809 = load i64, ptr %i.i, align 8           ; 5 uses
  %.not245 = icmp eq i64 %.pr809, -3
  br i1 %.not245, label %bb.ff, label %bb.fa

bb.ey:                                            ; preds = %bb.fc, %bb.fb
  %lpad.thr_comm.split-lp971 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i616 = add nsw i64 %.pr809, -1
  %switch.i617 = icmp ult i64 %.0.val.off.i616, -4
  br i1 %switch.i617, label %bb.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.ez:                                            ; preds = %bb.ey
  %i.aem = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val326 = load ptr, ptr %i.aem, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val326, i64 noundef %.pr809, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11829
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.fa:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aep = load i32, ptr %i.aeo, align 8, !noundef !21 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11830)
  call void @llvm.experimental.noalias.scope.decl(metadata !11831)
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aer = load i8, ptr %i.aeq, align 4, !range !40, !alias.scope !11831, !noundef !21 ; 3 uses
  %i.aes = shl nuw nsw i8 %i.aer, 2
  %narrow.i572 = add nuw nsw i8 %i.aes, -40
  %switch.offset.i573 = zext i8 %narrow.i572 to i64
  %narrow22.i574 = mul nuw i8 %i.aer, 48          ; 2 uses
  %i.aet = or disjoint i8 %narrow22.i574, 8
  %switch.offset12.i575 = zext i8 %i.aet to i64
  %switch.idx.mult14.i577 = zext i8 %narrow22.i574 to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aen, i64 %switch.offset.i573
  %.sroa.01.4.in.i582 = getelementptr inbounds nuw i8, ptr %i.aen, i64 %switch.offset12.i575
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aen, i64 %switch.idx.mult14.i577 ; 3 uses
  %.sroa.9.4.in.i583 = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 32
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 40
  %.sroa.0.0.i584 = load i32, ptr %i.aeu, align 4, !alias.scope !11831, !noundef !21
  %.sroa.01.1.i585 = load ptr, ptr %.sroa.01.4.in.i582, align 8, !alias.scope !11831, !nonnull !21, !noundef !21
  %.sroa.9.1.i586 = load i64, ptr %.sroa.9.4.in.i583, align 8, !alias.scope !11831, !noundef !21
  %.sroa.02.0.i587 = load ptr, ptr %i.aew, align 8, !alias.scope !11831, !nonnull !21, !noundef !21
  %.sroa.93.0.i588 = load i64, ptr %i.aex, align 8, !alias.scope !11831, !noundef !21
  %.sroa.04.0.in.i589 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i590 = load ptr, ptr %.sroa.04.0.in.i589, align 8, !alias.scope !11831, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i591 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i592 = load i64, ptr %.sroa.3.0.in.i591, align 8, !alias.scope !11831, !noundef !21
  %..i.i593 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i584, i32 255)
  %i.aey = trunc nuw i32 %..i.i593 to i8
  store ptr %.sroa.01.1.i585, ptr %i.h, align 8, !alias.scope !11830
  %i.aez = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.9.1.i586, ptr %i.aez, align 8, !alias.scope !11830
  %i.afa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.02.0.i587, ptr %i.afa, align 8, !alias.scope !11830
  %i.afb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.93.0.i588, ptr %i.afb, align 8, !alias.scope !11830
  %i.afc = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.sroa.04.0.i590, ptr %i.afc, align 8, !alias.scope !11830
  %i.afd = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.sroa.3.0.i592, ptr %i.afd, align 8, !alias.scope !11830
  %i.afe = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 %i.aey, ptr %i.afe, align 8, !alias.scope !11830
  %i.aff = getelementptr inbounds nuw i8, ptr %i.h, i64 49
  store i8 %i.aer, ptr %i.aff, align 1, !alias.scope !11830
  %i.afg = getelementptr inbounds nuw i8, ptr %i.h, i64 50
  %i.afh = lshr i32 %i.aep, 15
  %i.afi = trunc i32 %i.afh to i8
  %i.afj = and i8 %i.afi, 1
  store i8 %i.afj, ptr %i.afg, align 2, !alias.scope !11830
  %i.afk = getelementptr inbounds nuw i8, ptr %i.h, i64 51
  %i.afl = lshr i32 %i.aep, 16
  %i.afm = trunc i32 %i.afl to i8
  %i.afn = and i8 %i.afm, 1
  store i8 %i.afn, ptr %i.afk, align 1, !alias.scope !11830
  %i.afo = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.afp = lshr i32 %i.aep, 17
  %i.afq = trunc i32 %i.afp to i8
  %i.afr = and i8 %i.afq, 1
  store i8 %i.afr, ptr %i.afo, align 4, !alias.scope !11830
  %i.afs = getelementptr inbounds nuw i8, ptr %i.h, i64 53
  %i.aft = lshr i32 %i.aep, 14
  %i.afu = trunc i32 %i.aft to i8
  %i.afv = and i8 %i.afu, 1
  store i8 %i.afv, ptr %i.afs, align 1, !alias.scope !11830
  %i.afw = getelementptr inbounds nuw i8, ptr %i.h, i64 54
  %i.afx = lshr i32 %i.aep, 19
  %i.afy = trunc i32 %i.afx to i8
  %i.afz = and i8 %i.afy, 1
  store i8 %i.afz, ptr %i.afw, align 2, !alias.scope !11830
  %i.aga = getelementptr inbounds nuw i8, ptr %i.h, i64 55
  store i8 0, ptr %i.aga, align 1, !alias.scope !11830
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.agc = load ptr, ptr %i.agb, align 8, !noundef !21 ; 2 uses
  %.not247 = icmp eq ptr %i.agc, null
  br i1 %.not247, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.age = load ptr, ptr %i.agd, align 8, !nonnull !21, !align !25, !noundef !21
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 24
  %i.agg = load ptr, ptr %i.agf, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.agg(ptr noundef nonnull %i.agc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %._crit_edge892 unwind label %bb.ey

._crit_edge892:                                   ; preds = %bb.fb
  %.pre893 = load i32, ptr %i.aeo, align 8
  br label %bb.fc

bb.fc:                                            ; preds = %._crit_edge892, %bb.fa
  %i.agh = phi i32 [ %.pre893, %._crit_edge892 ], [ %i.aep, %bb.fa ]
  %i.agi = and i32 %i.agh, 33554432
  %i.agj = icmp ne i32 %i.agi, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aen, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, i64 noundef %i.aej, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, i1 noundef zeroext %i.agj, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.fd unwind label %bb.ey

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.0.val.off.i621 = add nsw i64 %.pr809, -1
  %switch.i622 = icmp ult i64 %.0.val.off.i621, -4
  br i1 %switch.i622, label %bb.fe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit623

bb.fe:                                            ; preds = %bb.fd
  %i.agk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val324 = load ptr, ptr %i.agk, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val324, i64 noundef %.pr809, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11832
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit623

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit623: ; preds = %.thread978, %bb.fd, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.am

bb.ff:                                            ; preds = %bb.ex, %.thread810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.agn = load i32, ptr %i.agm, align 8, !noundef !21 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11833)
  call void @llvm.experimental.noalias.scope.decl(metadata !11834)
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.agp = load i8, ptr %i.ago, align 4, !range !40, !alias.scope !11834, !noundef !21 ; 3 uses
  %i.agq = shl nuw nsw i8 %i.agp, 2
  %narrow.i594 = add nuw nsw i8 %i.agq, -40
  %switch.offset.i595 = zext i8 %narrow.i594 to i64
  %narrow22.i596 = mul nuw i8 %i.agp, 48          ; 2 uses
  %i.agr = or disjoint i8 %narrow22.i596, 8
  %switch.offset12.i597 = zext i8 %i.agr to i64
  %switch.idx.mult14.i599 = zext i8 %narrow22.i596 to i64
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agl, i64 %switch.offset.i595
  %.sroa.01.4.in.i604 = getelementptr inbounds nuw i8, ptr %i.agl, i64 %switch.offset12.i597
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agl, i64 %switch.idx.mult14.i599 ; 3 uses
  %.sroa.9.4.in.i605 = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 32
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 40
  %.sroa.0.0.i606 = load i32, ptr %i.ags, align 4, !alias.scope !11834, !noundef !21
  %.sroa.01.1.i607 = load ptr, ptr %.sroa.01.4.in.i604, align 8, !alias.scope !11834, !nonnull !21, !noundef !21
  %.sroa.9.1.i608 = load i64, ptr %.sroa.9.4.in.i605, align 8, !alias.scope !11834, !noundef !21
  %.sroa.02.0.i609 = load ptr, ptr %i.agu, align 8, !alias.scope !11834, !nonnull !21, !noundef !21
  %.sroa.93.0.i610 = load i64, ptr %i.agv, align 8, !alias.scope !11834, !noundef !21
  %.sroa.04.0.in.i611 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i612 = load ptr, ptr %.sroa.04.0.in.i611, align 8, !alias.scope !11834, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i613 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i614 = load i64, ptr %.sroa.3.0.in.i613, align 8, !alias.scope !11834, !noundef !21
  %..i.i615 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i606, i32 255)
  %i.agw = trunc nuw i32 %..i.i615 to i8
  store ptr %.sroa.01.1.i607, ptr %i.g, align 8, !alias.scope !11833
  %i.agx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.9.1.i608, ptr %i.agx, align 8, !alias.scope !11833
  %i.agy = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.02.0.i609, ptr %i.agy, align 8, !alias.scope !11833
  %i.agz = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.93.0.i610, ptr %i.agz, align 8, !alias.scope !11833
  %i.aha = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %.sroa.04.0.i612, ptr %i.aha, align 8, !alias.scope !11833
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.3.0.i614, ptr %i.ahb, align 8, !alias.scope !11833
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 %i.agw, ptr %i.ahc, align 8, !alias.scope !11833
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  store i8 %i.agp, ptr %i.ahd, align 1, !alias.scope !11833
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.ahf = lshr i32 %i.agn, 15
  %i.ahg = trunc i32 %i.ahf to i8
  %i.ahh = and i8 %i.ahg, 1
  store i8 %i.ahh, ptr %i.ahe, align 2, !alias.scope !11833
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.g, i64 51 ; 2 uses
  %i.ahj = lshr i32 %i.agn, 16
  %i.ahk = trunc i32 %i.ahj to i8
  %i.ahl = and i8 %i.ahk, 1
  store i8 %i.ahl, ptr %i.ahi, align 1, !alias.scope !11833
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.ahn = lshr i32 %i.agn, 17
  %i.aho = trunc i32 %i.ahn to i8
  %i.ahp = and i8 %i.aho, 1
  store i8 %i.ahp, ptr %i.ahm, align 4, !alias.scope !11833
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.g, i64 53 ; 2 uses
  %i.ahr = lshr i32 %i.agn, 14
  %i.ahs = trunc i32 %i.ahr to i8
  %i.aht = and i8 %i.ahs, 1
  store i8 %i.aht, ptr %i.ahq, align 1, !alias.scope !11833
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.g, i64 54 ; 2 uses
  %i.ahv = lshr i32 %i.agn, 19
  %i.ahw = trunc i32 %i.ahv to i8
  %i.ahx = and i8 %i.ahw, 1                       ; 2 uses
  store i8 %i.ahx, ptr %i.ahu, align 2, !alias.scope !11833
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.g, i64 55
  store i8 0, ptr %i.ahy, align 1, !alias.scope !11833
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aia = load ptr, ptr %i.ahz, align 8, !noundef !21 ; 2 uses
  %.not246 = icmp eq ptr %i.aia, null
  br i1 %.not246, label %bb.fg, label %._crit_edge894

._crit_edge894:                                   ; preds = %bb.ff
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aic = load ptr, ptr %i.aib, align 8, !nonnull !21, !align !25, !noundef !21
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 24
  %i.aie = load ptr, ptr %i.aid, align 8, !invariant.load !21, !nonnull !21
  call void %i.aie(ptr noundef nonnull %i.aia, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
  %.pre895 = load i8, ptr %i.ahu, align 2, !range !27
  br label %bb.fg

bb.fg:                                            ; preds = %._crit_edge894, %bb.ff
  %i.aif = phi i8 [ %.pre895, %._crit_edge894 ], [ %i.ahx, %bb.ff ]
  %i.aig = trunc nuw i8 %i.aif to i1
  br i1 %i.aig, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aih = zext i16 %.sroa.0144.1 to i64
  br label %.thread978

bb.fi:                                            ; preds = %bb.fg
  %i.aii = sext i16 %.sroa.0144.1 to i64          ; 2 uses
  %i.aij = icmp slt i16 %.sroa.0144.1, 0
  br i1 %i.aij, label %bb.fj, label %.thread978

.thread978:                                       ; preds = %bb.fj, %bb.fi, %bb.fh
  %.sroa.0158.3 = phi i64 [ %i.aii, %bb.fj ], [ %i.aii, %bb.fi ], [ %i.aih, %bb.fh ]
  %.sroa.0144.2 = phi i16 [ %i.aiw, %bb.fj ], [ %.sroa.0144.1, %bb.fi ], [ %.sroa.0144.1, %bb.fh ]
  %.sroa.0107.3 = phi i8 [ 2, %bb.fj ], [ 2, %bb.fi ], [ 3, %bb.fh ]
  %i.aik = zext i16 %.sroa.0144.2 to i64
  %i.ail = load i8, ptr %i.ahq, align 1, !range !27, !noundef !21
  %i.aim = load i8, ptr %i.ahi, align 1, !range !27, !noundef !21
  %i.ain = shl nuw nsw i8 %i.ail, 1
  %i.aio = shl nuw nsw i8 %i.aim, 2
  %.sroa.0216.1839 = or disjoint i8 %i.aio, %i.ain
  %.sroa.0216.1 = zext nneg i8 %.sroa.0216.1839 to i32
  %i.aip = call { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.agl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, i64 noundef %i.aik, i32 noundef 16, i32 noundef %.sroa.0216.1) ; 2 uses
  %i.aiq = extractvalue { ptr, i64 } %i.aip, 0
  %i.air = extractvalue { ptr, i64 } %i.aip, 1
  %i.ais = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ait = load ptr, ptr %i.ais, align 8, !invariant.load !21, !nonnull !21
  call void %i.ait(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiq, i64 noundef %i.air, i64 noundef %.sroa.0158.3, i8 noundef %.sroa.0107.3, i8 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit623

bb.fj:                                            ; preds = %bb.fi
  %i.aiu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aiv = load ptr, ptr %i.aiu, align 8, !invariant.load !21, !nonnull !21
  call void %i.aiv(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
  %i.aiw = sub i16 0, %.sroa.0144.1
  br label %.thread978

bb.fk:                                            ; preds = %bb.d
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aiy = load i32, ptr %i.aix, align 8, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fl:                                            ; preds = %bb.d
  %trunc.i624 = trunc nuw i32 %5 to i8
  switch i8 %trunc.i624, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit [
    i8 0, label %bb.fm
    i8 1, label %bb.fn
    i8 2, label %bb.fo
    i8 3, label %bb.fp
  ]

bb.fm:                                            ; preds = %bb.fl
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aja = load i32, ptr %i.aiz, align 4, !alias.scope !11835
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fn:                                            ; preds = %bb.fl
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ajc = load i32, ptr %i.ajb, align 8, !alias.scope !11835, !noundef !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fo:                                            ; preds = %bb.fl
  %i.ajd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aje = load i64, ptr %i.ajd, align 8, !alias.scope !11835, !noundef !21
  %i.ajf = trunc i64 %i.aje to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fp:                                            ; preds = %bb.fl
  %i.ajg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %10 = load i32, ptr %i.ajg, align 4, !alias.scope !11835
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

bb.fq:                                            ; preds = %bb.d
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aji = load i32, ptr %i.ajh, align 8, !noundef !21
  %i.ajj = shl i32 %i.aji, 24
  %i.ajk = ashr exact i32 %i.ajj, 24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit: ; preds = %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fq, %bb.fk
  %.sroa.0151.1 = phi i32 [ %i.aiy, %bb.fk ], [ %i.ajk, %bb.fq ], [ 0, %bb.fl ], [ %i.aja, %bb.fm ], [ %i.ajc, %bb.fn ], [ %i.ajf, %bb.fo ], [ %10, %bb.fp ] ; 7 uses
  store i32 0, ptr %i.z, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ajm = load ptr, ptr %i.ajl, align 8, !noundef !21 ; 2 uses
  %.not239 = icmp eq ptr %i.ajm, null
  br i1 %.not239, label %.thread822, label %bb.fr

.thread822:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  store i64 -3, ptr %i.f, align 8
  br label %bb.fz

bb.fr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ajo = load ptr, ptr %i.ajn, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ajp = zext i32 %.sroa.0151.1 to i64          ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 24
  %i.ajr = load ptr, ptr %i.ajq, align 8, !invariant.load !21, !nonnull !21
  call void %i.ajr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull %i.ajm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, i64 noundef %i.ajp, i32 noundef 4) #45
  %.pr821 = load i64, ptr %i.f, align 8           ; 5 uses
  %.not240 = icmp eq i64 %.pr821, -3
  br i1 %.not240, label %bb.fz, label %bb.fu

bb.fs:                                            ; preds = %bb.fw, %bb.fv
  %lpad.thr_comm.split-lp985 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i672 = add nsw i64 %.pr821, -1
  %switch.i673 = icmp ult i64 %.0.val.off.i672, -4
  br i1 %switch.i673, label %bb.ft, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.ft:                                            ; preds = %bb.fs
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val322 = load ptr, ptr %i.ajs, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val322, i64 noundef %.pr821, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11836
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.fu:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ajv = load i32, ptr %i.aju, align 8, !noundef !21 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11837)
  call void @llvm.experimental.noalias.scope.decl(metadata !11838)
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ajx = load i8, ptr %i.ajw, align 4, !range !40, !alias.scope !11838, !noundef !21 ; 3 uses
  %i.ajy = shl nuw nsw i8 %i.ajx, 2
  %narrow.i628 = add nuw nsw i8 %i.ajy, -40
  %switch.offset.i629 = zext i8 %narrow.i628 to i64
  %narrow22.i630 = mul nuw i8 %i.ajx, 48          ; 2 uses
  %i.ajz = or disjoint i8 %narrow22.i630, 8
  %switch.offset12.i631 = zext i8 %i.ajz to i64
  %switch.idx.mult14.i633 = zext i8 %narrow22.i630 to i64
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %switch.offset.i629
  %.sroa.01.4.in.i638 = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %switch.offset12.i631
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %switch.idx.mult14.i633 ; 3 uses
  %.sroa.9.4.in.i639 = getelementptr inbounds nuw i8, ptr %i.akb, i64 16
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 32
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akb, i64 40
  %.sroa.0.0.i640 = load i32, ptr %i.aka, align 4, !alias.scope !11838, !noundef !21
  %.sroa.01.1.i641 = load ptr, ptr %.sroa.01.4.in.i638, align 8, !alias.scope !11838, !nonnull !21, !noundef !21
  %.sroa.9.1.i642 = load i64, ptr %.sroa.9.4.in.i639, align 8, !alias.scope !11838, !noundef !21
  %.sroa.02.0.i643 = load ptr, ptr %i.akc, align 8, !alias.scope !11838, !nonnull !21, !noundef !21
  %.sroa.93.0.i644 = load i64, ptr %i.akd, align 8, !alias.scope !11838, !noundef !21
  %.sroa.04.0.in.i645 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i646 = load ptr, ptr %.sroa.04.0.in.i645, align 8, !alias.scope !11838, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i647 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i648 = load i64, ptr %.sroa.3.0.in.i647, align 8, !alias.scope !11838, !noundef !21
  %..i.i649 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i640, i32 255)
  %i.ake = trunc nuw i32 %..i.i649 to i8
  store ptr %.sroa.01.1.i641, ptr %i.e, align 8, !alias.scope !11837
  %i.akf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.9.1.i642, ptr %i.akf, align 8, !alias.scope !11837
  %i.akg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.02.0.i643, ptr %i.akg, align 8, !alias.scope !11837
  %i.akh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.93.0.i644, ptr %i.akh, align 8, !alias.scope !11837
  %i.aki = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.04.0.i646, ptr %i.aki, align 8, !alias.scope !11837
  %i.akj = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.3.0.i648, ptr %i.akj, align 8, !alias.scope !11837
  %i.akk = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i8 %i.ake, ptr %i.akk, align 8, !alias.scope !11837
  %i.akl = getelementptr inbounds nuw i8, ptr %i.e, i64 49
  store i8 %i.ajx, ptr %i.akl, align 1, !alias.scope !11837
  %i.akm = getelementptr inbounds nuw i8, ptr %i.e, i64 50
  %i.akn = lshr i32 %i.ajv, 15
  %i.ako = trunc i32 %i.akn to i8
  %i.akp = and i8 %i.ako, 1
  store i8 %i.akp, ptr %i.akm, align 2, !alias.scope !11837
  %i.akq = getelementptr inbounds nuw i8, ptr %i.e, i64 51
  %i.akr = lshr i32 %i.ajv, 16
  %i.aks = trunc i32 %i.akr to i8
  %i.akt = and i8 %i.aks, 1
  store i8 %i.akt, ptr %i.akq, align 1, !alias.scope !11837
  %i.aku = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.akv = lshr i32 %i.ajv, 17
  %i.akw = trunc i32 %i.akv to i8
  %i.akx = and i8 %i.akw, 1
  store i8 %i.akx, ptr %i.aku, align 4, !alias.scope !11837
  %i.aky = getelementptr inbounds nuw i8, ptr %i.e, i64 53
  %i.akz = lshr i32 %i.ajv, 14
  %i.ala = trunc i32 %i.akz to i8
  %i.alb = and i8 %i.ala, 1
  store i8 %i.alb, ptr %i.aky, align 1, !alias.scope !11837
  %i.alc = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %i.ald = lshr i32 %i.ajv, 19
  %i.ale = trunc i32 %i.ald to i8
  %i.alf = and i8 %i.ale, 1
  store i8 %i.alf, ptr %i.alc, align 2, !alias.scope !11837
  %i.alg = getelementptr inbounds nuw i8, ptr %i.e, i64 55
  store i8 0, ptr %i.alg, align 1, !alias.scope !11837
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ali = load ptr, ptr %i.alh, align 8, !noundef !21 ; 2 uses
  %.not242 = icmp eq ptr %i.ali, null
  br i1 %.not242, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.alk = load ptr, ptr %i.alj, align 8, !nonnull !21, !align !25, !noundef !21
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 24
  %i.alm = load ptr, ptr %i.all, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.alm(ptr noundef nonnull %i.ali, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %5, i32 noundef %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %._crit_edge878 unwind label %bb.fs

._crit_edge878:                                   ; preds = %bb.fv
  %.pre879 = load i32, ptr %i.aju, align 8
  br label %bb.fw

bb.fw:                                            ; preds = %._crit_edge878, %bb.fu
  %i.aln = phi i32 [ %.pre879, %._crit_edge878 ], [ %i.ajv, %bb.fu ]
  %i.alo = and i32 %i.aln, 33554432
  %i.alp = icmp ne i32 %i.alo, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef range(i32 0, 255) %5, i32 noundef range(i32 0, 2) %.sroa.0.1, i32 %.sroa.57.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ajt, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, i64 noundef %i.ajp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i1 noundef zeroext %i.alp, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.fx unwind label %bb.fs

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.0.val.off.i677 = add nsw i64 %.pr821, -1
  %switch.i678 = icmp ult i64 %.0.val.off.i677, -4
  br i1 %switch.i678, label %bb.fy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit679

bb.fy:                                            ; preds = %bb.fx
  %i.alq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val320 = load ptr, ptr %i.alq, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val320, i64 noundef %.pr821, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11839
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit679

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit679: ; preds = %.thread992, %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.am

bb.fz:                                            ; preds = %bb.fr, %.thread822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.alt = load i32, ptr %i.als, align 8, !noundef !21 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11840)
  call void @llvm.experimental.noalias.scope.decl(metadata !11841)
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.alv = load i8, ptr %i.alu, align 4, !range !40, !alias.scope !11841, !noundef !21 ; 3 uses
  %i.alw = shl nuw nsw i8 %i.alv, 2
  %narrow.i650 = add nuw nsw i8 %i.alw, -40
  %switch.offset.i651 = zext i8 %narrow.i650 to i64
  %narrow22.i652 = mul nuw i8 %i.alv, 48          ; 2 uses
  %i.alx = or disjoint i8 %narrow22.i652, 8
  %switch.offset12.i653 = zext i8 %i.alx to i64
  %switch.idx.mult14.i655 = zext i8 %narrow22.i652 to i64
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alr, i64 %switch.offset.i651
  %.sroa.01.4.in.i660 = getelementptr inbounds nuw i8, ptr %i.alr, i64 %switch.offset12.i653
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alr, i64 %switch.idx.mult14.i655 ; 3 uses
  %.sroa.9.4.in.i661 = getelementptr inbounds nuw i8, ptr %i.alz, i64 16
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 32
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alz, i64 40
  %.sroa.0.0.i662 = load i32, ptr %i.aly, align 4, !alias.scope !11841, !noundef !21
  %.sroa.01.1.i663 = load ptr, ptr %.sroa.01.4.in.i660, align 8, !alias.scope !11841, !nonnull !21, !noundef !21
  %.sroa.9.1.i664 = load i64, ptr %.sroa.9.4.in.i661, align 8, !alias.scope !11841, !noundef !21
  %.sroa.02.0.i665 = load ptr, ptr %i.ama, align 8, !alias.scope !11841, !nonnull !21, !noundef !21
  %.sroa.93.0.i666 = load i64, ptr %i.amb, align 8, !alias.scope !11841, !noundef !21
  %.sroa.04.0.in.i667 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i668 = load ptr, ptr %.sroa.04.0.in.i667, align 8, !alias.scope !11841, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i669 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i670 = load i64, ptr %.sroa.3.0.in.i669, align 8, !alias.scope !11841, !noundef !21
  %..i.i671 = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i662, i32 255)
  %i.amc = trunc nuw i32 %..i.i671 to i8
  store ptr %.sroa.01.1.i663, ptr %i.d, align 8, !alias.scope !11840
  %i.amd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.9.1.i664, ptr %i.amd, align 8, !alias.scope !11840
  %i.ame = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.02.0.i665, ptr %i.ame, align 8, !alias.scope !11840
  %i.amf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.93.0.i666, ptr %i.amf, align 8, !alias.scope !11840
  %i.amg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.04.0.i668, ptr %i.amg, align 8, !alias.scope !11840
  %i.amh = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.3.0.i670, ptr %i.amh, align 8, !alias.scope !11840
  %i.ami = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 %i.amc, ptr %i.ami, align 8, !alias.scope !11840
  %i.amj = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  store i8 %i.alv, ptr %i.amj, align 1, !alias.scope !11840
  %i.amk = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  %i.aml = lshr i32 %i.alt, 15
end_hunk_4
