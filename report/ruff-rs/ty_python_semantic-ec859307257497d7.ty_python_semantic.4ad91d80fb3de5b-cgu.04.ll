Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings20evaluate_known_cases:bb.a
  br i1 %.not468, label %.backedge, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %.sroa.41830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val612, i64 4
  %.sroa.41830.0.copyload = load i8, ptr %.sroa.41830.0..sroa_idx, align 4
  %.sroa.51832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val612, i64 8
  %.sroa.51832.0.copyload = load i32, ptr %.sroa.51832.0..sroa_idx, align 4 ; 2 uses
  %i.bjl = icmp ne i32 %i.bji, 17
  call void @llvm.assume(i1 %i.bjl)
  %i.bjm = icmp ne i32 %i.bji, 28
  %i.bjn = icmp ne i8 %.sroa.41830.0.copyload, 2
  %or.cond2387.not2594 = select i1 %i.bjm, i1 true, i1 %i.bjn
  %.not469 = icmp eq i32 %.sroa.51832.0.copyload, 0
  %or.cond2431 = select i1 %or.cond2387.not2594, i1 true, i1 %.not469
  br i1 %or.cond2431, label %.backedge, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %.sroa.61833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val612, i64 12
  %.sroa.61833.0.copyload = load i32, ptr %.sroa.61833.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.71836)
  %i.bjo = call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals2_1__NtB8_17StringLiteralType5valueDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.51832.0.copyload, i32 noundef %.sroa.61833.0.copyload, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.bjp = extractvalue { ptr, i64 } %i.bjo, 0
  %i.bjq = extractvalue { ptr, i64 } %i.bjo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !15681
  store <4 x i32> <i32 64, i32 61, i32 60, i32 62>, ptr %i.cr, align 16, !noalias !15681
  store i32 33, ptr %i.vz, align 16, !noalias !15681
  %i.bjr = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchesAcj5_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bjp, i64 noundef %i.bjq, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(20) %i.cr), !noalias !15686 ; 2 uses
  %i.bjs = extractvalue { ptr, i64 } %i.bjr, 0    ; 3 uses
  %i.bjt = extractvalue { ptr, i64 } %i.bjr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !15681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !15681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bjs) ]
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjs, i64 %i.bjt
  store ptr %i.bjs, ptr %i.cq, align 8, !noalias !15681
  store ptr %i.bju, ptr %i.wa, align 8, !noalias !15681
  store i32 -2, ptr %i.wb, align 8, !noalias !15681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !15681
  store i64 0, ptr %i.cp, align 8, !noalias !15681
  store ptr inttoptr (i64 4 to ptr), ptr %i.wc, align 8, !noalias !15681
  store i64 0, ptr %i.wd, align 8, !noalias !15681
  br label %.backedge.i1009

.backedge.i1009:                                  ; preds = %.backedge.i1009.backedge, %bb.jb
  %i.bjv = phi i32 [ -2, %bb.jb ], [ %.be, %.backedge.i1009.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15687)
  call void @llvm.experimental.noalias.scope.decl(metadata !15690)
  %.not.i.i1006 = icmp eq i32 %i.bjv, -2
  br i1 %.not.i.i1006, label %bb.jc, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.jc:                                            ; preds = %.backedge.i1009
  call void @llvm.experimental.noalias.scope.decl(metadata !15692)
  call void @llvm.experimental.noalias.scope.decl(metadata !15695)
  call void @llvm.experimental.noalias.scope.decl(metadata !15698)
  %i.bjw = load ptr, ptr %i.cq, align 8, !alias.scope !15701, !noalias !15704, !nonnull !4, !noundef !4 ; 6 uses
  %i.bjx = load ptr, ptr %i.wa, align 8, !alias.scope !15701, !noalias !15704, !nonnull !4, !noundef !4 ; 4 uses
  %.not.i.i.i.i1011 = icmp eq ptr %i.bjw, %i.bjx
  br i1 %.not.i.i.i.i1011, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjw, i64 1 ; 3 uses
  store ptr %i.bjy, ptr %i.cq, align 8, !alias.scope !15701, !noalias !15704
  %i.bjz = load i8, ptr %i.bjw, align 1, !noalias !15705, !noundef !4 ; 5 uses
  %i.bka = icmp sgt i8 %i.bjz, -1
  br i1 %i.bka, label %bb.je, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i: ; preds = %bb.jd
  %i.bkb = and i8 %i.bjz, 31
  %i.bkc = zext nneg i8 %i.bkb to i32             ; 3 uses
  %i.bkd = icmp ne ptr %i.bjy, %i.bjx
  call void @llvm.assume(i1 %i.bkd)
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bjw, i64 2 ; 3 uses
  store ptr %i.bke, ptr %i.cq, align 8, !alias.scope !15706, !noalias !15704
  %i.bkf = load i8, ptr %i.bjy, align 1, !noalias !15705, !noundef !4
  %i.bkg = shl nuw nsw i32 %i.bkc, 6
  %i.bkh = and i8 %i.bkf, 63
  %i.bki = zext nneg i8 %i.bkh to i32             ; 2 uses
  %i.bkj = or disjoint i32 %i.bkg, %i.bki
  %i.bkk = icmp samesign ugt i8 %i.bjz, -33
  br i1 %i.bkk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.je:                                            ; preds = %bb.jd
  %i.bkl = zext nneg i8 %i.bjz to i32
  br label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i
  %i.bkm = icmp ne ptr %i.bke, %i.bjx
  call void @llvm.assume(i1 %i.bkm)
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bjw, i64 3 ; 3 uses
  store ptr %i.bkn, ptr %i.cq, align 8, !alias.scope !15709, !noalias !15704
  %i.bko = load i8, ptr %i.bke, align 1, !noalias !15705, !noundef !4
  %i.bkp = shl nuw nsw i32 %i.bki, 6
  %i.bkq = and i8 %i.bko, 63
  %i.bkr = zext nneg i8 %i.bkq to i32
  %i.bks = or disjoint i32 %i.bkp, %i.bkr         ; 2 uses
  %i.bkt = shl nuw nsw i32 %i.bkc, 12
  %i.bku = or disjoint i32 %i.bks, %i.bkt
  %i.bkv = icmp samesign ugt i8 %i.bjz, -17
  br i1 %i.bkv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i
  %i.bkw = icmp ne ptr %i.bkn, %i.bjx
  call void @llvm.assume(i1 %i.bkw)
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 4
  store ptr %i.bkx, ptr %i.cq, align 8, !alias.scope !15712, !noalias !15704
  %i.bky = load i8, ptr %i.bkn, align 1, !noalias !15705, !noundef !4
  %i.bkz = shl nuw nsw i32 %i.bkc, 18
  %i.bla = and i32 %i.bkz, 1835008
  %i.blb = shl nuw nsw i32 %i.bks, 6
  %i.blc = and i8 %i.bky, 63
  %i.bld = zext nneg i8 %i.blc to i32
  %i.ble = or disjoint i32 %i.blb, %i.bld
  %i.blf = or disjoint i32 %i.ble, %i.bla
  br label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i, %bb.je, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i, %bb.jc
  %spec.select.i.i.i.i = phi i32 [ %i.bkl, %bb.je ], [ %i.bkj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i ], [ %i.blf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i ], [ %i.bku, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i ], [ -1, %bb.jc ] ; 2 uses
  store i32 %spec.select.i.i.i.i, ptr %i.wb, align 8, !alias.scope !15687, !noalias !15715
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsoTR8nlGN3X_18ty_python_semantic.exit.i

.loopexit.i1008:                                  ; preds = %bb.jn
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.preheader.i
  %lpad.loopexit74.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.kp, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit.i52.i, %bb.kl, %bb.kk, %bb.kj, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit.i.i, %bb.kg, %bb.kf, %bb.ke, %.invoke.i, %bb.jy, %bb.jj
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke97.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i1008
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i1008 ], [ %lpad.loopexit74.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit77.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %bb.jg unwind label %bb.jf, !noalias !15716

bb.jf:                                            ; preds = %.loopexit.split-lp.i
  %i.blg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %.body.i unwind label %bb.jh, !noalias !15716

bb.jg:                                            ; preds = %.loopexit.split-lp.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %common.resume unwind label %bb.ku, !noalias !15716

bb.jh:                                            ; preds = %bb.jf
  %i.blh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !15716
  unreachable

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %.backedge.i1009
  %i.bli = phi i32 [ %spec.select.i.i.i.i, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %i.bjv, %.backedge.i1009 ]
  %.not.i1007 = icmp eq i32 %i.bli, -1
  br i1 %.not.i1007, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind19parse_struct_format.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.ji
  %i.blj = invoke noundef i32 @_RINvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtBc_3str4iter5CharsE7next_ifNvMNtNtBc_4char7methodsc19is_ascii_whitespaceECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.ji unwind label %.loopexit.split-lp.loopexit.i, !noalias !15716

bb.ji:                                            ; preds = %.preheader.i
  %.not33.i = icmp eq i32 %i.blj, -1
  br i1 %.not33.i, label %bb.jj, label %.preheader.i

bb.jj:                                            ; preds = %bb.ji
  %i.blk = invoke noundef i32 @_RINvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtBc_3str4iter5CharsE7next_ifNvMNtNtBc_4char7methodsc14is_ascii_digitECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.jk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !15716 ; 2 uses

bb.jk:                                            ; preds = %bb.jj
  %.not34.i = icmp eq i32 %i.blk, -1
  br i1 %.not34.i, label %.loopexit73.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.bll = add nsw i32 %i.blk, -48                ; 2 uses
  %i.blm = icmp ult i32 %i.bll, 10
  br i1 %i.blm, label %bb.jm, label %.invoke97.i, !prof !555

bb.jm:                                            ; preds = %bb.jl
  %i.bln = zext nneg i32 %i.bll to i64
  br label %bb.jn

.invoke97.i:                                      ; preds = %bb.jl, %bb.jr
  %i.blo = phi ptr [ @349, %bb.jr ], [ @348, %bb.jl ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.blo) #64
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !15716

.cont.i:                                          ; preds = %.invoke97.i
  unreachable

bb.jn:                                            ; preds = %bb.js, %bb.jm
  %.sroa.06.0.i = phi i64 [ %i.bln, %bb.jm ], [ %i.blt, %bb.js ] ; 2 uses
  %i.blp = invoke noundef i32 @_RINvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtBc_3str4iter5CharsE7next_ifNvMNtNtBc_4char7methodsc14is_ascii_digitECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.jo unwind label %.loopexit.i1008, !noalias !15716 ; 2 uses

bb.jo:                                            ; preds = %bb.jn
  %.not35.i = icmp eq i32 %i.blp, -1
  br i1 %.not35.i, label %.loopexit73.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %7 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.06.0.i, i64 10) ; 2 uses
  %8 = extractvalue { i64, i1 } %7, 0
  %9 = extractvalue { i64, i1 } %7, 1
  br i1 %9, label %bb.jq, label %bb.jr, !prof !643

bb.jq:                                            ; preds = %bb.jp
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %.sroa.014.0.i = phi i64 [ -1, %bb.jq ], [ %8, %bb.jp ]
  %i.blq = add nsw i32 %i.blp, -48                ; 2 uses
  %i.blr = icmp ult i32 %i.blq, 10
  br i1 %i.blr, label %bb.js, label %.invoke97.i, !prof !555

bb.js:                                            ; preds = %bb.jr
  %i.bls = zext nneg i32 %i.blq to i64
  %i.blt = call i64 @llvm.uadd.sat.i64(i64 %.sroa.014.0.i, i64 %i.bls)
  br label %bb.jn

.loopexit73.i:                                    ; preds = %bb.jo, %bb.jk
  %.sroa.06.1.i = phi i64 [ 1, %bb.jk ], [ %.sroa.06.0.i, %bb.jo ] ; 3 uses
  %i.blu = load i32, ptr %i.wb, align 8, !range !15717, !noalias !15681, !noundef !4 ; 2 uses
  store i32 -2, ptr %i.wb, align 8, !noalias !15681
  switch i32 %i.blu, label %bb.jx [
    i32 -2, label %bb.jt
    i32 -1, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind19parse_struct_format.exit
  ]

bb.jt:                                            ; preds = %.loopexit73.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15718)
  %i.blv = load ptr, ptr %i.cq, align 8, !alias.scope !15721, !noalias !15681, !nonnull !4, !noundef !4 ; 6 uses
  %i.blw = load ptr, ptr %i.wa, align 8, !alias.scope !15721, !noalias !15681, !nonnull !4, !noundef !4 ; 4 uses
  %i.blx = icmp eq ptr %i.blv, %i.blw
  br i1 %i.blx, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind19parse_struct_format.exit, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blv, i64 1 ; 3 uses
  store ptr %i.bly, ptr %i.cq, align 8, !alias.scope !15721, !noalias !15681
  %i.blz = load i8, ptr %i.blv, align 1, !noalias !15724, !noundef !4 ; 5 uses
  %i.bma = icmp sgt i8 %i.blz, -1
  br i1 %i.bma, label %bb.jv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i: ; preds = %bb.ju
  %i.bmb = and i8 %i.blz, 31
  %i.bmc = zext nneg i8 %i.bmb to i32             ; 3 uses
  %i.bmd = icmp ne ptr %i.bly, %i.blw
  call void @llvm.assume(i1 %i.bmd)
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blv, i64 2 ; 3 uses
  store ptr %i.bme, ptr %i.cq, align 8, !alias.scope !15725, !noalias !15681
  %i.bmf = load i8, ptr %i.bly, align 1, !noalias !15724, !noundef !4
  %i.bmg = shl nuw nsw i32 %i.bmc, 6
  %i.bmh = and i8 %i.bmf, 63
  %i.bmi = zext nneg i8 %i.bmh to i32             ; 2 uses
  %i.bmj = or disjoint i32 %i.bmg, %i.bmi
  %i.bmk = icmp samesign ugt i8 %i.blz, -33
  br i1 %i.bmk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.bml = zext nneg i8 %i.blz to i32
  br label %bb.jw

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i
  %i.bmm = icmp ne ptr %i.bme, %i.blw
  call void @llvm.assume(i1 %i.bmm)
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.blv, i64 3 ; 3 uses
  store ptr %i.bmn, ptr %i.cq, align 8, !alias.scope !15728, !noalias !15681
  %i.bmo = load i8, ptr %i.bme, align 1, !noalias !15724, !noundef !4
  %i.bmp = shl nuw nsw i32 %i.bmi, 6
  %i.bmq = and i8 %i.bmo, 63
  %i.bmr = zext nneg i8 %i.bmq to i32
  %i.bms = or disjoint i32 %i.bmp, %i.bmr         ; 2 uses
  %i.bmt = shl nuw nsw i32 %i.bmc, 12
  %i.bmu = or disjoint i32 %i.bms, %i.bmt
  %i.bmv = icmp samesign ugt i8 %i.blz, -17
  br i1 %i.bmv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i, label %bb.jw

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i
  %i.bmw = icmp ne ptr %i.bmn, %i.blw
  call void @llvm.assume(i1 %i.bmw)
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.blv, i64 4
  store ptr %i.bmx, ptr %i.cq, align 8, !alias.scope !15731, !noalias !15681
  %i.bmy = load i8, ptr %i.bmn, align 1, !noalias !15724, !noundef !4
  %i.bmz = shl nuw nsw i32 %i.bmc, 18
  %i.bna = and i32 %i.bmz, 1835008
  %i.bnb = shl nuw nsw i32 %i.bms, 6
  %i.bnc = and i8 %i.bmy, 63
  %i.bnd = zext nneg i8 %i.bnc to i32
  %i.bne = or disjoint i32 %i.bnb, %i.bnd
  %i.bnf = or disjoint i32 %i.bne, %i.bna
  br label %bb.jw

bb.jw:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i, %bb.jv, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.bmu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i ], [ %i.bnf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i ], [ %i.bmj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i ], [ %i.bml, %bb.jv ] ; 2 uses
  %i.bng = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.bng)
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %.loopexit73.i
  %.sroa.012.0.i = phi i32 [ %i.blu, %.loopexit73.i ], [ %.sroa.4.0.i.ph.i, %bb.jw ]
  switch i32 %.sroa.012.0.i, label %bb.kr [
    i32 120, label %.backedge.i1009.backedge
    i32 115, label %bb.jy
    i32 112, label %bb.jy
    i32 99, label %.invoke.i
    i32 98, label %bb.jz
    i32 66, label %bb.jz
    i32 104, label %bb.jz
    i32 72, label %bb.jz
    i32 105, label %bb.jz
    i32 73, label %bb.jz
    i32 108, label %bb.jz
    i32 76, label %bb.jz
    i32 113, label %bb.jz
    i32 81, label %bb.jz
    i32 110, label %bb.jz
    i32 78, label %bb.jz
    i32 80, label %bb.jz
    i32 63, label %bb.ka
    i32 101, label %bb.kb
    i32 102, label %bb.kb
    i32 100, label %bb.kb
    i32 70, label %bb.kc
    i32 68, label %bb.kh
  ]

bb.jy:                                            ; preds = %bb.jx, %bb.jx
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.co, i8 noundef 2, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @350)
          to label %.thread68.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !15716

.thread68.i:                                      ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !15681
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523.sroa.0.i)
  br label %bb.ko

.invoke.i:                                        ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit59.i, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit.i, %bb.kb, %bb.ka, %bb.jz, %bb.jx
  %i.bnh = phi i8 [ 2, %bb.jx ], [ 6, %bb.jz ], [ 0, %bb.ka ], [ 7, %bb.kb ], [ 8, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit59.i ], [ 8, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit.i ]
  %i.bni = phi ptr [ @351, %bb.jx ], [ @352, %bb.jz ], [ @353, %bb.ka ], [ @354, %bb.kb ], [ @355, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit59.i ], [ @355, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit.i ]
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.co, i8 noundef %i.bnh, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bni)
          to label %bb.km unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !15716

bb.jz:                                            ; preds = %bb.jx, %bb.jx, %bb.jx, %bb.jx, %bb.jx, %bb.jx, %bb.jx, %bb.jx, %bb.jx, %bb.jx, %bb.jx, %bb.jx, %bb.jx
  br label %.invoke.i

bb.ka:                                            ; preds = %bb.jx
  br label %.invoke.i

bb.kb:                                            ; preds = %bb.jx, %bb.jx, %bb.jx
  br label %.invoke.i

bb.kc:                                            ; preds = %bb.jx
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %3, align 4, !noalias !15734
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !15734 ; 4 uses
  %.sroa.9.0.copyload.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !15734 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i.i.i, label %bb.kd [
    i32 0, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit.i.i
    i32 1, label %bb.ke
    i32 2, label %bb.kf
    i32 3, label %bb.kg
  ], !prof !12077

bb.kd:                                            ; preds = %bb.kc
  unreachable

bb.ke:                                            ; preds = %bb.kc
  %i.bnj = invoke { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i.i.i, i32 noundef %.sroa.9.0.copyload.i.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !15716

bb.kf:                                            ; preds = %bb.kc
  %i.bnk = invoke { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i.i.i, i32 noundef %.sroa.9.0.copyload.i.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !15716

bb.kg:                                            ; preds = %bb.kc
  %i.bnl = invoke { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i.i.i, i32 noundef %.sroa.9.0.copyload.i.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !15716

.noexc.i:                                         ; preds = %bb.kg, %bb.kf, %bb.ke
  %.pn.i.i.i = phi { i32, i32 } [ %i.bnk, %bb.kf ], [ %i.bnj, %bb.ke ], [ %i.bnl, %bb.kg ] ; 2 uses
  %.sroa.0.1.i.i.i = extractvalue { i32, i32 } %.pn.i.i.i, 0 ; 2 uses
  %.sroa.6.1.i.i.i = extractvalue { i32, i32 } %.pn.i.i.i, 1 ; 2 uses
  store i32 0, ptr %3, align 4, !noalias !15734
  store i32 %.sroa.0.1.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !15734
  store i32 %.sroa.6.1.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !15734
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit.i.i

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit.i.i: ; preds = %.noexc.i, %bb.kc
  %.pre-phi2.i.i = phi i32 [ %.sroa.6.1.i.i.i, %.noexc.i ], [ %.sroa.9.0.copyload.i.i.i, %bb.kc ]
  %.pre-phi.i.i = phi i32 [ %.sroa.0.1.i.i.i, %.noexc.i ], [ %.sroa.5.0.copyload.i.i.i, %bb.kc ]
  %i.bnm = invoke { i8, i8 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core7programNtB4_7Program14python_version(i32 noundef %.pre-phi.i.i, i32 noundef %.pre-phi2.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !15716 ; 2 uses

bb.kh:                                            ; preds = %bb.jx
  %.sroa.03.0.copyload.i.i44.i = load i32, ptr %3, align 4, !noalias !15739
  %.sroa.5.0.copyload.i.i46.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !15739 ; 4 uses
  %.sroa.9.0.copyload.i.i48.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !15739 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i.i44.i, label %bb.ki [
    i32 0, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit.i52.i
    i32 1, label %bb.kj
    i32 2, label %bb.kk
    i32 3, label %bb.kl
  ], !prof !12077

bb.ki:                                            ; preds = %bb.kh
  unreachable

bb.kj:                                            ; preds = %bb.kh
  %i.bnn = invoke { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i.i46.i, i32 noundef %.sroa.9.0.copyload.i.i48.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !15716

bb.kk:                                            ; preds = %bb.kh
  %i.bno = invoke { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i.i46.i, i32 noundef %.sroa.9.0.copyload.i.i48.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition12program_file

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex24expect_single_definitionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict55extract_unpacked_typed_dict_keys_from_kwargs_annotation(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16), i8 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB5_13CallArguments11insert_typeNtB9_4TypeEBb_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25recursive_type_normalized(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types15attribute_write27attribute_write_requirement(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class25protocol_member_read_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB7_14protocol_class18ProtocolMemberDataENCNvMs4_B3s_NtB3s_21ProtocolInterfaceView7members0EINtB5_28IteratorConstraintsExtensionNtB3s_14ProtocolMemberE8when_allNCNvMse_B3s_NtNtB7_8relation19TypeRelationChecker27check_meta_protocol_members0EB9_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class17property_set_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, i32 noundef range(i32 1, 0), i32 noundef, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB5_13CallArguments10positionalANtB9_4Typej2_EBb_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type27try_call_dunder_with_policy(ptr dead_on_unwind noalias noundef writable sret([432 x i8]) align 8 captures(address) dereferenceable(432), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), i8 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4callNtB5_15CallDunderError11return_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_21ProtocolInterfaceView12member_count(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class18ProtocolMemberDataENCNvMs4_B2w_NtB2w_21ProtocolInterfaceView7members0ENtCs6Wt4yPw39th_9itertools9Itertools20sorted_by_cached_keyNtB2w_24StructuralMemberPriorityNCNvMse_B2w_NtNtB2y_8relation19TypeRelationChecker29check_protocol_interface_pair0EB2A_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB7_14protocol_class14ProtocolMemberEINtB5_28IteratorConstraintsExtensionB1M_E8when_allNCNvMse_B1O_NtNtB7_8relation19TypeRelationChecker29check_protocol_interface_pairs_0EB9_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtB7_4TypeEINtB5_28IteratorConstraintsExtensionRB1F_E8when_allNCNvMse_NtB7_14protocol_classNtNtB7_8relation19TypeRelationChecker30check_callable_write_parameter0EB9_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_14ProtocolMember43has_incompatible_class_variable_declaration(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_14ProtocolMember26uses_special_method_lookup(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB5_13CallArguments10positionalANtB9_4Typej3_EBb_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet2orNCNvMse_NtB8_14protocol_classNtNtB8_8relation19TypeRelationChecker32check_property_write_requirements_0EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_14ProtocolMember6access(ptr dead_on_unwind noalias noundef writable sret([84 x i8]) align 4 captures(address) dereferenceable(84), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB4_13CallArguments11clear_types(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB1y_9enumerate9EnumerateINtNtNtB1C_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEENCNvMse_B3r_NtB3r_7Binding31paramspec_call_argument_indices0EE9from_iterB3x_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10PathBounds5solve(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB13_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB15_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(28)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14GenericContext20specialize_recursiveINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1H_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB7_7typevar20BoundTypeVarIdentityNtB3z_20BoundTypeVarInstanceEENCNvMse_NtNtB7_4call4bindNtB4K_7Binding36argument_type_context_specializations_0EEB9_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE6retainNCNvMse_BG_NtBG_7Binding53clear_missing_argument_errors_for_partial_application0EBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0EBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBP_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtBM_5clone5Clone5cloneB1n_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class35callable_has_only_non_never_returns(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtB7_8callable12CallableTypeEINtB5_28IteratorConstraintsExtensionRB1F_E8when_allNCNvMsf_NtB7_14protocol_classNtNtB7_8relation19DisjointnessChecker41protocol_member_has_disjoint_type_from_tys0_0EB9_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12class_member(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(address) dereferenceable(36), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtNtB7_3mro11MroIteratorINtB5_28IteratorConstraintsExtensionNtNtB7_10class_base9ClassBaseE8when_anyNCNvMsf_NtB7_5classNtNtB7_8relation19TypeRelationChecker16check_class_pair0EB9_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromBP_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtBM_5clone5Clone10clone_fromB1n_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingSnapshotEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2V_5slice4iter4IterjENCNvMsg_B16_NtB16_26CallableBindingSnapshotter4take0EE9from_iterB1c_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral4name(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance4name(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_15DisplaySettings29from_possibly_ambiguous_typesARNtB8_4Typej2_B1N_EBa_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_19LintDiagnosticGuard30set_primary_annotation_messageNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef align 8 dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i8 } @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type27assignability_error_context(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree9attach_to(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type10definition(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic33note_numbers_module_not_supported(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic27add_invariant_generic_hints(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticReEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCs6Wt4yPw39th_9itertools6formatINtB2_10FormatWithINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMsq_NtNtB1z_4call4bindNtB2s_12BindingError17report_diagnosticsc_0ENtNtBY_3fmt7Display3fmtB1B_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance10definition(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition11python_file(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition10full_range(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #46

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_20ConstraintSetBuilder10into_ownedNCNvNtB8_10signatures26merge_receiver_constraintss0_0EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(696), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 1, 0) i32 @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex19expression_scope_idNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs0_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB5_11FileScopeId11to_scope_id(i32 noundef range(i32 1, 0), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer26infer_complete_scope_types(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_14ScopeInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_14ScopeInference21type_expression_flagsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RINvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19DefinitionInference21type_expression_flagsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchesAcj5_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(20)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 -1, 1114112) i32 @_RINvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtBc_3str4iter5CharsE7next_ifNvMNtNtBc_4char7methodsc19is_ascii_whitespaceECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 -1, 1114112) i32 @_RINvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtBc_3str4iter5CharsE7next_ifNvMNtNtBc_4char7methodsc14is_ascii_digitECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #50

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources8repeat_n7RepeatNBF_EEBJ_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral13is_typed_dict(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums13is_enum_class(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE14fixed_elementsB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB6_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1B_ENCNvNtNtB23_4call4bind29inferable_typevars_from_tuple0ENtNtB23_7typevar20BoundTypeVarInstanceINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B4r_IB4p_INtNtCscdodAO9FK5_5alloc3vec3VecB3M_EEINtNtNtB4_6traits7collect12FromIteratorIB4p_B3M_EE9from_iterBQ_E0B5u_EB25_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB6_8IndexSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtNtNtB26_4iter6traits7collect12IntoIterator9into_iterBZ_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21unpack_keys_and_items(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 4 captures(none) dereferenceable(32), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType27is_subtype_of_class_literal(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType13iter_positive(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallEB9_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENCNvNtNtNtB1k_5infer7builder13dynamic_class21report_mro_error_kinds1_0ENtCs6Wt4yPw39th_9itertools9Itertools4joinB1m_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral7try_mro(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral14explicit_bases(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvNtNtNtB1i_5infer7builder13dynamic_class25report_dynamic_mro_errors0ENtCs6Wt4yPw39th_9itertools9Itertools4joinB1k_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal1__NtB8_19DynamicClassLiteral4nameDNtNtBe_2db2DbEL_EBe_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral12header_range(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic33report_inconsistent_generic_bases(ptr noundef nonnull align 8, i32 noundef, i32 noundef, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noundef align 8, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsH_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_10TypeIsType4bind(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, i32 noundef range(i32 0, 2), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsK_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_13TypeGuardType4bind(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, i32 noundef range(i32 0, 2), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2L_5slice4iter4IterB12_ENCNvNvMs_B14_NtB14_17CallableSignature23apply_type_mapping_impl36try_apply_type_mapping_for_paramspec0EE9from_iterB18_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType12program_file(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType10definition(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition10file_scope(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNvMsl_NtNtB1Z_5types8relationNtB2R_4Type17is_redundant_with22is_redundant_with_impl0E0bEB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetDNtNtB20_2db2DbEL_NCNvNvMsl_NtB1Y_8relationNtB1Y_4Type39when_constraint_set_assignable_to_owned44when_constraint_set_assignable_to_owned_impl0E0B1T_EB20_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs3pBv9WGWlWf_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_CscxDUFidjJwY_9inventoryNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNtB4_10ErasedNode6submitCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessa_1__NtB8_8TypePair7programDNtNtBa_2db2DbEL_EBa_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessa_1__NtB8_8TypePair5firstDNtNtBa_2db2DbEL_EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessa_1__NtB8_8TypePair6secondDNtNtBa_2db2DbEL_EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type15has_relation_to(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull align 8, i32 noundef, i32, i8 noundef range(i8 0, 6)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_20ConstraintSetBuilder10into_ownedNCNvNvXs0_NvNvMsl_NtB8_8relationNtB8_4Type39when_constraint_set_assignable_to_owned1__NtB1N_59when_constraint_set_assignable_to_owned_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(696), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5array8equalityNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtB5_11SpecArrayEqBH_Kj2_E7spec_eqBL_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor20walk_non_atomic_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel15expr_ref_in_ast(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef range(i64 0, 33), ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvMse_Cs2O29vuvTAEJ_14ty_python_coreNtB6_19ExpressionsScopeMap7try_getNtNtCskLngH8kgpZI_15ruff_python_ast9generated7ExprRefECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_14ScopeInference19try_expression_typeNtNtCskLngH8kgpZI_15ruff_python_ast9generated7ExprRefEBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef range(i64 0, 33), ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtNtNtB2N_5infer7builder9enum_call40apply_generated_type_mixin_member_values0EINtNtB7_6option6OptionNtNtB7_7convert10InfallibleEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB21_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB21_E0INtNtB7_6result6ResultB6p_zEEB2P_(ptr noalias noundef align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENvMs0_B1N_B1K_3keyENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2h_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2h_E0INtNtBc_6result6ResultB43_zEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore11SuppressFixENCNvMNtB1Q_5fixesNtB35_7FixMode5fixess_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB35_13ApplicableFixENCINvNtB12_16in_place_collect24write_in_place_with_dropB4X_E0INtNtBc_6result6ResultB4m_zEEB1Q_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1R_10definition10DefinitionEENCNvMsp_NtNtB3L_5class14static_literalNtB5m_18StaticClassLiteral24own_annotated_qualifierss_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropTB30_B3J_B4G_EENCINvNtB12_16in_place_collect24write_in_place_with_dropB82_E0INtNtBc_6result6ResultB7r_zEEB3N_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB7_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtBV_8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterB1D_EEENtNtNtBV_6traits8iterator8Iterator4nextB1H_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizebE0jE0jECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetE0jE0jEB45_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecjENtB6_5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBN_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB4_4NameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtB5_18FunctionIngredient4memoB1a_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtB5_18FunctionIngredient18provisional_statusB1a_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtB5_18FunctionIngredient4memoB1a_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtB5_18FunctionIngredient18provisional_statusB1a_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs7_NtNtCscdodAO9FK5_5alloc5boxed7convertINtB7_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtCs4NRVxsYgnAr_4core7convert4FromABR_j2_E4fromBX_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(144)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsC_NtCscdodAO9FK5_5alloc3vecINtNtB7_5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_3VecBN_EE4fromBT_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvMNtNtNtB25_5infer7builder9subscriptNtB2Y_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls8_0ENvYB23_INtNtBb_7convert4IntoB23_E4intoENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB27_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB2c_20BoundTypeVarInstanceEENCNvMs16_NtNtB1G_3map4iterINtB40_10IntoValuesB2a_B3n_E3new0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB2g_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENvYB1D_INtNtBb_7convert4IntoB1D_E4intoENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1H_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 4) i8 @_RINvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8varianceNtB5_15TypeVarVarianceINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBV_E9from_iterINtNtNtB1o_8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB7_10signatures9SignatureENCNvXs1_B3q_RNtB3q_17CallableSignatureNtB5_17VarianceInferable11variance_of0EEB9_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEj1_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef align 8 dereferenceable(72), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEj2_NtB4_11PartialDrop12partial_dropB1E_(ptr noalias noundef align 8 dereferenceable(864), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs7_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessa_1__NtB7_8TypePairNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index(ptr noundef nonnull align 8) unnamed_addr #2

end_hunk_1
