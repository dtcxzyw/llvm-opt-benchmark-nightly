Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.05?download=true
inline.NumInlined: 7514
inline.NumDeleted: 2502
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  store i64 1, ptr %1, align 8, !alias.scope !1512, !noalias !1515
  br label %.thread

bb.ay:                                            ; preds = %bb.ap, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit.i48
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.ev, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.az:                                            ; preds = %bb.c
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.thread145

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  %i.ex = load ptr, ptr %2, align 8, !alias.scope !1571, !noundef !8 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !1584, !noundef !8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !1584, !nonnull !8, !noundef !8
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !1584, !noundef !8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !1584, !noundef !8
  tail call void %i.fc(ptr noundef %i.fa, ptr noundef %i.fe, i64 noundef %i.fg), !noalias !1584, !inline_history !1200
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.bb:                                            ; preds = %bb.a, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !1594, !noundef !8
  %i.fj = load ptr, ptr %3, align 8, !alias.scope !1594, !nonnull !8, !align !144, !noundef !8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !1594, !nonnull !8, !noundef !8
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !1594, !noundef !8
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !1594, !noundef !8
  invoke void %i.fl(ptr noundef %i.fi, ptr noundef %i.fn, i64 noundef %i.fp)
          to label %.thread145 unwind label %bb.bc, !inline_history !970

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit45: ; preds = %bb.am, %bb.aq, %bb.ar, %bb.n, %bb.o, %bb.j, %.thread145, %bb.bd
  %.pn148 = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %.pn149, %.thread145 ], [ %.pn149, %bb.bd ], [ %i.ea, %bb.aq ], [ %i.ea, %bb.ar ], [ %i.du, %bb.am ], [ %i.bg, %bb.o ], [ %i.ba, %bb.j ]
  resume { ptr, i32 } %.pn148

.thread145:                                       ; preds = %bb.bb, %bb.az, %bb.ac
  %.pn149 = phi { ptr, i32 } [ %i.cs, %bb.ac ], [ %i.ew, %bb.az ], [ %lpad.thr_comm, %bb.bb ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.fr = load ptr, ptr %2, align 8, !alias.scope !1601, !noundef !8 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit45, label %bb.bd

bb.bd:                                            ; preds = %.thread145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !1614, !noundef !8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !1614, !nonnull !8, !noundef !8
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !1614, !noundef !8
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !1614, !noundef !8
  invoke void %i.fw(ptr noundef %i.fu, ptr noundef %i.fy, i64 noundef %i.ga)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit45 unwind label %bb.bc, !inline_history !1094

infloop:                                          ; preds = %.outer232, %infloop
  br label %infloop

infloop265:                                       ; preds = %.outer, %infloop265
  br label %infloop265
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap12contains_keyNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1615, !noalias !1618, !noundef !8 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge, label %bb.b

._RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !1620
  br label %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !1618 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !1615, !noalias !1618, !noundef !8 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1615, !noalias !1618, !noundef !8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1615, !noalias !1618, !nonnull !8
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1615, !noalias !1618, !nonnull !8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 5 uses
  %i.t = icmp eq ptr %i.s, null                   ; 4 uses
  %not..i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !1002
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !1625, !noundef !8 ; 2 uses
  %.not.i = icmp eq i16 %i.z, -1
  br i1 %.not.i, label %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !1625, !noundef !8 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ag
  br i1 %i.ah, label %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1625, !noundef !8
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !1625, !noundef !8
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1625, !noundef !8
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !1625
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %bb.l, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !1002, !noalias !1625, !noundef !8
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit1, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #42
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1644, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1644, !nonnull !8, !noundef !8
  invoke void %i.be(ptr noundef %i.bc, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.m, !inline_history !1094

_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %.loopexit, %bb.c, %._RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge
  %2 = phi ptr [ %.pre, %._RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge ], [ %i.s, %bb.c ], [ %i.s, %.loopexit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  %i.bf = icmp eq ptr %2, null
  br i1 %i.bf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit1, label %bb.l

bb.l:                                             ; preds = %.split.i, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit
  %3 = phi i1 [ false, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ true, %.split.i ]
  %4 = phi ptr [ %2, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.s, %.split.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1659, !noundef !8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !1659, !nonnull !8, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !1659, !noundef !8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !1659, !noundef !8
  tail call void %i.bj(ptr noundef %i.bh, ptr noundef %i.bl, i64 noundef %i.bn), !noalias !1659, !inline_history !1200
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit1: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.l
  %i.bo = phi i1 [ %3, %bb.l ], [ false, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ true, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i ]
  ret i1 %i.bo

bb.m:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ba

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1666, !noalias !1667, !noundef !8 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !1669
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !1667 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !1666, !noalias !1667, !noundef !8 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1666, !noalias !1667, !noundef !8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1666, !noalias !1667, !nonnull !8
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1666, !noalias !1667, !nonnull !8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 5 uses
  %i.t = icmp eq ptr %i.s, null                   ; 4 uses
  %not..i.i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !1002
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !1674, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !1674, !noundef !8 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1674, !noundef !8
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !1674, !noundef !8
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1674, !noundef !8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !1674
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !1002, !noalias !1674, !noundef !8
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #42
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !1693, !noundef !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1693, !nonnull !8, !noundef !8
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.m, !inline_history !1094

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.pre, %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ null, %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !1708, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !1708, !nonnull !8, !noundef !8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1708, !noundef !8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1708, !noundef !8
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !1708, !inline_history !1200
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit2: ; preds = %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getRNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
end_hunk_0
