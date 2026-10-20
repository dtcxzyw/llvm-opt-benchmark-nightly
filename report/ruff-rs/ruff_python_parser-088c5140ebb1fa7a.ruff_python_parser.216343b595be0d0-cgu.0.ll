Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser27bump_ipython_escape_command:bb.a
  %i.nk = icmp sgt i64 %.ph149, -1
  tail call void @llvm.assume(i1 %i.nk), !noalias !13769
  %i.nl = load i64, ptr %i.b, align 8, !range !26, !alias.scope !13795, !noalias !13769, !noundef !15 ; 2 uses
  %i.nm = sub nsw i64 %i.nl, %.ph149
  %i.nn = icmp ugt i64 %.sroa.1029.0.i, %i.nm
  br i1 %i.nn, label %bb.bt, label %bb.bn, !prof !14

bb.bt:                                            ; preds = %bb.bs
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.ph149, i64 noundef range(i64 1, 3) %.sroa.1029.0.i, i64 noundef 1, i64 noundef 1)
          to label %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String10insert_str.exit_crit_edge unwind label %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String10insert_str.exit_crit_edge: ; preds = %bb.bt
  %.pre.pre = load i64, ptr %i.b, align 8, !range !26, !alias.scope !13792, !noalias !13769
  br label %bb.bn

bb.bu:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsb6FLkjZuKG_18ruff_python_parser.exit148.i
  %i.no = add i64 %.sroa.018.0269.i, 1            ; 2 uses
  %.not.i.i.i142.i = icmp eq ptr %.sroa.0173.15.i, %i.cl
  br i1 %.not.i.i.i142.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsb6FLkjZuKG_18ruff_python_parser.exit148.thread.i, label %.lr.ph.i

bb.bv:                                            ; preds = %bb.af, %bb.af, %bb.ab, %.backedge.i
  %.sroa.0200.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !13769 ; 4 uses
  %i.np = icmp ugt i64 %.sroa.0200.0.copyload.i, %.ph149
  br i1 %i.np, label %bb.bw, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser34parse_ipython_escape_command_value.exit

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.ph) ]
  %i.nq = icmp eq i64 %.ph149, 0
  br i1 %i.nq, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, label %bb.bx

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.bw
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.ph, i64 noundef %.sroa.0200.0.copyload.i, i64 noundef range(i64 1, 9) 1) #42, !noalias !13796
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser34parse_ipython_escape_command_value.exit

bb.bx:                                            ; preds = %bb.bw
  %i.nr = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.4.0.copyload.i.ph, i64 noundef %.sroa.0200.0.copyload.i, i64 noundef range(i64 1, 9) 1, i64 noundef range(i64 1, 0) %.ph149) #42, !noalias !13796 ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %bb.by, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser34parse_ipython_escape_command_value.exit

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.ph149) #41
          to label %bb.bz unwind label %.thread213.i, !noalias !13797

bb.bz:                                            ; preds = %bb.by
  unreachable

.thread213.i:                                     ; preds = %bb.by
  %i.nt = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.ph, i64 noundef %.sroa.0200.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !13797
  br label %common.resume

bb.ca:                                            ; preds = %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i170.i = load ptr, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !13769, !nonnull !15, !noundef !15
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i170.i, i64 noundef %.val.i169.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !13798
  br label %common.resume

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser34parse_ipython_escape_command_value.exit: ; preds = %bb.bl, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.thread16, %bb.bv, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.bx, %bb.bo, %bb.bn
  %.sink119 = phi i64 [ %.ph149, %bb.bv ], [ %i.nf, %bb.bo ], [ %i.nf, %bb.bn ], [ %.ph149, %bb.bx ], [ %.ph149, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %i.mw, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.thread16 ], [ %i.mw, %bb.bl ] ; 4 uses
  %.sroa.410.0.copyload.i.sink.i = phi ptr [ %.sroa.4.0.copyload.i.ph, %bb.bv ], [ %i.nh, %bb.bo ], [ %i.nd, %bb.bn ], [ %i.nr, %bb.bx ], [ inttoptr (i64 1 to ptr), %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %i.nb, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.thread16 ], [ %i.nb, %bb.bl ] ; 3 uses
  %.sroa.04.0.sink.i = phi i8 [ %.sroa.04.0.i, %bb.bv ], [ %.97.i, %bb.bo ], [ %.97.i, %bb.bn ], [ %.sroa.04.0.i, %bb.bx ], [ %.sroa.04.0.i, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.97.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.thread16 ], [ %.97.i, %bb.bl ]
  %i.nu = icmp sgt i64 %.sink119, -1
  tail call void @llvm.assume(i1 %i.nu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.sink.i) ]
  invoke fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4bump(ptr noalias noundef align 8 dereferenceable(464) %1, i8 noundef 11)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser34parse_ipython_escape_command_value.exit
  %i.nv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nw = icmp eq i64 %.sink119, 0
  br i1 %i.nw, label %common.resume, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.cb
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i.sink.i, i64 noundef %.sink119, i64 noundef 1) #42
  br label %common.resume

bb.cc:                                            ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser34parse_ipython_escape_command_value.exit
  store ptr %.sroa.410.0.copyload.i.sink.i, ptr %0, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink119, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.04.0.sink.i, ptr %i.ny, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser39is_enclosing_list_element_or_terminator(i8 %.140.val, i32 %.440.val) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext nneg i8 %.140.val to i64            ; 4 uses
  %i.b = icmp eq i8 %.140.val, 17
  %i.c = icmp eq i8 %.140.val, 13
  %.47.i.i = select i1 %i.c, i8 1, i8 2
  %i.d = icmp eq i8 %.140.val, 24
  %switch.select.i.i = select i1 %i.d, i8 1, i8 2
  %switch.selectcmp40.i.i = icmp eq i8 %.140.val, 21
  %i.e = icmp eq i8 %.140.val, 65
  %i.f = zext nneg i8 %.140.val to i128
  %i.g = shl nuw nsw i128 1, %i.f
  %.fr87 = freeze i128 %i.g                       ; 8 uses
  %i.h = and i128 %.fr87, 22500841723794057824667489533952
  %.not.i.i = icmp ne i128 %i.h, 0
  %i.i = icmp eq i8 %.140.val, 39                 ; 2 uses
  %i.j = and i128 %.fr87, 208238948168146356317921280
  %i.k = icmp ne i128 %i.j, 0
  %i.l = icmp eq i8 %.140.val, 23
  %i.m = icmp eq i8 %.140.val, 38
  %i.n = and i128 %.fr87, 2700567407061847201394260445503
  %i.o = icmp ne i128 %i.n, 0                     ; 4 uses
  %i.p = add i8 %.140.val, -102
  %spec.select30.i = icmp ult i8 %i.p, 4          ; 6 uses
  %or.cond76 = select i1 %i.o, i1 true, i1 %spec.select30.i ; 4 uses
  %i.q = and i128 %.fr87, 159695473993633670366850187295
  %.not127 = icmp eq i128 %i.q, 0
  %i.r = and i128 %.fr87, 159695473993633951566406877215
  %.not88 = icmp ne i128 %i.r, 0
  %i.s = and i128 %.fr87, 159695473993633670366850187295
  %.not90 = icmp ne i128 %i.s, 0                  ; 2 uses
  %i.t = and i128 %.fr87, 2700567407061847201394260445503
  %.not92 = icmp eq i128 %i.t, 0                  ; 2 uses
  %i.u = add i8 %.140.val, -67
  %spec.select17.i = icmp ult i8 %i.u, 39         ; 2 uses
  %i.v = and i128 %.fr87, 65907459987869897263283381995839
  %i.w = icmp ne i128 %i.v, 0                     ; 2 uses
  %or.cond66 = select i1 %i.w, i1 true, i1 %spec.select30.i
  %invariant.op = or i1 %i.e, %.not.i.i
  %i.x = icmp ult i8 %.140.val, 49
  %switch.maskindex143 = zext nneg i8 %.140.val to i64
  %switch.shifted144 = lshr i64 281476587323393, %switch.maskindex143
  %switch.lobit145 = trunc i64 %switch.shifted144 to i1
  %brmerge147 = select i1 %switch.lobit145, i1 true, i1 %spec.select30.i
  %brmerge118 = or i1 %i.i, %.not88
  %brmerge116 = select i1 %i.k, i1 true, i1 %or.cond76
  %switch.tableidx = add i8 %.140.val, -48        ; 2 uses
  %i.y = icmp ult i8 %switch.tableidx, 58
  %switch.maskindex137 = zext nneg i8 %switch.tableidx to i64
  %switch.shifted138 = lshr i64 270215977642229761, %switch.maskindex137
  %switch.lobit139 = trunc i64 %switch.shifted138 to i1
  %i.z = icmp ult i8 %.140.val, 30
  %switch.maskindex133 = zext nneg i8 %.140.val to i32
  %switch.shifted134 = lshr i32 606085121, %switch.maskindex133
  %switch.lobit135 = trunc i32 %switch.shifted134 to i1
  %brmerge146 = select i1 %switch.lobit135, i1 true, i1 %spec.select30.i
  %i.aa = icmp ult i8 %.140.val, 49
  %switch.maskindex = zext nneg i8 %.140.val to i64
  %switch.shifted = lshr i64 281509899542529, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %brmerge = select i1 %switch.lobit, i1 true, i1 %spec.select17.i
  %.140.val.off = add i8 %.140.val, -77
  %switch = icmp ult i8 %.140.val.off, 2
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.17.0 = phi i1 [ false, %bb.a ], [ %.sroa.17.17, %.backedge.backedge ] ; 2 uses
  %.sroa.13.0 = phi i32 [ %.440.val, %bb.a ], [ %.sroa.13.18, %.backedge.backedge ] ; 5 uses
  %.sroa.7.0 = phi i64 [ 0, %bb.a ], [ %.sroa.7.29, %.backedge.backedge ] ; 3 uses
  %i.ab = icmp ugt i64 %.sroa.7.0, 31
  %i.ac = icmp eq i32 %.sroa.13.0, 0              ; 2 uses
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %._crit_edge.i.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.backedge, %.backedge.i.i
  %i.ad = phi i64 [ %i.ae, %.backedge.i.i ], [ %.sroa.7.0, %.backedge ] ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 3 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr @278, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val.i.i = load i32, ptr %i.ag, align 8, !noalias !13804, !noundef !15 ; 5 uses
  %i.ah = and i32 %.val.i.i, %.440.val
  %i.ai = icmp eq i32 %i.ah, %.val.i.i
  %i.aj = and i32 %.val.i.i, %.sroa.13.0
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond.i.i = and i1 %i.ak, %i.ai
  br i1 %or.cond.i.i, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.ae, 32
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i

_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread: ; preds = %.lr.ph.split.i.i
  %i.al = xor i32 %.val.i.i, -1
  %i.am = and i32 %.sroa.13.0, %i.al
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %.backedge
  %.sroa.7.1 = phi i64 [ %.sroa.7.0, %.backedge ], [ 32, %.backedge.i.i ]
  %or.cond64 = select i1 %.sroa.17.0, i1 true, i1 %i.ac
  br i1 %or.cond64, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread
  %.sroa.5.0.i10 = phi i32 [ %.val.i.i, %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread ], [ %.sroa.13.0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.7.29 = phi i64 [ %i.ae, %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread ], [ %.sroa.7.1, %._crit_edge.i.i ]
  %.sroa.13.18 = phi i32 [ %i.am, %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread ], [ %.sroa.13.0, %._crit_edge.i.i ]
  %.sroa.17.17 = phi i1 [ %.sroa.17.0, %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread ], [ true, %._crit_edge.i.i ]
  %i.an = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.sroa.5.0.i10)
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.ap = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.5.0.i10, i1 true)
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser39is_enclosing_list_element_or_terminator, i64 %i.aq
  %switch.load = load i16, ptr %switch.gep, align 2 ; 3 uses
  %.sroa.4.0.extract.shift.i.i = lshr i16 %switch.load, 8 ; 5 uses
  br i1 %i.b, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %bb.d

default.unreachable:                              ; preds = %bb.v
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #41
  unreachable

bb.d:                                             ; preds = %.split.i
  %.sroa.06.0.extract.trunc.i.i = trunc i16 %switch.load to i8 ; 2 uses
  %i.ar = add nsw i8 %.sroa.06.0.extract.trunc.i.i, -2
  %i.as = icmp samesign ugt i8 %.sroa.06.0.extract.trunc.i.i, 1
  %narrow.i.i = select i1 %i.as, i8 %i.ar, i8 21  ; 2 uses
  switch i8 %narrow.i.i, label %bb.e [
    i8 0, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread101
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.n
    i8 12, label %bb.o
    i8 13, label %bb.p
    i8 14, label %bb.q
    i8 15, label %bb.r
    i8 16, label %bb.s
    i8 17, label %bb.t
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  br i1 %i.w, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %switch.early.test122

switch.early.test122:                             ; preds = %bb.f
  switch i8 %.140.val, label %.backedge.backedge [
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 16, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.g:                                             ; preds = %bb.d
  br i1 %switch, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

bb.h:                                             ; preds = %bb.d
  switch i8 %.140.val, label %.backedge.backedge [
    i8 81, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 78, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 79, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.i:                                             ; preds = %bb.d
  switch i8 %.140.val, label %.backedge.backedge [
    i8 26, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 13, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 35, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.j:                                             ; preds = %bb.d
  br i1 %i.aa, label %switch.hole_check, label %.split49

bb.k:                                             ; preds = %bb.d
  br i1 %i.z, label %switch.hole_check131, label %.split46

bb.l:                                             ; preds = %bb.d
  switch i8 %.140.val, label %.backedge.backedge [
    i8 26, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 13, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 0, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.m:                                             ; preds = %bb.d, %bb.d
  br i1 %i.l, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41

bb.n:                                             ; preds = %bb.d, %bb.d
  br i1 %i.i, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41

bb.o:                                             ; preds = %bb.d
  %i.at = shl nuw nsw i64 1, %i.aq
  %i.au = and i64 %i.at, 1535033215
  %.not.a = icmp eq i64 %i.au, 0
  br i1 %.not.a, label %bb.y, label %bb.x

bb.p:                                             ; preds = %bb.d
  %.not16.i.i = icmp eq i16 %.sroa.4.0.extract.shift.i.i, 2
  br i1 %.not16.i.i, label %bb.aa, label %bb.z

bb.q:                                             ; preds = %bb.d
  br i1 %brmerge118, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %switch.early.test86

bb.r:                                             ; preds = %bb.d
  br i1 %.not127, label %switch.early.test123, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11

switch.early.test123:                             ; preds = %bb.r
  switch i8 %.140.val, label %.backedge.backedge [
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 21, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.s:                                             ; preds = %bb.d
  br i1 %i.o, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %switch.early.test124

switch.early.test124:                             ; preds = %bb.s
  switch i8 %.140.val, label %.backedge.backedge [
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 21, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.t:                                             ; preds = %bb.d, %bb.d
  switch i8 %.140.val, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41 [
    i8 26, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 13, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.u:                                             ; preds = %bb.d
  %i.av = trunc i16 %.sroa.4.0.extract.shift.i.i to i1
  %.32.i.i = select i1 %i.av, i64 21, i64 24
  %i.aw = icmp eq i64 %.32.i.i, %i.a
  %brmerge.reass = or i1 %i.aw, %invariant.op
  br i1 %brmerge.reass, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread112

bb.v:                                             ; preds = %bb.d
  %trunc.i.i = trunc nuw nsw i16 %.sroa.4.0.extract.shift.i.i to i8
  switch i8 %trunc.i.i, label %default.unreachable [
    i8 0, label %bb.ab
    i8 1, label %bb.ac
    i8 2, label %bb.ad
  ]

bb.w:                                             ; preds = %bb.d
  %0 = trunc i16 %switch.load to i1
  %i.ax = trunc i16 %.sroa.4.0.extract.shift.i.i to i1
  %.46.i.i = select i1 %i.ax, i64 10, i64 7
  %.sroa.015.0.i.i = select i1 %0, i64 39, i64 %.46.i.i
  %i.ay = icmp eq i64 %.sroa.015.0.i.i, %i.a
  br i1 %i.ay, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit

bb.x:                                             ; preds = %bb.o
  br i1 %i.o, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %switch.early.test125

switch.early.test125:                             ; preds = %bb.x
  switch i8 %.140.val, label %.backedge.backedge [
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 21, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.y:                                             ; preds = %bb.o
  br i1 %brmerge116, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

bb.z:                                             ; preds = %bb.p
  %i.az = trunc nuw i16 %.sroa.4.0.extract.shift.i.i to i1
  %.35.i.i = select i1 %i.az, i64 23, i64 21
  %i.ba = icmp eq i64 %.35.i.i, %i.a
  %brmerge117 = or i1 %i.ba, %.not90
  br i1 %brmerge117, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %switch.early.test85

bb.aa:                                            ; preds = %bb.p
  switch i8 %.140.val, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread98 [
    i8 85, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 24, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.ab:                                            ; preds = %bb.v
  br i1 %switch.selectcmp40.i.i, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit

bb.ac:                                            ; preds = %bb.v
  br i1 %i.o, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %switch.early.test126

switch.early.test126:                             ; preds = %bb.ac
  switch i8 %.140.val, label %.backedge.backedge [
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 24, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.ad:                                            ; preds = %bb.v
  switch i8 %.140.val, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread100 [
    i8 24, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 13, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit: ; preds = %bb.ab, %bb.w
  %.sroa.07.0.i.i = phi i8 [ %.47.i.i, %bb.w ], [ %switch.select.i.i, %bb.ab ]
  %.not63 = icmp eq i8 %.sroa.07.0.i.i, 2
  br i1 %.not63, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11

switch.hole_check:                                ; preds = %bb.j
  br i1 %brmerge, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

switch.hole_check131:                             ; preds = %bb.k
  br i1 %brmerge146, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

.backedge.backedge:                               ; preds = %switch.early.test84, %switch.hole_check131, %switch.hole_check, %switch.early.test126, %switch.early.test125, %switch.early.test124, %switch.early.test123, %bb.g, %switch.early.test122, %bb.y, %bb.l, %bb.i, %bb.h, %switch.early.test86, %switch.early.test85, %switch.early.test, %.split46, %.split49, %.split59, %.split61, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread101, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread, %bb.ah, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread100, %bb.ai, %switch.hole_check141
  br label %.backedge

switch.hole_check141:                             ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread112
  br i1 %brmerge147, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11: ; preds = %switch.early.test84, %switch.hole_check141, %switch.hole_check131, %switch.hole_check, %switch.early.test126, %switch.early.test126, %switch.early.test126, %switch.early.test126, %switch.early.test126, %bb.ac, %switch.early.test125, %switch.early.test125, %switch.early.test125, %switch.early.test125, %switch.early.test125, %bb.x, %switch.early.test124, %switch.early.test124, %switch.early.test124, %switch.early.test124, %switch.early.test124, %bb.s, %switch.early.test123, %switch.early.test123, %switch.early.test123, %switch.early.test123, %switch.early.test123, %bb.r, %bb.g, %switch.early.test122, %switch.early.test122, %switch.early.test122, %switch.early.test122, %switch.early.test122, %bb.f, %bb.q, %bb.z, %bb.y, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.i, %bb.i, %bb.i, %bb.h, %bb.h, %bb.h, %switch.early.test86, %switch.early.test86, %switch.early.test86, %switch.early.test86, %switch.early.test86, %switch.early.test85, %switch.early.test85, %switch.early.test85, %switch.early.test85, %switch.early.test85, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread98, %bb.ag, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.af, %bb.u, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ad, %bb.ad, %bb.aa, %bb.aa, %bb.t, %bb.t, %bb.ah, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread100, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread101, %bb.ab, %bb.m, %bb.n, %bb.w, %.split.i, %._crit_edge.i.i, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit, %.split46, %.split49, %.split59, %.split61
  %i.bb = phi i1 [ true, %bb.ad ], [ true, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit ], [ true, %.split61 ], [ true, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread ], [ true, %.split59 ], [ true, %bb.t ], [ true, %switch.early.test122 ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.ah ], [ true, %switch.early.test86 ], [ true, %bb.l ], [ true, %bb.i ], [ true, %switch.early.test85 ], [ true, %.split49 ], [ true, %bb.ai ], [ true, %switch.early.test86 ], [ true, %.split46 ], [ true, %switch.early.test86 ], [ true, %bb.h ], [ true, %bb.l ], [ true, %bb.ad ], [ false, %._crit_edge.i.i ], [ true, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread100 ], [ true, %.split.i ], [ true, %switch.early.test124 ], [ true, %bb.u ], [ true, %bb.y ], [ true, %bb.aa ], [ true, %bb.ai ], [ true, %switch.early.test126 ], [ true, %switch.early.test126 ], [ true, %switch.early.test126 ], [ true, %switch.early.test126 ], [ true, %switch.hole_check ], [ true, %switch.early.test125 ], [ true, %switch.early.test125 ], [ true, %bb.w ], [ true, %bb.t ], [ true, %switch.early.test124 ], [ true, %switch.early.test123 ], [ true, %bb.q ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %switch.early.test122 ], [ true, %switch.early.test126 ], [ true, %switch.early.test125 ], [ true, %bb.ab ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread101 ], [ true, %switch.early.test86 ], [ true, %switch.early.test84 ], [ true, %switch.early.test123 ], [ true, %switch.early.test123 ], [ true, %switch.early.test123 ], [ true, %bb.ac ], [ true, %switch.early.test125 ], [ true, %switch.early.test125 ], [ true, %bb.x ], [ true, %switch.early.test124 ], [ true, %bb.l ], [ true, %bb.ai ], [ true, %switch.early.test ], [ true, %bb.ai ], [ true, %bb.ai ], [ true, %switch.early.test123 ], [ true, %bb.l ], [ true, %bb.l ], [ true, %bb.l ], [ true, %bb.af ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %bb.ag ], [ true, %switch.hole_check131 ], [ true, %switch.early.test124 ], [ true, %switch.early.test124 ], [ true, %bb.s ], [ true, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread98 ], [ true, %switch.early.test85 ], [ true, %switch.early.test85 ], [ true, %switch.early.test85 ], [ true, %switch.early.test85 ], [ true, %switch.early.test86 ], [ true, %bb.f ], [ true, %switch.early.test122 ], [ true, %switch.early.test122 ], [ true, %switch.early.test122 ], [ true, %bb.r ], [ true, %switch.hole_check141 ]
  ret i1 %i.bb

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41: ; preds = %bb.t, %bb.m, %bb.n, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit
  switch i8 %narrow.i.i, label %bb.ae [
    i8 21, label %.split61
    i8 20, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread100
    i8 18, label %bb.ai
    i8 17, label %bb.ah
    i8 11, label %bb.ag
    i8 10, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread
    i8 9, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread
    i8 8, label %bb.af
  ]

bb.ae:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41
  unreachable

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread101: ; preds = %bb.d
  br i1 %or.cond66, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

bb.af:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41
  br i1 %.not92, label %switch.early.test, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11

switch.early.test:                                ; preds = %bb.af
  switch i8 %.140.val, label %.backedge.backedge [
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 24, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread: ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41
  br i1 %or.cond76, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

bb.ag:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41
  br i1 %.not92, label %switch.early.test84, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11

switch.early.test84:                              ; preds = %bb.ag
  %.not152 = xor i1 %i.y, true
  %switch.lobit139.not = xor i1 %switch.lobit139, true
  %brmerge153 = select i1 %.not152, i1 true, i1 %switch.lobit139.not
  br i1 %brmerge153, label %.backedge.backedge, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread98: ; preds = %bb.aa
  br i1 %.not90, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %switch.early.test85

switch.early.test85:                              ; preds = %bb.z, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread98
  switch i8 %.140.val, label %.backedge.backedge [
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 27, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

switch.early.test86:                              ; preds = %bb.q
  switch i8 %.140.val, label %.backedge.backedge [
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 29, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

bb.ah:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41
  br i1 %or.cond76, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

bb.ai:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41
  switch i8 %.140.val, label %.backedge.backedge [
    i8 105, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 104, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 103, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 102, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
    i8 0, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11
  ]

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread112: ; preds = %bb.u
  br i1 %i.x, label %switch.hole_check141, label %.split59

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread100: ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41, %bb.ad
  br i1 %or.cond76, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

.split49:                                         ; preds = %bb.j
  br i1 %spec.select17.i, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

.split46:                                         ; preds = %bb.k
  br i1 %spec.select30.i, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

.split59:                                         ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41.thread112
  br i1 %spec.select30.i, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge

.split61:                                         ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind18is_list_terminator.exit.thread41
  %i.bc = shl nuw nsw i64 1, %i.aq
  %i.bd = and i64 %i.bc, 1535033215
  %.not.i.not = icmp eq i64 %i.bd, 0
  %..i = select i1 %.not.i.not, i64 9, i64 6
  %i.be = icmp eq i64 %..i, %i.a
  %.sroa.03.1.i = or i1 %i.m, %i.be
  br i1 %.sroa.03.1.i, label %_RNvXs0_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_4IterNtNtCsb6FLkjZuKG_18ruff_python_parser6parser15RecoveryContextENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread11, label %.backedge.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat(ptr noalias noundef nonnull align 8 dereferenceable(464) %0, i8 noundef range(i8 7, 94) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i8, ptr %i.a, align 4, !range !22, !noundef !15
  %i.c = icmp eq i8 %i.b, %1                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  switch i8 %1, label %bb.c [
    i8 13, label %bb.d
    i8 16, label %bb.d
    i8 26, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !13817, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i32 %i.e, ptr %i.f, align 4, !alias.scope !13817
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = load <2 x i32>, ptr %i.h, align 8, !alias.scope !13818
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
end_hunk_0
