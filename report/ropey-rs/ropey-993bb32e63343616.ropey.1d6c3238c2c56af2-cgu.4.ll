Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.4?download=true
inline.NumInlined: 208
inline.NumDeleted: 71
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXss_Cs2efQY0w7vw4_8smallvecINtB6_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendhE6extendINtNtNtB1R_8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterhEEEBQ_:_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i
    i64 0, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_.exit.thread
  ], !prof !14

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_.exit._RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit_crit_edge: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_.exit
  %.pre34 = load i64, ptr %i.f, align 8, !alias.scope !15, !noalias !18
  br label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit

bb.c:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_.exit
  %i.v = extractvalue { i64, i64 } %i.t, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.u, i64 noundef %i.v) #20
  unreachable

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_.exit.thread: ; preds = %bb.a, %bb.b, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_.exit
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable

_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_.exit._RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit_crit_edge, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i
  %i.w = phi i64 [ %.pre34, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_.exit._RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit_crit_edge ], [ %i.g, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i ] ; 2 uses
  %i.x = icmp ugt i64 %i.w, 984                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink12.i = select i1 %i.x, ptr %i.aa, ptr %i.ab
  %.sink11.i = select i1 %i.x, ptr %i.y, ptr %i.f ; 4 uses
  %.sink.i = call i64 @llvm.umax.i64(i64 %i.w, i64 984) ; 3 uses
  %i.ac = load i64, ptr %.sink11.i, align 8, !noundef !5 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.sink.i
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit
  %storemerge.lcssa = phi i64 [ %i.ac, %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit ], [ %.sink.i, %bb.i ]
  store i64 %storemerge.lcssa, ptr %.sink11.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load <2 x ptr>, ptr %i.c, align 16
  store <2 x ptr> %i.ae, ptr %i.a, align 16
  %i.af = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.ag = extractvalue { i1, i8 } %i.af, 0
  br i1 %i.ag, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

.lr.ph:                                           ; preds = %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit, %bb.i
  %storemerge28 = phi i64 [ %i.bc, %bb.i ], [ %i.ac, %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit ] ; 4 uses
  %i.ak = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %.lr.ph30, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit
  %i.al = phi { i1, i8 } [ %i.af, %.lr.ph30 ], [ %i.ax, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit ]
  %i.am = extractvalue { i1, i8 } %i.al, 1
  %i.an = load i64, ptr %i.f, align 8, !alias.scope !20, !noalias !25, !noundef !5 ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 984
  br i1 %i.ao, label %bb.e, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.aj, align 8, !alias.scope !20, !noalias !25, !nonnull !5, !noundef !5
  %.pre36 = load i64, ptr %i.ai, align 8, !alias.scope !27
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12: ; preds = %bb.d, %bb.e
  %i.aq = phi i64 [ %.pre36, %bb.e ], [ %i.an, %bb.d ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.ah, %bb.d ]
  %.sink11.i.i13 = phi ptr [ %i.ai, %bb.e ], [ %i.f, %bb.d ]
  %.sink.i.i14 = phi i64 [ %i.an, %bb.e ], [ 984, %bb.d ]
  %i.ar = icmp eq i64 %i.aq, %.sink.i.i14
  br i1 %i.ar, label %bb.f, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit, !prof !13

bb.f:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12
  call fastcc void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE21reserve_one_uncheckedBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0)
  %i.as = load ptr, ptr %i.aj, align 8, !alias.scope !27, !nonnull !5, !noundef !5
  %.pre.i = load i64, ptr %i.ai, align 8, !alias.scope !27
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12, %bb.f
  %i.at = phi i64 [ %.pre.i, %bb.f ], [ %i.aq, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12 ]
  %.sroa.04.0.i = phi ptr [ %i.as, %bb.f ], [ %.sink12.i.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12 ]
  %.sroa.0.0.i15 = phi ptr [ %i.ai, %bb.f ], [ %.sink11.i.i13, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 %i.at
  store i8 %i.am, ptr %i.au, align 1
  %i.av = load i64, ptr %.sroa.0.0.i15, align 8, !alias.scope !27, !noundef !5
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %.sroa.0.0.i15, align 8, !alias.scope !27
  %i.ax = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.ay = extractvalue { i1, i8 } %i.ax, 0
  br i1 %i.ay, label %bb.d, label %._crit_edge31

._crit_edge31:                                    ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %._crit_edge31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %.lr.ph
  %i.az = extractvalue { i1, i8 } %i.ak, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = extractvalue { i1, i8 } %i.ak, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 %storemerge28
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add i64 %storemerge28, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.h
  store i64 %storemerge28, ptr %.sink11.i, align 8
  br label %bb.g

bb.k:                                             ; preds = %.lr.ph
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge28, ptr %.sink11.i, align 8
  resume { ptr, i32 } %i.bd
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !28, !noalias !31, !noundef !5 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 3 uses
  br i1 %i.d, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit.thread

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !28, !noalias !31, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit.thread, !prof !33

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i, !prof !13

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.m = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21, !noalias !34
  unreachable

bb.c:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = shl nuw nsw i64 %i.l, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit.i, label %bb.n, !prof !37

_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit.i
  %or.cond67.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond67.i, label %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit48.i, label %bb.n, !prof !37

bb.h:                                             ; preds = %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !34
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #22, !noalias !34 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.j

_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit48.i: ; preds = %bb.g
  %i.v = shl nuw nsw i64 %.sink.i.i, 3
  %i.w = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #22 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.j ], [ %i.w, %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit48.i ]
  %1 = ptrtoint ptr %.sroa.031.0.i to i64
  store i64 1, ptr %0, align 8, !alias.scope !34
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !34
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !34
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !34
  br label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit

bb.j:                                             ; preds = %bb.h
  %i.y = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !34
  %i.z = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !34
  %or.cond.i.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCs2efQY0w7vw4_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i, label %bb.l, !prof !37

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  store i64 0, ptr %i.a, align 8, !noalias !38
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !38
  unreachable

_RINvCs2efQY0w7vw4_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i: ; preds = %bb.k
  %i.aa = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #22
  br label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit

bb.m:                                             ; preds = %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #20
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable

_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit: ; preds = %_RINvCs2efQY0w7vw4_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit.thread, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6insertB1m_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !41, !noalias !44, !noundef !5 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.d, label %bb.b, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !41, !noalias !44, !nonnull !5, !noundef !5
  %.pre = load i64, ptr %i.e, align 8
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit

bb.c:                                             ; preds = %bb.i, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !46
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.m

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.sink12.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  %.sink11.i = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  %.sink.i = phi i64 [ %i.c, %bb.b ], [ 4, %bb.a ]
  %i.l = icmp eq i64 %i.k, %.sink.i
  br i1 %i.l, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit
  invoke void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.g unwind label %bb.c

bb.f:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit, %bb.g
  %i.m = phi i64 [ %.pre10, %bb.g ], [ %i.k, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit ] ; 4 uses
  %.sroa.07.0 = phi ptr [ %i.p, %bb.g ], [ %.sink12.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit ]
  %.sroa.04.0 = phi ptr [ %i.e, %bb.g ], [ %.sink11.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit ]
  %i.n = icmp ugt i64 %1, %i.m
  br i1 %i.n, label %bb.i, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %.pre10 = load i64, ptr %i.e, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.07.0, i64 %1 ; 3 uses
  %i.r = icmp ult i64 %1, %i.m
  br i1 %i.r, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20
          to label %bb.l unwind label %bb.c

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.s = add i64 %i.m, 1
  store i64 %i.s, ptr %.sroa.04.0, align 8
  %i.t = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  store ptr %i.t, ptr %i.q, align 8
  ret void

bb.k:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = sub nuw i64 %i.m, %1
  %i.w = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.q, i64 %i.w, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %1) unnamed_addr #0 {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !51, !noalias !54, !noundef !5 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 984
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 984)
  %.val = load i64, ptr %i.d, align 8
  %i.e = select i1 %i.c, i64 %.val, i64 %i.b      ; 3 uses
  %i.f = sub i64 %.sink.i, %i.e
  %.not = icmp ult i64 %i.f, %1
  br i1 %.not, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit
  %i.g = add i64 %i.e, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.g, 2
  %i.j = add i64 %i.g, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = lshr i64 -1, %i.k
  %.sroa.010.0 = select i1 %i.i, i64 0, i64 %i.l  ; 2 uses
  %i.m = icmp eq i64 %.sroa.010.0, -1
  br i1 %i.m, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i64 %.sroa.010.0, 1
  %i.o = tail call fastcc { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8try_growBP_(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %i.n) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit, %bb.c
  %.sroa.4.0 = phi i64 [ %i.q, %bb.c ], [ undef, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.p, %bb.c ], [ -1, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE13shrink_to_fitBP_(ptr noalias nofree noundef align 8 dereferenceable(1000) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 984
  br i1 %i.d, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit, label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !56, !noalias !59, !noundef !5 ; 5 uses
  %i.g = icmp ult i64 %i.f, 985
  br i1 %i.g, label %bb.b, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit11

_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.d, %_RINvCs2efQY0w7vw4_8smallvec10deallocatehECs2wCc12Mnjqg_5ropey.exit, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit11, %bb.a
  ret void

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit11: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %i.h = icmp ugt i64 %i.c, %i.f
  br i1 %i.h, label %bb.d, label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit

bb.b:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store i8 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.4.0..sroa_idx, ptr nonnull align 1 %i.j, i64 %i.f, i1 false)
  %i.k = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %_RINvCs2efQY0w7vw4_8smallvec10deallocatehECs2wCc12Mnjqg_5ropey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  store i64 0, ptr %i.a, align 8, !noalias !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !61
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !61
  unreachable

_RINvCs2efQY0w7vw4_8smallvec10deallocatehECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.k, i64 noundef 1) #22
  store i64 %i.f, ptr %i.b, align 8
  br label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit

bb.d:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit11
  %i.n = tail call fastcc { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8try_growBP_(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %i.f) ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 -1, label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit
    i64 0, label %bb.f
  ], !prof !4

bb.e:                                             ; preds = %bb.d
  %i.p = extractvalue { i64, i64 } %i.n, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.o, i64 noundef %i.p) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE17try_reserve_exactBP_(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %1) unnamed_addr #0 {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !64, !noalias !67, !noundef !5 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 984
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 984)
  %.val = load i64, ptr %i.d, align 8
  %i.e = select i1 %i.c, i64 %.val, i64 %i.b      ; 3 uses
  %i.f = sub i64 %.sink.i, %i.e
  %.not = icmp ult i64 %i.f, %1
  br i1 %.not, label %bb.a, label %bb.c

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit
  %i.g = add i64 %i.e, %1                         ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8try_growBP_(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %i.g) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit, %bb.b
  %.sroa.4.0 = phi i64 [ %i.k, %bb.b ], [ undef, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.j, %bb.b ], [ -1, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit ], [ 0, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE21reserve_one_uncheckedBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !69, !noalias !72, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 984
  br i1 %i.c, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !69, !noalias !72, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread, !prof !33

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8try_growBP_(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit
    i64 0, label %bb.d
  ], !prof !4

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable

_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8truncateBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1000) %0, i64 noundef %1) unnamed_addr #2 {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !74, !noalias !77, !noundef !5
  %i.c = icmp ugt i64 %i.b, 984
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink11.i = select i1 %i.c, ptr %i.d, ptr %i.a ; 2 uses
  %.sink11.i.promoted = load i64, ptr %.sink11.i, align 8
  %i.e = icmp ult i64 %1, %.sink11.i.promoted
  br i1 %i.e, label %.lr.ph.preheader, label %bb.a

.lr.ph.preheader:                                 ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit
  store i64 %1, ptr %.sink11.i, align 8
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph.preheader, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8try_growBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.d = icmp ult i64 %i.c, 985                   ; 2 uses
  %i.e = icmp ugt i64 %i.c, 984                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.i ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 984) ; 6 uses
  %.val = load i64, ptr %i.f, align 8
  %.val71 = load i64, ptr %i.b, align 8
  %i.j = select i1 %i.e, i64 %.val, i64 %.val71   ; 5 uses
  %.not = icmp ult i64 %1, %i.j
  br i1 %.not, label %bb.a, label %bb.b, !prof !13

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21
  unreachable

bb.b:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit
  %i.k = icmp ult i64 %1, 985
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %1, -1
  br i1 %i.l, label %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit, label %bb.l

_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit
  %i.m = icmp sgt i64 %.sink.i, -1
  br i1 %i.m, label %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit52, label %bb.l

bb.g:                                             ; preds = %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.n = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef 1) #22 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.l, label %bb.i

_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit52: ; preds = %bb.f
  %i.p = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %.sink.i, i64 noundef 1, i64 noundef %1) #22 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit52, %bb.i
  %.sroa.032.0 = phi ptr [ %i.n, %bb.i ], [ %i.p, %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit52 ]
  %2 = ptrtoint ptr %.sroa.032.0 to i64
  store i8 1, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.542.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.sink12.i, i64 %i.j, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i8 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.4.0..sroa_idx, ptr nonnull align 1 %.sink12.i, i64 %i.j, i1 false)
  store i64 %i.j, ptr %i.b, align 8
  %i.r = icmp sgt i64 %.sink.i, -1
  br i1 %i.r, label %_RINvCs2efQY0w7vw4_8smallvec10deallocatehECs2wCc12Mnjqg_5ropey.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79
  store i64 0, ptr %i.a, align 8, !noalias !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i, ptr %i.s, align 8, !noalias !79
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !79
  unreachable

_RINvCs2efQY0w7vw4_8smallvec10deallocatehECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %.sink.i, i64 noundef 1) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit52, %bb.g, %_RINvCs2efQY0w7vw4_8smallvec10deallocatehECs2wCc12Mnjqg_5ropey.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs2efQY0w7vw4_8smallvec10deallocatehECs2wCc12Mnjqg_5ropey.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %1, %bb.g ], [ undef, %bb.d ], [ %1, %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit52 ], [ %1, %bb.e ], [ %.sink.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs2efQY0w7vw4_8smallvec10deallocatehECs2wCc12Mnjqg_5ropey.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 1, %bb.g ], [ -1, %bb.d ], [ 1, %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayhECs2wCc12Mnjqg_5ropey.exit52 ], [ 0, %bb.e ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils24last_line_start_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %2 = ptrtoint ptr %0 to i64
  %.not.i66 = icmp samesign eq i64 %1, 0
  br i1 %.not.i66, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15.thread
  %.sroa.7.067 = phi ptr [ %.sroa.7.1, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15.thread ], [ %i.a, %.lr.ph.preheader ] ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %.sroa.7.067, i64 -1 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !noalias !82, !noundef !5
  switch i8 %i.c, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15.thread [
    i8 10, label %bb.d
    i8 13, label %bb.d
    i8 11, label %bb.d
    i8 12, label %bb.d
    i8 -123, label %bb.b
    i8 -88, label %bb.c
    i8 -87, label %bb.c
  ]

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15.thread: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit21, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit18, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15, %.lr.ph
  %.sroa.7.1 = phi ptr [ %i.b, %.lr.ph ], [ %i.d, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15 ], [ %i.k, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit21 ], [ %i.g, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit18 ] ; 2 uses
  %.not.i = icmp eq ptr %0, %.sroa.7.1
  br i1 %.not.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not.i13 = icmp eq ptr %0, %i.b
  br i1 %.not.i13, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15: ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %.sroa.7.067, i64 -2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !88, !noundef !5
  %i.f = icmp eq i8 %i.e, -62
  br i1 %i.f, label %bb.d, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15.thread

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %.not.i16 = icmp eq ptr %0, %i.b
  br i1 %.not.i16, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit18

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit18: ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %.sroa.7.067, i64 -2 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !noalias !94, !noundef !5
  %i.i = icmp ne i8 %i.h, -128
  %.not.i19 = icmp eq ptr %0, %i.g
  %or.cond = or i1 %.not.i19, %i.i
  br i1 %or.cond, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15.thread, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit21

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit21, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.j = ptrtoint ptr %i.b to i64
  %reass.sub = sub i64 %i.j, %2
  %.sroa.0.0 = add i64 %reass.sub, 1
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit21: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit18
  %i.k = getelementptr inbounds i8, ptr %.sroa.7.067, i64 -3 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !noalias !100, !noundef !5
  %i.m = icmp eq i8 %i.l, -30
  br i1 %i.m, label %bb.d, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15.thread

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.c, %bb.b, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15.thread, %bb.a, %bb.d
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.d ], [ 0, %bb.a ], [ 0, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey.exit15.thread ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils27byte_to_utf16_surrogate_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.063 = phi i64 [ %i.g, %bb.c ], [ %2, %bb.a ] ; 5 uses
  %.not = icmp ult i64 %.sroa.0.063, %1
  br i1 %.not, label %bb.b, label %.split52

.split52:                                         ; preds = %.lr.ph
  %i.c = icmp eq i64 %.sroa.0.063, %1
  br i1 %i.c, label %.split8, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.063
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = icmp sgt i8 %i.e, -65
  br i1 %i.f, label %.split8, label %bb.c

bb.c:                                             ; preds = %.split52, %bb.b
  %i.g = add i64 %.sroa.0.063, -1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph

.split8:                                          ; preds = %bb.b, %.split52
  %.sroa.0.062 = phi i64 [ %1, %.split52 ], [ %.sroa.0.063, %bb.b ] ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.062, 4
  br i1 %i.i, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.d

bb.d:                                             ; preds = %.split8
  %i.j = add nsw i64 %.sroa.0.062, -3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.j)
  %i.k = load ptr, ptr %i.a, align 8, !noalias !106, !nonnull !5, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !106, !noundef !5 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !106, !nonnull !5, !align !109, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noalias !106, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !106, !nonnull !5, !noundef !5 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noalias !106, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.w = icmp samesign eq i64 %i.m, 0
  br i1 %i.w, label %.preheader, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph66.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.preheader
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  %i.x = getelementptr i8, ptr %i.k, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi100 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1
  %wide.load101 = load <2 x i8>, ptr %i.y, align 1
  %i.z = icmp ugt <2 x i8> %wide.load, splat (i8 -17)
  %i.aa = icmp ugt <2 x i8> %wide.load101, splat (i8 -17)
  %i.ab = zext <2 x i1> %i.z to <2 x i64>
  %i.ac = zext <2 x i1> %i.aa to <2 x i64>
  %i.ad = add <2 x i64> %vec.phi, %i.ab           ; 2 uses
  %i.ae = add <2 x i64> %vec.phi100, %i.ac        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph66.preheader124

.lr.ph66.preheader124:                            ; preds = %.lr.ph66.preheader, %middle.block
  %.sroa.0.0.i65.ph = phi i64 [ 0, %.lr.ph66.preheader ], [ %i.ag, %middle.block ]
  %.sroa.04.0.i64.ph = phi ptr [ %i.k, %.lr.ph66.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph66

.preheader:                                       ; preds = %.lr.ph66, %middle.block, %bb.d
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.d ], [ %i.ag, %middle.block ], [ %i.am, %.lr.ph66 ] ; 2 uses
  %i.ah = icmp eq i64 %i.q, 0
  br i1 %i.ah, label %._crit_edge75, label %.lr.ph69.preheader

.lr.ph66:                                         ; preds = %.lr.ph66.preheader124, %.lr.ph66
  %.sroa.0.0.i65 = phi i64 [ %i.am, %.lr.ph66 ], [ %.sroa.0.0.i65.ph, %.lr.ph66.preheader124 ]
  %.sroa.04.0.i64 = phi ptr [ %i.ai, %.lr.ph66 ], [ %.sroa.04.0.i64.ph, %.lr.ph66.preheader124 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i64, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.sroa.04.0.i64, align 1, !noundef !5
  %i.ak = icmp ugt i8 %i.aj, -17
  %i.al = zext i1 %i.ak to i64
  %i.am = add i64 %.sroa.0.0.i65, %i.al           ; 2 uses
  %i.an = icmp eq ptr %i.ai, %i.v
  br i1 %i.an, label %.preheader, label %.lr.ph66, !llvm.loop !113

.lr.ph69.preheader:                               ; preds = %.preheader, %._crit_edge
  %.sroa.0.1.i73 = phi i64 [ %i.cs, %._crit_edge ], [ %.sroa.0.0.i.lcssa, %.preheader ]
  %.sroa.0.05172 = phi ptr [ %i.ao, %._crit_edge ], [ %i.o, %.preheader ] ; 4 uses
  %.sroa.5.071 = phi i64 [ %i.ap, %._crit_edge ], [ %i.q, %.preheader ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.071, i64 255) ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.05172, i64 %..i.i
  %i.ap = sub nuw nsw i64 %.sroa.5.071, %..i.i    ; 2 uses
  %.idx = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.05172, i64 %.idx
  %i.ar = add nsw i64 %.idx, -16                  ; 2 uses
  %i.as = lshr exact i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.as, 1
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol

.lr.ph69.prol:                                    ; preds = %.lr.ph69.preheader, %.lr.ph69.prol
  %.sroa.016.0.i68.prol = phi ptr [ %i.av, %.lr.ph69.prol ], [ %.sroa.0.05172, %.lr.ph69.preheader ] ; 2 uses
  %i.au = phi <16 x i8> [ %i.az, %.lr.ph69.prol ], [ zeroinitializer, %.lr.ph69.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph69.prol ], [ 0, %.lr.ph69.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68.prol, i64 16 ; 2 uses
  %i.aw = load <16 x i8>, ptr %.sroa.016.0.i68.prol, align 16, !alias.scope !114, !noalias !117
  %i.ax = icmp ugt <16 x i8> %i.aw, splat (i8 -17)
  %i.ay = zext <16 x i1> %i.ax to <16 x i8>
  %i.az = add <16 x i8> %i.au, %i.ay              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol, !llvm.loop !120

.lr.ph69.prol.loopexit:                           ; preds = %.lr.ph69.prol, %.lr.ph69.preheader
  %.lcssa122.unr = phi <16 x i8> [ poison, %.lr.ph69.preheader ], [ %i.az, %.lr.ph69.prol ]
  %.sroa.016.0.i68.unr = phi ptr [ %.sroa.0.05172, %.lr.ph69.preheader ], [ %i.av, %.lr.ph69.prol ]
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph69.preheader ], [ %i.az, %.lr.ph69.prol ]
  %i.ba = icmp ult i64 %i.ar, 48
  br i1 %i.ba, label %._crit_edge, label %.lr.ph69

._crit_edge75:                                    ; preds = %._crit_edge, %.preheader
  %.sroa.0.1.i.lcssa = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader ], [ %i.cs, %._crit_edge ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.bc = icmp samesign eq i64 %i.u, 0
  br i1 %i.bc, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %._crit_edge75
  %min.iters.check103 = icmp ult i64 %i.u, 4
  br i1 %min.iters.check103, label %.lr.ph80.preheader119, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph80.preheader
  %n.vec105 = and i64 %i.u, -4                    ; 3 uses
  %i.bd = getelementptr i8, ptr %i.s, i64 %n.vec105
  %i.be = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.1.i.lcssa, i64 0
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next113, %vector.body106 ] ; 2 uses
  %vec.phi108 = phi <2 x i64> [ %i.be, %vector.ph104 ], [ %i.bk, %vector.body106 ]
  %vec.phi109 = phi <2 x i64> [ zeroinitializer, %vector.ph104 ], [ %i.bl, %vector.body106 ]
  %next.gep110 = getelementptr i8, ptr %i.s, i64 %index107 ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep110, i64 2
  %wide.load111 = load <2 x i8>, ptr %next.gep110, align 1
  %wide.load112 = load <2 x i8>, ptr %i.bf, align 1
  %i.bg = icmp ugt <2 x i8> %wide.load111, splat (i8 -17)
  %i.bh = icmp ugt <2 x i8> %wide.load112, splat (i8 -17)
  %i.bi = zext <2 x i1> %i.bg to <2 x i64>
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = add <2 x i64> %vec.phi108, %i.bi        ; 2 uses
  %i.bl = add <2 x i64> %vec.phi109, %i.bj        ; 2 uses
  %index.next113 = add nuw i64 %index107, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next113, %n.vec105
  br i1 %i.bm, label %middle.block114, label %vector.body106, !llvm.loop !122

middle.block114:                                  ; preds = %vector.body106
  %bin.rdx115 = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx115) ; 2 uses
  %cmp.n116 = icmp eq i64 %i.u, %n.vec105
  br i1 %cmp.n116, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph80.preheader119

.lr.ph80.preheader119:                            ; preds = %.lr.ph80.preheader, %middle.block114
  %.sroa.0.2.i78.ph = phi i64 [ %.sroa.0.1.i.lcssa, %.lr.ph80.preheader ], [ %i.bn, %middle.block114 ]
  %.sroa.012.0.i77.ph = phi ptr [ %i.s, %.lr.ph80.preheader ], [ %i.bd, %middle.block114 ]
end_hunk_0
begin_hunk_1_@_RNvNtCs2wCc12Mnjqg_5ropey9str_utils27utf16_code_unit_to_char_idx:bb.a
  %i.ao = phi <16 x i8> [ %i.bc, %.lr.ph159 ], [ %.unr, %.lr.ph159.prol.loopexit ]
  %i.ap = phi <16 x i8> [ %i.bf, %.lr.ph159 ], [ %.unr289, %.lr.ph159.prol.loopexit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.037.0.i157, i64 16
  %i.ar = load <16 x i8>, ptr %.sroa.037.0.i157, align 16, !alias.scope !127, !noalias !130 ; 2 uses
  %i.as = icmp slt <16 x i8> %i.ar, splat (i8 -64)
  %i.at = zext <16 x i1> %i.as to <16 x i8>
  %i.au = add <16 x i8> %i.ao, %i.at
  %i.av = icmp ugt <16 x i8> %i.ar, splat (i8 -17)
  %i.aw = zext <16 x i1> %i.av to <16 x i8>
  %i.ax = add <16 x i8> %i.ap, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.037.0.i157, i64 32 ; 2 uses
  %i.az = load <16 x i8>, ptr %i.aq, align 16, !alias.scope !127, !noalias !130 ; 2 uses
  %i.ba = icmp slt <16 x i8> %i.az, splat (i8 -64)
  %i.bb = zext <16 x i1> %i.ba to <16 x i8>
  %i.bc = add <16 x i8> %i.au, %i.bb              ; 2 uses
  %i.bd = icmp ugt <16 x i8> %i.az, splat (i8 -17)
  %i.be = zext <16 x i1> %i.bd to <16 x i8>
  %i.bf = add <16 x i8> %i.ax, %i.be              ; 2 uses
  %i.bg = icmp eq ptr %i.ay, %i.ae
  br i1 %i.bg, label %._crit_edge160, label %.lr.ph159

._crit_edge160:                                   ; preds = %.lr.ph159, %.lr.ph159.prol.loopexit
  %.lcssa283 = phi <16 x i8> [ %.lcssa283.unr, %.lr.ph159.prol.loopexit ], [ %i.bc, %.lr.ph159 ]
  %.lcssa282 = phi <16 x i8> [ %.lcssa282.unr, %.lr.ph159.prol.loopexit ], [ %i.bf, %.lr.ph159 ]
  %i.bh = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa283, <16 x i8> zeroinitializer)
  %i.bi = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa282, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i3 = extractelement <2 x i64> %i.bi, i64 0
  %.sroa.0.8.vec.extract.i4 = extractelement <2 x i64> %i.bi, i64 1
  %i.bj = add i64 %.idx, %.sroa.06.2.i168
  %i.bk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.bh)
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = add i64 %i.bl, %.sroa.0.8.vec.extract.i4
  %i.bn = add i64 %i.bm, %.sroa.0.0.vec.extract.i3 ; 2 uses
  %i.bo = add i64 %.idx, %.sroa.0.1.i169          ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  %i.bp = icmp eq i64 %i.ad, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.bp
  br i1 %or.cond.i, label %._crit_edge172, label %.lr.ph171

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %bb.c
  %.sroa.0.2.i179 = phi i64 [ %i.cc, %bb.c ], [ %.sroa.0.1.i.lcssa, %.lr.ph181.preheader ] ; 2 uses
  %.sroa.06.3.i178 = phi i64 [ %i.ca, %bb.c ], [ %.sroa.06.2.i.lcssa, %.lr.ph181.preheader ] ; 2 uses
  %.sroa.040.0.i177 = phi ptr [ %i.cb, %bb.c ], [ %.sroa.018.0.i.lcssa, %.lr.ph181.preheader ] ; 2 uses
  %i.bq = load <16 x i8>, ptr %.sroa.040.0.i177, align 16, !alias.scope !133, !noalias !136 ; 2 uses
  %i.br = icmp slt <16 x i8> %i.bq, splat (i8 -64)
  %i.bs = zext <16 x i1> %i.br to <16 x i8>
  %i.bt = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bs, <16 x i8> zeroinitializer)
  %i.bu = icmp ugt <16 x i8> %i.bq, splat (i8 -17)
  %i.bv = zext <16 x i1> %i.bu to <16 x i8>
  %i.bw = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bv, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.bw, i64 0
  %.sroa.0.8.vec.extract.i = extractelement <2 x i64> %i.bw, i64 1
  %.neg140 = add i64 %.sroa.06.3.i178, 16
  %i.bx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.bt)
  %i.by = sub i64 %.neg140, %i.bx
  %i.bz = add i64 %i.by, %.sroa.0.8.vec.extract.i
  %i.ca = add i64 %i.bz, %.sroa.0.0.vec.extract.i ; 3 uses
  %.not50.i = icmp ult i64 %i.ca, %2
  br i1 %.not50.i, label %bb.c, label %._crit_edge182

bb.c:                                             ; preds = %.lr.ph181
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i177, i64 16 ; 2 uses
  %i.cc = add i64 %.sroa.0.2.i179, 16
  %i.cd = icmp eq ptr %i.cb, %i.z
  br i1 %i.cd, label %._crit_edge182, label %.lr.ph181

._crit_edge182:                                   ; preds = %bb.c, %.lr.ph181, %._crit_edge172
  %.sroa.06.3.i.lcssa = phi i64 [ %.sroa.06.2.i.lcssa, %._crit_edge172 ], [ %.sroa.06.3.i178, %.lr.ph181 ], [ %i.ca, %bb.c ]
  %.sroa.0.2.i.lcssa = phi i64 [ %.sroa.0.1.i.lcssa, %._crit_edge172 ], [ %.sroa.0.2.i179, %.lr.ph181 ], [ %i.ab, %bb.c ] ; 5 uses
  %i.ce = icmp ugt i64 %.sroa.0.2.i.lcssa, %1
  br i1 %i.ce, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %._crit_edge182
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.cg = icmp samesign eq i64 %.sroa.0.2.i.lcssa, %1
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.2.i.lcssa
  br label %.lr.ph192

bb.e:                                             ; preds = %._crit_edge182
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.2.i.lcssa, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
  unreachable

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %bb.f
  %.sroa.0.3.i190 = phi i64 [ %i.cr, %bb.f ], [ %.sroa.0.2.i.lcssa, %.lr.ph192.preheader ] ; 4 uses
  %.sroa.06.4.i189 = phi i64 [ %i.co, %bb.f ], [ %.sroa.06.3.i.lcssa, %.lr.ph192.preheader ]
  %.sroa.033.0.i188 = phi ptr [ %i.cq, %bb.f ], [ %i.ch, %.lr.ph192.preheader ] ; 2 uses
  %i.ci = load i8, ptr %.sroa.033.0.i188, align 1, !alias.scope !124, !noundef !5 ; 2 uses
  %i.cj = icmp sgt i8 %i.ci, -65
  %i.ck = zext i1 %i.cj to i64
  %i.cl = icmp ugt i8 %i.ci, -17
  %i.cm = zext i1 %i.cl to i64
  %i.cn = add i64 %.sroa.06.4.i189, %i.cm
  %i.co = add i64 %i.cn, %i.ck                    ; 2 uses
  %i.cp = icmp ugt i64 %i.co, %2
  br i1 %i.cp, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph192
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i188, i64 1 ; 2 uses
  %i.cr = add i64 %.sroa.0.3.i190, 1
  %i.cs = icmp eq ptr %i.cq, %i.cf
  br i1 %i.cs, label %._crit_edge.i, label %.lr.ph192

_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.ct = icmp ult i64 %.sroa.0.3.i190, %1
  br i1 %i.ct, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.g
  %.sroa.0.0184.i = phi i64 [ %i.cx, %bb.g ], [ %.sroa.0.3.i190, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0184.i
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !139, !noundef !5
  %i.cw = icmp slt i8 %i.cv, -64
  br i1 %i.cw, label %bb.g, label %._crit_edge.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.cx = add i64 %.sroa.0.0184.i, -1             ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %1
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.g, %.lr.ph.i, %bb.d, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.3.i190, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ %1, %bb.d ], [ %.sroa.0.0184.i, %.lr.ph.i ], [ %i.cx, %bb.g ], [ %1, %bb.f ]
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %.sroa.0.0.lcssa.i) ; 7 uses
  %i.cz = icmp samesign ult i64 %..i.i, 16
  br i1 %i.cz, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %..i.i)
  %i.da = load ptr, ptr %i.a, align 8, !noalias !142, !nonnull !5, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !noalias !142, !noundef !5 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !142, !nonnull !5, !align !109, !noundef !5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !noalias !142, !noundef !5 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !142, !nonnull !5, !noundef !5 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !142, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !142
  %i.dl = icmp samesign eq i64 %i.dc, 0
  br i1 %i.dl, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.dc, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader276, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.preheader
  %n.vec = and i64 %i.dc, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ds, %vector.body ]
  %vec.phi248 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dt, %vector.body ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %wide.load = load <2 x i8>, ptr %i.dm, align 1, !alias.scope !145
  %wide.load249 = load <2 x i8>, ptr %i.dn, align 1, !alias.scope !145
  %i.do = icmp slt <2 x i8> %wide.load, splat (i8 -64)
  %i.dp = icmp slt <2 x i8> %wide.load249, splat (i8 -64)
  %i.dq = zext <2 x i1> %i.do to <2 x i64>
  %i.dr = zext <2 x i1> %i.dp to <2 x i64>
  %i.ds = add <2 x i64> %vec.phi, %i.dq           ; 2 uses
  %i.dt = add <2 x i64> %vec.phi248, %i.dr        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i.i.preheader276

.preheader.i.i.preheader276:                      ; preds = %.preheader.i.i.preheader, %middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.dv, %middle.block ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader276, %.preheader.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ea, %.preheader.i.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.i.preheader276 ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.dz, %.preheader.i.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.i.preheader276 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i8, ptr %i.dw, align 1, !alias.scope !145, !noundef !5
  %i.dx = icmp slt i8 %.val.i.i.i, -64
  %i.dy = zext i1 %i.dx to i64
  %i.dz = add i64 %.sroa.02.0.i.i.i, %i.dy        ; 2 uses
  %i.ea = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.eb = icmp eq i64 %i.ea, %i.dc
  br i1 %i.eb, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i.i, !llvm.loop !149

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i: ; preds = %.preheader.i.i, %middle.block, %bb.h
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.h ], [ %i.dv, %middle.block ], [ %i.dz, %.preheader.i.i ] ; 3 uses
  %i.ec = icmp ule i64 %.sroa.0.0.i.i.i, %i.dc
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = and i64 %i.dg, 576460752303423484       ; 3 uses
  %3 = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.ed ; 3 uses
  %.not.i187.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i187.i, label %._crit_edge192.i, label %.lr.ph191.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ee = icmp samesign eq i64 %..i.i, 0
  br i1 %i.ee, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.i
  %xtraiter293 = and i64 %..i.i, 3                ; 3 uses
  %i.ef = icmp ult i64 %..i.i, 4
  br i1 %i.ef, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %..i.i, 12
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ez, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ey, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.eg, align 1, !alias.scope !139, !noundef !5
  %i.eh = icmp sgt i8 %.val.i.i, -65
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add i64 %.sroa.02.0.i.i, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %.val.i.i.1 = load i8, ptr %i.el, align 1, !alias.scope !139, !noundef !5
  %i.em = icmp sgt i8 %.val.i.i.1, -65
  %i.en = zext i1 %i.em to i64
  %i.eo = add i64 %i.ej, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %.val.i.i.2 = load i8, ptr %i.eq, align 1, !alias.scope !139, !noundef !5
  %i.er = icmp sgt i8 %.val.i.i.2, -65
  %i.es = zext i1 %i.er to i64
  %i.et = add i64 %i.eo, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 3
  %.val.i.i.3 = load i8, ptr %i.ev, align 1, !alias.scope !139, !noundef !5
  %i.ew = icmp sgt i8 %.val.i.i.3, -65
  %i.ex = zext i1 %i.ew to i64
  %i.ey = add i64 %i.et, %i.ex                    ; 3 uses
  %i.ez = add nuw nsw i64 %.sroa.04.0.i.i, 4      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa, label %.preheader.i

._crit_edge192.i:                                 ; preds = %.lr.ph191.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i
  %.sroa.01.0.i.lcssa.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ], [ %i.ic, %.lr.ph191.i ]
  %i.fa = shl i64 %i.dg, 4
  %.idx.i = and i64 %i.fa, 48                     ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i
  %i.fc = icmp samesign eq i64 %.idx.i, 0
  br i1 %i.fc, label %._crit_edge197.i, label %.lr.ph196.i.preheader

.lr.ph196.i.preheader:                            ; preds = %._crit_edge192.i
  %i.fd = add nsw i64 %.idx.i, -16                ; 2 uses
  %i.fe = lshr exact i64 %i.fd, 4
  %i.ff = add nuw nsw i64 %i.fe, 1
  %xtraiter290 = and i64 %i.ff, 3                 ; 2 uses
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %.lr.ph196.i.prol.loopexit, label %.lr.ph196.i.prol

.lr.ph196.i.prol:                                 ; preds = %.lr.ph196.i.preheader, %.lr.ph196.i.prol
  %.sroa.012.0.i194.i.prol = phi ptr [ %i.fh, %.lr.ph196.i.prol ], [ %3, %.lr.ph196.i.preheader ] ; 2 uses
  %i.fg = phi <16 x i8> [ %i.fl, %.lr.ph196.i.prol ], [ zeroinitializer, %.lr.ph196.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph196.i.prol ], [ 0, %.lr.ph196.i.preheader ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.prol, i64 16 ; 2 uses
  %i.fi = load <16 x i8>, ptr %.sroa.012.0.i194.i.prol, align 16
  %i.fj = icmp slt <16 x i8> %i.fi, splat (i8 -64)
  %i.fk = zext <16 x i1> %i.fj to <16 x i8>
  %i.fl = add <16 x i8> %i.fg, %i.fk              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter290
  br i1 %prol.iter.cmp.not, label %.lr.ph196.i.prol.loopexit, label %.lr.ph196.i.prol, !llvm.loop !150

.lr.ph196.i.prol.loopexit:                        ; preds = %.lr.ph196.i.prol, %.lr.ph196.i.preheader
  %.lcssa274.unr = phi <16 x i8> [ poison, %.lr.ph196.i.preheader ], [ %i.fl, %.lr.ph196.i.prol ]
  %.sroa.012.0.i194.i.unr = phi ptr [ %3, %.lr.ph196.i.preheader ], [ %i.fh, %.lr.ph196.i.prol ]
  %.unr292 = phi <16 x i8> [ zeroinitializer, %.lr.ph196.i.preheader ], [ %i.fl, %.lr.ph196.i.prol ]
  %i.fm = icmp ult i64 %i.fd, 48
  br i1 %i.fm, label %._crit_edge197.i, label %.lr.ph196.i

.lr.ph196.i:                                      ; preds = %.lr.ph196.i.prol.loopexit, %.lr.ph196.i
  %.sroa.012.0.i194.i = phi ptr [ %i.gd, %.lr.ph196.i ], [ %.sroa.012.0.i194.i.unr, %.lr.ph196.i.prol.loopexit ] ; 5 uses
  %i.fn = phi <16 x i8> [ %i.gh, %.lr.ph196.i ], [ %.unr292, %.lr.ph196.i.prol.loopexit ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i, i64 16
  %i.fp = load <16 x i8>, ptr %.sroa.012.0.i194.i, align 16
  %i.fq = icmp slt <16 x i8> %i.fp, splat (i8 -64)
  %i.fr = zext <16 x i1> %i.fq to <16 x i8>
  %i.fs = add <16 x i8> %i.fn, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i, i64 32
  %i.fu = load <16 x i8>, ptr %i.fo, align 16
  %i.fv = icmp slt <16 x i8> %i.fu, splat (i8 -64)
  %i.fw = zext <16 x i1> %i.fv to <16 x i8>
  %i.fx = add <16 x i8> %i.fs, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i, i64 48
  %i.fz = load <16 x i8>, ptr %i.ft, align 16
  %i.ga = icmp slt <16 x i8> %i.fz, splat (i8 -64)
  %i.gb = zext <16 x i1> %i.ga to <16 x i8>
  %i.gc = add <16 x i8> %i.fx, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i, i64 64 ; 2 uses
  %i.ge = load <16 x i8>, ptr %i.fy, align 16
  %i.gf = icmp slt <16 x i8> %i.ge, splat (i8 -64)
  %i.gg = zext <16 x i1> %i.gf to <16 x i8>
  %i.gh = add <16 x i8> %i.gc, %i.gg              ; 2 uses
  %i.gi = icmp eq ptr %i.gd, %i.fb
  br i1 %i.gi, label %._crit_edge197.i, label %.lr.ph196.i

._crit_edge197.i:                                 ; preds = %.lr.ph196.i.prol.loopexit, %.lr.ph196.i, %._crit_edge192.i
  %.lcssa182.i = phi <16 x i8> [ zeroinitializer, %._crit_edge192.i ], [ %.lcssa274.unr, %.lr.ph196.i.prol.loopexit ], [ %i.gh, %.lr.ph196.i ]
  %i.gj = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa182.i, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x i64> %i.gj, i64 0
  %.sroa.0.8.vec.extract.i.i = extractelement <2 x i64> %i.gj, i64 1
  %i.gk = icmp samesign eq i64 %i.dk, 0
  br i1 %i.gk, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i50.i.preheader

.preheader.i50.i.preheader:                       ; preds = %._crit_edge197.i
  %min.iters.check251 = icmp ult i64 %i.dk, 4
  br i1 %min.iters.check251, label %.preheader.i50.i.preheader270, label %vector.ph252

vector.ph252:                                     ; preds = %.preheader.i50.i.preheader
  %n.vec253 = and i64 %i.dk, -4                   ; 3 uses
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %vec.phi256 = phi <2 x i64> [ zeroinitializer, %vector.ph252 ], [ %i.gr, %vector.body254 ]
  %vec.phi257 = phi <2 x i64> [ zeroinitializer, %vector.ph252 ], [ %i.gs, %vector.body254 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.di, i64 %index255 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %wide.load258 = load <2 x i8>, ptr %i.gl, align 1, !alias.scope !151
  %wide.load259 = load <2 x i8>, ptr %i.gm, align 1, !alias.scope !151
  %i.gn = icmp slt <2 x i8> %wide.load258, splat (i8 -64)
  %i.go = icmp slt <2 x i8> %wide.load259, splat (i8 -64)
  %i.gp = zext <2 x i1> %i.gn to <2 x i64>
  %i.gq = zext <2 x i1> %i.go to <2 x i64>
  %i.gr = add <2 x i64> %vec.phi256, %i.gp        ; 2 uses
  %i.gs = add <2 x i64> %vec.phi257, %i.gq        ; 2 uses
  %index.next260 = add nuw i64 %index255, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.gt, label %middle.block261, label %vector.body254, !llvm.loop !154

middle.block261:                                  ; preds = %vector.body254
  %bin.rdx262 = add <2 x i64> %i.gs, %i.gr
  %i.gu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %i.dk, %n.vec253
  br i1 %cmp.n263, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i50.i.preheader270

.preheader.i50.i.preheader270:                    ; preds = %.preheader.i50.i.preheader, %middle.block261
  %.sroa.04.0.i.i51.i.ph = phi i64 [ 0, %.preheader.i50.i.preheader ], [ %n.vec253, %middle.block261 ]
  %.sroa.02.0.i.i52.i.ph = phi i64 [ 0, %.preheader.i50.i.preheader ], [ %i.gu, %middle.block261 ]
  br label %.preheader.i50.i

.preheader.i50.i:                                 ; preds = %.preheader.i50.i.preheader270, %.preheader.i50.i
  %.sroa.04.0.i.i51.i = phi i64 [ %i.gz, %.preheader.i50.i ], [ %.sroa.04.0.i.i51.i.ph, %.preheader.i50.i.preheader270 ] ; 2 uses
  %.sroa.02.0.i.i52.i = phi i64 [ %i.gy, %.preheader.i50.i ], [ %.sroa.02.0.i.i52.i.ph, %.preheader.i50.i.preheader270 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i.i51.i
  %.val.i.i53.i = load i8, ptr %i.gv, align 1, !alias.scope !151, !noundef !5
  %i.gw = icmp slt i8 %.val.i.i53.i, -64
  %i.gx = zext i1 %i.gw to i64
  %i.gy = add i64 %.sroa.02.0.i.i52.i, %i.gx      ; 2 uses
  %i.gz = add nuw i64 %.sroa.04.0.i.i51.i, 1      ; 2 uses
  %i.ha = icmp eq i64 %i.gz, %i.dk
  br i1 %i.ha, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i50.i, !llvm.loop !155

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i: ; preds = %.preheader.i50.i, %middle.block261, %._crit_edge197.i
  %.sroa.0.0.i.i54.i = phi i64 [ 0, %._crit_edge197.i ], [ %i.gu, %middle.block261 ], [ %i.gy, %.preheader.i50.i ] ; 2 uses
  %i.hb = icmp ule i64 %.sroa.0.0.i.i54.i, %i.dk
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = add i64 %.sroa.01.0.i.lcssa.i, %.sroa.0.8.vec.extract.i.i
  %i.hd = add i64 %i.hc, %.sroa.0.0.vec.extract.i.i
  %i.he = add i64 %i.hd, %.sroa.0.0.i.i54.i
  %i.hf = sub i64 %..i.i, %i.he
  br label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit

.lr.ph191.i:                                      ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, %.lr.ph191.i
  %.sroa.01.0.i190.i = phi i64 [ %i.ic, %.lr.ph191.i ], [ %.sroa.0.0.i.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ]
  %.sroa.06.0.i189.i = phi ptr [ %i.hg, %.lr.ph191.i ], [ %i.de, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ] ; 5 uses
  %.sroa.5.0.i188.i = phi i64 [ %i.hh, %.lr.ph191.i ], [ %i.ed, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i, i64 64
  %i.hh = add i64 %.sroa.5.0.i188.i, -4           ; 2 uses
  %i.hi = load <16 x i8>, ptr %.sroa.06.0.i189.i, align 16
  %i.hj = icmp slt <16 x i8> %i.hi, splat (i8 -64)
  %i.hk = zext <16 x i1> %i.hj to <16 x i8>
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i, i64 16
  %i.hm = load <16 x i8>, ptr %i.hl, align 16
  %i.hn = icmp slt <16 x i8> %i.hm, splat (i8 -64)
  %i.ho = zext <16 x i1> %i.hn to <16 x i8>
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i, i64 32
  %i.hq = load <16 x i8>, ptr %i.hp, align 16
  %i.hr = icmp slt <16 x i8> %i.hq, splat (i8 -64)
  %i.hs = zext <16 x i1> %i.hr to <16 x i8>
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i, i64 48
  %i.hu = load <16 x i8>, ptr %i.ht, align 16
  %i.hv = icmp slt <16 x i8> %i.hu, splat (i8 -64)
  %i.hw = zext <16 x i1> %i.hv to <16 x i8>
  %i.hx = add nuw nsw <16 x i8> %i.ho, %i.hk
  %i.hy = add nuw nsw <16 x i8> %i.hx, %i.hs
  %i.hz = add nuw nsw <16 x i8> %i.hy, %i.hw
  %i.ia = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.hz, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i6.i = extractelement <2 x i64> %i.ia, i64 0
  %.sroa.0.8.vec.extract.i7.i = extractelement <2 x i64> %i.ia, i64 1
  %i.ib = add i64 %.sroa.0.8.vec.extract.i7.i, %.sroa.01.0.i190.i
  %i.ic = add i64 %i.ib, %.sroa.0.0.vec.extract.i6.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i, label %._crit_edge192.i, label %.lr.ph191.i

_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ez, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ey, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa ]
  %lcmp.mod296 = icmp ne i64 %xtraiter293, 0
  tail call void @llvm.assume(i1 %lcmp.mod296)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.ih, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.ig, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i.epil
  %.val.i.i.epil = load i8, ptr %i.id, align 1, !alias.scope !139, !noundef !5
  %i.ie = icmp sgt i8 %.val.i.i.epil, -65
  %i.if = zext i1 %i.ie to i64
  %i.ig = add i64 %.sroa.02.0.i.i.epil, %i.if     ; 2 uses
  %i.ih = add nuw nsw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter293
  br i1 %epil.iter.cmp.not, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit, label %.preheader.i.epil, !llvm.loop !156

_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit: ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i
  %.sroa.0.0.i.i = phi i64 [ %i.hf, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ], [ 0, %bb.i ], [ %i.ey, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa ], [ %i.ig, %.preheader.i.epil ]
  ret i64 %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_Cs2efQY0w7vw4_8smallvecNtB5_18CollectionAllocErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !157, !noundef !5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
end_hunk_1
