Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.04?download=true
inline.NumInlined: 3744
inline.NumDeleted: 1386
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math14to_string_base:bb.a
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @299, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvXs_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeStringNtB5_6String3newNtNtCsexYYUdYSQU6_5alloc6string6StringEB9_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  br label %bb.c

.split23:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsD_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_8LowerHex3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @299, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvXs_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeStringNtB5_6String3newNtNtCsexYYUdYSQU6_5alloc6string6StringEB9_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %.split23, %.split19, %.split, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, double } @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math16deviation_string(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, double noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2048 x i8], align 8              ; 10 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString7as_bstr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %0)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #49
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.e = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !alias.scope !2638, !noalias !2640
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = icmp samesign eq i64 %i.e, 0
  br i1 %i.g, label %bb.e, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.02.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.prol ], [ %i.d, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.h = load i8, ptr %.sroa.0.02.i.i.prol, align 1, !alias.scope !2640, !noalias !2638, !noundef !9
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.prol, i64 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2638, !noalias !2640, !noundef !9
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !alias.scope !2638, !noalias !2640
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2628

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.02.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.preheader ], [ %i.j, %.lr.ph.i.i.prol ]
  %i.n = icmp ult i64 %i.e, 4
  br i1 %i.n, label %.preheader.i.i.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.0.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.o = load i8, ptr %.sroa.0.02.i.i, align 1, !alias.scope !2640, !noalias !2638, !noundef !9
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2638, !noalias !2640, !noundef !9
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !alias.scope !2638, !noalias !2640
  %i.u = load i8, ptr %i.q, align 1, !alias.scope !2640, !noalias !2638, !noundef !9
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 2
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2638, !noalias !2640, !noundef !9
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !alias.scope !2638, !noalias !2640
  %i.aa = load i8, ptr %i.w, align 1, !alias.scope !2640, !noalias !2638, !noundef !9
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2638, !noalias !2640, !noundef !9
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !alias.scope !2638, !noalias !2640
  %i.ag = load i8, ptr %i.ac, align 1, !alias.scope !2640, !noalias !2638, !noundef !9
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !2638, !noalias !2640, !noundef !9
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !alias.scope !2638, !noalias !2640
  %i.am = icmp eq ptr %i.ai, %i.f
  br i1 %i.am, label %.preheader.i.i.preheader, label %.lr.ph.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader
  %.sroa.01.016.i.i = phi double [ 0.000000e+00, %.preheader.i.i.preheader ], [ %i.bd, %.preheader.i.i ]
  %.sroa.0.08.idx15.i.i = phi i64 [ 0, %.preheader.i.i.preheader ], [ %.sroa.0.08.add.i.i.1, %.preheader.i.i ] ; 3 uses
  %.sroa.7.014.i.i = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.aw, %.preheader.i.i ] ; 3 uses
  %.sroa.0.08.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.08.idx15.i.i
  %i.an = or disjoint i64 %.sroa.7.014.i.i, 1
  %i.ao = uitofp nneg i64 %.sroa.7.014.i.i to double
  %i.ap = fsub double %i.ao, %2
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ar = load i64, ptr %.sroa.0.08.ptr.i.i, align 8, !alias.scope !2641, !noalias !2637, !noundef !9
  %i.as = uitofp i64 %i.ar to double
  %i.at = fmul double %i.aq, %i.as
  %i.au = fadd double %.sroa.01.016.i.i, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.08.idx15.i.i
  %.sroa.0.08.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.0.08.add.i.i.1 = add nuw nsw i64 %.sroa.0.08.idx15.i.i, 16 ; 2 uses
  %i.aw = add nuw nsw i64 %.sroa.7.014.i.i, 2
  %i.ax = uitofp nneg i64 %i.an to double
  %i.ay = fsub double %i.ax, %2
  %i.az = tail call double @llvm.fabs.f64(double %i.ay)
  %i.ba = load i64, ptr %.sroa.0.08.ptr.i.i.1, align 8, !alias.scope !2641, !noalias !2637, !noundef !9
  %i.bb = uitofp i64 %i.ba to double
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = fadd double %i.au, %i.bc                ; 2 uses
  %i.be = icmp eq i64 %.sroa.0.08.add.i.i.1, 2048
  br i1 %i.be, label %bb.d, label %.preheader.i.i

bb.d:                                             ; preds = %.preheader.i.i
  %i.bf = uitofp nneg i64 %i.e to double
  %i.bg = fdiv double %i.bd, %i.bf
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.3.0.i.i = phi double [ %i.bg, %bb.d ], [ undef, %bb.c ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  %i.bh = load i32, ptr %1, align 8, !range !25, !alias.scope !2642, !noundef !9
  %switch.i = icmp samesign ult i32 %i.bh, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !2645, !nonnull !9, !noundef !9 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !2645, !noundef !9
  %i.bl = add i64 %i.bk, -1                       ; 2 uses
  store i64 %i.bl, ptr %i.bj, align 8, !noalias !2645
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi) #48
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.bn = insertvalue { i64, double } poison, i64 %.sroa.0.0.i.i, 0
  %i.bo = insertvalue { i64, double } %i.bn, double %.sroa.3.0.i.i, 1
  ret { i64, double } %i.bo

bb.h:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, double } @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math19monte_carlo_pi_data(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp sgt i64 %2, -1
  br i1 %i.a, label %bb.b, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math14monte_carlo_pi.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB5_11ScanContext12scanned_data(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not = icmp ne ptr %i.c, null
  %i.d = icmp sgt i64 %1, -1
  %or.cond26 = and i1 %i.d, %.not
  br i1 %or.cond26, label %bb.c, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math14monte_carlo_pi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math14monte_carlo_pi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %2, %1
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %i.e)
  %i.h = sub nuw i64 %..i, %1                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %i.j = urem i64 %i.h, 6                         ; 2 uses
  %.idx.i = sub nuw nsw i64 %i.h, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i
  %i.l = icmp eq i64 %i.h, %i.j
  br i1 %i.l, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math14monte_carlo_pi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.01.023.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.d ]
  %.sroa.01.023.i.a = phi i32 [ %spec.select.i.a, %.lr.ph.i ], [ 0, %bb.d ]
  %.sroa.06.021.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.i, %bb.d ] ; 7 uses
  %i.m = load i8, ptr %.sroa.06.021.i, align 1, !alias.scope !2648, !noundef !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 3
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !2648, !noundef !9
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !2648, !noundef !9
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 4
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !2648, !noundef !9
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.q, 16
  %i.y = shl nuw nsw i64 %i.w, 8
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = shl nuw nsw i64 %i.n, 16
  %i.ab = shl nuw nsw i64 %i.t, 8
  %i.ac = or disjoint i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !2648, !noundef !9
  %i.af = zext i8 %i.ae to i64
  %i.ag = or disjoint i64 %i.ac, %i.af            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 5
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !2648, !noundef !9
  %i.aj = zext i8 %i.ai to i64
  %i.ak = or disjoint i64 %i.z, %i.aj             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 6 ; 2 uses
  %i.am = mul nuw nsw i64 %i.ag, %i.ag
  %i.an = mul nuw nsw i64 %i.ak, %i.ak
  %i.ao = add nuw nsw i64 %i.am, %i.an
  %i.ap = icmp samesign ult i64 %i.ao, 281474943156225
  %i.aq = zext i1 %i.ap to i32
  %spec.select.i = add i32 %.sroa.01.023.i, %i.aq ; 2 uses
  %spec.select.i.a = add i32 %.sroa.01.023.i.a, 1 ; 3 uses
  %i.ar = icmp eq ptr %i.al, %i.k
  br i1 %i.ar, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.as = icmp eq i32 %spec.select.i.a, 0
  br i1 %i.as, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math14monte_carlo_pi.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.at = sitofp i32 %spec.select.i to double
  %i.au = sitofp i32 %spec.select.i.a to double
  %i.av = fdiv double %i.at, %i.au
  %i.aw = fmul double %i.av, 4.000000e+00
  %i.ax = fadd double %i.aw, f0xC00921FB54442D18
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fdiv double %i.ay, f0x400921FB54442D18
  br label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math14monte_carlo_pi.exit

_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math14monte_carlo_pi.exit: ; preds = %bb.e, %._crit_edge.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.6.0 = phi double [ undef, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ], [ %i.az, %bb.e ], [ undef, %._crit_edge.i ], [ undef, %bb.d ]
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.e ], [ 0, %._crit_edge.i ], [ 0, %bb.d ]
  %i.ba = insertvalue { i64, double } poison, i64 %.sroa.0.0, 0
  %i.bb = insertvalue { i64, double } %i.ba, double %.sroa.6.0, 1
  ret { i64, double } %i.bb
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, double } @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math21monte_carlo_pi_string(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString7as_bstr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %0)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #49
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.a, 1        ; 3 uses
  %i.e = urem i64 %i.d, 6                         ; 2 uses
  %.idx.i = sub nuw nsw i64 %i.d, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %i.g = icmp eq i64 %i.d, %i.e
  br i1 %i.g, label %bb.e, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.01.023.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.c ]
  %.sroa.01.023.i.a = phi i32 [ %spec.select.i.a, %.lr.ph.i ], [ 0, %bb.c ]
  %.sroa.06.021.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.c, %bb.c ] ; 7 uses
  %i.h = load i8, ptr %.sroa.06.021.i, align 1, !alias.scope !2657, !noundef !9
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 3
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !2657, !noundef !9
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !2657, !noundef !9
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 4
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !2657, !noundef !9
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.l, 16
  %i.t = shl nuw nsw i64 %i.r, 8
  %i.u = or disjoint i64 %i.s, %i.t
  %i.v = shl nuw nsw i64 %i.i, 16
  %i.w = shl nuw nsw i64 %i.o, 8
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 2
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !2657, !noundef !9
  %i.aa = zext i8 %i.z to i64
  %i.ab = or disjoint i64 %i.x, %i.aa             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !2657, !noundef !9
  %i.ae = zext i8 %i.ad to i64
  %i.af = or disjoint i64 %i.u, %i.ae             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i, i64 6 ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ab, %i.ab
  %i.ai = mul nuw nsw i64 %i.af, %i.af
  %i.aj = add nuw nsw i64 %i.ah, %i.ai
  %i.ak = icmp samesign ult i64 %i.aj, 281474943156225
  %i.al = zext i1 %i.ak to i32
  %spec.select.i = add i32 %.sroa.01.023.i, %i.al ; 2 uses
  %spec.select.i.a = add i32 %.sroa.01.023.i.a, 1 ; 3 uses
  %i.am = icmp eq ptr %i.ag, %i.f
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.an = icmp eq i32 %spec.select.i.a, 0
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ao = sitofp i32 %spec.select.i to double
  %i.ap = sitofp i32 %spec.select.i.a to double
  %i.aq = fdiv double %i.ao, %i.ap
  %i.ar = fmul double %i.aq, 4.000000e+00
  %i.as = fadd double %i.ar, f0xC00921FB54442D18
  %i.at = tail call double @llvm.fabs.f64(double %i.as)
  %i.au = fdiv double %i.at, f0x400921FB54442D18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i, %bb.c
  %.sroa.3.0.i = phi double [ %i.au, %bb.d ], [ undef, %._crit_edge.i ], [ undef, %bb.c ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.d ], [ 0, %._crit_edge.i ], [ 0, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  %i.av = load i32, ptr %1, align 8, !range !25, !alias.scope !2658, !noundef !9
  %switch.i = icmp samesign ult i32 %i.av, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !2661, !nonnull !9, !noundef !9 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !2661, !noundef !9
  %i.az = add i64 %i.ay, -1                       ; 2 uses
  store i64 %i.az, ptr %i.ax, align 8, !noalias !2661
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #48
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.bb = insertvalue { i64, double } poison, i64 %.sroa.0.0.i, 0
  %i.bc = insertvalue { i64, double } %i.bb, double %.sroa.3.0.i, 1
  ret { i64, double } %i.bc

bb.h:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, double } @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math25serial_correlation_string(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString7as_bstr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %0)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #49
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.d = extractvalue { ptr, i64 } %i.a, 1        ; 6 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %i.c, align 1, !alias.scope !2670, !noundef !9
  %i.f = uitofp i8 %i.e to double                 ; 7 uses
  %i.g = fmul double %i.f, %i.f                   ; 5 uses
  %i.h = getelementptr i8, ptr %i.c, i64 %i.d
  %i.i = icmp eq i64 %i.d, 1
  br i1 %i.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %.sroa.012.017.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.j = and i64 %i.d, 1
  %lcmp.mod.not.not = icmp eq i64 %i.j, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.k = load i8, ptr %.sroa.012.017.i, align 1, !alias.scope !2670, !noundef !9
  %i.l = uitofp i8 %i.k to double                 ; 6 uses
  %i.m = fmul nnan double %i.f, %i.l              ; 2 uses
  %i.n = fadd double %i.f, %i.l                   ; 2 uses
  %i.o = fmul double %i.l, %i.l
  %i.p = fadd double %i.g, %i.o                   ; 2 uses
  %.sroa.012.0.i.prol = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa15.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.l, %.lr.ph.i.prol ]
  %.lcssa14.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %.lcssa13.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i.prol ]
  %.sroa.012.022.i.unr = phi ptr [ %.sroa.012.017.i, %.lr.ph.preheader.i ], [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.02.021.i.unr = phi double [ %i.f, %.lr.ph.preheader.i ], [ %i.l, %.lr.ph.i.prol ]
  %.sroa.04.020.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %.sroa.07.019.i.unr = phi double [ %i.f, %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i.prol ]
  %.sroa.010.018.i.unr = phi double [ %i.g, %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i.prol ]
  %i.q = icmp eq i64 %i.d, 2
  br i1 %i.q, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.012.022.i = phi ptr [ %.sroa.012.0.i.1, %.lr.ph.i ], [ %.sroa.012.022.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.02.021.i = phi double [ %i.z, %.lr.ph.i ], [ %.sroa.02.021.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.04.020.i = phi double [ %i.ab, %.lr.ph.i ], [ %.sroa.04.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.07.019.i = phi double [ %i.ac, %.lr.ph.i ], [ %.sroa.07.019.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.010.018.i = phi double [ %i.ae, %.lr.ph.i ], [ %.sroa.010.018.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.r = load i8, ptr %.sroa.012.022.i, align 1, !alias.scope !2670, !noundef !9
  %i.s = uitofp i8 %i.r to double                 ; 5 uses
  %i.t = fmul nnan double %.sroa.02.021.i, %i.s
  %i.u = fadd double %.sroa.04.020.i, %i.t
  %i.v = fadd double %.sroa.07.019.i, %i.s
  %i.w = fmul double %i.s, %i.s
  %i.x = fadd double %.sroa.010.018.i, %i.w
  %.sroa.012.0.i = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 1
  %i.y = load i8, ptr %.sroa.012.0.i, align 1, !alias.scope !2670, !noundef !9
  %i.z = uitofp i8 %i.y to double                 ; 6 uses
  %i.aa = fmul nnan double %i.s, %i.z
  %i.ab = fadd double %i.u, %i.aa                 ; 2 uses
  %i.ac = fadd double %i.v, %i.z                  ; 2 uses
  %i.ad = fmul double %i.z, %i.z
  %i.ae = fadd double %i.x, %i.ad                 ; 2 uses
  %.sroa.012.0.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 2 ; 2 uses
  %i.af = icmp eq ptr %.sroa.012.0.i.1, %i.h
  br i1 %i.af, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa15 = phi double [ %.lcssa15.unr, %.lr.ph.i.prol.loopexit ], [ %i.z, %.lr.ph.i ]
  %.lcssa14 = phi double [ %.lcssa14.unr, %.lr.ph.i.prol.loopexit ], [ %i.ab, %.lr.ph.i ]
  %.lcssa13 = phi double [ %.lcssa13.unr, %.lr.ph.i.prol.loopexit ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ae, %.lr.ph.i ]
  %.pre.i = fmul nnan double %.lcssa15, %i.f
  %.pre29.i = fmul double %.lcssa13, %.lcssa13
  %i.ag = fadd double %.pre.i, %.lcssa14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %.pre-phi30.i = phi double [ %.pre29.i, %._crit_edge.loopexit.i ], [ %i.g, %bb.d ] ; 2 uses
  %.sroa.010.0.lcssa.i = phi double [ %.lcssa, %._crit_edge.loopexit.i ], [ %i.g, %bb.d ]
  %.sroa.04.0.lcssa.i = phi double [ %i.ag, %._crit_edge.loopexit.i ], [ %i.g, %bb.d ]
  %i.ah = uitofp nneg i64 %i.d to double          ; 2 uses
  %i.ai = fmul double %.sroa.04.0.lcssa.i, %i.ah
  %i.aj = fsub double %i.ai, %.pre-phi30.i
  %i.ak = fmul double %.sroa.010.0.lcssa.i, %i.ah
  %i.al = fsub double %i.ak, %.pre-phi30.i
  %i.am = fdiv double %i.aj, %i.al                ; 2 uses
  %i.an = fcmp uno double %i.am, 0.000000e+00
  %..i = select i1 %i.an, double -1.000000e+05, double %i.am
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.c
  %.sroa.4.0.i = phi double [ -1.000000e+05, %bb.c ], [ %..i, %._crit_edge.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %i.ao = load i32, ptr %1, align 8, !range !25, !alias.scope !2671, !noundef !9
  %switch.i = icmp samesign ult i32 %i.ao, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2673)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !2674, !nonnull !9, !noundef !9 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !2674, !noundef !9
  %i.as = add i64 %i.ar, -1                       ; 2 uses
  store i64 %i.as, ptr %i.aq, align 8, !noalias !2674
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #48
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.au = insertvalue { i64, double } { i64 1, double undef }, double %.sroa.4.0.i, 1
  ret { i64, double } %i.au

bb.h:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math4main(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtNtNtBa_11collections4hash3map7HashMapTjjEAyj100_NtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEEE4withNCNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math4main0uEB3i_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @319)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, double } @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4math9mean_data(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2048 x i8], align 8              ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
end_hunk_0
