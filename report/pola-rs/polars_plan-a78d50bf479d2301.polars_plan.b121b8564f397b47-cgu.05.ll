Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.05?download=true
inline.NumInlined: 10337
inline.NumDeleted: 5105
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11into_static:bb.a
  %.sroa.02.0.i = phi ptr [ %i.s, %bb.h ], [ %.0..0..0..0..0..sroa.02.0.copyload3.i, %bb.g ], !dbg !120759
  %.sroa.6.0.i = phi i64 [ %i.p, %bb.h ], [ %.8..8..8..8..8..sroa.6.0.copyload6.i, %bb.g ], !dbg !120759
  %.sroa.7.0.i = phi i64 [ %i.w, %bb.h ], [ %.16..16..16..16..16..sroa.7.0.copyload9.i, %bb.g ], !dbg !120760 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !120742
  %i.x = and i64 %.sroa.7.0.i, -72057594037927936, !dbg !120749
  %or.cond = icmp eq i64 %i.x, -2738188573441261568, !dbg !120749
  br i1 %or.cond, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.ba, !dbg !120749, !prof !3964

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120761
  br label %bb.az, !dbg !120762

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120763
  br label %bb.az, !dbg !120764

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120765
  br label %bb.az, !dbg !120766

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120767
  br label %bb.az, !dbg !120768

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120769
  br label %bb.az, !dbg !120770

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120771
  br label %bb.az, !dbg !120772

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120773
  br label %bb.az, !dbg !120774

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120775
  br label %bb.az, !dbg !120776

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120777
  br label %bb.az, !dbg !120778

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120779
  br label %bb.az, !dbg !120780

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120781
  br label %bb.az, !dbg !120782

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120783
  br label %bb.az, !dbg !120784

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120785
  br label %bb.az, !dbg !120786

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120787
  br label %bb.az, !dbg !120788

bb.w:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !120789
  %i.z = load i64, ptr %i.y, align 8, !dbg !120789, !noundef !3396
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !120790
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !120790, !range !3887, !noundef !3396
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !120791
  %i.ad = load ptr, ptr %i.ac, align 16, !dbg !120791, !align !3448, !noundef !3396 ; 2 uses
  %.not9 = icmp eq ptr %i.ad, null, !dbg !120792
  br i1 %.not9, label %bb.bc, label %bb.bb, !dbg !120793

bb.x:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120794
  br label %bb.az, !dbg !120795

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120796
  br label %bb.az, !dbg !120797

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120798
  br label %bb.az, !dbg !120799

bb.aa:                                            ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !120800
  %i.af = load i32, ptr %i.ae, align 4, !dbg !120800, !noundef !3396
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !120801
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !120801, !nonnull !3396, !align !3448, !noundef !3396
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !120802, !nonnull !3396, !noundef !3396 ; 2 uses
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !dbg !120803
  %i.ak = icmp slt i64 %i.aj, 0, !dbg !120804
  br i1 %i.ak, label %bb.be, label %bb.bd, !dbg !120804

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120805
  br label %bb.az, !dbg !120806

bb.ac:                                            ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !120807
  %i.am = load i32, ptr %i.al, align 4, !dbg !120807, !noundef !3396
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !120808
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !120808, !nonnull !3396, !align !3448, !noundef !3396
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !120809, !nonnull !3396, !noundef !3396 ; 2 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !dbg !120810
  %i.ar = icmp slt i64 %i.aq, 0, !dbg !120811
  br i1 %i.ar, label %bb.bg, label %bb.bf, !dbg !120811

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120812
  br label %bb.az, !dbg !120813

bb.ae:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120814
  br label %bb.az, !dbg !120815

bb.af:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120816
  br label %bb.az, !dbg !120817

bb.ag:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !120818
  %i.at = load ptr, ptr %i.as, align 8, !dbg !120818, !nonnull !3396, !noundef !3396
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !120818
  %i.av = load ptr, ptr %i.au, align 16, !dbg !120818, !nonnull !3396, !align !3448, !noundef !3396
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80, !dbg !120819
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !120819, !invariant.load !3396, !nonnull !3396
  %i.ay = tail call { ptr, ptr } %i.ax(ptr noundef nonnull %i.at) #38, !dbg !120820 ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0, !dbg !120820
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1, !dbg !120820
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120821
  store ptr %i.az, ptr %i.bb, align 8, !dbg !120821
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !120821
  store ptr %i.ba, ptr %i.bc, align 16, !dbg !120821
  store i8 28, ptr %0, align 16, !dbg !120821
  br label %bb.az, !dbg !120822

bb.ah:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120823
  br label %bb.az, !dbg !120824

bb.ai:                                            ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !120825
  %i.be = load i64, ptr %i.bd, align 8, !dbg !120825, !noundef !3396
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !120826
  %i.bg = load ptr, ptr %i.bf, align 16, !dbg !120826, !nonnull !3396, !align !3448, !noundef !3396
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !120827
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !120827, !nonnull !3396, !align !3412, !noundef !3396 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !120827
  %i.bk = load i64, ptr %i.bj, align 16, !dbg !120827, !noundef !3396 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !120828
  call void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value20struct_to_avs_static(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, i64 noundef %i.be, ptr noundef nonnull align 8 %i.bg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.bi, i64 noundef %i.bk), !dbg !120829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !120830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !120831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !120831
  call void @llvm.experimental.noalias.scope.decl(metadata !120706), !dbg !120832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !120833, !noalias !120710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !120834, !noalias !120710
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 115292150460684698) %i.bk, i1 noundef zeroext false, i64 noundef 16, i64 noundef 80)
          to label %.noexc unwind label %bb.bh, !dbg !120834

.noexc:                                           ; preds = %bb.ai
  %i.bl = load i64, ptr %i.d, align 8, !dbg !120834, !range !3526, !noalias !120710, !noundef !3396
  %i.bm = trunc nuw i64 %i.bl to i1, !dbg !120835
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !120836
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !120836, !range !3586, !noalias !120710, !noundef !3396 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !120836 ; 2 uses
  br i1 %i.bm, label %bb.aj, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !120835, !prof !3465

bb.aj:                                            ; preds = %.noexc
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !120837, !noalias !120710
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bo, i64 %i.bq) #41
          to label %.noexc10 unwind label %bb.bh, !dbg !120838

.noexc10:                                         ; preds = %bb.aj
  unreachable, !dbg !120838

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %.noexc
  %i.br = load ptr, ptr %i.bp, align 8, !dbg !120839, !noalias !120710, !nonnull !3396, !noundef !3396 ; 2 uses
  %i.bs = icmp samesign ule i64 %i.bk, %i.bo, !dbg !120840
  call void @llvm.assume(i1 %i.bs), !dbg !120841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !120842, !noalias !120710
  store i64 %i.bo, ptr %i.f, align 8, !dbg !120843, !noalias !120710
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !120843
  store ptr %i.br, ptr %i.bt, align 8, !dbg !120843, !noalias !120710
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !120843 ; 2 uses
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bi, i64 %i.bk, !dbg !120844
  %i.bw = icmp eq i64 %i.bo, 0, !dbg !120845
  br i1 %i.bw, label %.loopexit, label %.lr.ph.i, !dbg !120845

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br label %bb.ak, !dbg !120845

bb.ak:                                            ; preds = %bb.ar, %.lr.ph.i
  %.sroa.012.025.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.ca, %bb.ar ] ; 5 uses
  %.sroa.7.024.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cb, %bb.ar ] ; 3 uses
  %.sroa.10.023.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.by, %bb.ar ]
  %i.by = add i64 %.sroa.10.023.i, -1, !dbg !120846 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.012.025.i, %i.bv, !dbg !120847
  br i1 %i.bz, label %.loopexit, label %bb.al, !dbg !120848

.loopexit.i:                                      ; preds = %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 80, !dbg !120849
  %i.cb = add nuw nsw i64 %.sroa.7.024.i, 1, !dbg !120850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !120851
  call void @llvm.experimental.noalias.scope.decl(metadata !120713), !dbg !120852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120853, !noalias !120710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !120853, !noalias !120715
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 48, !dbg !120854 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 71, !dbg !120855
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !120855, !range !3544, !alias.scope !120716, !noundef !3396
  %i.cf = icmp eq i8 %i.ce, -40, !dbg !120856
  br i1 %i.cf, label %bb.am, label %bb.an, !dbg !120856

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #42
          to label %.noexc.i unwind label %.loopexit.i, !dbg !120857, !noalias !120717

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.cc, i64 24, i1 false), !dbg !120858, !noalias !120718
  br label %.noexc.i, !dbg !120859

.noexc.i:                                         ; preds = %bb.an, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !120860, !noalias !120715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120861, !noalias !120715
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.012.025.i)
          to label %bb.ar unwind label %bb.ao, !dbg !120861, !noalias !120718

bb.ao:                                            ; preds = %.noexc.i
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !120862
  %i.ci = load i8, ptr %i.ch, align 1, !dbg !120862, !range !3544, !alias.scope !120719, !noalias !120715, !noundef !3396
  %i.cj = icmp eq i8 %i.ci, -40, !dbg !120863
  br i1 %i.cj, label %bb.ap, label %bb.at, !dbg !120863, !prof !3465

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.at unwind label %bb.aq, !dbg !120864, !noalias !120718

bb.aq:                                            ; preds = %bb.ap
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !120865, !noalias !120718
  unreachable, !dbg !120865

bb.ar:                                            ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !120865, !noalias !120720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.e, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !120865, !noalias !120720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120866, !noalias !120715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !120866, !noalias !120715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120867, !noalias !120710
  %i.cl = getelementptr inbounds nuw [80 x i8], ptr %i.br, i64 %.sroa.7.024.i, !dbg !120868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cl, ptr noundef nonnull align 16 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !120869, !noalias !120717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !120870
  %i.cm = icmp eq i64 %i.by, 0, !dbg !120845
  br i1 %i.cm, label %.loopexit, label %bb.ak, !dbg !120845

bb.as:                                            ; preds = %bb.at
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !120871, !noalias !120717
  unreachable, !dbg !120871

bb.at:                                            ; preds = %bb.ap, %bb.ao, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cg, %bb.ao ], [ %i.cg, %bb.ap ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.024.i, ptr %i.bu, align 8, !dbg !120872, !noalias !120710
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body unwind label %bb.as, !dbg !120873, !noalias !120717

bb.au:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120874
  br label %bb.az, !dbg !120875

bb.av:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120876
  br label %bb.az, !dbg !120877

bb.aw:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !120878
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !120878, !nonnull !3396, !noundef !3396
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !120878
  %i.cr = load i64, ptr %i.cq, align 16, !dbg !120878, !noundef !3396 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !120879
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.cr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !120879
  %i.cs = load i64, ptr %i.h, align 8, !dbg !120879, !range !3526, !noundef !3396
  %i.ct = trunc nuw i64 %i.cs to i1, !dbg !120880
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !120881
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !120881, !range !3586, !noundef !3396 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !120881 ; 2 uses
  br i1 %i.ct, label %bb.bm, label %bb.bn, !dbg !120880, !prof !3465

bb.ax:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120882
  br label %bb.az, !dbg !120883

bb.ay:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !120884
  br label %bb.az, !dbg !120885

bb.az:                                            ; preds = %bb.bo, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCsfcROwRM8ZtH_11polars_plan.exit, %bb.bf, %bb.bd, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.c, %bb.b
  ret void, !dbg !120886

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i
  tail call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501) #43, !dbg !120887
  unreachable, !dbg !120887

bb.ba:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread24
  %.sroa.0.032 = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread24 ], [ %.sroa.02.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %.sroa.4.031 = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread24 ], [ %.sroa.6.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %.sroa.5.030 = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread24 ], [ %.sroa.7.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120888
  store ptr %.sroa.0.032, ptr %i.cx, align 8, !dbg !120888
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !120888
  store i64 %.sroa.4.031, ptr %.sroa.417.0..sroa_idx, align 16, !dbg !120888
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !120888
  store i64 %.sroa.5.030, ptr %.sroa.518.0..sroa_idx, align 8, !dbg !120888
  store i8 31, ptr %0, align 16, !dbg !120888
  br label %bb.az, !dbg !120889

bb.bb:                                            ; preds = %bb.w
  %i.cy = tail call fastcc noundef nonnull ptr @_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad) #38, !dbg !120890
  br label %bb.bc, !dbg !120891

bb.bc:                                            ; preds = %bb.w, %bb.bb
  %.sroa.02.0 = phi ptr [ %i.cy, %bb.bb ], [ null, %bb.w ], !dbg !120892
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120893
  store i64 %i.z, ptr %i.cz, align 8, !dbg !120893
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !120893
  store i8 %i.ab, ptr %i.da, align 1, !dbg !120893
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !120893
  store ptr %.sroa.02.0, ptr %i.db, align 16, !dbg !120893
  store i8 18, ptr %0, align 16, !dbg !120893
  br label %bb.az, !dbg !120894

bb.bd:                                            ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !120895
  store i32 %i.af, ptr %i.dc, align 4, !dbg !120895
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120895
  store ptr %i.ai, ptr %i.dd, align 8, !dbg !120895
  store i8 22, ptr %0, align 16, !dbg !120895
  br label %bb.az, !dbg !120896

bb.be:                                            ; preds = %bb.aa
  tail call void @llvm.trap(), !dbg !120897
  unreachable, !dbg !120897

bb.bf:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !120898
  store i32 %i.am, ptr %i.de, align 4, !dbg !120898
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120898
  store ptr %i.ap, ptr %i.df, align 8, !dbg !120898
  store i8 24, ptr %0, align 16, !dbg !120898
  br label %bb.az, !dbg !120899

bb.bg:                                            ; preds = %bb.ac
  tail call void @llvm.trap(), !dbg !120900
  unreachable, !dbg !120900

bb.bh:                                            ; preds = %bb.aj, %bb.ai
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !120901

.body:                                            ; preds = %bb.at, %bb.bh
  %eh.lpad-body = phi { ptr, i32 } [ %i.dg, %bb.bh ], [ %eh.lpad-body.i, %bb.at ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.bl, !dbg !120901

.loopexit:                                        ; preds = %bb.ar, %bb.ak, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i
  store i64 %i.bk, ptr %i.bu, align 8, !dbg !120902, !noalias !120710
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !120830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !120903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !120873, !noalias !120710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !120830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !120901
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !dbg !120904, !noalias !120730
  %i.di = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 4, 769) 48, i64 noundef range(i64 4, 129) 8) #44, !dbg !120905, !noalias !120730 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null, !dbg !120906
  br i1 %i.dj, label %bb.bi, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !120907, !prof !3465

bb.bi:                                            ; preds = %.loopexit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #41
          to label %.noexc11 unwind label %bb.bj, !dbg !120908

.noexc11:                                         ; preds = %bb.bi
  unreachable, !dbg !120908

bb.bj:                                            ; preds = %bb.bi
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB1i_5field5FieldEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j) #39
          to label %common.resume unwind label %bb.bk, !dbg !120909
end_hunk_0
