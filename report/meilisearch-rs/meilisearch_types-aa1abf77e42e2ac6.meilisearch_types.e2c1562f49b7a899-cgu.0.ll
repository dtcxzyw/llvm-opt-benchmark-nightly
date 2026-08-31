Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26c013d7f6254ff4E":bb.a
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !43455, !nonnull !26, !noundef !26
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43460, !noalias !43455
  %.not.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not.i, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h82e78e83174be0daE.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h486922951907645bE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !26 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !26
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !26  ; 4 uses
  %.not.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %1, align 8, !alias.scope !43464, !noalias !43469, !noundef !26 ; 2 uses
  %.not.i.i = icmp ne ptr %i.g, null              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !43473, !noalias !43474
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %i.i, i64 undef
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = icmp eq i64 %i.b, 0
  %i.l = or i1 %.not.not, %i.k
  br i1 %i.l, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit, label %bb.c

_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit: ; preds = %bb.u, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit", %.loopexit, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", %bb.p, %bb.r, %bb.s, %.split.i.i.i.i, %.split.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i", %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.lr.ph.i ], [ false, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i" ], [ false, %bb.p ], [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ false, %bb.r ], [ false, %.loopexit ], [ false, %bb.s ], [ false, %.split.i ], [ false, %.split.i.i.i.i ], [ true, %bb.u ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i" ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 5 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol

.lr.ph.i.i89.prol:                                ; preds = %.lr.ph.i.i89.preheader, %.lr.ph.i.i89.prol
  %.sroa.012.015.i.i90.prol = phi ptr [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ], [ %i.f, %.lr.ph.i.i89.preheader ]
  %.sroa.011.014.i.i91.prol = phi i64 [ %i.q, %.lr.ph.i.i89.prol ], [ %i.n, %.lr.ph.i.i89.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i89.prol ], [ 0, %.lr.ph.i.i89.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i90.prol, i64 1336
  %i.q = add i64 %.sroa.011.014.i.i91.prol, -1    ; 2 uses
  %.sroa.012.0.i.i92.prol = load ptr, ptr %i.p, align 8, !noalias !43475, !nonnull !26, !noundef !26 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol, !llvm.loop !43484

.lr.ph.i.i89.prol.loopexit:                       ; preds = %.lr.ph.i.i89.prol, %.lr.ph.i.i89.preheader
  %.sroa.012.0.i.i92.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i89.preheader ], [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.012.015.i.i90.unr = phi ptr [ %i.f, %.lr.ph.i.i89.preheader ], [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.011.014.i.i91.unr = phi i64 [ %i.n, %.lr.ph.i.i89.preheader ], [ %i.q, %.lr.ph.i.i89.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89
  %.sroa.012.015.i.i90 = phi ptr [ %.sroa.012.0.i.i92.7, %.lr.ph.i.i89 ], [ %.sroa.012.015.i.i90.unr, %.lr.ph.i.i89.prol.loopexit ]
  %.sroa.011.014.i.i91 = phi i64 [ %i.aa, %.lr.ph.i.i89 ], [ %.sroa.011.014.i.i91.unr, %.lr.ph.i.i89.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i90, i64 1336
  %.sroa.012.0.i.i92 = load ptr, ptr %i.s, align 8, !noalias !43475, !nonnull !26, !noundef !26
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92, i64 1336
  %.sroa.012.0.i.i92.1 = load ptr, ptr %i.t, align 8, !noalias !43475, !nonnull !26, !noundef !26
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.1, i64 1336
  %.sroa.012.0.i.i92.2 = load ptr, ptr %i.u, align 8, !noalias !43475, !nonnull !26, !noundef !26
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.2, i64 1336
  %.sroa.012.0.i.i92.3 = load ptr, ptr %i.v, align 8, !noalias !43475, !nonnull !26, !noundef !26
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.3, i64 1336
  %.sroa.012.0.i.i92.4 = load ptr, ptr %i.w, align 8, !noalias !43475, !nonnull !26, !noundef !26
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.4, i64 1336
  %.sroa.012.0.i.i92.5 = load ptr, ptr %i.x, align 8, !noalias !43475, !nonnull !26, !noundef !26
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.5, i64 1336
  %.sroa.012.0.i.i92.6 = load ptr, ptr %i.y, align 8, !noalias !43475, !nonnull !26, !noundef !26
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.6, i64 1336
  %i.aa = add i64 %.sroa.011.014.i.i91, -8        ; 2 uses
  %.sroa.012.0.i.i92.7 = load ptr, ptr %i.z, align 8, !noalias !43475, !nonnull !26, !noundef !26 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", label %.lr.ph.i.i89

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64": ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89, %bb.c
  %.sroa.012.0.lcssa.i.i94 = phi ptr [ %i.f, %bb.c ], [ %.sroa.012.0.i.i92.lcssa.unr, %.lr.ph.i.i89.prol.loopexit ], [ %.sroa.012.0.i.i92.7, %.lr.ph.i.i89 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i94, i64 1330
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !43485, !noundef !26
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %.lr.ph.i.i.i.i70, label %.lr.ph.i

.lr.ph.i.i.i.i70:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", %bb.d
  %.sroa.0.038.i.i.i.i71 = phi ptr [ %i.af, %bb.d ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ] ; 2 uses
  %.sroa.5.037.i.i.i.i72 = phi i64 [ %i.ag, %bb.d ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i71, i64 1056
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !43494, !noundef !26 ; 8 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i73, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i70
  %i.ag = add i64 %.sroa.5.037.i.i.i.i72, 1       ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i71, i64 1328
  %i.ai = load i16, ptr %i.ah, align 8, !noalias !43494 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1330
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !43485, !noundef !26
  %i.al = icmp ult i16 %i.ai, %i.ak
  br i1 %i.al, label %bb.e, label %.lr.ph.i.i.i.i70

bb.e:                                             ; preds = %bb.d
  %i.am = zext i16 %i.ai to i64                   ; 4 uses
  %i.an = icmp eq i64 %i.ag, 0
  %i.ao = add nuw nsw i64 %i.am, 1                ; 2 uses
  br i1 %i.an, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 1336
  %i.aq = icmp ult i16 %i.ai, 11
  tail call void @llvm.assume(i1 %i.aq), !noalias !43497
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %xtraiter233 = and i64 %i.ag, 7                 ; 2 uses
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %.pn30.in.i.i.i.i78.prol = phi ptr [ %i.as, %.prol.preheader ], [ %i.ar, %bb.f ]
  %.pn28.in.i.i.i.i79.prol = phi i64 [ %.pn28.i.i.i.i80.prol, %.prol.preheader ], [ %i.ag, %bb.f ]
  %prol.iter235 = phi i64 [ %prol.iter235.next, %.prol.preheader ], [ 0, %bb.f ]
  %.pn28.i.i.i.i80.prol = add i64 %.pn28.in.i.i.i.i79.prol, -1 ; 2 uses
  %.pn30.i.i.i.i81.prol = load ptr, ptr %.pn30.in.i.i.i.i78.prol, align 8, !noalias !43498, !nonnull !26, !noundef !26 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.prol, i64 1336 ; 2 uses
  %prol.iter235.next = add i64 %prol.iter235, 1   ; 2 uses
  %prol.iter235.cmp.not = icmp eq i64 %prol.iter235.next, %xtraiter233
  br i1 %prol.iter235.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !43502

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.pn30.i.i.i.i81.lcssa.unr = phi ptr [ poison, %bb.f ], [ %.pn30.i.i.i.i81.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i78.unr = phi ptr [ %i.ar, %bb.f ], [ %i.as, %.prol.preheader ]
  %.pn28.in.i.i.i.i79.unr = phi i64 [ %i.ag, %bb.f ], [ %.pn28.i.i.i.i80.prol, %.prol.preheader ]
  %i.at = icmp ult i64 %.sroa.5.037.i.i.i.i72, 7
  br i1 %i.at, label %.lr.ph.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i78 = phi ptr [ %i.bc, %.new ], [ %.pn30.in.i.i.i.i78.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i79 = phi i64 [ %.pn28.i.i.i.i80.7, %.new ], [ %.pn28.in.i.i.i.i79.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i81 = load ptr, ptr %.pn30.in.i.i.i.i78, align 8, !noalias !43498, !nonnull !26, !noundef !26
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81, i64 1336
  %.pn30.i.i.i.i81.1 = load ptr, ptr %i.au, align 8, !noalias !43498, !nonnull !26, !noundef !26
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.1, i64 1336
  %.pn30.i.i.i.i81.2 = load ptr, ptr %i.av, align 8, !noalias !43498, !nonnull !26, !noundef !26
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.2, i64 1336
  %.pn30.i.i.i.i81.3 = load ptr, ptr %i.aw, align 8, !noalias !43498, !nonnull !26, !noundef !26
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.3, i64 1336
  %.pn30.i.i.i.i81.4 = load ptr, ptr %i.ax, align 8, !noalias !43498, !nonnull !26, !noundef !26
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.4, i64 1336
  %.pn30.i.i.i.i81.5 = load ptr, ptr %i.ay, align 8, !noalias !43498, !nonnull !26, !noundef !26
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.5, i64 1336
  %.pn30.i.i.i.i81.6 = load ptr, ptr %i.az, align 8, !noalias !43498, !nonnull !26, !noundef !26
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.6, i64 1336
  %.pn28.i.i.i.i80.7 = add i64 %.pn28.in.i.i.i.i79, -8 ; 2 uses
  %.pn30.i.i.i.i81.7 = load ptr, ptr %i.ba, align 8, !noalias !43498, !nonnull !26, !noundef !26 ; 2 uses
  %i.bb = icmp eq i64 %.pn28.i.i.i.i80.7, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.7, i64 1336
  br i1 %i.bb, label %.lr.ph.i, label %.new

bb.g:                                             ; preds = %.lr.ph.i.i.i.i70
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i87 unwind label %bb.h, !noalias !43503

.noexc.i.i87:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43497
  unreachable

.lr.ph.i:                                         ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", %bb.e
  %.sroa.0.0.ph.i.i.i77117 = phi ptr [ %i.af, %bb.e ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ], [ %i.af, %.new ], [ %i.af, %.prol.loopexit ] ; 3 uses
  %.sroa.6.sroa.4.0.ph.i.i.i75116 = phi i64 [ %i.am, %bb.e ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ], [ %i.am, %.new ], [ %i.am, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i83 = phi i64 [ %i.ao, %bb.e ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i84 = phi ptr [ %i.af, %bb.e ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ], [ %.pn30.i.i.i.i81.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i81.7, %.new ]
  %i.be = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i75116, 11
  tail call void @llvm.assume(i1 %i.be), !noalias !43497
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i77117) ]
  %i.bf = icmp ne i64 %i.b, 0
  %.not213 = and i1 %i.bf, %.not.i.i
  br i1 %.not213, label %.lr.ph.preheader, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.i.i.i77117, i64 %.sroa.6.sroa.4.0.ph.i.i.i75116
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i77117, i64 1064
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i75116
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit"
  %.sroa.2799.0169.in = phi i64 [ %.sroa.2799.0169, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.b, %.lr.ph.preheader ]
  %i.bj = phi ptr [ %i.fo, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %.pn148168 = phi ptr [ %i.fp, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.bg, %.lr.ph.preheader ] ; 4 uses
  %.sroa.7.0167 = phi ptr [ %.sroa.07.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %.sroa.07.0.i.i.i84, %.lr.ph.preheader ] ; 4 uses
  %.sroa.31.0166 = phi i1 [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %.not.i.i, %.lr.ph.preheader ]
  %.sroa.34.0165 = phi ptr [ %.sroa.07.0.i.i.i46, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.43.0164 = phi i64 [ %.sroa.7.0.i.i.i45, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %.sroa.10.0.i, %.lr.ph.preheader ] ; 6 uses
  %.sroa.51.0163 = phi i64 [ %i.bk, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.b, %.lr.ph.preheader ]
  %.sroa.38.0162 = phi i64 [ 0, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.21.0161 = phi i64 [ %.sroa.7.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %.sroa.7.0.i.i.i83, %.lr.ph.preheader ] ; 3 uses
  %.sroa.2799.0169 = add i64 %.sroa.2799.0169.in, -1 ; 2 uses
  %i.bk = add i64 %.sroa.51.0163, -1              ; 2 uses
  br i1 %.sroa.31.0166, label %bb.i, label %.critedge.i20

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i21 = icmp eq ptr %.sroa.34.0165, null
  br i1 %.not.i.i21, label %bb.j, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26"

bb.j:                                             ; preds = %bb.i
  %i.bl = inttoptr i64 %.sroa.38.0162 to ptr      ; 3 uses
  %i.bm = icmp eq i64 %.sroa.43.0164, 0
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26", label %.lr.ph.i.i51.preheader

.lr.ph.i.i51.preheader:                           ; preds = %bb.j
  %xtraiter236 = and i64 %.sroa.43.0164, 7        ; 2 uses
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol

.lr.ph.i.i51.prol:                                ; preds = %.lr.ph.i.i51.preheader, %.lr.ph.i.i51.prol
  %.sroa.012.015.i.i52.prol = phi ptr [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ], [ %i.bl, %.lr.ph.i.i51.preheader ]
  %.sroa.011.014.i.i53.prol = phi i64 [ %i.bo, %.lr.ph.i.i51.prol ], [ %.sroa.43.0164, %.lr.ph.i.i51.preheader ]
  %prol.iter238 = phi i64 [ %prol.iter238.next, %.lr.ph.i.i51.prol ], [ 0, %.lr.ph.i.i51.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52.prol, i64 1336
  %i.bo = add i64 %.sroa.011.014.i.i53.prol, -1   ; 2 uses
  %.sroa.012.0.i.i54.prol = load ptr, ptr %i.bn, align 8, !noalias !43504, !nonnull !26, !noundef !26 ; 3 uses
  %prol.iter238.next = add i64 %prol.iter238, 1   ; 2 uses
  %prol.iter238.cmp.not = icmp eq i64 %prol.iter238.next, %xtraiter236
  br i1 %prol.iter238.cmp.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol, !llvm.loop !43509

.lr.ph.i.i51.prol.loopexit:                       ; preds = %.lr.ph.i.i51.prol, %.lr.ph.i.i51.preheader
  %.sroa.012.0.i.i54.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.012.015.i.i52.unr = phi ptr [ %i.bl, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.011.014.i.i53.unr = phi i64 [ %.sroa.43.0164, %.lr.ph.i.i51.preheader ], [ %i.bo, %.lr.ph.i.i51.prol ]
  %i.bp = icmp ult i64 %.sroa.43.0164, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26", label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51
  %.sroa.012.015.i.i52 = phi ptr [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ], [ %.sroa.012.015.i.i52.unr, %.lr.ph.i.i51.prol.loopexit ]
  %.sroa.011.014.i.i53 = phi i64 [ %i.by, %.lr.ph.i.i51 ], [ %.sroa.011.014.i.i53.unr, %.lr.ph.i.i51.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52, i64 1336
  %.sroa.012.0.i.i54 = load ptr, ptr %i.bq, align 8, !noalias !43504, !nonnull !26, !noundef !26
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54, i64 1336
  %.sroa.012.0.i.i54.1 = load ptr, ptr %i.br, align 8, !noalias !43504, !nonnull !26, !noundef !26
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.1, i64 1336
  %.sroa.012.0.i.i54.2 = load ptr, ptr %i.bs, align 8, !noalias !43504, !nonnull !26, !noundef !26
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.2, i64 1336
  %.sroa.012.0.i.i54.3 = load ptr, ptr %i.bt, align 8, !noalias !43504, !nonnull !26, !noundef !26
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.3, i64 1336
  %.sroa.012.0.i.i54.4 = load ptr, ptr %i.bu, align 8, !noalias !43504, !nonnull !26, !noundef !26
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.4, i64 1336
  %.sroa.012.0.i.i54.5 = load ptr, ptr %i.bv, align 8, !noalias !43504, !nonnull !26, !noundef !26
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.5, i64 1336
  %.sroa.012.0.i.i54.6 = load ptr, ptr %i.bw, align 8, !noalias !43504, !nonnull !26, !noundef !26
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.6, i64 1336
  %i.by = add i64 %.sroa.011.014.i.i53, -8        ; 2 uses
  %.sroa.012.0.i.i54.7 = load ptr, ptr %i.bx, align 8, !noalias !43504, !nonnull !26, !noundef !26 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26", label %.lr.ph.i.i51

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26": ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51, %bb.j, %bb.i
  %.sroa.37.0.copyload.i.i27 = phi i64 [ %.sroa.43.0164, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i28 = phi i64 [ %.sroa.38.0162, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i29 = phi ptr [ %.sroa.34.0165, %bb.i ], [ %i.bl, %bb.j ], [ %.sroa.012.0.i.i54.lcssa.unr, %.lr.ph.i.i51.prol.loopexit ], [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i29, i64 1330
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !43510, !noundef !26
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp ult i64 %.sroa.37.0.copyload.i.i27, %i.cc
  br i1 %i.cd, label %bb.l, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26", %bb.k
  %.sroa.0.038.i.i.i.i33 = phi ptr [ %i.cf, %bb.k ], [ %.sroa.05.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ] ; 2 uses
  %.sroa.5.037.i.i.i.i34 = phi i64 [ %i.ch, %bb.k ], [ %.sroa.26.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i33, i64 1056
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !43519, !noundef !26 ; 4 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i35, label %bb.n, label %bb.k

._crit_edge.loopexit.i.i.i.i36:                   ; preds = %bb.k
  %i.cg = zext i16 %i.cj to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i32
  %i.ch = add i64 %.sroa.5.037.i.i.i.i34, 1       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i33, i64 1328
  %i.cj = load i16, ptr %i.ci, align 8, !noalias !43519 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 1330
  %i.cl = load i16, ptr %i.ck, align 2, !noalias !43510, !noundef !26
  %i.cm = icmp ult i16 %i.cj, %i.cl
  br i1 %i.cm, label %._crit_edge.loopexit.i.i.i.i36, label %.lr.ph.i.i.i.i32

bb.l:                                             ; preds = %._crit_edge.loopexit.i.i.i.i36, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26"
  %.sroa.6.sroa.4.0.ph.i.i.i37 = phi i64 [ %.sroa.37.0.copyload.i.i27, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ], [ %i.cg, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i38 = phi i64 [ %.sroa.26.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ], [ %i.ch, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %.sroa.0.0.ph.i.i.i39 = phi ptr [ %.sroa.05.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ], [ %i.cf, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %i.cn = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 0
  %i.co = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 1 ; 2 uses
  br i1 %i.cn, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 1336
  %i.cq = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.cq), !noalias !43497
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co ; 2 uses
  %xtraiter242 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 7 ; 2 uses
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %.prol.loopexit240, label %.prol.preheader239

.prol.preheader239:                               ; preds = %bb.m, %.prol.preheader239
  %.pn30.in.i.i.i.i40.prol = phi ptr [ %i.cs, %.prol.preheader239 ], [ %i.cr, %bb.m ]
  %.pn28.in.i.i.i.i41.prol = phi i64 [ %.pn28.i.i.i.i42.prol, %.prol.preheader239 ], [ %.sroa.6.sroa.0.0.ph.i.i.i38, %bb.m ]
  %prol.iter244 = phi i64 [ %prol.iter244.next, %.prol.preheader239 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i42.prol = add i64 %.pn28.in.i.i.i.i41.prol, -1 ; 2 uses
  %.pn30.i.i.i.i43.prol = load ptr, ptr %.pn30.in.i.i.i.i40.prol, align 8, !noalias !43522, !nonnull !26, !noundef !26 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.prol, i64 1336 ; 2 uses
  %prol.iter244.next = add i64 %prol.iter244, 1   ; 2 uses
  %prol.iter244.cmp.not = icmp eq i64 %prol.iter244.next, %xtraiter242
  br i1 %prol.iter244.cmp.not, label %.prol.loopexit240, label %.prol.preheader239, !llvm.loop !43526

.prol.loopexit240:                                ; preds = %.prol.preheader239, %bb.m
  %.pn30.i.i.i.i43.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i43.prol, %.prol.preheader239 ]
  %.pn30.in.i.i.i.i40.unr = phi ptr [ %i.cr, %bb.m ], [ %i.cs, %.prol.preheader239 ]
  %.pn28.in.i.i.i.i41.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i38, %bb.m ], [ %.pn28.i.i.i.i42.prol, %.prol.preheader239 ]
  %i.ct = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 8
  br i1 %i.ct, label %.loopexit, label %.new241

.new241:                                          ; preds = %.prol.loopexit240, %.new241
  %.pn30.in.i.i.i.i40 = phi ptr [ %i.dc, %.new241 ], [ %.pn30.in.i.i.i.i40.unr, %.prol.loopexit240 ]
  %.pn28.in.i.i.i.i41 = phi i64 [ %.pn28.i.i.i.i42.7, %.new241 ], [ %.pn28.in.i.i.i.i41.unr, %.prol.loopexit240 ]
  %.pn30.i.i.i.i43 = load ptr, ptr %.pn30.in.i.i.i.i40, align 8, !noalias !43522, !nonnull !26, !noundef !26
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43, i64 1336
  %.pn30.i.i.i.i43.1 = load ptr, ptr %i.cu, align 8, !noalias !43522, !nonnull !26, !noundef !26
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.1, i64 1336
  %.pn30.i.i.i.i43.2 = load ptr, ptr %i.cv, align 8, !noalias !43522, !nonnull !26, !noundef !26
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.2, i64 1336
  %.pn30.i.i.i.i43.3 = load ptr, ptr %i.cw, align 8, !noalias !43522, !nonnull !26, !noundef !26
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.3, i64 1336
  %.pn30.i.i.i.i43.4 = load ptr, ptr %i.cx, align 8, !noalias !43522, !nonnull !26, !noundef !26
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.4, i64 1336
  %.pn30.i.i.i.i43.5 = load ptr, ptr %i.cy, align 8, !noalias !43522, !nonnull !26, !noundef !26
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.5, i64 1336
  %.pn30.i.i.i.i43.6 = load ptr, ptr %i.cz, align 8, !noalias !43522, !nonnull !26, !noundef !26
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.6, i64 1336
  %.pn28.i.i.i.i42.7 = add i64 %.pn28.in.i.i.i.i41, -8 ; 2 uses
  %.pn30.i.i.i.i43.7 = load ptr, ptr %i.da, align 8, !noalias !43522, !nonnull !26, !noundef !26 ; 2 uses
  %i.db = icmp eq i64 %.pn28.i.i.i.i42.7, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.7, i64 1336
  br i1 %i.db, label %.loopexit, label %.new241

bb.n:                                             ; preds = %.lr.ph.i.i.i.i32
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i49 unwind label %bb.o, !noalias !43527

.noexc.i.i49:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43497
  unreachable

.critedge.i20:                                    ; preds = %.lr.ph
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #57, !noalias !43528
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit240, %.new241, %bb.l
  %.sroa.7.0.i.i.i45 = phi i64 [ %i.co, %bb.l ], [ 0, %.new241 ], [ 0, %.prol.loopexit240 ]
  %.sroa.07.0.i.i.i46 = phi ptr [ %.sroa.0.0.ph.i.i.i39, %bb.l ], [ %.pn30.i.i.i.i43.lcssa.unr, %.prol.loopexit240 ], [ %.pn30.i.i.i.i43.7, %.new241 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 1064
  %i.df = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.df), !noalias !43497
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %.sroa.6.sroa.4.0.ph.i.i.i37 ; 2 uses
  %i.dh = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.i.i.i39, i64 %.sroa.6.sroa.4.0.ph.i.i.i37 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i39) ]
  %i.di = getelementptr i8, ptr %i.bj, i64 16
  %.val4.i.i.i = load i64, ptr %i.di, align 8, !noalias !43529, !noundef !26 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dg, i64 16
  %.val6.i.i.i = load i64, ptr %i.dj, align 8, !noalias !43529, !noundef !26
  %.not.i.i.i.i.i.i = icmp eq i64 %.val4.i.i.i, %.val6.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i": ; preds = %.loopexit
  %i.dk = getelementptr i8, ptr %i.dg, i64 8
  %.val5.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !43529, !nonnull !26, !noundef !26
  %i.dl = getelementptr i8, ptr %i.bj, i64 8
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !43529, !nonnull !26, !noundef !26
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43536, !noalias !43529
  %i.dm = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dm, label %bb.p, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.p:                                             ; preds = %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43543)
  %i.dn = getelementptr inbounds nuw i8, ptr %.pn148168, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pn148168, i64 88
  %i.dp = load i8, ptr %i.do, align 8, !range !958, !alias.scope !43540, !noalias !43545, !noundef !26
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.ds = load i8, ptr %i.dr, align 8, !range !958, !alias.scope !43543, !noalias !43546, !noundef !26
  %i.dt = icmp eq i8 %i.dp, %i.ds
  br i1 %i.dt, label %bb.q, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.q:                                             ; preds = %bb.p
  %i.du = load i64, ptr %i.dn, align 8, !range !952, !alias.scope !43540, !noalias !43545, !noundef !26
  %.not.i.i.i.i = icmp eq i64 %i.du, -9223372036854775803
  %i.dv = load i64, ptr %i.dq, align 8, !range !952, !alias.scope !43543, !noalias !43546, !noundef !26
  %i.dw = icmp eq i64 %i.dv, -9223372036854775803 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.dw, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit, label %.split.i.i.i.i

bb.s:                                             ; preds = %bb.q
  br i1 %i.dw, label %bb.t, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

.split.i.i.i.i:                                   ; preds = %bb.r
  %i.dx = tail call fastcc noundef zeroext i1 @"_ZN65_$LT$serde_json..value..Value$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2c9fe2aca7105fcaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dq), !noalias !43529
  br i1 %i.dx, label %bb.t, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.t:                                             ; preds = %.split.i.i.i.i, %bb.s
  %i.dy = load i64, ptr %.pn148168, align 8, !range !922, !alias.scope !43540, !noalias !43545, !noundef !26 ; 2 uses
  %i.dz = load i64, ptr %i.dh, align 8, !range !922, !alias.scope !43543, !noalias !43546, !noundef !26 ; 2 uses
  %i.ea = and i64 %i.dz, %i.dy
  %.not2.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not2.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i", label %.split.i

.split.i:                                         ; preds = %bb.t
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn148168, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.ed = load i64, ptr %i.eb, align 8, !alias.scope !43540, !noalias !43545, !noundef !26
  %i.ee = load i64, ptr %i.ec, align 8, !alias.scope !43543, !noalias !43546, !noundef !26
  %.not.i = icmp eq i64 %i.ed, %i.ee
  br i1 %.not.i, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i": ; preds = %bb.t
  %i.ef = or i64 %i.dz, %i.dy
  %.mux.i.not.i = icmp eq i64 %i.ef, 0
  br i1 %.mux.i.not.i, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.u:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i", %.split.i
  %i.eg = icmp eq i64 %.sroa.2799.0169, 0
  br i1 %i.eg, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i": ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.7.0167, i64 1330
  %i.ei = load i16, ptr %i.eh, align 2, !noalias !43547, !noundef !26
  %i.ej = zext i16 %i.ei to i64
  %i.ek = icmp ult i64 %.sroa.21.0161, %i.ej
  br i1 %i.ek, label %.thread142, label %.lr.ph.i.i.i.i

.thread142:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i"
  %i.el = add nuw nsw i64 %.sroa.21.0161, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit"

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i", %bb.v
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.en, %bb.v ], [ %.sroa.7.0167, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.eo, %bb.v ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i" ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 1056
  %i.en = load ptr, ptr %i.em, align 8, !noalias !43558, !noundef !26 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eo = add i64 %.sroa.5.037.i.i.i.i, 1         ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 1328
  %i.eq = load i16, ptr %i.ep, align 8, !noalias !43558 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 1330
  %i.es = load i16, ptr %i.er, align 2, !noalias !43547, !noundef !26
  %i.et = icmp ult i16 %i.eq, %i.es
  br i1 %i.et, label %bb.w, label %.lr.ph.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eu = zext i16 %i.eq to i64                   ; 4 uses
  %i.ev = icmp eq i64 %i.eo, 0
  %i.ew = add nuw nsw i64 %i.eu, 1                ; 2 uses
  br i1 %i.ev, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 1336
  %i.ey = icmp ult i16 %i.eq, 11
  tail call void @llvm.assume(i1 %i.ey), !noalias !43497
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew ; 2 uses
  %xtraiter249 = and i64 %i.eo, 7                 ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.prol.loopexit246, label %.prol.preheader245

.prol.preheader245:                               ; preds = %bb.x, %.prol.preheader245
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.fa, %.prol.preheader245 ], [ %i.ez, %bb.x ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader245 ], [ %i.eo, %bb.x ]
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.prol.preheader245 ], [ 0, %bb.x ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !43561, !nonnull !26, !noundef !26 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 1336 ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.prol.loopexit246, label %.prol.preheader245, !llvm.loop !43565

.prol.loopexit246:                                ; preds = %.prol.preheader245, %bb.x
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.x ], [ %.pn30.i.i.i.i.prol, %.prol.preheader245 ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.ez, %bb.x ], [ %i.fa, %.prol.preheader245 ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %i.eo, %bb.x ], [ %.pn28.i.i.i.i.prol, %.prol.preheader245 ]
  %i.fb = icmp ult i64 %.sroa.5.037.i.i.i.i, 7
  br i1 %i.fb, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit", label %.new247

.new247:                                          ; preds = %.prol.loopexit246, %.new247
  %.pn30.in.i.i.i.i = phi ptr [ %i.fk, %.new247 ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit246 ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new247 ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit246 ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !43561, !nonnull !26, !noundef !26
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 1336
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.fc, align 8, !noalias !43561, !nonnull !26, !noundef !26
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 1336
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.fd, align 8, !noalias !43561, !nonnull !26, !noundef !26
  %i.fe = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 1336
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.fe, align 8, !noalias !43561, !nonnull !26, !noundef !26
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 1336
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.ff, align 8, !noalias !43561, !nonnull !26, !noundef !26
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 1336
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.fg, align 8, !noalias !43561, !nonnull !26, !noundef !26
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 1336
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.fh, align 8, !noalias !43561, !nonnull !26, !noundef !26
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 1336
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.fi, align 8, !noalias !43561, !nonnull !26, !noundef !26 ; 2 uses
  %i.fj = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.fk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 1336
  br i1 %i.fj, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit", label %.new247

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i unwind label %bb.z, !noalias !43566

.noexc.i.i:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43497
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit": ; preds = %.prol.loopexit246, %.new247, %.thread142, %bb.w
  %.sroa.0.0.ph.i.i.i147 = phi ptr [ %i.en, %bb.w ], [ %.sroa.7.0167, %.thread142 ], [ %i.en, %.new247 ], [ %i.en, %.prol.loopexit246 ] ; 3 uses
  %.sroa.6.sroa.4.0.ph.i.i.i146 = phi i64 [ %i.eu, %bb.w ], [ %.sroa.21.0161, %.thread142 ], [ %i.eu, %.new247 ], [ %i.eu, %.prol.loopexit246 ] ; 3 uses
  %.sroa.7.0.i.i.i = phi i64 [ %i.ew, %bb.w ], [ %i.el, %.thread142 ], [ 0, %.new247 ], [ 0, %.prol.loopexit246 ]
  %.sroa.07.0.i.i.i = phi ptr [ %i.en, %bb.w ], [ %.sroa.7.0167, %.thread142 ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit246 ], [ %.pn30.i.i.i.i.7, %.new247 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i147, i64 1064
  %i.fn = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i146, 11
  tail call void @llvm.assume(i1 %i.fn), !noalias !43497
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %.sroa.6.sroa.4.0.ph.i.i.i146
  %i.fp = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.i.i.i147, i64 %.sroa.6.sroa.4.0.ph.i.i.i146
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i147) ]
  %i.fq = icmp eq i64 %i.bk, 0
  br i1 %i.fq, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h522e16044a4b4305E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !26 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !26
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !26  ; 4 uses
  %.not.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %1, align 8, !alias.scope !43567, !noalias !43572, !noundef !26 ; 2 uses
  %.not.i.i = icmp ne ptr %i.g, null              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !43576, !noalias !43577
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %i.i, i64 undef
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = icmp eq i64 %i.b, 0
  %i.l = or i1 %.not.not, %i.k
  br i1 %i.l, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit, label %bb.c

_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit: ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit", %.loopexit, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", %bb.p, %bb.r, %bb.s, %bb.u, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i.i.i.i", %bb.v, %bb.x, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit45.i.i.i.i.i.i", %bb.y, %bb.z, %bb.ab, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit49.i.i.i.i.i.i", %bb.ac, %bb.ae, %bb.af, %bb.ag, %bb.ai, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit53.i.i.i.i.i.i", %bb.aj, %bb.al, %bb.am, %bb.ao, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i", %bb.ap, %bb.ar, %bb.as, %bb.au, %bb.av, %bb.ax, %bb.ay, %bb.ba, %bb.bb, %bb.bd, %bb.be, %bb.bg, %bb.bh, %bb.bj, %bb.bk, %bb.bm, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i", %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.lr.ph.i ], [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ false, %bb.ag ], [ false, %bb.bk ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.ab ], [ false, %bb.ac ], [ false, %bb.v ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.ao ], [ false, %bb.ap ], [ false, %bb.as ], [ false, %bb.av ], [ false, %bb.ay ], [ false, %bb.bb ], [ false, %bb.be ], [ false, %bb.bh ], [ false, %bb.p ], [ false, %bb.r ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i.i.i.i" ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit45.i.i.i.i.i.i" ], [ false, %bb.y ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit49.i.i.i.i.i.i" ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit53.i.i.i.i.i.i" ], [ false, %bb.al ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i" ], [ false, %bb.ar ], [ false, %bb.au ], [ false, %bb.ax ], [ false, %bb.ba ], [ false, %bb.bd ], [ false, %bb.bg ], [ false, %bb.am ], [ false, %bb.bj ], [ false, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i" ], [ false, %.loopexit ], [ false, %bb.s ], [ false, %bb.bm ], [ true, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i" ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i" ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 5 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol

.lr.ph.i.i89.prol:                                ; preds = %.lr.ph.i.i89.preheader, %.lr.ph.i.i89.prol
  %.sroa.012.015.i.i90.prol = phi ptr [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ], [ %i.f, %.lr.ph.i.i89.preheader ]
  %.sroa.011.014.i.i91.prol = phi i64 [ %i.q, %.lr.ph.i.i89.prol ], [ %i.n, %.lr.ph.i.i89.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i89.prol ], [ 0, %.lr.ph.i.i89.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i90.prol, i64 16912
  %i.q = add i64 %.sroa.011.014.i.i91.prol, -1    ; 2 uses
  %.sroa.012.0.i.i92.prol = load ptr, ptr %i.p, align 8, !noalias !43578, !nonnull !26, !noundef !26 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol, !llvm.loop !43587

.lr.ph.i.i89.prol.loopexit:                       ; preds = %.lr.ph.i.i89.prol, %.lr.ph.i.i89.preheader
  %.sroa.012.0.i.i92.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i89.preheader ], [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.012.015.i.i90.unr = phi ptr [ %i.f, %.lr.ph.i.i89.preheader ], [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.011.014.i.i91.unr = phi i64 [ %i.n, %.lr.ph.i.i89.preheader ], [ %i.q, %.lr.ph.i.i89.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89
  %.sroa.012.015.i.i90 = phi ptr [ %.sroa.012.0.i.i92.7, %.lr.ph.i.i89 ], [ %.sroa.012.015.i.i90.unr, %.lr.ph.i.i89.prol.loopexit ]
  %.sroa.011.014.i.i91 = phi i64 [ %i.aa, %.lr.ph.i.i89 ], [ %.sroa.011.014.i.i91.unr, %.lr.ph.i.i89.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i90, i64 16912
  %.sroa.012.0.i.i92 = load ptr, ptr %i.s, align 8, !noalias !43578, !nonnull !26, !noundef !26
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92, i64 16912
  %.sroa.012.0.i.i92.1 = load ptr, ptr %i.t, align 8, !noalias !43578, !nonnull !26, !noundef !26
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.1, i64 16912
  %.sroa.012.0.i.i92.2 = load ptr, ptr %i.u, align 8, !noalias !43578, !nonnull !26, !noundef !26
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.2, i64 16912
  %.sroa.012.0.i.i92.3 = load ptr, ptr %i.v, align 8, !noalias !43578, !nonnull !26, !noundef !26
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.3, i64 16912
  %.sroa.012.0.i.i92.4 = load ptr, ptr %i.w, align 8, !noalias !43578, !nonnull !26, !noundef !26
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.4, i64 16912
  %.sroa.012.0.i.i92.5 = load ptr, ptr %i.x, align 8, !noalias !43578, !nonnull !26, !noundef !26
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.5, i64 16912
  %.sroa.012.0.i.i92.6 = load ptr, ptr %i.y, align 8, !noalias !43578, !nonnull !26, !noundef !26
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.6, i64 16912
  %i.aa = add i64 %.sroa.011.014.i.i91, -8        ; 2 uses
  %.sroa.012.0.i.i92.7 = load ptr, ptr %i.z, align 8, !noalias !43578, !nonnull !26, !noundef !26 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", label %.lr.ph.i.i89

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64": ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89, %bb.c
  %.sroa.012.0.lcssa.i.i94 = phi ptr [ %i.f, %bb.c ], [ %.sroa.012.0.i.i92.lcssa.unr, %.lr.ph.i.i89.prol.loopexit ], [ %.sroa.012.0.i.i92.7, %.lr.ph.i.i89 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i94, i64 16906
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !43588, !noundef !26
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %.lr.ph.i.i.i.i70, label %.lr.ph.i

.lr.ph.i.i.i.i70:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", %bb.d
  %.sroa.0.038.i.i.i.i71 = phi ptr [ %i.ae, %bb.d ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ] ; 2 uses
  %.sroa.5.037.i.i.i.i72 = phi i64 [ %i.af, %bb.d ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.0.038.i.i.i.i71, align 8, !noalias !43597, !noundef !26 ; 8 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i73, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i70
  %i.af = add i64 %.sroa.5.037.i.i.i.i72, 1       ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i71, i64 16904
  %i.ah = load i16, ptr %i.ag, align 8, !noalias !43597 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16906
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !43588, !noundef !26
  %i.ak = icmp ult i16 %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %.lr.ph.i.i.i.i70

bb.e:                                             ; preds = %bb.d
  %i.al = zext i16 %i.ah to i64                   ; 4 uses
  %i.am = icmp eq i64 %i.af, 0
  %i.an = add nuw nsw i64 %i.al, 1                ; 2 uses
  br i1 %i.am, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16912
  %i.ap = icmp ult i16 %i.ah, 11
  tail call void @llvm.assume(i1 %i.ap), !noalias !43600
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %xtraiter309 = and i64 %i.af, 7                 ; 2 uses
  %lcmp.mod310.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %.pn30.in.i.i.i.i78.prol = phi ptr [ %i.ar, %.prol.preheader ], [ %i.aq, %bb.f ]
  %.pn28.in.i.i.i.i79.prol = phi i64 [ %.pn28.i.i.i.i80.prol, %.prol.preheader ], [ %i.af, %bb.f ]
  %prol.iter311 = phi i64 [ %prol.iter311.next, %.prol.preheader ], [ 0, %bb.f ]
  %.pn28.i.i.i.i80.prol = add i64 %.pn28.in.i.i.i.i79.prol, -1 ; 2 uses
  %.pn30.i.i.i.i81.prol = load ptr, ptr %.pn30.in.i.i.i.i78.prol, align 8, !noalias !43601, !nonnull !26, !noundef !26 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.prol, i64 16912 ; 2 uses
  %prol.iter311.next = add i64 %prol.iter311, 1   ; 2 uses
  %prol.iter311.cmp.not = icmp eq i64 %prol.iter311.next, %xtraiter309
  br i1 %prol.iter311.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !43605

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.pn30.i.i.i.i81.lcssa.unr = phi ptr [ poison, %bb.f ], [ %.pn30.i.i.i.i81.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i78.unr = phi ptr [ %i.aq, %bb.f ], [ %i.ar, %.prol.preheader ]
  %.pn28.in.i.i.i.i79.unr = phi i64 [ %i.af, %bb.f ], [ %.pn28.i.i.i.i80.prol, %.prol.preheader ]
  %i.as = icmp ult i64 %.sroa.5.037.i.i.i.i72, 7
  br i1 %i.as, label %.lr.ph.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i78 = phi ptr [ %i.bb, %.new ], [ %.pn30.in.i.i.i.i78.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i79 = phi i64 [ %.pn28.i.i.i.i80.7, %.new ], [ %.pn28.in.i.i.i.i79.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i81 = load ptr, ptr %.pn30.in.i.i.i.i78, align 8, !noalias !43601, !nonnull !26, !noundef !26
  %i.at = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81, i64 16912
  %.pn30.i.i.i.i81.1 = load ptr, ptr %i.at, align 8, !noalias !43601, !nonnull !26, !noundef !26
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.1, i64 16912
  %.pn30.i.i.i.i81.2 = load ptr, ptr %i.au, align 8, !noalias !43601, !nonnull !26, !noundef !26
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.2, i64 16912
  %.pn30.i.i.i.i81.3 = load ptr, ptr %i.av, align 8, !noalias !43601, !nonnull !26, !noundef !26
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.3, i64 16912
  %.pn30.i.i.i.i81.4 = load ptr, ptr %i.aw, align 8, !noalias !43601, !nonnull !26, !noundef !26
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.4, i64 16912
  %.pn30.i.i.i.i81.5 = load ptr, ptr %i.ax, align 8, !noalias !43601, !nonnull !26, !noundef !26
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.5, i64 16912
  %.pn30.i.i.i.i81.6 = load ptr, ptr %i.ay, align 8, !noalias !43601, !nonnull !26, !noundef !26
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.6, i64 16912
  %.pn28.i.i.i.i80.7 = add i64 %.pn28.in.i.i.i.i79, -8 ; 2 uses
  %.pn30.i.i.i.i81.7 = load ptr, ptr %i.az, align 8, !noalias !43601, !nonnull !26, !noundef !26 ; 2 uses
  %i.ba = icmp eq i64 %.pn28.i.i.i.i80.7, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.7, i64 16912
  br i1 %i.ba, label %.lr.ph.i, label %.new

bb.g:                                             ; preds = %.lr.ph.i.i.i.i70
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i87 unwind label %bb.h, !noalias !43606

.noexc.i.i87:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43600
  unreachable

.lr.ph.i:                                         ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", %bb.e
  %.sroa.0.0.ph.i.i.i77117 = phi ptr [ %i.ae, %bb.e ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ], [ %i.ae, %.new ], [ %i.ae, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i75116 = phi i64 [ %i.al, %bb.e ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ], [ %i.al, %.new ], [ %i.al, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i83 = phi i64 [ %i.an, %bb.e ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i84 = phi ptr [ %i.ae, %bb.e ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ], [ %.pn30.i.i.i.i81.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i81.7, %.new ]
  %i.bd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i75116, 11
  tail call void @llvm.assume(i1 %i.bd), !noalias !43600
  %i.be = icmp ne i64 %i.b, 0
  %.not289 = and i1 %i.be, %.not.i.i
  br i1 %.not289, label %.lr.ph.preheader, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i77117, i64 272
  %i.bg = getelementptr inbounds nuw [1512 x i8], ptr %i.bf, i64 %.sroa.6.sroa.4.0.ph.i.i.i75116
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i77117, i64 8
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i75116
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit"
  %.sroa.2799.0169.in = phi i64 [ %.sroa.2799.0169, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.b, %.lr.ph.preheader ]
  %i.bj = phi ptr [ %i.nj, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %.pn148168 = phi ptr [ %i.nl, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.bg, %.lr.ph.preheader ] ; 35 uses
  %.sroa.7.0167 = phi ptr [ %.sroa.07.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %.sroa.07.0.i.i.i84, %.lr.ph.preheader ] ; 4 uses
  %.sroa.31.0166 = phi i1 [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %.not.i.i, %.lr.ph.preheader ]
  %.sroa.34.0165 = phi ptr [ %.sroa.07.0.i.i.i46, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.43.0164 = phi i64 [ %.sroa.7.0.i.i.i45, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %.sroa.10.0.i, %.lr.ph.preheader ] ; 6 uses
  %.sroa.51.0163 = phi i64 [ %i.bk, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.b, %.lr.ph.preheader ]
  %.sroa.38.0162 = phi i64 [ 0, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.21.0161 = phi i64 [ %.sroa.7.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %.sroa.7.0.i.i.i83, %.lr.ph.preheader ] ; 3 uses
  %.sroa.2799.0169 = add i64 %.sroa.2799.0169.in, -1 ; 2 uses
  %i.bk = add i64 %.sroa.51.0163, -1              ; 2 uses
  br i1 %.sroa.31.0166, label %bb.i, label %.critedge.i20

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i21 = icmp eq ptr %.sroa.34.0165, null
  br i1 %.not.i.i21, label %bb.j, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26"

bb.j:                                             ; preds = %bb.i
  %i.bl = inttoptr i64 %.sroa.38.0162 to ptr      ; 3 uses
  %i.bm = icmp eq i64 %.sroa.43.0164, 0
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26", label %.lr.ph.i.i51.preheader

.lr.ph.i.i51.preheader:                           ; preds = %bb.j
  %xtraiter312 = and i64 %.sroa.43.0164, 7        ; 2 uses
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol

.lr.ph.i.i51.prol:                                ; preds = %.lr.ph.i.i51.preheader, %.lr.ph.i.i51.prol
  %.sroa.012.015.i.i52.prol = phi ptr [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ], [ %i.bl, %.lr.ph.i.i51.preheader ]
  %.sroa.011.014.i.i53.prol = phi i64 [ %i.bo, %.lr.ph.i.i51.prol ], [ %.sroa.43.0164, %.lr.ph.i.i51.preheader ]
  %prol.iter314 = phi i64 [ %prol.iter314.next, %.lr.ph.i.i51.prol ], [ 0, %.lr.ph.i.i51.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52.prol, i64 16912
  %i.bo = add i64 %.sroa.011.014.i.i53.prol, -1   ; 2 uses
  %.sroa.012.0.i.i54.prol = load ptr, ptr %i.bn, align 8, !noalias !43607, !nonnull !26, !noundef !26 ; 3 uses
  %prol.iter314.next = add i64 %prol.iter314, 1   ; 2 uses
  %prol.iter314.cmp.not = icmp eq i64 %prol.iter314.next, %xtraiter312
  br i1 %prol.iter314.cmp.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol, !llvm.loop !43612

.lr.ph.i.i51.prol.loopexit:                       ; preds = %.lr.ph.i.i51.prol, %.lr.ph.i.i51.preheader
  %.sroa.012.0.i.i54.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.012.015.i.i52.unr = phi ptr [ %i.bl, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.011.014.i.i53.unr = phi i64 [ %.sroa.43.0164, %.lr.ph.i.i51.preheader ], [ %i.bo, %.lr.ph.i.i51.prol ]
  %i.bp = icmp ult i64 %.sroa.43.0164, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26", label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51
  %.sroa.012.015.i.i52 = phi ptr [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ], [ %.sroa.012.015.i.i52.unr, %.lr.ph.i.i51.prol.loopexit ]
  %.sroa.011.014.i.i53 = phi i64 [ %i.by, %.lr.ph.i.i51 ], [ %.sroa.011.014.i.i53.unr, %.lr.ph.i.i51.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52, i64 16912
  %.sroa.012.0.i.i54 = load ptr, ptr %i.bq, align 8, !noalias !43607, !nonnull !26, !noundef !26
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54, i64 16912
  %.sroa.012.0.i.i54.1 = load ptr, ptr %i.br, align 8, !noalias !43607, !nonnull !26, !noundef !26
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.1, i64 16912
  %.sroa.012.0.i.i54.2 = load ptr, ptr %i.bs, align 8, !noalias !43607, !nonnull !26, !noundef !26
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.2, i64 16912
  %.sroa.012.0.i.i54.3 = load ptr, ptr %i.bt, align 8, !noalias !43607, !nonnull !26, !noundef !26
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.3, i64 16912
  %.sroa.012.0.i.i54.4 = load ptr, ptr %i.bu, align 8, !noalias !43607, !nonnull !26, !noundef !26
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.4, i64 16912
  %.sroa.012.0.i.i54.5 = load ptr, ptr %i.bv, align 8, !noalias !43607, !nonnull !26, !noundef !26
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.5, i64 16912
  %.sroa.012.0.i.i54.6 = load ptr, ptr %i.bw, align 8, !noalias !43607, !nonnull !26, !noundef !26
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.6, i64 16912
  %i.by = add i64 %.sroa.011.014.i.i53, -8        ; 2 uses
  %.sroa.012.0.i.i54.7 = load ptr, ptr %i.bx, align 8, !noalias !43607, !nonnull !26, !noundef !26 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26", label %.lr.ph.i.i51

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26": ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51, %bb.j, %bb.i
  %.sroa.37.0.copyload.i.i27 = phi i64 [ %.sroa.43.0164, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i28 = phi i64 [ %.sroa.38.0162, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i29 = phi ptr [ %.sroa.34.0165, %bb.i ], [ %i.bl, %bb.j ], [ %.sroa.012.0.i.i54.lcssa.unr, %.lr.ph.i.i51.prol.loopexit ], [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i29, i64 16906
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !43613, !noundef !26
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp ult i64 %.sroa.37.0.copyload.i.i27, %i.cc
  br i1 %i.cd, label %bb.l, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26", %bb.k
  %.sroa.0.038.i.i.i.i33 = phi ptr [ %i.ce, %bb.k ], [ %.sroa.05.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ] ; 2 uses
  %.sroa.5.037.i.i.i.i34 = phi i64 [ %i.cg, %bb.k ], [ %.sroa.26.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ]
  %i.ce = load ptr, ptr %.sroa.0.038.i.i.i.i33, align 8, !noalias !43622, !noundef !26 ; 4 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i35, label %bb.n, label %bb.k

._crit_edge.loopexit.i.i.i.i36:                   ; preds = %bb.k
  %i.cf = zext i16 %i.ci to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i32
  %i.cg = add i64 %.sroa.5.037.i.i.i.i34, 1       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i33, i64 16904
  %i.ci = load i16, ptr %i.ch, align 8, !noalias !43622 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16906
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !43613, !noundef !26
  %i.cl = icmp ult i16 %i.ci, %i.ck
  br i1 %i.cl, label %._crit_edge.loopexit.i.i.i.i36, label %.lr.ph.i.i.i.i32

bb.l:                                             ; preds = %._crit_edge.loopexit.i.i.i.i36, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26"
  %.sroa.6.sroa.4.0.ph.i.i.i37 = phi i64 [ %.sroa.37.0.copyload.i.i27, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ], [ %i.cf, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i38 = phi i64 [ %.sroa.26.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ], [ %i.cg, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %.sroa.0.0.ph.i.i.i39 = phi ptr [ %.sroa.05.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ], [ %i.ce, %._crit_edge.loopexit.i.i.i.i36 ] ; 4 uses
  %i.cm = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 0
  %i.cn = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 1 ; 2 uses
  br i1 %i.cm, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 16912
  %i.cp = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.cp), !noalias !43600
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %xtraiter318 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 7 ; 2 uses
  %lcmp.mod319.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod319.not, label %.prol.loopexit316, label %.prol.preheader315

.prol.preheader315:                               ; preds = %bb.m, %.prol.preheader315
  %.pn30.in.i.i.i.i40.prol = phi ptr [ %i.cr, %.prol.preheader315 ], [ %i.cq, %bb.m ]
  %.pn28.in.i.i.i.i41.prol = phi i64 [ %.pn28.i.i.i.i42.prol, %.prol.preheader315 ], [ %.sroa.6.sroa.0.0.ph.i.i.i38, %bb.m ]
  %prol.iter320 = phi i64 [ %prol.iter320.next, %.prol.preheader315 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i42.prol = add i64 %.pn28.in.i.i.i.i41.prol, -1 ; 2 uses
  %.pn30.i.i.i.i43.prol = load ptr, ptr %.pn30.in.i.i.i.i40.prol, align 8, !noalias !43625, !nonnull !26, !noundef !26 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.prol, i64 16912 ; 2 uses
  %prol.iter320.next = add i64 %prol.iter320, 1   ; 2 uses
  %prol.iter320.cmp.not = icmp eq i64 %prol.iter320.next, %xtraiter318
  br i1 %prol.iter320.cmp.not, label %.prol.loopexit316, label %.prol.preheader315, !llvm.loop !43629

.prol.loopexit316:                                ; preds = %.prol.preheader315, %bb.m
  %.pn30.i.i.i.i43.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i43.prol, %.prol.preheader315 ]
  %.pn30.in.i.i.i.i40.unr = phi ptr [ %i.cq, %bb.m ], [ %i.cr, %.prol.preheader315 ]
  %.pn28.in.i.i.i.i41.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i38, %bb.m ], [ %.pn28.i.i.i.i42.prol, %.prol.preheader315 ]
  %i.cs = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 8
  br i1 %i.cs, label %.loopexit, label %.new317

.new317:                                          ; preds = %.prol.loopexit316, %.new317
  %.pn30.in.i.i.i.i40 = phi ptr [ %i.db, %.new317 ], [ %.pn30.in.i.i.i.i40.unr, %.prol.loopexit316 ]
  %.pn28.in.i.i.i.i41 = phi i64 [ %.pn28.i.i.i.i42.7, %.new317 ], [ %.pn28.in.i.i.i.i41.unr, %.prol.loopexit316 ]
  %.pn30.i.i.i.i43 = load ptr, ptr %.pn30.in.i.i.i.i40, align 8, !noalias !43625, !nonnull !26, !noundef !26
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43, i64 16912
  %.pn30.i.i.i.i43.1 = load ptr, ptr %i.ct, align 8, !noalias !43625, !nonnull !26, !noundef !26
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.1, i64 16912
  %.pn30.i.i.i.i43.2 = load ptr, ptr %i.cu, align 8, !noalias !43625, !nonnull !26, !noundef !26
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.2, i64 16912
  %.pn30.i.i.i.i43.3 = load ptr, ptr %i.cv, align 8, !noalias !43625, !nonnull !26, !noundef !26
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.3, i64 16912
  %.pn30.i.i.i.i43.4 = load ptr, ptr %i.cw, align 8, !noalias !43625, !nonnull !26, !noundef !26
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.4, i64 16912
  %.pn30.i.i.i.i43.5 = load ptr, ptr %i.cx, align 8, !noalias !43625, !nonnull !26, !noundef !26
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.5, i64 16912
  %.pn30.i.i.i.i43.6 = load ptr, ptr %i.cy, align 8, !noalias !43625, !nonnull !26, !noundef !26
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.6, i64 16912
  %.pn28.i.i.i.i42.7 = add i64 %.pn28.in.i.i.i.i41, -8 ; 2 uses
  %.pn30.i.i.i.i43.7 = load ptr, ptr %i.cz, align 8, !noalias !43625, !nonnull !26, !noundef !26 ; 2 uses
  %i.da = icmp eq i64 %.pn28.i.i.i.i42.7, 0
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.7, i64 16912
  br i1 %i.da, label %.loopexit, label %.new317

bb.n:                                             ; preds = %.lr.ph.i.i.i.i32
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i49 unwind label %bb.o, !noalias !43630

.noexc.i.i49:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43600
  unreachable

.critedge.i20:                                    ; preds = %.lr.ph
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #57, !noalias !43631
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit316, %.new317, %bb.l
  %.sroa.7.0.i.i.i45 = phi i64 [ %i.cn, %bb.l ], [ 0, %.new317 ], [ 0, %.prol.loopexit316 ]
  %.sroa.07.0.i.i.i46 = phi ptr [ %.sroa.0.0.ph.i.i.i39, %bb.l ], [ %.pn30.i.i.i.i43.lcssa.unr, %.prol.loopexit316 ], [ %.pn30.i.i.i.i43.7, %.new317 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 8
  %i.de = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.de), !noalias !43600
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.sroa.6.sroa.4.0.ph.i.i.i37 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 272
  %i.dh = getelementptr inbounds nuw [1512 x i8], ptr %i.dg, i64 %.sroa.6.sroa.4.0.ph.i.i.i37 ; 35 uses
  %i.di = getelementptr i8, ptr %i.bj, i64 16
  %.val4.i.i.i = load i64, ptr %i.di, align 8, !noalias !43632, !noundef !26 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.df, i64 16
  %.val6.i.i.i = load i64, ptr %i.dj, align 8, !noalias !43632, !noundef !26
  %.not.i.i.i.i.i.i = icmp eq i64 %.val4.i.i.i, %.val6.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i": ; preds = %.loopexit
  %i.dk = getelementptr i8, ptr %i.df, i64 8
  %.val5.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !43632, !nonnull !26, !noundef !26
  %i.dl = getelementptr i8, ptr %i.bj, i64 8
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !43632, !nonnull !26, !noundef !26
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43639, !noalias !43632
  %i.dm = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dm, label %bb.p, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.p:                                             ; preds = %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43651)
end_hunk_0
begin_hunk_1_@"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h522e16044a4b4305E":bb.a
bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ig = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1328
  %i.ih = load i64, ptr %i.ig, align 8, !range !3153, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.ii = icmp slt i64 %i.ih, 0
  %i.ij = add i64 %i.ih, -9223372036854775807
  %i.ik = select i1 %i.ii, i64 %i.ij, i64 0       ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.dh, i64 1328
  %i.im = load i64, ptr %i.il, align 8, !range !3153, !alias.scope !43664, !noalias !43665, !noundef !26 ; 2 uses
  %i.in = icmp slt i64 %i.im, 0
  %i.io = add i64 %i.im, -9223372036854775807
  %i.ip = select i1 %i.in, i64 %i.io, i64 0
  %i.iq = icmp eq i64 %i.ik, %i.ip
  br i1 %i.iq, label %bb.an, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.an:                                            ; preds = %bb.am
  %i.ir = icmp eq i64 %i.ik, 0
  br i1 %i.ir, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.is = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1344
  %.val23.i.i.i.i.i.i = load i64, ptr %i.is, align 8, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.dh, i64 1344
  %.val25.i.i.i.i.i.i = load i64, ptr %i.it, align 8, !alias.scope !43664, !noalias !43665, !noundef !26
  %.not.i.i54.i.i.i.i.i.i = icmp eq i64 %.val23.i.i.i.i.i.i, %.val25.i.i.i.i.i.i
  br i1 %.not.i.i54.i.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i": ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %i.dh, i64 1336
  %.val24.i.i.i.i.i.i = load ptr, ptr %i.iu, align 8, !alias.scope !43664, !noalias !43665, !nonnull !26, !noundef !26
  %i.iv = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1336
  %.val.i.i.i.i.i.i = load ptr, ptr %i.iv, align 8, !alias.scope !43662, !noalias !43663, !nonnull !26, !noundef !26
  %bcmp.i.i56.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val24.i.i.i.i.i.i, i64 %.val23.i.i.i.i.i.i), !alias.scope !43683, !noalias !43670
  %i.iw = icmp eq i32 %bcmp.i.i56.i.i.i.i.i.i, 0
  br i1 %i.iw, label %bb.ap, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.ap:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i", %bb.an
  %i.ix = getelementptr inbounds nuw i8, ptr %.pn148168, i64 32
  %i.iy = load i64, ptr %i.ix, align 8, !range !967, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.ja = load i64, ptr %i.iz, align 8, !range !967, !alias.scope !43664, !noalias !43665, !noundef !26
  %i.jb = icmp eq i64 %i.iy, %i.ja
  br i1 %i.jb, label %bb.aq, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.aq:                                            ; preds = %bb.ap
  %i.jc = icmp eq i64 %i.iy, 0
  br i1 %i.jc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jd = getelementptr inbounds nuw i8, ptr %.pn148168, i64 40
  %i.je = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.jf = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17haed958bbbeaf4644E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.je), !noalias !43632
  br i1 %i.jf, label %bb.as, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn148168, i64 64
  %i.jh = load i64, ptr %i.jg, align 8, !range !967, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.jj = load i64, ptr %i.ji, align 8, !range !967, !alias.scope !43664, !noalias !43665, !noundef !26
  %i.jk = icmp eq i64 %i.jh, %i.jj
  br i1 %i.jk, label %bb.at, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.at:                                            ; preds = %bb.as
  %i.jl = icmp eq i64 %i.jh, 0
  br i1 %i.jl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jm = getelementptr inbounds nuw i8, ptr %.pn148168, i64 72
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.jo = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17haed958bbbeaf4644E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jn), !noalias !43632
  br i1 %i.jo, label %bb.av, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jp = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1352 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !range !12837, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.jr = tail call i64 @llvm.usub.sat.i64(i64 %i.jq, i64 -9223372036854775804)
  %i.js = getelementptr inbounds nuw i8, ptr %i.dh, i64 1352 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !range !12837, !alias.scope !43664, !noalias !43665, !noundef !26
  %i.ju = tail call i64 @llvm.usub.sat.i64(i64 %i.jt, i64 -9223372036854775804)
  %i.jv = icmp eq i64 %i.jr, %i.ju
  br i1 %i.jv, label %bb.aw, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.aw:                                            ; preds = %bb.av
  %i.jw = icmp ult i64 %i.jq, -9223372036854775803
  br i1 %i.jw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jx = tail call fastcc noundef zeroext i1 @"_ZN65_$LT$serde_json..value..Value$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2c9fe2aca7105fcaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.js), !noalias !43632
  br i1 %i.jx, label %bb.ay, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jy = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1424 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !range !12837, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.ka = tail call i64 @llvm.usub.sat.i64(i64 %i.jz, i64 -9223372036854775804)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.dh, i64 1424 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !range !12837, !alias.scope !43664, !noalias !43665, !noundef !26
  %i.kd = tail call i64 @llvm.usub.sat.i64(i64 %i.kc, i64 -9223372036854775804)
  %i.ke = icmp eq i64 %i.ka, %i.kd
  br i1 %i.ke, label %bb.az, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.az:                                            ; preds = %bb.ay
  %i.kf = icmp ult i64 %i.jz, -9223372036854775803
  br i1 %i.kf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kg = tail call fastcc noundef zeroext i1 @"_ZN65_$LT$serde_json..value..Value$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2c9fe2aca7105fcaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kb), !noalias !43632
  br i1 %i.kg, label %bb.bb, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kh = getelementptr inbounds nuw i8, ptr %.pn148168, i64 96
  %i.ki = load i64, ptr %i.kh, align 8, !range !967, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.kk = load i64, ptr %i.kj, align 8, !range !967, !alias.scope !43664, !noalias !43665, !noundef !26
  %i.kl = icmp eq i64 %i.ki, %i.kk
  br i1 %i.kl, label %bb.bc, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.km = icmp eq i64 %i.ki, 0
  br i1 %i.km, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kn = getelementptr inbounds nuw i8, ptr %.pn148168, i64 104
  %i.ko = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.kp = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hb7090d0156312d5fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ko), !noalias !43632
  br i1 %i.kp, label %bb.be, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kq = getelementptr inbounds nuw i8, ptr %.pn148168, i64 128 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !range !3711, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.ks = tail call i64 @llvm.usub.sat.i64(i64 %i.kr, i64 2)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dh, i64 128 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !range !3711, !alias.scope !43664, !noalias !43665, !noundef !26
  %i.kv = tail call i64 @llvm.usub.sat.i64(i64 %i.ku, i64 2)
  %i.kw = icmp eq i64 %i.ks, %i.kv
  br i1 %i.kw, label %bb.bf, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bf:                                            ; preds = %bb.be
  %i.kx = icmp samesign ult i64 %i.kr, 3
  br i1 %i.kx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ky = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$milli..vector..settings..SubEmbeddingSettings$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9396aeb776779fe7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.kq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.kt), !noalias !43632
  br i1 %i.ky, label %bb.bh, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.kz = getelementptr inbounds nuw i8, ptr %.pn148168, i64 680 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !range !3711, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.lb = tail call i64 @llvm.usub.sat.i64(i64 %i.la, i64 2)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.dh, i64 680 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !range !3711, !alias.scope !43664, !noalias !43665, !noundef !26
  %i.le = tail call i64 @llvm.usub.sat.i64(i64 %i.ld, i64 2)
  %i.lf = icmp eq i64 %i.lb, %i.le
  br i1 %i.lf, label %bb.bi, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bi:                                            ; preds = %bb.bh
  %i.lg = icmp samesign ult i64 %i.la, 3
  br i1 %i.lg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lh = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$milli..vector..settings..SubEmbeddingSettings$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9396aeb776779fe7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.kz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.lc), !noalias !43632
  br i1 %i.lh, label %bb.bk, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.li = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1496
  %i.lj = load i32, ptr %i.li, align 8, !range !12923, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.dh, i64 1496
  %i.ll = load i32, ptr %i.lk, align 8, !range !12923, !alias.scope !43664, !noalias !43665, !noundef !26
  %i.lm = icmp eq i32 %i.lj, %i.ll
  br i1 %i.lm, label %bb.bl, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ln = icmp eq i32 %i.lj, 0
  br i1 %i.ln, label %bb.bm, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i"

bb.bm:                                            ; preds = %bb.bl
  %i.lo = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1500
  %i.lp = load float, ptr %i.lo, align 4, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.lq = fcmp uno float %i.lp, 0.000000e+00
  %i.lr = getelementptr inbounds nuw i8, ptr %i.dh, i64 1500
  %i.ls = load float, ptr %i.lr, align 4, !alias.scope !43664, !noalias !43665 ; 2 uses
  %i.lt = fcmp uno float %i.ls, 0.000000e+00
  %i.lu = fcmp oeq float %i.lp, %i.ls
  %.sroa.01.0.in.i.i.i.i.i.i = select i1 %i.lq, i1 %i.lt, i1 %i.lu
  br i1 %.sroa.01.0.in.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i": ; preds = %bb.bm
  %i.lv = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1504
  %i.lw = load float, ptr %i.lv, align 8, !alias.scope !43662, !noalias !43663, !noundef !26 ; 2 uses
  %i.lx = fcmp uno float %i.lw, 0.000000e+00
  %i.ly = getelementptr inbounds nuw i8, ptr %i.dh, i64 1504
  %i.lz = load float, ptr %i.ly, align 8, !alias.scope !43664, !noalias !43665, !noundef !26 ; 2 uses
  %i.ma = fcmp ord float %i.lz, 0.000000e+00
  %i.mb = fcmp une float %i.lw, %i.lz
  %.sroa.0.0.i.i.i = select i1 %i.lx, i1 %i.ma, i1 %i.mb
  br i1 %.sroa.0.0.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i", %bb.bl, %bb.q
  %i.mc = icmp eq i64 %.sroa.2799.0169, 0
  br i1 %i.mc, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i"
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.7.0167, i64 16906
  %i.me = load i16, ptr %i.md, align 2, !noalias !43687, !noundef !26
  %i.mf = zext i16 %i.me to i64
  %i.mg = icmp ult i64 %.sroa.21.0161, %i.mf
  br i1 %i.mg, label %.thread142, label %.lr.ph.i.i.i.i

.thread142:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i"
  %i.mh = add nuw nsw i64 %.sroa.21.0161, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit"

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i", %bb.bn
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.mi, %bb.bn ], [ %.sroa.7.0167, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.mj, %bb.bn ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i" ] ; 2 uses
  %i.mi = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !43698, !noundef !26 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i
  %i.mj = add i64 %.sroa.5.037.i.i.i.i, 1         ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 16904
  %i.ml = load i16, ptr %i.mk, align 8, !noalias !43698 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 16906
  %i.mn = load i16, ptr %i.mm, align 2, !noalias !43687, !noundef !26
  %i.mo = icmp ult i16 %i.ml, %i.mn
  br i1 %i.mo, label %bb.bo, label %.lr.ph.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.mp = zext i16 %i.ml to i64                   ; 4 uses
  %i.mq = icmp eq i64 %i.mj, 0
  %i.mr = add nuw nsw i64 %i.mp, 1                ; 2 uses
  br i1 %i.mq, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit", label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 16912
  %i.mt = icmp ult i16 %i.ml, 11
  tail call void @llvm.assume(i1 %i.mt), !noalias !43600
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mr ; 2 uses
  %xtraiter325 = and i64 %i.mj, 7                 ; 2 uses
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %.prol.loopexit322, label %.prol.preheader321

.prol.preheader321:                               ; preds = %bb.bp, %.prol.preheader321
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.mv, %.prol.preheader321 ], [ %i.mu, %bb.bp ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader321 ], [ %i.mj, %bb.bp ]
  %prol.iter327 = phi i64 [ %prol.iter327.next, %.prol.preheader321 ], [ 0, %bb.bp ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !43701, !nonnull !26, !noundef !26 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter327.next = add i64 %prol.iter327, 1   ; 2 uses
  %prol.iter327.cmp.not = icmp eq i64 %prol.iter327.next, %xtraiter325
  br i1 %prol.iter327.cmp.not, label %.prol.loopexit322, label %.prol.preheader321, !llvm.loop !43705

.prol.loopexit322:                                ; preds = %.prol.preheader321, %bb.bp
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bp ], [ %.pn30.i.i.i.i.prol, %.prol.preheader321 ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.mu, %bb.bp ], [ %i.mv, %.prol.preheader321 ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %i.mj, %bb.bp ], [ %.pn28.i.i.i.i.prol, %.prol.preheader321 ]
  %i.mw = icmp ult i64 %.sroa.5.037.i.i.i.i, 7
  br i1 %i.mw, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit", label %.new323

.new323:                                          ; preds = %.prol.loopexit322, %.new323
  %.pn30.in.i.i.i.i = phi ptr [ %i.nf, %.new323 ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit322 ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new323 ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit322 ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !43701, !nonnull !26, !noundef !26
  %i.mx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 16912
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.mx, align 8, !noalias !43701, !nonnull !26, !noundef !26
  %i.my = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.my, align 8, !noalias !43701, !nonnull !26, !noundef !26
  %i.mz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.mz, align 8, !noalias !43701, !nonnull !26, !noundef !26
  %i.na = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.na, align 8, !noalias !43701, !nonnull !26, !noundef !26
  %i.nb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.nb, align 8, !noalias !43701, !nonnull !26, !noundef !26
  %i.nc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.nc, align 8, !noalias !43701, !nonnull !26, !noundef !26
  %i.nd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.nd, align 8, !noalias !43701, !nonnull !26, !noundef !26 ; 2 uses
  %i.ne = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.nf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 16912
  br i1 %i.ne, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit", label %.new323

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i unwind label %bb.br, !noalias !43706

.noexc.i.i:                                       ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.ng = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43600
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit": ; preds = %.prol.loopexit322, %.new323, %.thread142, %bb.bo
  %.sroa.0.0.ph.i.i.i147 = phi ptr [ %i.mi, %bb.bo ], [ %.sroa.7.0167, %.thread142 ], [ %i.mi, %.new323 ], [ %i.mi, %.prol.loopexit322 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i146 = phi i64 [ %i.mp, %bb.bo ], [ %.sroa.21.0161, %.thread142 ], [ %i.mp, %.new323 ], [ %i.mp, %.prol.loopexit322 ] ; 3 uses
  %.sroa.7.0.i.i.i = phi i64 [ %i.mr, %bb.bo ], [ %i.mh, %.thread142 ], [ 0, %.new323 ], [ 0, %.prol.loopexit322 ]
  %.sroa.07.0.i.i.i = phi ptr [ %i.mi, %bb.bo ], [ %.sroa.7.0167, %.thread142 ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit322 ], [ %.pn30.i.i.i.i.7, %.new323 ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i147, i64 8
  %i.ni = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i146, 11
  tail call void @llvm.assume(i1 %i.ni), !noalias !43600
  %i.nj = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %.sroa.6.sroa.4.0.ph.i.i.i146
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i147, i64 272
  %i.nl = getelementptr inbounds nuw [1512 x i8], ptr %i.nk, i64 %.sroa.6.sroa.4.0.ph.i.i.i146
  %i.nm = icmp eq i64 %i.bk, 0
  br i1 %i.nm, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17haed958bbbeaf4644E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !26 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !26
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb1a99a2f4b9b36e4E.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !26  ; 2 uses
  %.not = icmp ne ptr %i.f, null                  ; 2 uses
  %i.g = icmp ne i64 %i.b, 0
  %.not121 = and i1 %i.g, %.not
  br i1 %.not121, label %.lr.ph.preheader, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb1a99a2f4b9b36e4E.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !alias.scope !43707, !noalias !43712, !noundef !26 ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %.not.i.i = icmp ne ptr %i.h, null              ; 3 uses
  %.sink.i.i = select i1 %.not.i.i, i64 %i.b, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !43716, !noalias !43717
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %i.k, i64 undef
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.f to i64
  br label %.lr.ph

_ZN4core4iter6traits8iterator8Iterator8try_fold17hb1a99a2f4b9b36e4E.exit: ; preds = %.loopexit85, %.backedge.i, %.loopexit, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", %.split.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17heda89c863d5a44e7E.exit.i", %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.backedge.i ], [ false, %.loopexit ], [ false, %.split.i ], [ false, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i" ], [ true, %.loopexit85 ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17heda89c863d5a44e7E.exit.i" ]
  ret i1 %.sroa.0.0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge.i
  %.sroa.0.068101 = phi i1 [ true, %.backedge.i ], [ %.not, %.lr.ph.preheader ]
  %.sroa.5.0100 = phi ptr [ %.sroa.07.0.i.i.i46, %.backedge.i ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.1558.099 = phi i64 [ %i.o, %.backedge.i ], [ %i.b, %.lr.ph.preheader ]
  %.sroa.17.098 = phi i1 [ true, %.backedge.i ], [ %.not.i.i, %.lr.ph.preheader ]
  %.sroa.20.097 = phi ptr [ %.sroa.07.0.i.i.i, %.backedge.i ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.29.096 = phi i64 [ %.sroa.7.0.i.i.i, %.backedge.i ], [ %.sroa.10.0.i, %.lr.ph.preheader ] ; 6 uses
  %.sroa.37.095 = phi i64 [ %i.bn, %.backedge.i ], [ %.sink.i.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.24.094 = phi i64 [ 0, %.backedge.i ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.12.093 = phi i64 [ %.sroa.7.0.i.i.i45, %.backedge.i ], [ %i.m, %.lr.ph.preheader ] ; 6 uses
  %.sroa.8.092 = phi i64 [ 0, %.backedge.i ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.o = add i64 %.sroa.1558.099, -1              ; 2 uses
  br i1 %.sroa.0.068101, label %bb.c, label %.critedge.i20

bb.c:                                             ; preds = %.lr.ph
  %.not.i.i21 = icmp eq ptr %.sroa.5.0100, null
  br i1 %.not.i.i21, label %bb.d, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6ab5ffae6e13184E.exit.i26"

bb.d:                                             ; preds = %bb.c
  %i.p = inttoptr i64 %.sroa.8.092 to ptr         ; 3 uses
  %i.q = icmp eq i64 %.sroa.12.093, 0
  br i1 %i.q, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6ab5ffae6e13184E.exit.i26", label %.lr.ph.i.i51.preheader

.lr.ph.i.i51.preheader:                           ; preds = %bb.d
  %xtraiter = and i64 %.sroa.12.093, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol

.lr.ph.i.i51.prol:                                ; preds = %.lr.ph.i.i51.preheader, %.lr.ph.i.i51.prol
  %.sroa.012.015.i.i52.prol = phi ptr [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ], [ %i.p, %.lr.ph.i.i51.preheader ]
  %.sroa.011.014.i.i53.prol = phi i64 [ %i.s, %.lr.ph.i.i51.prol ], [ %.sroa.12.093, %.lr.ph.i.i51.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.prol ], [ 0, %.lr.ph.i.i51.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52.prol, i64 1072
  %i.s = add i64 %.sroa.011.014.i.i53.prol, -1    ; 2 uses
  %.sroa.012.0.i.i54.prol = load ptr, ptr %i.r, align 8, !noalias !43718, !nonnull !26, !noundef !26 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol, !llvm.loop !43727

.lr.ph.i.i51.prol.loopexit:                       ; preds = %.lr.ph.i.i51.prol, %.lr.ph.i.i51.preheader
  %.sroa.012.0.i.i54.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.012.015.i.i52.unr = phi ptr [ %i.p, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.011.014.i.i53.unr = phi i64 [ %.sroa.12.093, %.lr.ph.i.i51.preheader ], [ %i.s, %.lr.ph.i.i51.prol ]
  %i.t = icmp ult i64 %.sroa.12.093, 8
  br i1 %i.t, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6ab5ffae6e13184E.exit.i26", label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51
  %.sroa.012.015.i.i52 = phi ptr [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ], [ %.sroa.012.015.i.i52.unr, %.lr.ph.i.i51.prol.loopexit ]
  %.sroa.011.014.i.i53 = phi i64 [ %i.ac, %.lr.ph.i.i51 ], [ %.sroa.011.014.i.i53.unr, %.lr.ph.i.i51.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52, i64 1072
  %.sroa.012.0.i.i54 = load ptr, ptr %i.u, align 8, !noalias !43718, !nonnull !26, !noundef !26
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54, i64 1072
  %.sroa.012.0.i.i54.1 = load ptr, ptr %i.v, align 8, !noalias !43718, !nonnull !26, !noundef !26
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.1, i64 1072
  %.sroa.012.0.i.i54.2 = load ptr, ptr %i.w, align 8, !noalias !43718, !nonnull !26, !noundef !26
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.2, i64 1072
end_hunk_1
begin_hunk_2_@"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hb7090d0156312d5fE":bb.a
  %i.du = getelementptr i8, ptr %i.bm, i64 8
  %.val.i.i.i = load ptr, ptr %i.du, align 8, !noalias !43857, !nonnull !26, !noundef !26
  %bcmp.i.i.i13.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43868, !noalias !43857
  %.not.i = icmp eq i32 %bcmp.i.i.i13.i.i.i, 0
  br i1 %.not.i, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb9fa2e605835a097E.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc17cb0316b02f439E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !26 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !26
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !26  ; 4 uses
  %.not.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %1, align 8, !alias.scope !43872, !noalias !43877, !noundef !26 ; 2 uses
  %.not.i.i = icmp ne ptr %i.g, null              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !43881, !noalias !43882
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %i.i, i64 undef
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = icmp eq i64 %i.b, 0
  %i.l = or i1 %.not.not, %i.k
  br i1 %i.l, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit, label %bb.c

_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit: ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit", %.loopexit, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", %bb.p, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ true, %bb.b ], [ false, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ], [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ false, %.loopexit ], [ false, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i" ], [ true, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i" ], [ false, %bb.p ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 5 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i90.prol.loopexit, label %.lr.ph.i.i90.prol

.lr.ph.i.i90.prol:                                ; preds = %.lr.ph.i.i90.preheader, %.lr.ph.i.i90.prol
  %.sroa.012.015.i.i91.prol = phi ptr [ %.sroa.012.0.i.i93.prol, %.lr.ph.i.i90.prol ], [ %i.f, %.lr.ph.i.i90.preheader ]
  %.sroa.011.014.i.i92.prol = phi i64 [ %i.q, %.lr.ph.i.i90.prol ], [ %i.n, %.lr.ph.i.i90.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i90.prol ], [ 0, %.lr.ph.i.i90.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i91.prol, i64 544
  %i.q = add i64 %.sroa.011.014.i.i92.prol, -1    ; 2 uses
  %.sroa.012.0.i.i93.prol = load ptr, ptr %i.p, align 8, !noalias !43883, !nonnull !26, !noundef !26 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i90.prol.loopexit, label %.lr.ph.i.i90.prol, !llvm.loop !43892

.lr.ph.i.i90.prol.loopexit:                       ; preds = %.lr.ph.i.i90.prol, %.lr.ph.i.i90.preheader
  %.sroa.012.0.i.i93.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i90.preheader ], [ %.sroa.012.0.i.i93.prol, %.lr.ph.i.i90.prol ]
  %.sroa.012.015.i.i91.unr = phi ptr [ %i.f, %.lr.ph.i.i90.preheader ], [ %.sroa.012.0.i.i93.prol, %.lr.ph.i.i90.prol ]
  %.sroa.011.014.i.i92.unr = phi i64 [ %i.n, %.lr.ph.i.i90.preheader ], [ %i.q, %.lr.ph.i.i90.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", label %.lr.ph.i.i90

.lr.ph.i.i90:                                     ; preds = %.lr.ph.i.i90.prol.loopexit, %.lr.ph.i.i90
  %.sroa.012.015.i.i91 = phi ptr [ %.sroa.012.0.i.i93.7, %.lr.ph.i.i90 ], [ %.sroa.012.015.i.i91.unr, %.lr.ph.i.i90.prol.loopexit ]
  %.sroa.011.014.i.i92 = phi i64 [ %i.aa, %.lr.ph.i.i90 ], [ %.sroa.011.014.i.i92.unr, %.lr.ph.i.i90.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i91, i64 544
  %.sroa.012.0.i.i93 = load ptr, ptr %i.s, align 8, !noalias !43883, !nonnull !26, !noundef !26
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93, i64 544
  %.sroa.012.0.i.i93.1 = load ptr, ptr %i.t, align 8, !noalias !43883, !nonnull !26, !noundef !26
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.1, i64 544
  %.sroa.012.0.i.i93.2 = load ptr, ptr %i.u, align 8, !noalias !43883, !nonnull !26, !noundef !26
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.2, i64 544
  %.sroa.012.0.i.i93.3 = load ptr, ptr %i.v, align 8, !noalias !43883, !nonnull !26, !noundef !26
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.3, i64 544
  %.sroa.012.0.i.i93.4 = load ptr, ptr %i.w, align 8, !noalias !43883, !nonnull !26, !noundef !26
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.4, i64 544
  %.sroa.012.0.i.i93.5 = load ptr, ptr %i.x, align 8, !noalias !43883, !nonnull !26, !noundef !26
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.5, i64 544
  %.sroa.012.0.i.i93.6 = load ptr, ptr %i.y, align 8, !noalias !43883, !nonnull !26, !noundef !26
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.6, i64 544
  %i.aa = add i64 %.sroa.011.014.i.i92, -8        ; 2 uses
  %.sroa.012.0.i.i93.7 = load ptr, ptr %i.z, align 8, !noalias !43883, !nonnull !26, !noundef !26 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", label %.lr.ph.i.i90

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65": ; preds = %.lr.ph.i.i90.prol.loopexit, %.lr.ph.i.i90, %bb.c
  %.sroa.012.0.lcssa.i.i95 = phi ptr [ %i.f, %bb.c ], [ %.sroa.012.0.i.i93.lcssa.unr, %.lr.ph.i.i90.prol.loopexit ], [ %.sroa.012.0.i.i93.7, %.lr.ph.i.i90 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i95, i64 538
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !43893, !noundef !26
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %.lr.ph.i.i.i.i71, label %.lr.ph.i

.lr.ph.i.i.i.i71:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", %bb.d
  %.sroa.0.038.i.i.i.i72 = phi ptr [ %i.ae, %bb.d ], [ %.sroa.012.0.lcssa.i.i95, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ] ; 2 uses
  %.sroa.5.037.i.i.i.i73 = phi i64 [ %i.af, %bb.d ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.0.038.i.i.i.i72, align 8, !noalias !43902, !noundef !26 ; 8 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i74, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i71
  %i.af = add i64 %.sroa.5.037.i.i.i.i73, 1       ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i72, i64 536
  %i.ah = load i16, ptr %i.ag, align 8, !noalias !43902 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 538
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !43893, !noundef !26
  %i.ak = icmp ult i16 %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %.lr.ph.i.i.i.i71

bb.e:                                             ; preds = %bb.d
  %i.al = zext i16 %i.ah to i64                   ; 4 uses
  %i.am = icmp eq i64 %i.af, 0
  %i.an = add nuw nsw i64 %i.al, 1                ; 2 uses
  br i1 %i.am, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 544
  %i.ap = icmp ult i16 %i.ah, 11
  tail call void @llvm.assume(i1 %i.ap), !noalias !43905
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %xtraiter232 = and i64 %i.af, 7                 ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %.pn30.in.i.i.i.i79.prol = phi ptr [ %i.ar, %.prol.preheader ], [ %i.aq, %bb.f ]
  %.pn28.in.i.i.i.i80.prol = phi i64 [ %.pn28.i.i.i.i81.prol, %.prol.preheader ], [ %i.af, %bb.f ]
  %prol.iter234 = phi i64 [ %prol.iter234.next, %.prol.preheader ], [ 0, %bb.f ]
  %.pn28.i.i.i.i81.prol = add i64 %.pn28.in.i.i.i.i80.prol, -1 ; 2 uses
  %.pn30.i.i.i.i82.prol = load ptr, ptr %.pn30.in.i.i.i.i79.prol, align 8, !noalias !43906, !nonnull !26, !noundef !26 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.prol, i64 544 ; 2 uses
  %prol.iter234.next = add i64 %prol.iter234, 1   ; 2 uses
  %prol.iter234.cmp.not = icmp eq i64 %prol.iter234.next, %xtraiter232
  br i1 %prol.iter234.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !43910

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.pn30.i.i.i.i82.lcssa.unr = phi ptr [ poison, %bb.f ], [ %.pn30.i.i.i.i82.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i79.unr = phi ptr [ %i.aq, %bb.f ], [ %i.ar, %.prol.preheader ]
  %.pn28.in.i.i.i.i80.unr = phi i64 [ %i.af, %bb.f ], [ %.pn28.i.i.i.i81.prol, %.prol.preheader ]
  %i.as = icmp ult i64 %.sroa.5.037.i.i.i.i73, 7
  br i1 %i.as, label %.lr.ph.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i79 = phi ptr [ %i.bb, %.new ], [ %.pn30.in.i.i.i.i79.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i80 = phi i64 [ %.pn28.i.i.i.i81.7, %.new ], [ %.pn28.in.i.i.i.i80.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i82 = load ptr, ptr %.pn30.in.i.i.i.i79, align 8, !noalias !43906, !nonnull !26, !noundef !26
  %i.at = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82, i64 544
  %.pn30.i.i.i.i82.1 = load ptr, ptr %i.at, align 8, !noalias !43906, !nonnull !26, !noundef !26
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.1, i64 544
  %.pn30.i.i.i.i82.2 = load ptr, ptr %i.au, align 8, !noalias !43906, !nonnull !26, !noundef !26
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.2, i64 544
  %.pn30.i.i.i.i82.3 = load ptr, ptr %i.av, align 8, !noalias !43906, !nonnull !26, !noundef !26
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.3, i64 544
  %.pn30.i.i.i.i82.4 = load ptr, ptr %i.aw, align 8, !noalias !43906, !nonnull !26, !noundef !26
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.4, i64 544
  %.pn30.i.i.i.i82.5 = load ptr, ptr %i.ax, align 8, !noalias !43906, !nonnull !26, !noundef !26
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.5, i64 544
  %.pn30.i.i.i.i82.6 = load ptr, ptr %i.ay, align 8, !noalias !43906, !nonnull !26, !noundef !26
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.6, i64 544
  %.pn28.i.i.i.i81.7 = add i64 %.pn28.in.i.i.i.i80, -8 ; 2 uses
  %.pn30.i.i.i.i82.7 = load ptr, ptr %i.az, align 8, !noalias !43906, !nonnull !26, !noundef !26 ; 2 uses
  %i.ba = icmp eq i64 %.pn28.i.i.i.i81.7, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.7, i64 544
  br i1 %i.ba, label %.lr.ph.i, label %.new

bb.g:                                             ; preds = %.lr.ph.i.i.i.i71
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i88 unwind label %bb.h, !noalias !43911

.noexc.i.i88:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43905
  unreachable

.lr.ph.i:                                         ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", %bb.e
  %.sroa.0.0.ph.i.i.i78118 = phi ptr [ %i.ae, %bb.e ], [ %.sroa.012.0.lcssa.i.i95, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ], [ %i.ae, %.new ], [ %i.ae, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i76117 = phi i64 [ %i.al, %bb.e ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ], [ %i.al, %.new ], [ %i.al, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i84 = phi i64 [ %i.an, %bb.e ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i85 = phi ptr [ %i.ae, %bb.e ], [ %.sroa.012.0.lcssa.i.i95, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ], [ %.pn30.i.i.i.i82.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i82.7, %.new ]
  %i.bd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i76117, 11
  tail call void @llvm.assume(i1 %i.bd), !noalias !43905
  %i.be = icmp ne i64 %i.b, 0
  %.not210 = and i1 %i.be, %.not.i.i
  br i1 %.not210, label %.lr.ph.preheader, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i78118, i64 272
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.sroa.6.sroa.4.0.ph.i.i.i76117
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i78118, i64 8
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i76117
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit"
  %.sroa.27100.0171.in = phi i64 [ %.sroa.27100.0171, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.b, %.lr.ph.preheader ]
  %i.bj = phi ptr [ %i.ff, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %.pn149170 = phi ptr [ %i.fh, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.bg, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.0169 = phi ptr [ %.sroa.07.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %.sroa.07.0.i.i.i85, %.lr.ph.preheader ] ; 4 uses
  %.sroa.31.0168 = phi i1 [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %.not.i.i, %.lr.ph.preheader ]
  %.sroa.34.0167 = phi ptr [ %.sroa.07.0.i.i.i47, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.43.0166 = phi i64 [ %.sroa.7.0.i.i.i46, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %.sroa.10.0.i, %.lr.ph.preheader ] ; 6 uses
  %.sroa.51.0165 = phi i64 [ %i.bk, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.b, %.lr.ph.preheader ]
  %.sroa.38.0164 = phi i64 [ 0, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.21.0163 = phi i64 [ %.sroa.7.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %.sroa.7.0.i.i.i84, %.lr.ph.preheader ] ; 3 uses
  %.sroa.27100.0171 = add i64 %.sroa.27100.0171.in, -1 ; 2 uses
  %i.bk = add i64 %.sroa.51.0165, -1              ; 2 uses
  br i1 %.sroa.31.0168, label %bb.i, label %.critedge.i21

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i22 = icmp eq ptr %.sroa.34.0167, null
  br i1 %.not.i.i22, label %bb.j, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27"

bb.j:                                             ; preds = %bb.i
  %i.bl = inttoptr i64 %.sroa.38.0164 to ptr      ; 3 uses
  %i.bm = icmp eq i64 %.sroa.43.0166, 0
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27", label %.lr.ph.i.i52.preheader

.lr.ph.i.i52.preheader:                           ; preds = %bb.j
  %xtraiter235 = and i64 %.sroa.43.0166, 7        ; 2 uses
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.lr.ph.i.i52.prol.loopexit, label %.lr.ph.i.i52.prol

.lr.ph.i.i52.prol:                                ; preds = %.lr.ph.i.i52.preheader, %.lr.ph.i.i52.prol
  %.sroa.012.015.i.i53.prol = phi ptr [ %.sroa.012.0.i.i55.prol, %.lr.ph.i.i52.prol ], [ %i.bl, %.lr.ph.i.i52.preheader ]
  %.sroa.011.014.i.i54.prol = phi i64 [ %i.bo, %.lr.ph.i.i52.prol ], [ %.sroa.43.0166, %.lr.ph.i.i52.preheader ]
  %prol.iter237 = phi i64 [ %prol.iter237.next, %.lr.ph.i.i52.prol ], [ 0, %.lr.ph.i.i52.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i53.prol, i64 544
  %i.bo = add i64 %.sroa.011.014.i.i54.prol, -1   ; 2 uses
  %.sroa.012.0.i.i55.prol = load ptr, ptr %i.bn, align 8, !noalias !43912, !nonnull !26, !noundef !26 ; 3 uses
  %prol.iter237.next = add i64 %prol.iter237, 1   ; 2 uses
  %prol.iter237.cmp.not = icmp eq i64 %prol.iter237.next, %xtraiter235
  br i1 %prol.iter237.cmp.not, label %.lr.ph.i.i52.prol.loopexit, label %.lr.ph.i.i52.prol, !llvm.loop !43917

.lr.ph.i.i52.prol.loopexit:                       ; preds = %.lr.ph.i.i52.prol, %.lr.ph.i.i52.preheader
  %.sroa.012.0.i.i55.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.preheader ], [ %.sroa.012.0.i.i55.prol, %.lr.ph.i.i52.prol ]
  %.sroa.012.015.i.i53.unr = phi ptr [ %i.bl, %.lr.ph.i.i52.preheader ], [ %.sroa.012.0.i.i55.prol, %.lr.ph.i.i52.prol ]
  %.sroa.011.014.i.i54.unr = phi i64 [ %.sroa.43.0166, %.lr.ph.i.i52.preheader ], [ %i.bo, %.lr.ph.i.i52.prol ]
  %i.bp = icmp ult i64 %.sroa.43.0166, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27", label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %.lr.ph.i.i52.prol.loopexit, %.lr.ph.i.i52
  %.sroa.012.015.i.i53 = phi ptr [ %.sroa.012.0.i.i55.7, %.lr.ph.i.i52 ], [ %.sroa.012.015.i.i53.unr, %.lr.ph.i.i52.prol.loopexit ]
  %.sroa.011.014.i.i54 = phi i64 [ %i.by, %.lr.ph.i.i52 ], [ %.sroa.011.014.i.i54.unr, %.lr.ph.i.i52.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i53, i64 544
  %.sroa.012.0.i.i55 = load ptr, ptr %i.bq, align 8, !noalias !43912, !nonnull !26, !noundef !26
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55, i64 544
  %.sroa.012.0.i.i55.1 = load ptr, ptr %i.br, align 8, !noalias !43912, !nonnull !26, !noundef !26
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.1, i64 544
  %.sroa.012.0.i.i55.2 = load ptr, ptr %i.bs, align 8, !noalias !43912, !nonnull !26, !noundef !26
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.2, i64 544
  %.sroa.012.0.i.i55.3 = load ptr, ptr %i.bt, align 8, !noalias !43912, !nonnull !26, !noundef !26
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.3, i64 544
  %.sroa.012.0.i.i55.4 = load ptr, ptr %i.bu, align 8, !noalias !43912, !nonnull !26, !noundef !26
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.4, i64 544
  %.sroa.012.0.i.i55.5 = load ptr, ptr %i.bv, align 8, !noalias !43912, !nonnull !26, !noundef !26
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.5, i64 544
  %.sroa.012.0.i.i55.6 = load ptr, ptr %i.bw, align 8, !noalias !43912, !nonnull !26, !noundef !26
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.6, i64 544
  %i.by = add i64 %.sroa.011.014.i.i54, -8        ; 2 uses
  %.sroa.012.0.i.i55.7 = load ptr, ptr %i.bx, align 8, !noalias !43912, !nonnull !26, !noundef !26 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27", label %.lr.ph.i.i52

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27": ; preds = %.lr.ph.i.i52.prol.loopexit, %.lr.ph.i.i52, %bb.j, %bb.i
  %.sroa.37.0.copyload.i.i28 = phi i64 [ %.sroa.43.0166, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i52 ], [ 0, %.lr.ph.i.i52.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i29 = phi i64 [ %.sroa.38.0164, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i52 ], [ 0, %.lr.ph.i.i52.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i30 = phi ptr [ %.sroa.34.0167, %bb.i ], [ %i.bl, %bb.j ], [ %.sroa.012.0.i.i55.lcssa.unr, %.lr.ph.i.i52.prol.loopexit ], [ %.sroa.012.0.i.i55.7, %.lr.ph.i.i52 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i30, i64 538
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !43918, !noundef !26
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp ult i64 %.sroa.37.0.copyload.i.i28, %i.cc
  br i1 %i.cd, label %bb.l, label %.lr.ph.i.i.i.i33

.lr.ph.i.i.i.i33:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27", %bb.k
  %.sroa.0.038.i.i.i.i34 = phi ptr [ %i.ce, %bb.k ], [ %.sroa.05.0.copyload.i.i30, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ] ; 2 uses
  %.sroa.5.037.i.i.i.i35 = phi i64 [ %i.cg, %bb.k ], [ %.sroa.26.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ]
  %i.ce = load ptr, ptr %.sroa.0.038.i.i.i.i34, align 8, !noalias !43927, !noundef !26 ; 4 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i36, label %bb.n, label %bb.k

._crit_edge.loopexit.i.i.i.i37:                   ; preds = %bb.k
  %i.cf = zext i16 %i.ci to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i33
  %i.cg = add i64 %.sroa.5.037.i.i.i.i35, 1       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i34, i64 536
  %i.ci = load i16, ptr %i.ch, align 8, !noalias !43927 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 538
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !43918, !noundef !26
  %i.cl = icmp ult i16 %i.ci, %i.ck
  br i1 %i.cl, label %._crit_edge.loopexit.i.i.i.i37, label %.lr.ph.i.i.i.i33

bb.l:                                             ; preds = %._crit_edge.loopexit.i.i.i.i37, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27"
  %.sroa.6.sroa.4.0.ph.i.i.i38 = phi i64 [ %.sroa.37.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ], [ %i.cf, %._crit_edge.loopexit.i.i.i.i37 ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i39 = phi i64 [ %.sroa.26.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ], [ %i.cg, %._crit_edge.loopexit.i.i.i.i37 ] ; 5 uses
  %.sroa.0.0.ph.i.i.i40 = phi ptr [ %.sroa.05.0.copyload.i.i30, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ], [ %i.ce, %._crit_edge.loopexit.i.i.i.i37 ] ; 4 uses
  %i.cm = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i39, 0
  %i.cn = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i38, 1 ; 2 uses
  br i1 %i.cm, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i40, i64 544
  %i.cp = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i38, 11
  tail call void @llvm.assume(i1 %i.cp), !noalias !43905
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %xtraiter241 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i39, 7 ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.prol.loopexit239, label %.prol.preheader238

.prol.preheader238:                               ; preds = %bb.m, %.prol.preheader238
  %.pn30.in.i.i.i.i41.prol = phi ptr [ %i.cr, %.prol.preheader238 ], [ %i.cq, %bb.m ]
  %.pn28.in.i.i.i.i42.prol = phi i64 [ %.pn28.i.i.i.i43.prol, %.prol.preheader238 ], [ %.sroa.6.sroa.0.0.ph.i.i.i39, %bb.m ]
  %prol.iter243 = phi i64 [ %prol.iter243.next, %.prol.preheader238 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i43.prol = add i64 %.pn28.in.i.i.i.i42.prol, -1 ; 2 uses
  %.pn30.i.i.i.i44.prol = load ptr, ptr %.pn30.in.i.i.i.i41.prol, align 8, !noalias !43930, !nonnull !26, !noundef !26 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.prol, i64 544 ; 2 uses
  %prol.iter243.next = add i64 %prol.iter243, 1   ; 2 uses
  %prol.iter243.cmp.not = icmp eq i64 %prol.iter243.next, %xtraiter241
  br i1 %prol.iter243.cmp.not, label %.prol.loopexit239, label %.prol.preheader238, !llvm.loop !43934

.prol.loopexit239:                                ; preds = %.prol.preheader238, %bb.m
  %.pn30.i.i.i.i44.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i44.prol, %.prol.preheader238 ]
  %.pn30.in.i.i.i.i41.unr = phi ptr [ %i.cq, %bb.m ], [ %i.cr, %.prol.preheader238 ]
  %.pn28.in.i.i.i.i42.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i39, %bb.m ], [ %.pn28.i.i.i.i43.prol, %.prol.preheader238 ]
  %i.cs = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i39, 8
  br i1 %i.cs, label %.loopexit, label %.new240

.new240:                                          ; preds = %.prol.loopexit239, %.new240
  %.pn30.in.i.i.i.i41 = phi ptr [ %i.db, %.new240 ], [ %.pn30.in.i.i.i.i41.unr, %.prol.loopexit239 ]
  %.pn28.in.i.i.i.i42 = phi i64 [ %.pn28.i.i.i.i43.7, %.new240 ], [ %.pn28.in.i.i.i.i42.unr, %.prol.loopexit239 ]
  %.pn30.i.i.i.i44 = load ptr, ptr %.pn30.in.i.i.i.i41, align 8, !noalias !43930, !nonnull !26, !noundef !26
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44, i64 544
  %.pn30.i.i.i.i44.1 = load ptr, ptr %i.ct, align 8, !noalias !43930, !nonnull !26, !noundef !26
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.1, i64 544
  %.pn30.i.i.i.i44.2 = load ptr, ptr %i.cu, align 8, !noalias !43930, !nonnull !26, !noundef !26
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.2, i64 544
  %.pn30.i.i.i.i44.3 = load ptr, ptr %i.cv, align 8, !noalias !43930, !nonnull !26, !noundef !26
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.3, i64 544
  %.pn30.i.i.i.i44.4 = load ptr, ptr %i.cw, align 8, !noalias !43930, !nonnull !26, !noundef !26
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.4, i64 544
  %.pn30.i.i.i.i44.5 = load ptr, ptr %i.cx, align 8, !noalias !43930, !nonnull !26, !noundef !26
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.5, i64 544
  %.pn30.i.i.i.i44.6 = load ptr, ptr %i.cy, align 8, !noalias !43930, !nonnull !26, !noundef !26
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.6, i64 544
  %.pn28.i.i.i.i43.7 = add i64 %.pn28.in.i.i.i.i42, -8 ; 2 uses
  %.pn30.i.i.i.i44.7 = load ptr, ptr %i.cz, align 8, !noalias !43930, !nonnull !26, !noundef !26 ; 2 uses
  %i.da = icmp eq i64 %.pn28.i.i.i.i43.7, 0
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.7, i64 544
  br i1 %i.da, label %.loopexit, label %.new240

bb.n:                                             ; preds = %.lr.ph.i.i.i.i33
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i50 unwind label %bb.o, !noalias !43935

.noexc.i.i50:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43905
  unreachable

.critedge.i21:                                    ; preds = %.lr.ph
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #57, !noalias !43936
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit239, %.new240, %bb.l
  %.sroa.7.0.i.i.i46 = phi i64 [ %i.cn, %bb.l ], [ 0, %.new240 ], [ 0, %.prol.loopexit239 ]
  %.sroa.07.0.i.i.i47 = phi ptr [ %.sroa.0.0.ph.i.i.i40, %bb.l ], [ %.pn30.i.i.i.i44.lcssa.unr, %.prol.loopexit239 ], [ %.pn30.i.i.i.i44.7, %.new240 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i40, i64 8
  %i.de = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i38, 11
  tail call void @llvm.assume(i1 %i.de), !noalias !43905
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.sroa.6.sroa.4.0.ph.i.i.i38 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i40, i64 272
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %.sroa.6.sroa.4.0.ph.i.i.i38 ; 2 uses
  %i.di = getelementptr i8, ptr %i.bj, i64 16
  %.val4.i.i.i = load i64, ptr %i.di, align 8, !noalias !43937, !noundef !26 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.df, i64 16
  %.val6.i.i.i = load i64, ptr %i.dj, align 8, !noalias !43937, !noundef !26
  %.not.i.i.i.i.i.i = icmp eq i64 %.val4.i.i.i, %.val6.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i": ; preds = %.loopexit
  %i.dk = getelementptr i8, ptr %i.df, i64 8
  %.val5.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !43937, !nonnull !26, !noundef !26
  %i.dl = getelementptr i8, ptr %i.bj, i64 8
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !43937, !nonnull !26, !noundef !26
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43944, !noalias !43937
  %i.dm = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dm, label %bb.p, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

bb.p:                                             ; preds = %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i"
  %i.dn = getelementptr i8, ptr %.pn149170, i64 8
  %.val7.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !43937, !nonnull !26, !noundef !26
  %i.do = getelementptr i8, ptr %.pn149170, i64 16
  %.val8.i.i.i = load i64, ptr %i.do, align 8, !noalias !43937, !noundef !26 ; 3 uses
  %i.dp = getelementptr i8, ptr %i.dh, i64 8
  %.val9.i.i.i = load ptr, ptr %i.dp, align 8, !noalias !43937, !nonnull !26, !noundef !26
  %i.dq = getelementptr i8, ptr %i.dh, i64 16
  %.val10.i.i.i = load i64, ptr %i.dq, align 8, !noalias !43937, !noundef !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43951)
  %.not.i.i.i.i.i = icmp eq i64 %.val8.i.i.i, %.val10.i.i.i
  br i1 %.not.i.i.i.i.i, label %.preheader.split.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

.preheader.split.i.i.i.i.i:                       ; preds = %bb.p
  %.not16.i.i.i.i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %.not16.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i", label %.lr.ph.i.i.i.i.i

bb.q:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i
  %i.dr = add nuw i64 %.sroa.01.012.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dr, %.val8.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.split.i.i.i.i.i, %bb.q
  %.sroa.01.012.i.i.i.i.i = phi i64 [ %i.dr, %bb.q ], [ 0, %.preheader.split.i.i.i.i.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %.val7.i.i.i, i64 %.sroa.01.012.i.i.i.i.i ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %.val9.i.i.i, i64 %.sroa.01.012.i.i.i.i.i ; 2 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.du, align 8, !alias.scope !43948, !noalias !43953, !noundef !26 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 16
  %.val8.i.i.i.i.i = load i64, ptr %i.dv, align 8, !alias.scope !43951, !noalias !43954, !noundef !26
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val6.i.i.i.i.i, %.val8.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dw = getelementptr i8, ptr %i.dt, i64 8
  %.val7.i.i.i.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !43951, !noalias !43954, !nonnull !26, !noundef !26
  %i.dx = getelementptr i8, ptr %i.ds, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !43948, !noalias !43953, !nonnull !26, !noundef !26
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val7.i.i.i.i.i, i64 %.val6.i.i.i.i.i), !alias.scope !43955, !noalias !43959
  %.not10.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i, label %bb.q, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i": ; preds = %bb.q, %.preheader.split.i.i.i.i.i
  %i.dy = icmp eq i64 %.sroa.27100.0171, 0
  br i1 %i.dy, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i"
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.7.0169, i64 538
  %i.ea = load i16, ptr %i.dz, align 2, !noalias !43960, !noundef !26
  %i.eb = zext i16 %i.ea to i64
  %i.ec = icmp ult i64 %.sroa.21.0163, %i.eb
  br i1 %i.ec, label %.thread143, label %.lr.ph.i.i.i.i

.thread143:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i"
  %i.ed = add nuw nsw i64 %.sroa.21.0163, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit"

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i", %bb.r
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.ee, %bb.r ], [ %.sroa.7.0169, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.ef, %bb.r ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i" ] ; 2 uses
  %i.ee = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !43971, !noundef !26 ; 8 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i20, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ef = add i64 %.sroa.5.037.i.i.i.i, 1         ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 536
  %i.eh = load i16, ptr %i.eg, align 8, !noalias !43971 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 538
  %i.ej = load i16, ptr %i.ei, align 2, !noalias !43960, !noundef !26
  %i.ek = icmp ult i16 %i.eh, %i.ej
  br i1 %i.ek, label %bb.s, label %.lr.ph.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.el = zext i16 %i.eh to i64                   ; 4 uses
  %i.em = icmp eq i64 %i.ef, 0
  %i.en = add nuw nsw i64 %i.el, 1                ; 2 uses
  br i1 %i.em, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 544
  %i.ep = icmp ult i16 %i.eh, 11
  tail call void @llvm.assume(i1 %i.ep), !noalias !43905
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.en ; 2 uses
  %xtraiter248 = and i64 %i.ef, 7                 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.prol.loopexit245, label %.prol.preheader244

.prol.preheader244:                               ; preds = %bb.t, %.prol.preheader244
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.er, %.prol.preheader244 ], [ %i.eq, %bb.t ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader244 ], [ %i.ef, %bb.t ]
  %prol.iter250 = phi i64 [ %prol.iter250.next, %.prol.preheader244 ], [ 0, %bb.t ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !43974, !nonnull !26, !noundef !26 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter250.next = add i64 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %.prol.loopexit245, label %.prol.preheader244, !llvm.loop !43978

.prol.loopexit245:                                ; preds = %.prol.preheader244, %bb.t
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.t ], [ %.pn30.i.i.i.i.prol, %.prol.preheader244 ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.eq, %bb.t ], [ %i.er, %.prol.preheader244 ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %i.ef, %bb.t ], [ %.pn28.i.i.i.i.prol, %.prol.preheader244 ]
  %i.es = icmp ult i64 %.sroa.5.037.i.i.i.i, 7
  br i1 %i.es, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit", label %.new246

.new246:                                          ; preds = %.prol.loopexit245, %.new246
  %.pn30.in.i.i.i.i = phi ptr [ %i.fb, %.new246 ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit245 ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new246 ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit245 ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !43974, !nonnull !26, !noundef !26
  %i.et = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 544
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.et, align 8, !noalias !43974, !nonnull !26, !noundef !26
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.eu, align 8, !noalias !43974, !nonnull !26, !noundef !26
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.ev, align 8, !noalias !43974, !nonnull !26, !noundef !26
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.ew, align 8, !noalias !43974, !nonnull !26, !noundef !26
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.ex, align 8, !noalias !43974, !nonnull !26, !noundef !26
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.ey, align 8, !noalias !43974, !nonnull !26, !noundef !26
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.ez, align 8, !noalias !43974, !nonnull !26, !noundef !26 ; 2 uses
  %i.fa = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 544
  br i1 %i.fa, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit", label %.new246

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i unwind label %bb.v, !noalias !43979

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43905
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit": ; preds = %.prol.loopexit245, %.new246, %.thread143, %bb.s
  %.sroa.0.0.ph.i.i.i148 = phi ptr [ %i.ee, %bb.s ], [ %.sroa.7.0169, %.thread143 ], [ %i.ee, %.new246 ], [ %i.ee, %.prol.loopexit245 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i147 = phi i64 [ %i.el, %bb.s ], [ %.sroa.21.0163, %.thread143 ], [ %i.el, %.new246 ], [ %i.el, %.prol.loopexit245 ] ; 3 uses
  %.sroa.7.0.i.i.i = phi i64 [ %i.en, %bb.s ], [ %i.ed, %.thread143 ], [ 0, %.new246 ], [ 0, %.prol.loopexit245 ]
  %.sroa.07.0.i.i.i = phi ptr [ %i.ee, %bb.s ], [ %.sroa.7.0169, %.thread143 ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit245 ], [ %.pn30.i.i.i.i.7, %.new246 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i148, i64 8
  %i.fe = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i147, 11
  tail call void @llvm.assume(i1 %i.fe), !noalias !43905
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %.sroa.6.sroa.4.0.ph.i.i.i147
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i148, i64 272
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %.sroa.6.sroa.4.0.ph.i.i.i147
  %i.fi = icmp eq i64 %i.bk, 0
  br i1 %i.fi, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$meilisearch_types..dynamic_search_rules..Selector$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17he8eae8d5f47b3a07E"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [752 x i8], align 8               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [752 x i8], align 8               ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [752 x i8], align 8               ; 7 uses
  %i.g = alloca [752 x i8], align 8               ; 4 uses
  %i.h = alloca [752 x i8], align 8               ; 5 uses
  %i.i = alloca [752 x i8], align 8               ; 4 uses
  %i.j = alloca [752 x i8], align 8               ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [72 x i8], align 8                ; 11 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [752 x i8], align 8               ; 6 uses
  %i.q = alloca [752 x i8], align 8               ; 4 uses
  %i.r = alloca [408 x i8], align 8               ; 20 uses
  %i.s = alloca [408 x i8], align 8               ; 10 uses
  %i.t = alloca [408 x i8], align 8               ; 4 uses
  %i.u = alloca [408 x i8], align 8               ; 4 uses
  %i.v = alloca [752 x i8], align 8               ; 5 uses
  %i.w = alloca [752 x i8], align 8               ; 4 uses
  %i.x = alloca [752 x i8], align 8               ; 8 uses
  %i.y = alloca [752 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.x)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.z, %.body, %.body.thread75, %bb.aj, %bb.c
  %.pn45 = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.ce, %bb.aj ], [ %i.br, %bb.z ], [ %.pn4378, %.body.thread75 ], [ %i.bq, %.body ]
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
          to label %common.resume unwind label %bb.ak

bb.c:                                             ; preds = %bb.ae, %bb.ad, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.v, ptr noundef nonnull align 8 dereferenceable(752) %i.x, i64 752, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 -9223372036854775803, ptr %i.e, align 8
  store i64 0, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  store i64 -9223372036854775806, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 -9223372036854775808, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 -9223372036854775808, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 0, ptr %i.af, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i64 -9223372036854775808, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 360
  store ptr null, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.p)
          to label %bb.e unwind label %bb.an

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !43980)
  call void @llvm.experimental.noalias.scope.decl(metadata !43983)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 432 ; 2 uses
  %.val.i = load i64, ptr %i.ai, align 8, !range !152, !alias.scope !43983, !noalias !43980, !noundef !26 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 440 ; 2 uses
  %i.ak = icmp ne i64 %.val.i, -9223372036854775807
  call void @llvm.assume(i1 %i.ak)
end_hunk_2
