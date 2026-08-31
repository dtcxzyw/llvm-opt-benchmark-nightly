Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.01?download=true
inline.NumInlined: 835
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB6_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE6removeRNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !18, !noalias !21, !nonnull !14, !noundef !14 ; 2 uses
  %i.cr = getelementptr inbounds nuw [64 x i8], ptr %i.cq, i64 %i.cj ; 2 uses
  store i64 0, ptr %i.cr, align 8, !noalias !23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.x, ptr %i.cs, align 8, !noalias !23
  %i.ct = icmp ult i64 %i.cl, %i.cn
  br i1 %i.ct, label %bb.x, label %.invoke.i

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %i.cq, i64 %i.cl ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 0, ptr %i.cv, align 8, !noalias !23
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 %i.x, ptr %i.cw, align 8, !noalias !23
  br label %bb.p

bb.y:                                             ; preds = %bb.p
  %i.cx = load i16, ptr %i.h, align 8, !alias.scope !18, !noalias !21 ; 2 uses
  %i.cy = zext i16 %i.cx to i64
  br label %.outer

.outer:                                           ; preds = %bb.ab, %bb.y
  %.sroa.018.0.i.ph = phi i64 [ %.sroa.08.0.i.lcssa, %bb.ab ], [ %.sroa.0.0.i.i.ph.mux, %bb.y ] ; 4 uses
  %.sroa.08.0.i.ph = add i64 %.sroa.018.0.i.ph, 1 ; 2 uses
  %i.cz = icmp ult i64 %.sroa.08.0.i.ph, %i.bg
  %.sroa.08.0.i.lcssa = select i1 %i.cz, i64 %.sroa.08.0.i.ph, i64 0 ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.08.0.i.lcssa ; 3 uses
  %i.db = load i16, ptr %i.da, align 2, !noalias !23, !noundef !14 ; 2 uses
  %.not36.i = icmp eq i16 %i.db, -1
  br i1 %.not36.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCskeugdADtBsi_12pingora_core.exit, label %bb.z

bb.z:                                             ; preds = %.outer
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 2 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !23, !noundef !14 ; 2 uses
  %i.de = and i16 %i.dd, %i.cx
  %i.df = zext i16 %i.de to i64
  %i.dg = sub i64 %.sroa.08.0.i.lcssa, %i.df
  %i.dh = and i64 %i.dg, %i.cy
  %.not37.i = icmp eq i64 %i.dh, 0
  br i1 %.not37.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCskeugdADtBsi_12pingora_core.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = icmp ult i64 %.sroa.018.0.i.ph, %i.bg
  br i1 %i.di, label %bb.ab, label %.invoke.i

.invoke.i:                                        ; preds = %bb.aa, %bb.w, %bb.v
  %i.dj = phi i64 [ %i.cl, %bb.w ], [ %i.cj, %bb.v ], [ %.sroa.018.0.i.ph, %bb.aa ]
  %i.dk = phi i64 [ %i.cn, %bb.w ], [ %i.cn, %bb.v ], [ %i.bg, %bb.aa ]
  %i.dl = phi ptr [ @133, %bb.w ], [ @132, %bb.v ], [ @134, %bb.aa ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl) #28
          to label %.cont.i unwind label %bb.s, !noalias !23

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.018.0.i.ph ; 2 uses
  store i16 %i.db, ptr %i.dm, align 2, !noalias !23
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store i16 %i.dd, ptr %i.dn, align 2, !noalias !23
  store i16 -1, ptr %i.da, align 2, !noalias !23
  store i16 0, ptr %i.dc, align 2, !noalias !23
  br label %.outer

bb.ac:                                            ; preds = %bb.s
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !23
  unreachable

bb.ad:                                            ; preds = %bb.s
  resume { ptr, i32 } %i.cc

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCskeugdADtBsi_12pingora_core.exit: ; preds = %.outer, %bb.z, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !noalias !18 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !18
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.66.0.copyload = load i64, ptr %.sroa.66.0..sroa_idx, align 8, !noalias !18
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.dp = icmp eq ptr %.sroa.45.0.copyload, null
  br i1 %i.dp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE12remove_foundCskeugdADtBsi_12pingora_core.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.45.0.copyload, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !33, !nonnull !14, !noundef !14
  tail call void %i.dr(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.66.0.copyload), !noalias !33, !inline_history !46
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

infloop:                                          ; preds = %.outer57, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap12contains_keyNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !47, !noalias !50, !noundef !14 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge, label %bb.b

._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !52
  br label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1) #25, !noalias !50 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !47, !noalias !50, !noundef !14 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !47, !noalias !50, !noundef !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !47, !noalias !50, !nonnull !14
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !47, !noalias !50, !nonnull !14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 5 uses
  %i.t = icmp eq ptr %i.s, null                   ; 4 uses
  %not..i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !16
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !57, !noundef !14 ; 2 uses
  %.not.i = icmp eq i16 %i.z, -1
  br i1 %.not.i, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !57, !noundef !14 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ag
  br i1 %i.ah, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !57, !noundef !14
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !57, !noundef !14
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !57, !noundef !14
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !57
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !16, !noalias !57, !noundef !14
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit1, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !76, !noundef !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !76, !nonnull !14, !noundef !14
  invoke void %i.be(ptr noundef %i.bc, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit unwind label %bb.m, !inline_history !77

_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit: ; preds = %.split.i, %.loopexit, %bb.c, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge
  %2 = phi ptr [ %.pre, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge ], [ %i.s, %bb.c ], [ %i.s, %.loopexit ], [ %i.s, %.split.i ] ; 2 uses
  %3 = phi i1 [ false, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge ], [ true, %.split.i ], [ false, %.loopexit ], [ false, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.bf = icmp eq ptr %2, null
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit1, label %bb.l

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !92, !noundef !14
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !92, !nonnull !14, !noundef !14
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !92, !noundef !14
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !92, !noundef !14
  tail call void %i.bj(ptr noundef %i.bh, ptr noundef %i.bl, i64 noundef %i.bn), !noalias !92, !inline_history !46
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit1: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, %bb.l
  %i.bo = phi i1 [ %3, %bb.l ], [ %3, %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit ], [ true, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i ]
  ret i1 %i.bo

bb.m:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ba

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !99, !noalias !100, !noundef !14 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !102
  br label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1) #25, !noalias !100 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !99, !noalias !100, !noundef !14 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !99, !noalias !100, !noundef !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !99, !noalias !100, !nonnull !14
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !99, !noalias !100, !nonnull !14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 5 uses
  %i.t = icmp eq ptr %i.s, null                   ; 4 uses
  %not..i.i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !16
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !107, !noundef !14 ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !107, !noundef !14 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !107, !noundef !14
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !107, !noundef !14
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !107, !noundef !14
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !107
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !16, !noalias !107, !noundef !14
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !126, !noundef !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !126, !nonnull !14, !noundef !14
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit unwind label %bb.m, !inline_history !77

_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit_crit_edge, %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i ], [ %.pre, %._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i ], [ null, %._RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !141, !noundef !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !141, !nonnull !14, !noundef !14
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !141, !noundef !14
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !141, !noundef !14
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !141, !inline_history !46
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit2: ; preds = %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getRNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap6removeRNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !168, !noalias !171, !nonnull !14, !noundef !14 ; 2 uses
  %i.cs = getelementptr inbounds nuw [72 x i8], ptr %i.cr, i64 %i.ck ; 2 uses
  store i64 0, ptr %i.cs, align 8, !noalias !173
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.x, ptr %i.ct, align 8, !noalias !173
  %i.cu = icmp ult i64 %i.cm, %i.co
  br i1 %i.cu, label %bb.x, label %.invoke.i

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw [72 x i8], ptr %i.cr, i64 %i.cm ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 0, ptr %i.cw, align 8, !noalias !173
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 %i.x, ptr %i.cx, align 8, !noalias !173
  br label %bb.p

bb.y:                                             ; preds = %bb.p
  %i.cy = load i16, ptr %i.h, align 8, !alias.scope !168, !noalias !171 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  br label %.outer

.outer:                                           ; preds = %bb.ab, %bb.y
  %.sroa.018.0.i.ph = phi i64 [ %.sroa.08.0.i.lcssa, %bb.ab ], [ %.sroa.0.0.i.ph.mux, %bb.y ] ; 4 uses
  %.sroa.08.0.i.ph = add i64 %.sroa.018.0.i.ph, 1 ; 2 uses
  %i.da = icmp ult i64 %.sroa.08.0.i.ph, %i.bh
  %.sroa.08.0.i.lcssa = select i1 %i.da, i64 %.sroa.08.0.i.ph, i64 0 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.08.0.i.lcssa ; 3 uses
  %i.dc = load i16, ptr %i.db, align 2, !noalias !173, !noundef !14 ; 2 uses
  %.not36.i = icmp eq i16 %i.dc, -1
  br i1 %.not36.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap12remove_foundCskeugdADtBsi_12pingora_core.exit, label %bb.z

bb.z:                                             ; preds = %.outer
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 2 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !noalias !173, !noundef !14 ; 2 uses
  %i.df = and i16 %i.de, %i.cy
  %i.dg = zext i16 %i.df to i64
  %i.dh = sub i64 %.sroa.08.0.i.lcssa, %i.dg
  %i.di = and i64 %i.dh, %i.cz
  %.not37.i = icmp eq i64 %i.di, 0
  br i1 %.not37.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap12remove_foundCskeugdADtBsi_12pingora_core.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = icmp ult i64 %.sroa.018.0.i.ph, %i.bh
  br i1 %i.dj, label %bb.ab, label %.invoke.i

.invoke.i:                                        ; preds = %bb.aa, %bb.w, %bb.v
  %i.dk = phi i64 [ %i.cm, %bb.w ], [ %i.ck, %bb.v ], [ %.sroa.018.0.i.ph, %bb.aa ]
  %i.dl = phi i64 [ %i.co, %bb.w ], [ %i.co, %bb.v ], [ %i.bh, %bb.aa ]
  %i.dm = phi ptr [ @133, %bb.w ], [ @132, %bb.v ], [ @134, %bb.aa ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef %i.dl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm) #28
          to label %.cont.i unwind label %bb.s, !noalias !173

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.018.0.i.ph ; 2 uses
  store i16 %i.dc, ptr %i.dn, align 2, !noalias !173
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i16 %i.de, ptr %i.do, align 2, !noalias !173
  store i16 -1, ptr %i.db, align 2, !noalias !173
  store i16 0, ptr %i.dd, align 2, !noalias !173
  br label %.outer

bb.ac:                                            ; preds = %bb.s
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !173
  unreachable

bb.ad:                                            ; preds = %bb.s
  resume { ptr, i32 } %i.cd

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap12remove_foundCskeugdADtBsi_12pingora_core.exit: ; preds = %.outer, %bb.z, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !noalias !168 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !168
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.66.0.copyload = load i64, ptr %.sroa.66.0..sroa_idx, align 8, !noalias !168
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.dq = icmp eq ptr %.sroa.45.0.copyload, null
  br i1 %i.dq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap12remove_foundCskeugdADtBsi_12pingora_core.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.45.0.copyload, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !182, !nonnull !14, !noundef !14
  tail call void %i.ds(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.66.0.copyload), !noalias !182, !inline_history !46
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

infloop:                                          ; preds = %.outer57, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap7get_allNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !195, !noalias !198, !noundef !14 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge, label %bb.b

._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !alias.scope !200
  br label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2) #25, !noalias !198 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !195, !noalias !198, !noundef !14 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !195, !noalias !198, !noundef !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !195, !noalias !198, !nonnull !14
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !195, !noalias !198, !nonnull !14
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %2, align 8                ; 5 uses
  %i.t = icmp eq ptr %i.s, null                   ; 4 uses
  %not..i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !16
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !205, !noundef !14 ; 2 uses
  %.not.i = icmp eq i16 %i.z, -1
  br i1 %.not.i, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !205, !noundef !14 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ag
  br i1 %i.ah, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !205, !noundef !14
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !205, !noundef !14
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !205, !noundef !14
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !205
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !16, !noalias !205, !noundef !14
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.thread, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.thread: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ba, align 8
  store i64 1, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.bb, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit2

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !224, !noundef !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !224, !nonnull !14, !noundef !14
  invoke void %i.bg(ptr noundef %i.be, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit unwind label %bb.m, !inline_history !77

_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit: ; preds = %.split.i, %.loopexit, %bb.c, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge
  %3 = phi ptr [ %.pre, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge ], [ %i.s, %bb.c ], [ %i.s, %.loopexit ], [ %i.s, %.split.i ] ; 2 uses
  %.sroa.5.04 = phi i64 [ undef, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge ], [ %i.aa, %.split.i ], [ undef, %.loopexit ], [ undef, %bb.c ]
  %.sink.i = phi i64 [ 0, %._RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit_crit_edge ], [ 1, %.split.i ], [ 0, %.loopexit ], [ 0, %bb.c ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bh, align 8
  store i64 %.sink.i, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.04, ptr %4, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.bi = icmp eq ptr %3, null
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !239, !noundef !14
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !239, !nonnull !14, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !239, !noundef !14
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !239, !noundef !14
  tail call void %i.bm(ptr noundef %i.bk, ptr noundef %i.bo, i64 noundef %i.bq), !noalias !239, !inline_history !46
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit2: ; preds = %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.thread, %_RINvXs0_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, %bb.l
  ret void

bb.m:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bc

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode14WrapRingBufferNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB10_B10_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(2592) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2585 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !240, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %.val = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %.val1 = load i64, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.g = load i32, ptr %i.f, align 8, !noundef !14 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %.not.i = icmp ult i64 %.val1, %i.h
  br i1 %.not.i, label %bb.d, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit, !prof !241

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @122, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26, !noalias !242
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.k = load i32, ptr %i.j, align 8, !noundef !14 ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %.not.i2 = icmp ugt i32 %i.k, %i.g
  br i1 %.not.i2, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit6, !prof !241

bb.e:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @122, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !246
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit6: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit
  %i.m = sub nuw nsw i64 %.val1, %i.h
  %.not.i7 = icmp ult i64 %i.m, %i.l
  br i1 %.not.i7, label %bb.f, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit, !prof !241

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit6
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @122, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26, !noalias !250
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit6
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %.val, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  store i8 0, ptr %i.a, align 1
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -7, 3) i32 @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECskeugdADtBsi_12pingora_core(i32 noundef %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef range(i64 -2147483648, 4294967296) %4, ptr noalias nofree noundef writeonly align 4 captures(address_is_null) dereferenceable_or_null(4) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(2592) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef range(i64 0, -9223372036854775808) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i32 %0, 2047
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2324 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 2248 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 2252 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 2196 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 1872 ; 36 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 1880 ; 25 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 1888 ; 21 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 1884 ; 20 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 2298 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 1696 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1936 ; 21 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 27 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 2244 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 2232 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 2228 ; 5 uses
  %i.q = add nsw i32 %i.a, -1
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.q, i1 false)
  %i.s = sub nuw nsw i32 32, %i.r                 ; 7 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @26, i64 %i.t
  %.pre = load i8, ptr %i.b, align 4, !range !254
  switch i8 %.pre, label %default.unreachable432 [
    i8 0, label %bb.f
    i8 1, label %bb.i
    i8 2, label %thread-pre-split
    i8 3, label %bb.ah
    i8 4, label %bb.ai
    i8 5, label %bb.ar
  ]

bb.b:                                             ; preds = %.preheader99.15
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.pi
  store i16 -1, ptr %i.v, align 2
  store i32 0, ptr %i.n, align 4
  store i32 8, ptr %i.o, align 8
  store i32 0, ptr %i.c, align 8
  store i32 0, ptr %i.p, align 4
  store i32 32768, ptr %i.d, align 4
  store i8 5, ptr %i.b, align 4
  br label %bb.ar

_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECskeugdADtBsi_12pingora_core.exit.loopexit: ; preds = %._crit_edge48.i, %._crit_edge43.i
  store i8 3, ptr %i.b, align 4
  br label %bb.ah

bb.c:                                             ; preds = %.loopexit97.loopexit, %..loopexit97_crit_edge
  %i.w = phi i64 [ %.pre338, %..loopexit97_crit_edge ], [ %i.az, %.loopexit97.loopexit ]
  %.lcssa7.i38 = phi i32 [ %.promoted.i35, %..loopexit97_crit_edge ], [ %i.ba, %.loopexit97.loopexit ] ; 2 uses
  %i.x = and i32 %.lcssa7.i38, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %i.w, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3                        ; 2 uses
  store i32 %i.ab, ptr %i.n, align 4, !alias.scope !255, !noalias !258
  %i.ac = add i32 %.lcssa7.i38, 2
  store i32 %i.ac, ptr %i.g, align 8, !alias.scope !261, !noalias !262
  store i32 0, ptr %i.e, align 4
  store i8 2, ptr %i.b, align 4
  br label %bb.l

bb.d:                                             ; preds = %.loopexit96
  store i32 32, ptr %i.d, align 4
  store i32 0, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.k, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.j, i8 0, i64 18, i1 false)
  store i8 4, ptr %i.b, align 4
  br label %bb.ai

bb.e:                                             ; preds = %.loopexit96
  store i8 1, ptr %i.b, align 4
  br label %bb.i

default.unreachable432:                           ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %.promoted.i = load i32, ptr %i.g, align 8, !alias.scope !263, !noalias !270 ; 3 uses
  %i.ad = add i32 %.promoted.i, -63
  %.not.i = icmp ult i32 %i.ad, 2
  br i1 %.not.i, label %.lr.ph.i, label %..loopexit96_crit_edge

..loopexit96_crit_edge:                           ; preds = %bb.f
  %.pre339 = load i64, ptr %i.f, align 8, !alias.scope !263, !noalias !270
  br label %.loopexit96

.lr.ph.i:                                         ; preds = %bb.f
  %.promoted17.i = load i32, ptr %i.h, align 8, !alias.scope !263, !noalias !270 ; 2 uses
  %.promoted18.i = load i32, ptr %i.i, align 4, !alias.scope !263, !noalias !270 ; 2 uses
  %i.ae = icmp eq i32 %.promoted17.i, 0
  br i1 %i.ae, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %.promoted14.i = load i64, ptr %i.f, align 8, !alias.scope !263, !noalias !270
  %i.af = lshr i64 %.promoted14.i, 8              ; 2 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !263, !noalias !270
  %i.ag = zext i32 %.promoted18.i to i64          ; 3 uses
  %i.ah = icmp samesign ugt i64 %8, %i.ag
  br i1 %i.ah, label %.loopexit96.loopexit, label %bb.h

.loopexit96.loopexit:                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !268, !noalias !271, !noundef !14
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw i64 %i.ak, 56
  %i.am = or disjoint i64 %i.al, %i.af            ; 2 uses
  store i64 %i.am, ptr %i.f, align 8, !alias.scope !263, !noalias !270
  %i.an = add nsw i32 %.promoted.i, -8
  %i.ao = add i32 %.promoted17.i, -1
  store i32 %i.ao, ptr %i.h, align 8, !alias.scope !263, !noalias !270
  %i.ap = add i32 %.promoted18.i, 1
  store i32 %i.ap, ptr %i.i, align 4, !alias.scope !263, !noalias !270
  br label %.loopexit96

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26, !noalias !272
  unreachable
end_hunk_1
