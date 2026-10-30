Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.4?download=true
inline.NumInlined: 208
inline.NumDeleted: 71
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXss_Cs2efQY0w7vw4_8smallvecINtB6_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendhE6extendINtNtNtB1R_8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterhEEEBQ_:_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i

bb.d:                                             ; preds = %.lr.ph30, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit
  %i.al = phi { i1, i8 } [ %i.af, %.lr.ph30 ], [ %i.ax, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit ]
  %i.am = extractvalue { i1, i8 } %i.al, 1
  %i.an = load i64, ptr %i.f, align 8, !alias.scope !25, !noundef !5 ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 984
  br i1 %i.ao, label %bb.e, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.aj, align 8, !alias.scope !25, !nonnull !5, !noundef !5
  %.pre36 = load i64, ptr %i.ai, align 8, !alias.scope !26
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12: ; preds = %bb.d, %bb.e
  %i.aq = phi i64 [ %.pre36, %bb.e ], [ %i.an, %bb.d ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.ah, %bb.d ]
  %.sink11.i.i13 = phi ptr [ %i.ai, %bb.e ], [ %i.f, %bb.d ]
  %.sink.i.i14 = phi i64 [ %i.an, %bb.e ], [ 984, %bb.d ]
  %i.ar = icmp eq i64 %i.aq, %.sink.i.i14
  br i1 %i.ar, label %bb.f, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit, !prof !6

bb.f:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12
  call fastcc void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE21reserve_one_uncheckedBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0)
  %i.as = load ptr, ptr %i.aj, align 8, !alias.scope !26, !nonnull !5, !noundef !5
  %.pre.i = load i64, ptr %i.ai, align 8, !alias.scope !26
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_.exit: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12, %bb.f
  %i.at = phi i64 [ %.pre.i, %bb.f ], [ %i.aq, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12 ]
  %.sroa.04.0.i = phi ptr [ %i.as, %bb.f ], [ %.sink12.i.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12 ]
  %.sroa.0.0.i15 = phi ptr [ %i.ai, %bb.f ], [ %.sink11.i.i13, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i12 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 %i.at
  store i8 %i.am, ptr %i.au, align 1
  %i.av = load i64, ptr %.sroa.0.0.i15, align 8, !alias.scope !26, !noundef !5
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %.sroa.0.0.i15, align 8, !alias.scope !26
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
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !33, !noundef !5 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 3 uses
  br i1 %i.d, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit.thread

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !33, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit.thread, !prof !7

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i, !prof !6

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
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !6

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
  br i1 %or.cond.i, label %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit.i, label %bb.n, !prof !35

_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit.i
  %or.cond67.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond67.i, label %_RINvCs2efQY0w7vw4_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1h_.exit48.i, label %bb.n, !prof !35

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
  store i64 1, ptr %0, align 8, !alias.scope !34
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !34
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !34
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
  br i1 %or.cond.i.i, label %_RINvCs2efQY0w7vw4_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i, label %bb.l, !prof !35

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store i64 0, ptr %i.a, align 8, !noalias !36
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !36
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
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !43, !noundef !5 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.d, label %bb.b, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !43, !nonnull !5, !noundef !5
  %.pre = load i64, ptr %i.e, align 8
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit

bb.c:                                             ; preds = %bb.i, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !44
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
  br i1 %i.l, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit
  invoke void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.g unwind label %bb.c

bb.f:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit, %bb.g
  %i.m = phi i64 [ %.pre10, %bb.g ], [ %i.k, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit ] ; 4 uses
  %.sroa.07.0 = phi ptr [ %i.p, %bb.g ], [ %.sink12.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit ]
  %.sroa.04.0 = phi ptr [ %i.e, %bb.g ], [ %.sink11.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit ]
  %i.n = icmp ugt i64 %1, %i.m
  br i1 %i.n, label %bb.i, label %bb.h, !prof !6

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
  %3 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  store ptr %3, ptr %i.q, align 8
  ret void

bb.k:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = sub nuw i64 %i.m, %1
  %i.v = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.q, i64 %i.v, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
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
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !47, !noundef !5 ; 3 uses
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
  br i1 %i.h, label %bb.d, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.g, 2
  %i.j = add i64 %i.g, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = lshr i64 -1, %i.k
  %.sroa.010.0 = select i1 %i.i, i64 0, i64 %i.l  ; 2 uses
  %i.m = icmp eq i64 %.sroa.010.0, -1
  br i1 %i.m, label %bb.d, label %bb.c, !prof !6

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
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !52, !noundef !5 ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53
  store i64 0, ptr %i.a, align 8, !noalias !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !53
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !53
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
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !56, !noundef !5 ; 3 uses
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
  br i1 %i.h, label %bb.c, label %bb.b, !prof !6

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
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !59, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 984
  br i1 %i.c, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !59, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread, !prof !7

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !6

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
end_hunk_0
