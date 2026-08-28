Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.1?download=true
begin_hunk_0_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str:bb.a
  %i.lq = add <16 x i8> %i.lp, %i.jr              ; 2 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x i64> %i.ju, i64 0
  %i.lr = icmp eq i64 %.sroa.01.0.vec.extract.i, 0
  %.sroa.01.8.vec.extract.i = extractelement <2 x i64> %i.ju, i64 1
  %i.ls = icmp eq i64 %.sroa.01.8.vec.extract.i, 0
  %.sroa.0.0.i18 = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %.sroa.0.0.i18, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.lt = icmp eq <16 x i8> %i.ji, splat (i8 10)
  %.neg = sext <16 x i1> %i.lt to <16 x i8>
  %.neg533 = shufflevector <16 x i8> %.neg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %.neg534 = select <16 x i1> %i.js, <16 x i8> %.neg533, <16 x i8> zeroinitializer
  %i.lu = add <16 x i8> %i.lq, %.neg534           ; 4 uses
  %.not535 = icmp ne i64 %.sroa.15.1.i583, 16
  %i.lv = icmp eq i8 %i.jx, 13
  %or.cond692 = select i1 %.not535, i1 %i.lv, i1 false
  br i1 %or.cond692, label %bb.af, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.af:                                            ; preds = %bb.ae
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 16
  %i.lx = load i8, ptr %i.lw, align 16, !alias.scope !48, !noalias !51, !noundef !8
  %i.ly = icmp eq i8 %i.lx, 10
  br i1 %i.ly, label %bb.ag, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ag:                                            ; preds = %bb.af
  %.sroa.0.15.vec.extract.i = extractelement <16 x i8> %i.lu, i64 15
  %i.lz = add i8 %.sroa.0.15.vec.extract.i, -1
  %.sroa.0.15.vec.insert.i = insertelement <16 x i8> %i.lu, i8 %i.lz, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.ae, %bb.af, %bb.ag, %.thread
  %.sroa.0228.5.in = phi <16 x i8> [ %i.lq, %.thread ], [ %.sroa.0.15.vec.insert.i, %bb.ag ], [ %i.lu, %bb.af ], [ %i.lu, %bb.ae ]
  %i.ma = add <16 x i8> %.sroa.0228.5.in, %i.jg   ; 2 uses
  %i.mb = add i64 %.sroa.028.0.i581, 1            ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 255
  br i1 %i.mc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.md = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ma, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i28 = extractelement <2 x i64> %i.md, i64 0
  %.sroa.0.8.vec.extract.i29 = extractelement <2 x i64> %i.md, i64 1
  %i.me = add i64 %.sroa.0.8.vec.extract.i29, %.sroa.023.1.i582
  %i.mf = add i64 %i.me, %.sroa.0.0.vec.extract.i28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.mg = phi <16 x i8> [ zeroinitializer, %bb.ah ], [ %i.ma, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %.sroa.028.1.i = phi i64 [ 0, %bb.ah ], [ %i.mb, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.023.2.i = phi i64 [ %i.mf, %bb.ah ], [ %.sroa.023.1.i582, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %i.mh = add nsw i64 %.sroa.15.1.i583, -16       ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 16 ; 2 uses
  %i.mj = icmp ugt i64 %i.mh, 15
  br i1 %i.mj, label %.lr.ph586, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader

.lr.ph594:                                        ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %.sroa.0.0.i8593 = phi i64 [ %i.ne, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ] ; 5 uses
  %.sroa.012.0.i7592 = phi i64 [ %.sroa.012.1.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ] ; 8 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %.sroa.0.0.i8593 ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !alias.scope !53, !noundef !8 ; 3 uses
  %i.mm = add i8 %i.ml, -10
  %spec.select.i163 = icmp ult i8 %i.mm, 4
  br i1 %spec.select.i163, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph594
  switch i8 %i.ml, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit [
    i8 -62, label %bb.al
    i8 -30, label %bb.an
  ]

bb.ak:                                            ; preds = %.lr.ph594
  %i.mn = add nuw i64 %.sroa.012.0.i7592, 1       ; 3 uses
  %i.mo = icmp eq i8 %i.ml, 13
  br i1 %i.mo, label %bb.aq, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.al:                                            ; preds = %bb.aj
  %i.mp = add nuw nsw i64 %.sroa.0.0.i8593, 1     ; 2 uses
  %i.mq = icmp samesign ult i64 %i.mp, %.sroa.15.1.i.lcssa
  br i1 %i.mq, label %bb.am, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.am:                                            ; preds = %bb.al
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.mp
  %i.ms = load i8, ptr %i.mr, align 1, !alias.scope !53, !noundef !8
  %i.mt = icmp eq i8 %i.ms, -123
  %i.mu = zext i1 %i.mt to i64
  %spec.select531 = add nuw i64 %.sroa.012.0.i7592, %i.mu
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.an:                                            ; preds = %bb.aj
  %i.mv = add nuw i64 %.sroa.0.0.i8593, 2         ; 2 uses
  %i.mw = icmp ult i64 %i.mv, %.sroa.15.1.i.lcssa
  br i1 %i.mw, label %bb.ao, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ao:                                            ; preds = %bb.an
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !alias.scope !53, !noundef !8
  %i.mz = icmp eq i8 %i.my, -128
  br i1 %i.mz, label %bb.ap, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ap:                                            ; preds = %bb.ao
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.mv
  %i.nb = load i8, ptr %i.na, align 1, !alias.scope !53, !noundef !8
  %.mask.i9 = and i8 %i.nb, -2
  %i.nc = icmp eq i8 %.mask.i9, -88
  %i.nd = zext i1 %i.nc to i64
  %spec.select.i = add nuw i64 %.sroa.012.0.i7592, %i.nd
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.am, %bb.al, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj
  %.sroa.012.1.i = phi i64 [ %.sroa.012.0.i7592, %bb.an ], [ %spec.select22.i, %bb.ar ], [ %i.mn, %bb.aq ], [ %i.mn, %bb.ak ], [ %.sroa.012.0.i7592, %bb.al ], [ %.sroa.012.0.i7592, %bb.aj ], [ %spec.select.i, %bb.ap ], [ %.sroa.012.0.i7592, %bb.ao ], [ %spec.select531, %bb.am ] ; 3 uses
  %i.ne = add nuw nsw i64 %.sroa.0.0.i8593, 1     ; 2 uses
  %i.nf = icmp samesign ult i64 %i.ne, %.sroa.15.1.i.lcssa
  %i.ng = icmp ult i64 %.sroa.012.1.i, %.sroa.15.1.i.lcssa
  %or.cond.i = select i1 %i.nf, i1 %i.ng, i1 false
  br i1 %or.cond.i, label %.lr.ph594, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit

bb.aq:                                            ; preds = %bb.ak
  %i.nh = add nuw nsw i64 %.sroa.0.0.i8593, 1     ; 2 uses
  %i.ni = icmp samesign ult i64 %i.nh, %.sroa.15.1.i.lcssa
  br i1 %i.ni, label %bb.ar, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ar:                                            ; preds = %bb.aq
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.nh
  %i.nk = load i8, ptr %i.nj, align 1, !alias.scope !53, !noundef !8
  %i.nl = icmp eq i8 %i.nk, 10
  %spec.select22.i = select i1 %i.nl, i64 %.sroa.012.0.i7592, i64 %i.mn
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit: ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.c, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader
  %.sroa.023.1.i.lcssa674 = phi i64 [ %.sroa.023.1.i.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.023.1.i.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.lcssa673 = phi <16 x i8> [ %.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ zeroinitializer, %bb.c ], [ %.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.0.3.i640654672 = phi i64 [ %.sroa.0.3.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.0.3.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.0.0.i629638655671 = phi i64 [ %.sroa.0.0.i629, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.0.0.i629, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.012.0.i7.lcssa = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.012.1.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %i.nm = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa673, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i30 = extractelement <2 x i64> %i.nm, i64 0
  %.sroa.0.8.vec.extract.i31 = extractelement <2 x i64> %i.nm, i64 1
  %i.nn = add i64 %.sroa.012.0.i7.lcssa, %.sroa.023.1.i.lcssa674
  %i.no = add i64 %i.nn, %.sroa.0.8.vec.extract.i31
  %i.np = add i64 %i.no, %.sroa.0.0.vec.extract.i30
  store i64 %2, ptr %0, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i629638655671, ptr %i.nq, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.3.i640654672, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.np, ptr %i.ns, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Chars11from_str_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 -1, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %.sroa.66.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 0, ptr %i.f, align 8
  %i.g = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.b unwind label %bb.z       ; 2 uses

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.h = icmp samesign ult i64 %2, 17
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56
  invoke void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
          to label %.noexc103 unwind label %bb.z

.noexc103:                                        ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !noalias !56, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !56, !noundef !8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !56, !nonnull !8, !align !14, !noundef !8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noalias !56, !noundef !8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.q = icmp samesign eq i64 %i.k, 0
  br i1 %i.q, label %.noexc106, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.s = icmp samesign eq i64 %2, 0
  br i1 %i.s, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph1000

.lr.ph:                                           ; preds = %.noexc103, %bb.e
  %.sroa.027.0.i882 = phi ptr [ %i.y, %bb.e ], [ %i.i, %.noexc103 ] ; 2 uses
  %.sroa.013.0.i881 = phi i64 [ %i.z, %bb.e ], [ 0, %.noexc103 ] ; 2 uses
  %.sroa.020.0.i880 = phi i64 [ %i.w, %bb.e ], [ 0, %.noexc103 ]
  %i.t = load i8, ptr %.sroa.027.0.i882, align 1, !noundef !8
  %i.u = icmp sgt i8 %i.t, -65
  %i.v = zext i1 %i.u to i64
  %i.w = add i64 %.sroa.020.0.i880, %i.v          ; 3 uses
  %i.x = icmp ugt i64 %i.w, %3
  br i1 %i.x, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i882, i64 1 ; 2 uses
  %i.z = add nuw i64 %.sroa.013.0.i881, 1
  %i.aa = icmp eq ptr %i.y, %i.p
  br i1 %i.aa, label %.noexc106, label %.lr.ph

.noexc106:                                        ; preds = %bb.e, %.noexc103
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %.noexc103 ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = sub i64 %3, %.sroa.020.0.i.lcssa
  %i.ac = lshr i64 %i.ab, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.o) ; 2 uses
  %i.ad = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i884 = icmp eq i64 %i.ad, 0
  br i1 %.not51.i884, label %._crit_edge, label %.noexc131

._crit_edge:                                      ; preds = %.noexc131, %.noexc106
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %.noexc106 ], [ %i.cd, %.noexc131 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.k, %.noexc106 ], [ %i.ce, %.noexc131 ] ; 2 uses
  %i.ae = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.af = icmp ugt i64 %i.ae, %i.o
  br i1 %i.af, label %.invoke, label %bb.f, !prof !10

bb.f:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  %i.ah = icmp samesign eq i64 %i.ae, %i.o
  br i1 %i.ah, label %.noexc111._crit_edge, label %.noexc111.preheader

.noexc111.preheader:                              ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ae
  br label %.noexc111

.noexc111:                                        ; preds = %.noexc111.preheader, %bb.g
  %.sroa.040.0.i893 = phi ptr [ %i.ap, %bb.g ], [ %i.ai, %.noexc111.preheader ] ; 2 uses
  %.sroa.013.2.i892 = phi i64 [ %i.aq, %bb.g ], [ %.sroa.013.1.i.lcssa, %.noexc111.preheader ] ; 2 uses
  %.sroa.020.2.i891 = phi i64 [ %i.ao, %bb.g ], [ %.sroa.020.1.i.lcssa, %.noexc111.preheader ] ; 2 uses
  %i.aj = load <16 x i8>, ptr %.sroa.040.0.i893, align 16
  %i.ak = icmp slt <16 x i8> %i.aj, splat (i8 -64)
  %i.al = zext <16 x i1> %i.ak to <16 x i8>
  %i.am = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.al, <16 x i8> zeroinitializer)
  %.neg862 = add i64 %.sroa.020.2.i891, 16
  %i.an = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.am)
  %i.ao = sub i64 %.neg862, %i.an                 ; 3 uses
  %.not52.i = icmp ult i64 %i.ao, %3
  br i1 %.not52.i, label %bb.g, label %.noexc111._crit_edge

bb.g:                                             ; preds = %.noexc111
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i893, i64 16 ; 2 uses
  %i.aq = add i64 %.sroa.013.2.i892, 16           ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.ag
  br i1 %i.ar, label %.noexc111._crit_edge, label %.noexc111

.noexc111._crit_edge:                             ; preds = %bb.g, %.noexc111, %bb.f
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.f ], [ %.sroa.020.2.i891, %.noexc111 ], [ %i.ao, %bb.g ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.f ], [ %.sroa.013.2.i892, %.noexc111 ], [ %i.aq, %bb.g ] ; 5 uses
  %i.as = icmp ugt i64 %.sroa.013.2.i.lcssa, %2
  br i1 %i.as, label %.invoke, label %bb.h, !prof !10

bb.h:                                             ; preds = %.noexc111._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.au = icmp samesign eq i64 %.sroa.013.2.i.lcssa, %2
  br i1 %i.au, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph903.preheader

.lr.ph903.preheader:                              ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph903

.invoke:                                          ; preds = %.noexc111._crit_edge, %._crit_edge
  %i.aw = phi i64 [ %i.ae, %._crit_edge ], [ %.sroa.013.2.i.lcssa, %.noexc111._crit_edge ]
  %i.ax = phi i64 [ %i.o, %._crit_edge ], [ %2, %.noexc111._crit_edge ] ; 2 uses
  %i.ay = phi ptr [ @4, %._crit_edge ], [ @3, %.noexc111._crit_edge ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef %i.ax, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay) #17
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph903:                                        ; preds = %.lr.ph903.preheader, %bb.i
  %.sroa.036.0.i901 = phi ptr [ %i.be, %bb.i ], [ %i.av, %.lr.ph903.preheader ] ; 2 uses
  %.sroa.013.3.i900 = phi i64 [ %i.bf, %bb.i ], [ %.sroa.013.2.i.lcssa, %.lr.ph903.preheader ] ; 2 uses
  %.sroa.020.3.i899 = phi i64 [ %i.bc, %bb.i ], [ %.sroa.020.2.i.lcssa, %.lr.ph903.preheader ]
  %i.az = load i8, ptr %.sroa.036.0.i901, align 1, !alias.scope !56, !noundef !8
  %i.ba = icmp sgt i8 %i.az, -65
  %i.bb = zext i1 %i.ba to i64
  %i.bc = add i64 %.sroa.020.3.i899, %i.bb        ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %3
  br i1 %i.bd, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph903
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i901, i64 1 ; 2 uses
  %i.bf = add i64 %.sroa.013.3.i900, 1
  %i.bg = icmp eq ptr %i.be, %i.at
  br i1 %i.bg, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph903

.noexc131:                                        ; preds = %.noexc106, %.noexc131
  %.sroa.5.0.i102888 = phi i64 [ %i.bi, %.noexc131 ], [ %i.ad, %.noexc106 ]
  %.sroa.030.0.i887 = phi ptr [ %i.bh, %.noexc131 ], [ %i.m, %.noexc106 ] ; 5 uses
  %.sroa.013.1.i886 = phi i64 [ %i.ce, %.noexc131 ], [ %i.k, %.noexc106 ]
  %.sroa.020.1.i885 = phi i64 [ %i.cd, %.noexc131 ], [ %.sroa.020.0.i.lcssa, %.noexc106 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i887, i64 64
  %i.bi = add i64 %.sroa.5.0.i102888, -4          ; 2 uses
  %i.bj = load <16 x i8>, ptr %.sroa.030.0.i887, align 16
  %i.bk = icmp slt <16 x i8> %i.bj, splat (i8 -64)
  %i.bl = zext <16 x i1> %i.bk to <16 x i8>
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i887, i64 16
  %i.bn = load <16 x i8>, ptr %i.bm, align 16
  %i.bo = icmp slt <16 x i8> %i.bn, splat (i8 -64)
  %i.bp = zext <16 x i1> %i.bo to <16 x i8>
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i887, i64 32
  %i.br = load <16 x i8>, ptr %i.bq, align 16
  %i.bs = icmp slt <16 x i8> %i.br, splat (i8 -64)
  %i.bt = zext <16 x i1> %i.bs to <16 x i8>
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i887, i64 48
  %i.bv = load <16 x i8>, ptr %i.bu, align 16
  %i.bw = icmp slt <16 x i8> %i.bv, splat (i8 -64)
  %i.bx = zext <16 x i1> %i.bw to <16 x i8>
  %i.by = add nuw nsw <16 x i8> %i.bp, %i.bl
  %i.bz = add nuw nsw <16 x i8> %i.by, %i.bt
  %i.ca = add nuw nsw <16 x i8> %i.bz, %i.bx
  %i.cb = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ca, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i885, 64
  %i.cc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.cb)
  %i.cd = sub i64 %.neg, %i.cc                    ; 2 uses
  %i.ce = add i64 %.sroa.013.1.i886, 64           ; 2 uses
  %.not51.i = icmp eq i64 %i.bi, 0
  br i1 %.not51.i, label %._crit_edge, label %.noexc131

bb.j:                                             ; preds = %.lr.ph1000
  %4 = add nuw nsw i64 %.sroa.8573.0997, 1
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0571.0996, i64 1 ; 2 uses
  %i.cf = icmp eq ptr %5, %i.r
  br i1 %i.cf, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph1000

.lr.ph1000:                                       ; preds = %bb.d, %bb.j
  %.sroa.07.0.i998 = phi i64 [ %i.cj, %bb.j ], [ 0, %bb.d ]
  %.sroa.8573.0997 = phi i64 [ %4, %bb.j ], [ 0, %bb.d ] ; 2 uses
  %.sroa.0571.0996 = phi ptr [ %5, %bb.j ], [ %1, %bb.d ] ; 2 uses
  %i.cg = load i8, ptr %.sroa.0571.0996, align 1, !noundef !8
  %i.ch = icmp sgt i8 %i.cg, -65
  %i.ci = zext i1 %i.ch to i64
  %i.cj = add i64 %.sroa.07.0.i998, %i.ci         ; 2 uses
  %i.ck = icmp ugt i64 %i.cj, %3
  br i1 %i.ck, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.j

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph, %bb.i, %.lr.ph903, %.lr.ph1000, %bb.j, %bb.d, %bb.h
  %.sroa.0.0.i98 = phi i64 [ %2, %bb.h ], [ %2, %bb.j ], [ %.sroa.013.3.i900, %.lr.ph903 ], [ %2, %bb.d ], [ %.sroa.8573.0997, %.lr.ph1000 ], [ %2, %bb.i ], [ %.sroa.013.0.i881, %.lr.ph ] ; 19 uses
  %i.cl = icmp eq i64 %.sroa.0.0.i98, 0           ; 2 uses
  br i1 %i.cl, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %.not.i441 = icmp ult i64 %.sroa.0.0.i98, %2
  br i1 %.not.i441, label %bb.l, label %.split.i

.split.i:                                         ; preds = %bb.k
  %i.cm = icmp eq i64 %.sroa.0.0.i98, %2
  br i1 %i.cm, label %bb.m, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i98
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !59, !noundef !8
  %i.cp = icmp sgt i8 %i.co, -65
  br i1 %i.cp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %.split.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.cq = sub nuw i64 %2, %.sroa.0.0.i98          ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i98 ; 9 uses
  %i.cs = icmp samesign ult i64 %i.cq, 16
  br i1 %i.cs, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62
  invoke void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef range(i64 0, -9223372036854775808) %i.cq)
          to label %.noexc65 unwind label %bb.z

.noexc65:                                         ; preds = %bb.n
  %i.ct = load ptr, ptr %i.b, align 8, !noalias !62, !nonnull !8, !noundef !8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !62, !noundef !8 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !62, !nonnull !8, !align !14, !noundef !8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !62, !noundef !8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !62, !nonnull !8, !noundef !8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !62, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62
  %i.de = icmp samesign eq i64 %i.cv, 0
  br i1 %i.de, label %.noexc67, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.noexc65
  %min.iters.check = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check, label %.preheader.i.preheader1111, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.cv, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi1003 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %wide.load = load <2 x i8>, ptr %i.df, align 1, !alias.scope !65
  %wide.load1004 = load <2 x i8>, ptr %i.dg, align 1, !alias.scope !65
  %i.dh = icmp slt <2 x i8> %wide.load, splat (i8 -64)
  %i.di = icmp slt <2 x i8> %wide.load1004, splat (i8 -64)
  %i.dj = zext <2 x i1> %i.dh to <2 x i64>
  %i.dk = zext <2 x i1> %i.di to <2 x i64>
  %i.dl = add <2 x i64> %vec.phi, %i.dj           ; 2 uses
  %i.dm = add <2 x i64> %vec.phi1003, %i.dk       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dm, %i.dl
  %i.do = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %.noexc67, label %.preheader.i.preheader1111

.preheader.i.preheader1111:                       ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.do, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader1111, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.dt, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader1111 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.ds, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader1111 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.dp, align 1, !alias.scope !65, !noundef !8
  %i.dq = icmp slt i8 %.val.i.i, -64
  %i.dr = zext i1 %i.dq to i64
  %i.ds = add i64 %.sroa.02.0.i.i, %i.dr          ; 2 uses
  %i.dt = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.cv
  br i1 %i.du, label %.noexc67, label %.preheader.i, !llvm.loop !69

.noexc67:                                         ; preds = %.preheader.i, %middle.block, %.noexc65
  %.sroa.0.0.i.i = phi i64 [ 0, %.noexc65 ], [ %i.do, %middle.block ], [ %i.ds, %.preheader.i ] ; 3 uses
  %i.dv = icmp ule i64 %.sroa.0.0.i.i, %i.cv
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = and i64 %i.cz, 576460752303423484       ; 3 uses
  %.not.i59907 = icmp eq i64 %i.dw, 0
  br i1 %.not.i59907, label %.noexc70, label %.noexc95

bb.o:                                             ; preds = %bb.m
  %i.dx = icmp samesign eq i64 %.sroa.0.0.i98, %2
  br i1 %i.dx, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit97, label %.preheader978

.preheader978:                                    ; preds = %bb.o
  %min.iters.check1022 = icmp ult i64 %i.cq, 4
  br i1 %min.iters.check1022, label %scalar.ph1021.preheader, label %vector.ph1023

vector.ph1023:                                    ; preds = %.preheader978
  %n.vec1024 = and i64 %i.cq, 12                  ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %wide.load1029 = load <2 x i8>, ptr %i.cr, align 1
  %wide.load1030 = load <2 x i8>, ptr %i.dy, align 1
  %i.dz = icmp sgt <2 x i8> %wide.load1029, splat (i8 -65)
  %i.ea = icmp sgt <2 x i8> %wide.load1030, splat (i8 -65)
  %i.eb = zext <2 x i1> %i.dz to <2 x i64>        ; 2 uses
  %i.ec = zext <2 x i1> %i.ea to <2 x i64>        ; 2 uses
  %i.ed = icmp eq i64 %n.vec1024, 4
  br i1 %i.ed, label %middle.block1032, label %vector.body1025.1

vector.body1025.1:                                ; preds = %vector.ph1023
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %wide.load1029.1 = load <2 x i8>, ptr %i.ee, align 1
  %wide.load1030.1 = load <2 x i8>, ptr %i.ef, align 1
  %i.eg = icmp sgt <2 x i8> %wide.load1029.1, splat (i8 -65)
  %i.eh = icmp sgt <2 x i8> %wide.load1030.1, splat (i8 -65)
  %i.ei = zext <2 x i1> %i.eg to <2 x i64>
  %i.ej = zext <2 x i1> %i.eh to <2 x i64>
  %i.ek = add nuw nsw <2 x i64> %i.eb, %i.ei      ; 2 uses
  %i.el = add nuw nsw <2 x i64> %i.ec, %i.ej      ; 2 uses
  %i.em = icmp eq i64 %n.vec1024, 8
  br i1 %i.em, label %middle.block1032, label %vector.body1025.2

vector.body1025.2:                                ; preds = %vector.body1025.1
  %i.en = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cr, i64 10
  %wide.load1029.2 = load <2 x i8>, ptr %i.en, align 1
  %wide.load1030.2 = load <2 x i8>, ptr %i.eo, align 1
  %i.ep = icmp sgt <2 x i8> %wide.load1029.2, splat (i8 -65)
  %i.eq = icmp sgt <2 x i8> %wide.load1030.2, splat (i8 -65)
  %i.er = zext <2 x i1> %i.ep to <2 x i64>
  %i.es = zext <2 x i1> %i.eq to <2 x i64>
  %i.et = add nuw nsw <2 x i64> %i.ek, %i.er
  %i.eu = add nuw nsw <2 x i64> %i.el, %i.es
  br label %middle.block1032

middle.block1032:                                 ; preds = %vector.body1025.2, %vector.body1025.1, %vector.ph1023
  %.lcssa1104 = phi <2 x i64> [ %i.eb, %vector.ph1023 ], [ %i.ek, %vector.body1025.1 ], [ %i.et, %vector.body1025.2 ]
  %.lcssa1103 = phi <2 x i64> [ %i.ec, %vector.ph1023 ], [ %i.el, %vector.body1025.1 ], [ %i.eu, %vector.body1025.2 ]
  %bin.rdx1033 = add nsw <2 x i64> %.lcssa1103, %.lcssa1104
  %i.ev = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1033) ; 2 uses
  %cmp.n1034 = icmp eq i64 %i.cq, %n.vec1024
  br i1 %cmp.n1034, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit97, label %scalar.ph1021.preheader

scalar.ph1021.preheader:                          ; preds = %.preheader978, %middle.block1032
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader978 ], [ %n.vec1024, %middle.block1032 ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader978 ], [ %i.ev, %middle.block1032 ]
  br label %scalar.ph1021

scalar.ph1021:                                    ; preds = %scalar.ph1021.preheader, %scalar.ph1021
  %.sroa.04.0.i = phi i64 [ %i.fa, %scalar.ph1021 ], [ %.sroa.04.0.i.ph, %scalar.ph1021.preheader ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.ez, %scalar.ph1021 ], [ %.sroa.02.0.i.ph, %scalar.ph1021.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.04.0.i
  %.val.i = load i8, ptr %i.ew, align 1, !noundef !8
  %i.ex = icmp sgt i8 %.val.i, -65
  %i.ey = zext i1 %i.ex to i64
  %i.ez = add i64 %.sroa.02.0.i, %i.ey            ; 2 uses
  %i.fa = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.fb = icmp eq i64 %i.fa, %i.cq
  br i1 %i.fb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit97, label %scalar.ph1021, !llvm.loop !70

.noexc70:                                         ; preds = %.noexc95, %.noexc67
  %.sroa.01.0.i58.lcssa = phi i64 [ %.sroa.0.0.i.i, %.noexc67 ], [ %i.if, %.noexc95 ]
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.dw ; 3 uses
  %i.fd = shl i64 %i.cz, 4
  %.idx = and i64 %i.fd, 48                       ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx
  %i.ff = icmp samesign eq i64 %.idx, 0
  br i1 %i.ff, label %.noexc75, label %.noexc74.preheader

.noexc74.preheader:                               ; preds = %.noexc70
  %i.fg = add nsw i64 %.idx, -16                  ; 2 uses
  %i.fh = lshr exact i64 %i.fg, 4
  %i.fi = add nuw nsw i64 %i.fh, 1
  %xtraiter = and i64 %i.fi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc74.prol.loopexit, label %.noexc74.prol

.noexc74.prol:                                    ; preds = %.noexc74.preheader, %.noexc74.prol
  %.sroa.012.0.i63912.prol = phi ptr [ %i.fk, %.noexc74.prol ], [ %i.fc, %.noexc74.preheader ] ; 2 uses
  %i.fj = phi <16 x i8> [ %i.fo, %.noexc74.prol ], [ zeroinitializer, %.noexc74.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.noexc74.prol ], [ 0, %.noexc74.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i63912.prol, i64 16 ; 2 uses
  %i.fl = load <16 x i8>, ptr %.sroa.012.0.i63912.prol, align 16
  %i.fm = icmp slt <16 x i8> %i.fl, splat (i8 -64)
  %i.fn = zext <16 x i1> %i.fm to <16 x i8>
  %i.fo = add <16 x i8> %i.fj, %i.fn              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Chars11from_str_at:bb.a
  %i.nx = extractvalue { ptr, i64 } %i.g, 0       ; 2 uses
  %.not = icmp eq ptr %i.nx, null                 ; 2 uses
  %.sroa.03.0 = select i1 %.not, ptr inttoptr (i64 1 to ptr), ptr %i.nx
  %i.ny = extractvalue { ptr, i64 } %i.g, 1
  %.sroa.3.0 = select i1 %.not, i64 0, i64 %i.ny
  %i.nz = add i64 %.sroa.0.0.i, %.sroa.0.0.i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.03.0, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.3.0, ptr %i.ob, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.i98, ptr %i.oc, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.od, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.nz, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0.i64, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.og, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.x:                                             ; preds = %bb.z, %bb.t
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.y:                                             ; preds = %bb.t, %bb.z
  %.pn846 = phi { ptr, i32 } [ %i.oi, %bb.z ], [ %i.ij, %bb.t ]
  resume { ptr, i32 } %.pn846

bb.z:                                             ; preds = %.invoke, %bb.c, %bb.n, %bb.p, %bb.a
  %i.oi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #15
          to label %bb.y unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Chars17new_with_range_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.g = icmp eq i64 %2, %6
  br i1 %i.g, label %_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  %i.h = load ptr, ptr %1, align 8, !alias.scope !95, !noalias !100, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.i, i64 noundef %2), !noalias !98
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !98, !noundef !8
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %3, i64 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98
  br label %_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_char.exit

_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_char.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i53 = phi i64 [ %..i, %bb.b ], [ %4, %bb.a ]
  call void @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_byte(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %.sroa.0.0.i53, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = load i64, ptr %i.l, align 8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = icmp eq i64 %5, %6
  br i1 %i.n, label %.thread271, label %bb.c

.thread271:                                       ; preds = %_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_char.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.o = sub i64 %2, %i.m
  br label %bb.s

bb.c:                                             ; preds = %_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_char.exit
  %i.p = icmp ult i64 %2, %6
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !9, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.o, label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.t = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.h unwind label %bb.ac

bb.g:                                             ; preds = %bb.d
  %i.u = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.h unwind label %bb.ac

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i64 } [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %.sroa.06.0 = extractvalue { ptr, i64 } %.pn, 0 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %.invoke346, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %i.q, align 8, !range !9, !noundef !8
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.l unwind label %bb.ac      ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.y = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.l unwind label %bb.ac      ; 0 uses

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = add i64 %2, -1
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.aa, i64 noundef %i.ab)
          to label %bb.m unwind label %bb.ac

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !8
  %..i147 = tail call noundef i64 @llvm.umax.i64(i64 %5, i64 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.n:                                             ; preds = %bb.e
  %i.ae = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.p unwind label %bb.ac

bb.o:                                             ; preds = %bb.e
  %i.af = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn18 = phi { ptr, i64 } [ %i.ae, %bb.n ], [ %i.af, %bb.o ] ; 2 uses
  %.sroa.0.0 = extractvalue { ptr, i64 } %.pn18, 0 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not20, label %.invoke346, label %bb.q, !prof !10

.invoke346:                                       ; preds = %bb.p, %bb.h
  %i.ag = phi ptr [ @14, %bb.h ], [ @15, %bb.p ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #16
          to label %.cont347 unwind label %bb.ac

.cont347:                                         ; preds = %.invoke346
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.m
  %.sroa.011.0 = phi i64 [ %..i147, %bb.m ], [ %i.m, %bb.p ]
  %.pn.pn = phi { ptr, i64 } [ %.pn, %bb.m ], [ %.pn18, %bb.p ]
  %.sroa.03.0 = phi ptr [ %.sroa.06.0, %bb.m ], [ %.sroa.0.0, %bb.p ] ; 8 uses
  %.sroa.5.0 = extractvalue { ptr, i64 } %.pn.pn, 1 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.ah = sub i64 %2, %.sroa.011.0                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.ai = icmp samesign ult i64 %.sroa.5.0, 17
  br i1 %i.ai, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101
  invoke void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.r
  %i.aj = load ptr, ptr %i.b, align 8, !noalias !101, !nonnull !8, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !101, !noundef !8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !101, !nonnull !8, !align !14, !noundef !8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !101, !noundef !8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.ar = icmp samesign eq i64 %i.al, 0
  br i1 %i.ar, label %.noexc25, label %.lr.ph

bb.s:                                             ; preds = %.thread271, %bb.q
  %i.as = phi i64 [ %i.o, %.thread271 ], [ %i.ah, %bb.q ]
  %.sroa.03.0278 = phi ptr [ inttoptr (i64 1 to ptr), %.thread271 ], [ %.sroa.03.0, %bb.q ] ; 5 uses
  %.sroa.5.0276 = phi i64 [ 0, %.thread271 ], [ %.sroa.5.0, %bb.q ] ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.0278, i64 %.sroa.5.0276
  %i.au = icmp samesign eq i64 %.sroa.5.0276, 0
  br i1 %i.au, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.noexc52

.lr.ph:                                           ; preds = %.noexc, %bb.t
  %.sroa.027.0.i291 = phi ptr [ %i.ba, %bb.t ], [ %i.aj, %.noexc ] ; 2 uses
  %.sroa.013.0.i290 = phi i64 [ %i.bb, %bb.t ], [ 0, %.noexc ] ; 2 uses
  %.sroa.020.0.i289 = phi i64 [ %i.ay, %bb.t ], [ 0, %.noexc ]
  %i.av = load i8, ptr %.sroa.027.0.i291, align 1, !noundef !8
  %i.aw = icmp sgt i8 %i.av, -65
  %i.ax = zext i1 %i.aw to i64
  %i.ay = add i64 %.sroa.020.0.i289, %i.ax        ; 3 uses
  %i.az = icmp ugt i64 %i.ay, %i.ah
  br i1 %i.az, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i291, i64 1 ; 2 uses
  %i.bb = add nuw i64 %.sroa.013.0.i290, 1
  %i.bc = icmp eq ptr %i.ba, %i.aq
  br i1 %i.bc, label %.noexc25, label %.lr.ph

.noexc25:                                         ; preds = %bb.t, %.noexc
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %.noexc ], [ %i.ay, %bb.t ] ; 3 uses
  %i.bd = sub i64 %i.ah, %.sroa.020.0.i.lcssa
  %i.be = lshr i64 %i.bd, 4
  %..i148 = tail call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.ap) ; 2 uses
  %i.bf = and i64 %..i148, 576460752303423484     ; 2 uses
  %.not51.i293 = icmp eq i64 %i.bf, 0
  br i1 %.not51.i293, label %._crit_edge, label %.noexc50

._crit_edge:                                      ; preds = %.noexc50, %.noexc25
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %.noexc25 ], [ %i.df, %.noexc50 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.al, %.noexc25 ], [ %i.dg, %.noexc50 ] ; 2 uses
  %i.bg = and i64 %..i148, 1152921504606846972    ; 4 uses
  %i.bh = icmp ugt i64 %i.bg, %i.ap
  br i1 %i.bh, label %.invoke, label %bb.u, !prof !10

bb.u:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ap
  %i.bj = icmp samesign eq i64 %i.bg, %i.ap
  br i1 %i.bj, label %.noexc30._crit_edge, label %.noexc30.preheader

.noexc30.preheader:                               ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bg
  br label %.noexc30

.noexc30:                                         ; preds = %.noexc30.preheader, %bb.v
  %.sroa.040.0.i302 = phi ptr [ %i.br, %bb.v ], [ %i.bk, %.noexc30.preheader ] ; 2 uses
  %.sroa.013.2.i301 = phi i64 [ %i.bs, %bb.v ], [ %.sroa.013.1.i.lcssa, %.noexc30.preheader ] ; 2 uses
  %.sroa.020.2.i300 = phi i64 [ %i.bq, %bb.v ], [ %.sroa.020.1.i.lcssa, %.noexc30.preheader ] ; 2 uses
  %i.bl = load <16 x i8>, ptr %.sroa.040.0.i302, align 16
  %i.bm = icmp slt <16 x i8> %i.bl, splat (i8 -64)
  %i.bn = zext <16 x i1> %i.bm to <16 x i8>
  %i.bo = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bn, <16 x i8> zeroinitializer)
  %.neg284 = add i64 %.sroa.020.2.i300, 16
  %i.bp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.bo)
  %i.bq = sub i64 %.neg284, %i.bp                 ; 3 uses
  %.not52.i = icmp ult i64 %i.bq, %i.ah
  br i1 %.not52.i, label %bb.v, label %.noexc30._crit_edge

bb.v:                                             ; preds = %.noexc30
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i302, i64 16 ; 2 uses
  %i.bs = add i64 %.sroa.013.2.i301, 16           ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bi
  br i1 %i.bt, label %.noexc30._crit_edge, label %.noexc30

.noexc30._crit_edge:                              ; preds = %bb.v, %.noexc30, %bb.u
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.u ], [ %.sroa.020.2.i300, %.noexc30 ], [ %i.bq, %bb.v ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.u ], [ %.sroa.013.2.i301, %.noexc30 ], [ %i.bs, %bb.v ] ; 5 uses
  %i.bu = icmp ugt i64 %.sroa.013.2.i.lcssa, %.sroa.5.0
  br i1 %i.bu, label %.invoke, label %bb.w, !prof !10

bb.w:                                             ; preds = %.noexc30._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %.sroa.5.0
  %i.bw = icmp samesign eq i64 %.sroa.013.2.i.lcssa, %.sroa.5.0
  br i1 %i.bw, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph312.preheader

.lr.ph312.preheader:                              ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph312

.invoke:                                          ; preds = %.noexc30._crit_edge, %._crit_edge
  %i.by = phi i64 [ %i.bg, %._crit_edge ], [ %.sroa.013.2.i.lcssa, %.noexc30._crit_edge ]
  %i.bz = phi i64 [ %i.ap, %._crit_edge ], [ %.sroa.5.0, %.noexc30._crit_edge ] ; 2 uses
  %i.ca = phi ptr [ @4, %._crit_edge ], [ @3, %.noexc30._crit_edge ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.by, i64 noundef %i.bz, i64 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #17
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %bb.x
  %.sroa.036.0.i310 = phi ptr [ %i.cg, %bb.x ], [ %i.bx, %.lr.ph312.preheader ] ; 2 uses
  %.sroa.013.3.i309 = phi i64 [ %i.ch, %bb.x ], [ %.sroa.013.2.i.lcssa, %.lr.ph312.preheader ] ; 2 uses
  %.sroa.020.3.i308 = phi i64 [ %i.ce, %bb.x ], [ %.sroa.020.2.i.lcssa, %.lr.ph312.preheader ]
  %i.cb = load i8, ptr %.sroa.036.0.i310, align 1, !alias.scope !101, !noundef !8
  %i.cc = icmp sgt i8 %i.cb, -65
  %i.cd = zext i1 %i.cc to i64
  %i.ce = add i64 %.sroa.020.3.i308, %i.cd        ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, %i.ah
  br i1 %i.cf, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph312
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i310, i64 1 ; 2 uses
  %i.ch = add i64 %.sroa.013.3.i309, 1
  %i.ci = icmp eq ptr %i.cg, %i.bv
  br i1 %i.ci, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph312

.noexc50:                                         ; preds = %.noexc25, %.noexc50
  %.sroa.5.0.i297 = phi i64 [ %i.ck, %.noexc50 ], [ %i.bf, %.noexc25 ]
  %.sroa.030.0.i296 = phi ptr [ %i.cj, %.noexc50 ], [ %i.an, %.noexc25 ] ; 5 uses
  %.sroa.013.1.i295 = phi i64 [ %i.dg, %.noexc50 ], [ %i.al, %.noexc25 ]
  %.sroa.020.1.i294 = phi i64 [ %i.df, %.noexc50 ], [ %.sroa.020.0.i.lcssa, %.noexc25 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i296, i64 64
  %i.ck = add i64 %.sroa.5.0.i297, -4             ; 2 uses
  %i.cl = load <16 x i8>, ptr %.sroa.030.0.i296, align 16
  %i.cm = icmp slt <16 x i8> %i.cl, splat (i8 -64)
  %i.cn = zext <16 x i1> %i.cm to <16 x i8>
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i296, i64 16
  %i.cp = load <16 x i8>, ptr %i.co, align 16
  %i.cq = icmp slt <16 x i8> %i.cp, splat (i8 -64)
  %i.cr = zext <16 x i1> %i.cq to <16 x i8>
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i296, i64 32
  %i.ct = load <16 x i8>, ptr %i.cs, align 16
  %i.cu = icmp slt <16 x i8> %i.ct, splat (i8 -64)
  %i.cv = zext <16 x i1> %i.cu to <16 x i8>
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i296, i64 48
  %i.cx = load <16 x i8>, ptr %i.cw, align 16
  %i.cy = icmp slt <16 x i8> %i.cx, splat (i8 -64)
  %i.cz = zext <16 x i1> %i.cy to <16 x i8>
  %i.da = add nuw nsw <16 x i8> %i.cr, %i.cn
  %i.db = add nuw nsw <16 x i8> %i.da, %i.cv
  %i.dc = add nuw nsw <16 x i8> %i.db, %i.cz
  %i.dd = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.dc, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i294, 64
  %i.de = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.dd)
  %i.df = sub i64 %.neg, %i.de                    ; 2 uses
  %i.dg = add i64 %.sroa.013.1.i295, 64           ; 2 uses
  %.not51.i = icmp eq i64 %i.ck, 0
  br i1 %.not51.i, label %._crit_edge, label %.noexc50

bb.y:                                             ; preds = %.noexc52
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0266356, i64 1 ; 2 uses
  %i.di = add nuw nsw i64 %.sroa.8.0355, 1
  %i.dj = icmp eq ptr %i.dh, %i.at
  br i1 %i.dj, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.noexc52

.noexc52:                                         ; preds = %bb.s, %bb.y
  %.sroa.07.0.i357 = phi i64 [ %i.dn, %bb.y ], [ 0, %bb.s ]
  %.sroa.0.0266356 = phi ptr [ %i.dh, %bb.y ], [ %.sroa.03.0278, %bb.s ] ; 2 uses
  %.sroa.8.0355 = phi i64 [ %i.di, %bb.y ], [ 0, %bb.s ] ; 2 uses
  %i.dk = load i8, ptr %.sroa.0.0266356, align 1, !noundef !8
  %i.dl = icmp sgt i8 %i.dk, -65
  %i.dm = zext i1 %i.dl to i64
  %i.dn = add i64 %.sroa.07.0.i357, %i.dm         ; 2 uses
  %i.do = icmp ugt i64 %i.dn, %i.as
  br i1 %i.do, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.y

bb.z:                                             ; preds = %.invoke, %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #15
          to label %bb.ab unwind label %bb.aa

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph, %bb.x, %.lr.ph312, %.noexc52, %bb.y, %bb.s, %bb.w
  %.sroa.03.0277 = phi ptr [ %.sroa.03.0, %bb.w ], [ %.sroa.03.0278, %bb.s ], [ %.sroa.03.0278, %.noexc52 ], [ %.sroa.03.0, %bb.x ], [ %.sroa.03.0278, %bb.y ], [ %.sroa.03.0, %.lr.ph312 ], [ %.sroa.03.0, %.lr.ph ]
  %.sroa.5.0275 = phi i64 [ %.sroa.5.0, %bb.w ], [ %.sroa.5.0276, %bb.s ], [ %.sroa.5.0276, %.noexc52 ], [ %.sroa.5.0, %bb.x ], [ %.sroa.5.0276, %bb.y ], [ %.sroa.5.0, %.lr.ph312 ], [ %.sroa.5.0, %.lr.ph ]
  %.sroa.0.0.i = phi i64 [ %.sroa.5.0, %bb.w ], [ %.sroa.5.0276, %bb.s ], [ %.sroa.5.0276, %bb.y ], [ %.sroa.5.0, %bb.x ], [ %.sroa.8.0355, %.noexc52 ], [ %.sroa.013.3.i309, %.lr.ph312 ], [ %.sroa.013.0.i290, %.lr.ph ]
  %i.dq = sub i64 %6, %5
  %i.dr = sub i64 %6, %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.03.0277, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.5.0275, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.i, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.dq, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.dr, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.dy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.ac
  %.pn21269 = phi { ptr, i32 } [ %i.ea, %bb.ac ], [ %i.dp, %bb.z ]
  resume { ptr, i32 } %.pn21269

bb.ac:                                            ; preds = %.invoke346, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #15
          to label %bb.ab unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Chars3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load i64, ptr %i.b, align 8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !8
  %i.n = add i64 %i.m, 1
  call void @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_byte(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef 0, i64 noundef 0, i64 noundef %i.i, i64 noundef 0, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.p = load i8, ptr %i.o, align 8, !range !9, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.d unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.s = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i64 } [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.h)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #15
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.h)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0 = extractvalue { ptr, i64 } %.pn, 0  ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, null            ; 2 uses
  %.sroa.03.0 = select i1 %.not, ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.0
  %.sroa.6.0 = extractvalue { ptr, i64 } %.pn, 1
  %.sroa.3.0 = select i1 %.not, i64 0, i64 %.sroa.6.0
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.03.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.3.0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.v, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.x, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %bb.j, %bb.e
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.j
  %.pn812 = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %.pn812

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #15
          to label %bb.i unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines11from_str_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
.noexc:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 0, %i.b
  %i.d = and i64 %i.c, 15                         ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 2 uses
  %.not.i = icmp eq i64 %..i, 0
  br i1 %.not.i, label %.noexc1, label %.preheader397

.preheader397:                                    ; preds = %.noexc
  %.not419 = icmp eq i64 %3, 0
  br i1 %.not419, label %.noexc2.thread, label %.noexc51

.noexc1:                                          ; preds = %.noexc, %.noexc2.thread
  %.pre-phi424 = phi i64 [ %i.d, %.noexc ], [ %.pre423, %.noexc2.thread ]
  %.sroa.18.0.i = phi i64 [ %2, %.noexc ], [ %i.ai, %.noexc2.thread ] ; 4 uses
  %.sroa.07.0.i = phi ptr [ %1, %.noexc ], [ %i.aj, %.noexc2.thread ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ 0, %.noexc ], [ %.sroa.012.0.i44.lcssa441, %.noexc2.thread ] ; 2 uses
  %..i194 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.18.0.i, i64 %.pre-phi424)
  %i.e = icmp eq i64 %..i194, 0
  %i.f = icmp ugt i64 %.sroa.18.0.i, 15
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.noexc13, label %.loopexit

.noexc51:                                         ; preds = %.preheader397, %bb.h
  %.sroa.0.0.i45399 = phi i64 [ %i.aa, %bb.h ], [ 0, %.preheader397 ] ; 6 uses
  %.sroa.012.0.i44398 = phi i64 [ %.sroa.012.1.i47, %bb.h ], [ 0, %.preheader397 ] ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i45399 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !104, !noundef !8 ; 3 uses
  %i.i = add i8 %i.h, -10
  %spec.select.i195 = icmp ult i8 %i.i, 4
  br i1 %spec.select.i195, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc51
  switch i8 %i.h, label %bb.h [
    i8 -62, label %bb.c
    i8 -30, label %bb.e
  ]

bb.b:                                             ; preds = %.noexc51
  %i.j = add nuw i64 %.sroa.012.0.i44398, 1       ; 3 uses
  %i.k = icmp eq i8 %i.h, 13
  br i1 %i.k, label %bb.i, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %.sroa.0.0.i45399, 1     ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !104, !noundef !8
  %i.p = icmp eq i8 %i.o, -123
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines17new_with_range_at:bb.a

._crit_edge539:                                   ; preds = %._crit_edge539.loopexit, %.noexc29.thread
  %.sroa.0.0.i22.lcssa = phi i64 [ %.sroa.0.0445.lcssa, %.noexc29.thread ], [ %i.hf, %._crit_edge539.loopexit ] ; 2 uses
  %..i227 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0439.0.lcssa, i64 %.sroa.0.0.i22.lcssa) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.hg = trunc i64 %..i227 to i32
  %i.hh = sub i64 %4, %3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.hg, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.hh, ptr %i.hj, align 8
  %i.hk = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bg)
          to label %bb.ar unwind label %bb.aq     ; 2 uses

bb.aq:                                            ; preds = %.thread458, %.thread461, %bb.as, %._crit_edge539
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter9LinesEnumEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a) #15
          to label %bb.bh unwind label %bb.bb

bb.ar:                                            ; preds = %._crit_edge539
  %i.hm = extractvalue { ptr, i64 } %i.hk, 0
  %i.hn = extractvalue { ptr, i64 } %i.hk, 1
  %i.ho = sub i64 %.sroa.05.0.lcssa, %3
  %i.hp = add i64 %i.ho, %..i227
  %.not469 = icmp ugt i64 %.sroa.0439.0.lcssa, %.sroa.0.0.i22.lcssa
  br i1 %.not469, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hq = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bg)
          to label %bb.au unwind label %bb.aq     ; 2 uses

bb.at:                                            ; preds = %bb.ar, %bb.az
  %.sroa.07.0 = phi i8 [ %i.ii, %bb.az ], [ 0, %bb.ar ]
  %i.hr = sub i64 %2, %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.hm, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.hn, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.hp, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %.sroa.07.0, ptr %i.hw, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.hr, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.c, ptr %i.hy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ba

bb.au:                                            ; preds = %bb.as
  %i.hz = extractvalue { ptr, i64 } %i.hq, 0      ; 5 uses
  %i.ia = extractvalue { ptr, i64 } %i.hq, 1      ; 3 uses
  %i.ib = icmp eq i64 %.sroa.0439.0.lcssa, 0
  br i1 %i.ib, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not.i228 = icmp ult i64 %.sroa.0439.0.lcssa, %i.ia
  br i1 %.not.i228, label %bb.aw, label %.split.i

.split.i:                                         ; preds = %bb.av
  %i.ic = icmp ne i64 %.sroa.0439.0.lcssa, %i.ia
  %.not = icmp eq ptr %i.hz, null
  %or.cond470 = select i1 %i.ic, i1 true, i1 %.not, !prof !148
  br i1 %or.cond470, label %.thread458, label %.thread461, !prof !148

bb.aw:                                            ; preds = %bb.av
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sroa.0439.0.lcssa
  %i.ie = load i8, ptr %i.id, align 1, !alias.scope !149, !noundef !8
  %i.if = icmp sgt i8 %i.ie, -65
  br i1 %i.if, label %.thread461, label %.thread458

bb.ax:                                            ; preds = %bb.au
  %.not.old = icmp eq ptr %i.hz, null
  br i1 %.not.old, label %.thread458, label %.thread461, !prof !152

.thread461:                                       ; preds = %.split.i, %bb.aw, %bb.ax
  %i.ig = invoke fastcc noundef i64 @_RNvNtCsk17MtNlfUKQ_11str_indices5lines13from_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %.sroa.0439.0.lcssa, i64 noundef %.sroa.0439.0.lcssa)
          to label %bb.az unwind label %bb.aq

.thread458:                                       ; preds = %.split.i, %bb.aw, %bb.ax
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.ia, i64 noundef 0, i64 noundef %.sroa.0439.0.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #16
          to label %bb.ay unwind label %bb.aq

bb.ay:                                            ; preds = %bb.bg, %.thread458
  unreachable

bb.az:                                            ; preds = %.thread461
  %i.ih = icmp ugt i64 %.sroa.0435.0.lcssa, %i.ig
  %i.ii = zext i1 %i.ih to i8
  br label %bb.at

bb.ba:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, %bb.at, %bb.c
  ret void

bb.bb:                                            ; preds = %bb.bi, %bb.aq
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvMs4_NtB7_4iterNtB1m_5Lines17new_with_range_at0EB7_.exit: ; preds = %.noexc20.thread451, %.lr.ph, %bb.k, %bb.j
  %.sroa.015.0.i.lcssa = phi i64 [ 0, %bb.j ], [ %.sroa.015.0.i495, %bb.k ], [ %.sroa.015.0.i495, %.lr.ph ], [ %i.as, %.noexc20.thread451 ] ; 4 uses
  %.sroa.9.0.i.lcssa = phi i64 [ 0, %bb.j ], [ %.sroa.9.0.i496, %bb.k ], [ %.sroa.9.0.i496, %.lr.ph ], [ %i.bb, %.noexc20.thread451 ]
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.j ], [ %.sroa.0.0.i497, %bb.k ], [ %.sroa.0.0.i497, %.lr.ph ], [ %i.ba, %.noexc20.thread451 ] ; 3 uses
  %i.ik = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0445510, i64 %.sroa.0.0.i.lcssa) ; 2 uses
  %i.il = sub i64 %.sroa.0439.0508, %.sroa.0.0.i.lcssa ; 2 uses
  %i.im = sub i64 %.sroa.0435.0509, %.sroa.9.0.i.lcssa ; 2 uses
  %i.in = add i64 %.sroa.0.0.i.lcssa, %.sroa.05.0511 ; 2 uses
  %i.io = load i64, ptr %i.o, align 8, !alias.scope !153, !noalias !156, !noundef !8 ; 3 uses
  %i.ip = load i64, ptr %i.b, align 8, !range !158, !alias.scope !153, !noalias !156, !noundef !8
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvMs4_NtB7_4iterNtB1m_5Lines17new_with_range_at0EB7_.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEE8grow_oneB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %bb.bd unwind label %.loopexit473

bb.bd:                                            ; preds = %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvMs4_NtB7_4iterNtB1m_5Lines17new_with_range_at0EB7_.exit, %bb.bc
  %i.ir = load ptr, ptr %i.n, align 8, !alias.scope !153, !noalias !156, !nonnull !8, !noundef !8
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.io ; 2 uses
  store ptr %.sroa.0.0512, ptr %i.is, align 8, !noalias !156
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %.sroa.015.0.i.lcssa, ptr %i.it, align 8
  %i.iu = add i64 %i.io, 1
  store i64 %i.iu, ptr %i.o, align 8, !alias.scope !153, !noalias !156
  %i.iv = invoke { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.ag)
          to label %bb.be unwind label %.loopexit473 ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.iw = extractvalue { ptr, i64 } %i.iv, 1      ; 2 uses
  %i.ix = icmp ult i64 %.sroa.015.0.i.lcssa, %i.iw
  br i1 %i.ix, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.iy = extractvalue { ptr, i64 } %i.iv, 0
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.sroa.015.0.i.lcssa ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load i8, ptr %i.jb, align 8, !range !9, !noundef !8
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %.lr.ph513, label %._crit_edge

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.015.0.i.lcssa, i64 noundef %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16
          to label %bb.ay unwind label %.loopexit.split-lp

bb.bh:                                            ; preds = %bb.aq, %bb.bi
  %.pn455 = phi { ptr, i32 } [ %lpad.phi, %bb.bi ], [ %i.hl, %bb.aq ]
  resume { ptr, i32 } %.pn455

.loopexit473:                                     ; preds = %bb.bd, %.lr.ph513, %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %.invoke, %._crit_edge, %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp, %.loopexit473
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit473 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #15
          to label %bb.bh unwind label %bb.bb

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread448: ; preds = %bb.i, %bb.e, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #17
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.h, %bb.f, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.je = sub nuw i64 %4, %3
  %i.jf = getelementptr inbounds nuw i8, ptr %i.s, i64 %3
  %i.jg = sub i64 %2, %5
  tail call void @_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines11from_str_at(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jf, i64 noundef %i.je, i64 noundef %i.jg, i64 noundef %i.c)
  br label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9next_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = load i64, ptr %1, align 8, !range !4, !noundef !8
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noundef !8 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !range !9, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.el, label %bb.ew

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 5 uses
  %i.s = load i8, ptr %i.r, align 1, !range !9, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.el, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !8 ; 5 uses
  %i.w = icmp eq i64 %i.v, %i.q
  br i1 %i.w, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !8
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !noundef !8 ; 4 uses
  %i.ag = zext i32 %i.af to i64                   ; 6 uses
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i627 = icmp ugt i64 %i.ad, %i.ag
  br i1 %.not.i627, label %bb.g, label %.split.i

.split.i:                                         ; preds = %bb.f
  %i.ai = icmp eq i64 %i.ad, %i.ag
  br i1 %i.ai, label %bb.i, label %bb.bb

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !159, !noundef !8
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %bb.i, label %bb.bb

bb.h:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !8
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ap, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.0..sroa_idx, i8 0, i64 32, i1 false)
  br label %bb.el

bb.i:                                             ; preds = %bb.g, %.split.i, %bb.e
  %i.aq = sub nuw i64 %i.ad, %i.ag                ; 32 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 31 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 0, %i.as
  %i.au = and i64 %i.at, 15                       ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.au) ; 2 uses
  %.not.i200 = icmp eq i64 %..i, 0
  br i1 %.not.i200, label %bb.j, label %.preheader1745

bb.j:                                             ; preds = %bb.u, %bb.i
  %.pre-phi2177 = phi i64 [ %.pre2176, %bb.u ], [ %i.au, %bb.i ]
  %.sroa.18.0.i201 = phi i64 [ %i.bx, %bb.u ], [ %i.aq, %bb.i ] ; 4 uses
  %.sroa.07.0.i202 = phi ptr [ %i.by, %bb.u ], [ %i.ar, %bb.i ] ; 2 uses
  %.sroa.03.0.i203 = phi i64 [ %.sroa.012.1.i2422280, %bb.u ], [ 0, %bb.i ] ; 2 uses
  %..i629 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.18.0.i201, i64 %.pre-phi2177)
  %i.av = icmp eq i64 %..i629, 0
  %i.aw = icmp ugt i64 %.sroa.18.0.i201, 15
  %or.cond2037 = and i1 %i.av, %i.aw
  br i1 %or.cond2037, label %.lr.ph, label %.loopexit1744

.preheader1745:                                   ; preds = %bb.i, %bb.r
  %.sroa.0.0.i2401832 = phi i64 [ %i.bp, %bb.r ], [ 0, %bb.i ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i2401832 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !162, !noundef !8 ; 3 uses
  %i.az = add i8 %i.ay, -10
  %spec.select.i630 = icmp ult i8 %i.az, 4
  br i1 %spec.select.i630, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader1745
  switch i8 %i.ay, label %bb.r [
    i8 -62, label %bb.m
    i8 -30, label %bb.o
  ]

bb.l:                                             ; preds = %.preheader1745
  %i.ba = icmp eq i8 %i.ay, 13
  br i1 %i.ba, label %bb.s, label %.thread2276

bb.m:                                             ; preds = %bb.k
  %i.bb = add nuw nsw i64 %.sroa.0.0.i2401832, 1  ; 2 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.aq
  br i1 %i.bc, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !162, !noundef !8
  %i.bf = icmp eq i8 %i.be, -123
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.bg = add nuw nsw i64 %.sroa.0.0.i2401832, 2  ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.aq
  br i1 %i.bh, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !162, !noundef !8
  %i.bk = icmp eq i8 %i.bj, -128
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bg
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !162, !noundef !8
  %.mask.i243 = and i8 %i.bm, -2
  %i.bn = icmp eq i8 %.mask.i243, -88
  br label %bb.r

.thread2276:                                      ; preds = %bb.s, %bb.l
  %i.bo = add nuw nsw i64 %.sroa.0.0.i2401832, 1
  br label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.t, %bb.q, %bb.p, %bb.o, %bb.k
  %.sroa.012.1.i242.shrunk = phi i1 [ false, %bb.o ], [ %i.bv, %bb.t ], [ false, %bb.p ], [ %i.bf, %bb.n ], [ false, %bb.m ], [ false, %bb.k ], [ %i.bn, %bb.q ] ; 2 uses
  %i.bp = add nuw nsw i64 %.sroa.0.0.i2401832, 1  ; 3 uses
  %i.bq = icmp samesign uge i64 %i.bp, %..i
  %or.cond.i241.not = or i1 %i.bq, %.sroa.012.1.i242.shrunk
  br i1 %or.cond.i241.not, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit, label %.preheader1745

bb.s:                                             ; preds = %bb.l
  %i.br = add nuw nsw i64 %.sroa.0.0.i2401832, 1  ; 2 uses
  %i.bs = icmp samesign ult i64 %i.br, %i.aq
  br i1 %i.bs, label %bb.t, label %.thread2276

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !162, !noundef !8
  %i.bv = icmp ne i8 %i.bu, 10
  br label %bb.r

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit: ; preds = %bb.r
  %.sroa.012.1.i242.le = zext i1 %.sroa.012.1.i242.shrunk to i64
  br label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246: ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit, %.thread2276
  %i.bw = phi i64 [ %i.bo, %.thread2276 ], [ %i.bp, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit ] ; 3 uses
  %.sroa.012.1.i2422280 = phi i64 [ 1, %.thread2276 ], [ %.sroa.012.1.i242.le, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit ]
  %.not2040 = icmp ult i64 %.sroa.0.0.i2401832, %i.aq
  br i1 %.not2040, label %bb.u, label %bb.v, !prof !165

bb.u:                                             ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246
  %i.bx = sub nuw i64 %i.aq, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bw ; 2 uses
  %.pre2172 = ptrtoint ptr %i.by to i64
  %.pre2174 = sub i64 0, %.pre2172
  %.pre2176 = and i64 %.pre2174, 15
  br label %bb.j

bb.v:                                             ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.aq, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
  unreachable

.lr.ph:                                           ; preds = %bb.j, %bb.an
  %.sroa.03.1.i2131835 = phi i64 [ 0, %bb.an ], [ %.sroa.03.0.i203, %bb.j ] ; 2 uses
  %.sroa.07.1.i2121834 = phi ptr [ %i.ew, %bb.an ], [ %.sroa.07.0.i202, %bb.j ] ; 8 uses
  %.sroa.18.1.i2111833 = phi i64 [ %i.ev, %bb.an ], [ %.sroa.18.0.i201, %bb.j ] ; 6 uses
  %i.bz = load <2 x i64>, ptr %.sroa.07.1.i2121834, align 16, !alias.scope !166, !noalias !169 ; 4 uses
  %i.ca = bitcast <2 x i64> %i.bz to <16 x i8>    ; 7 uses
  %i.cb = icmp eq <16 x i8> %i.ca, splat (i8 -62) ; 2 uses
  %i.cc = zext <16 x i1> %i.cb to <16 x i8>
  %i.cd = bitcast <16 x i8> %i.cc to <2 x i64>    ; 2 uses
  %i.ce = icmp eq <16 x i8> %i.ca, splat (i8 -30) ; 2 uses
  %i.cf = zext <16 x i1> %i.ce to <16 x i8>
  %i.cg = bitcast <16 x i8> %i.cf to <2 x i64>    ; 2 uses
  %i.ch = add <16 x i8> %i.ca, splat (i8 -10)
  %i.ci = icmp ult <16 x i8> %i.ch, splat (i8 4)
  %i.cj = zext <16 x i1> %i.ci to <16 x i8>
  %i.ck = icmp eq <16 x i8> %i.ca, splat (i8 13)  ; 2 uses
  %i.cl = zext <16 x i1> %i.ck to <16 x i8>
  %i.cm = bitcast <16 x i8> %i.cl to <2 x i64>    ; 2 uses
  %.sroa.01.0.vec.extract.i316 = extractelement <2 x i64> %i.cd, i64 0
  %i.cn = icmp eq i64 %.sroa.01.0.vec.extract.i316, 0
  %.sroa.01.8.vec.extract.i317 = extractelement <2 x i64> %i.cd, i64 1
  %i.co = icmp eq i64 %.sroa.01.8.vec.extract.i317, 0
  %.sroa.0.0.i318 = select i1 %i.cn, i1 %i.co, i1 false
  %bc = bitcast <2 x i64> %i.bz to <16 x i8>
  %i.cp = extractelement <16 x i8> %bc, i64 15    ; 4 uses
  %bc2268 = bitcast <2 x i64> %i.bz to <16 x i8>
  %i.cq = extractelement <16 x i8> %bc2268, i64 14
  br i1 %.sroa.0.0.i318, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.cr = icmp eq <16 x i8> %i.ca, splat (i8 -123)
  %i.cs = zext <16 x i1> %i.cr to <16 x i8>
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.cu = select <16 x i1> %i.cb, <16 x i8> %i.ct, <16 x i8> zeroinitializer ; 3 uses
  %.not = icmp ne i64 %.sroa.18.1.i2111833, 16
  %i.cv = icmp eq i8 %i.cp, -62
  %or.cond2447 = select i1 %.not, i1 %i.cv, i1 false
  br i1 %or.cond2447, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i2121834, i64 16
  %i.cx = load i8, ptr %i.cw, align 16, !alias.scope !166, !noalias !169, !noundef !8
  %i.cy = icmp eq i8 %i.cx, -123
  br i1 %i.cy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.01512.15.vec.insert = insertelement <16 x i8> %i.cu, i8 1, i64 15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %.lr.ph
  %i.cz = phi <16 x i8> [ zeroinitializer, %.lr.ph ], [ %.sroa.01512.15.vec.insert, %bb.y ], [ %i.cu, %bb.x ], [ %i.cu, %bb.w ] ; 3 uses
  %.sroa.01.0.vec.extract.i313 = extractelement <2 x i64> %i.cg, i64 0
  %i.da = icmp eq i64 %.sroa.01.0.vec.extract.i313, 0
  %.sroa.01.8.vec.extract.i314 = extractelement <2 x i64> %i.cg, i64 1
  %i.db = icmp eq i64 %.sroa.01.8.vec.extract.i314, 0
  %.sroa.0.0.i315 = select i1 %i.da, i1 %i.db, i1 false
  br i1 %.sroa.0.0.i315, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = icmp eq <16 x i8> %i.ca, splat (i8 -128)
  %i.dd = zext <16 x i1> %i.dc to <16 x i8>
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.df = select <16 x i1> %i.ce, <16 x i8> %i.de, <16 x i8> zeroinitializer ; 2 uses
  %i.dg = bitcast <16 x i8> %i.df to <2 x i64>    ; 2 uses
  %.sroa.01.0.vec.extract.i310 = extractelement <2 x i64> %i.dg, i64 0
  %i.dh = icmp eq i64 %.sroa.01.0.vec.extract.i310, 0
  %.sroa.01.8.vec.extract.i311 = extractelement <2 x i64> %i.dg, i64 1
  %i.di = icmp eq i64 %.sroa.01.8.vec.extract.i311, 0
  %.sroa.0.0.i312 = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %.sroa.0.0.i312, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = lshr <2 x i64> %i.bz, splat (i64 1)
  %i.dk = bitcast <2 x i64> %i.dj to <16 x i8>
  %i.dl = and <16 x i8> %i.dk, splat (i8 127)
  %i.dm = icmp eq <16 x i8> %i.dl, splat (i8 84)
  %i.dn = zext <16 x i1> %i.dm to <16 x i8>
  %i.do = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.dp = and <16 x i8> %i.do, %i.df
  %i.dq = add nsw <16 x i8> %i.cz, %i.dp
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dr = phi <16 x i8> [ %i.cz, %bb.aa ], [ %i.dq, %bb.ab ] ; 9 uses
  %.not1708 = icmp eq i64 %.sroa.18.1.i2111833, 16
  br i1 %.not1708, label %.thread, label %bb.ae

bb.ad:                                            ; preds = %bb.ae
  %i.ds = icmp samesign ugt i64 %.sroa.18.1.i2111833, 17
  %i.dt = icmp eq i8 %i.cp, -30
end_hunk_2
begin_hunk_3_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9next_impl:bb.a
bb.aj:                                            ; preds = %bb.ai
  %.sroa.01518.15.vec.extract = extractelement <16 x i8> %i.dr, i64 15
  %i.eg = add i8 %.sroa.01518.15.vec.extract, 1
  %.sroa.01518.15.vec.insert = insertelement <16 x i8> %i.dr, i8 %i.eg, i64 15
  br label %.thread

.thread:                                          ; preds = %bb.af, %bb.ac, %bb.ad, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.z
  %i.eh = phi <16 x i8> [ %i.cz, %bb.z ], [ %.sroa.01515.14.vec.insert, %bb.ag ], [ %.sroa.01518.15.vec.insert, %bb.aj ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ad ], [ %i.dr, %bb.ac ]
  %i.ei = add <16 x i8> %i.eh, %i.cj              ; 2 uses
  %.sroa.01.0.vec.extract.i307 = extractelement <2 x i64> %i.cm, i64 0
  %i.ej = icmp eq i64 %.sroa.01.0.vec.extract.i307, 0
  %.sroa.01.8.vec.extract.i308 = extractelement <2 x i64> %i.cm, i64 1
  %i.ek = icmp eq i64 %.sroa.01.8.vec.extract.i308, 0
  %.sroa.0.0.i309 = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %.sroa.0.0.i309, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.ak

bb.ak:                                            ; preds = %.thread
  %i.el = icmp eq <16 x i8> %i.ca, splat (i8 10)
  %.neg = sext <16 x i1> %i.el to <16 x i8>
  %.neg1709 = shufflevector <16 x i8> %.neg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %.neg1710 = select <16 x i1> %i.ck, <16 x i8> %.neg1709, <16 x i8> zeroinitializer
  %i.em = add <16 x i8> %i.ei, %.neg1710          ; 4 uses
  %.not1711 = icmp ne i64 %.sroa.18.1.i2111833, 16
  %i.en = icmp eq i8 %i.cp, 13
  %or.cond2450 = select i1 %.not1711, i1 %i.en, i1 false
  br i1 %or.cond2450, label %bb.al, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.al:                                            ; preds = %bb.ak
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i2121834, i64 16
  %i.ep = load i8, ptr %i.eo, align 16, !alias.scope !166, !noalias !169, !noundef !8
  %i.eq = icmp eq i8 %i.ep, 10
  br i1 %i.eq, label %bb.am, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.am:                                            ; preds = %bb.al
  %.sroa.0.15.vec.extract.i283 = extractelement <16 x i8> %i.em, i64 15
  %i.er = add i8 %.sroa.0.15.vec.extract.i283, -1
  %.sroa.0.15.vec.insert.i284 = insertelement <16 x i8> %i.em, i8 %i.er, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.ak, %bb.al, %bb.am, %.thread
  %.sroa.0870.5.in = phi <16 x i8> [ %i.ei, %.thread ], [ %.sroa.0.15.vec.insert.i284, %bb.am ], [ %i.em, %bb.al ], [ %i.em, %bb.ak ]
  %i.es = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.sroa.0870.5.in, <16 x i8> zeroinitializer)
  %i.et = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.es)
  %i.eu = sub nsw i64 0, %.sroa.03.1.i2131835
  %.not41.i214 = icmp eq i64 %i.et, %i.eu
  br i1 %.not41.i214, label %bb.an, label %.loopexit1744

bb.an:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.ev = add i64 %.sroa.18.1.i2111833, -16       ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i2121834, i64 16 ; 2 uses
  %i.ex = icmp ugt i64 %i.ev, 15
  br i1 %i.ex, label %.lr.ph, label %.loopexit1744

.loopexit1744:                                    ; preds = %bb.an, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.j
  %.sroa.18.2.i204 = phi i64 [ %.sroa.18.0.i201, %bb.j ], [ %.sroa.18.1.i2111833, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ %i.ev, %bb.an ] ; 9 uses
  %.sroa.07.2.i205 = phi ptr [ %.sroa.07.0.i202, %bb.j ], [ %.sroa.07.1.i2121834, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ %i.ew, %bb.an ] ; 4 uses
  %.sroa.03.2.i206 = phi i64 [ %.sroa.03.0.i203, %bb.j ], [ %.sroa.03.1.i2131835, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %bb.an ] ; 2 uses
  %i.ey = sub nuw nsw i64 1, %.sroa.03.2.i206
  %i.ez = icmp ne i64 %.sroa.18.2.i204, 0
  %i.fa = icmp ne i64 %.sroa.03.2.i206, 1
  %or.cond.i1841 = and i1 %i.ez, %i.fa
  br i1 %or.cond.i1841, label %.lr.ph1844, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread

.lr.ph1844:                                       ; preds = %.loopexit1744, %bb.av
  %.sroa.0.0.i2371843 = phi i64 [ %i.fs, %bb.av ], [ 0, %.loopexit1744 ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i205, i64 %.sroa.0.0.i2371843 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !171, !noundef !8 ; 3 uses
  %i.fd = add i8 %i.fc, -10
  %spec.select.i631 = icmp ult i8 %i.fd, 4
  br i1 %spec.select.i631, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1844
  switch i8 %i.fc, label %bb.av [
    i8 -62, label %bb.aq
    i8 -30, label %bb.as
  ]

bb.ap:                                            ; preds = %.lr.ph1844
  %i.fe = icmp eq i8 %i.fc, 13
  br i1 %i.fe, label %bb.aw, label %bb.av

bb.aq:                                            ; preds = %bb.ao
  %i.ff = add nuw nsw i64 %.sroa.0.0.i2371843, 1  ; 2 uses
  %i.fg = icmp samesign ult i64 %i.ff, %.sroa.18.2.i204
  br i1 %i.fg, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i205, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !171, !noundef !8
  %i.fj = icmp eq i8 %i.fi, -123
  br label %bb.av

bb.as:                                            ; preds = %bb.ao
  %i.fk = add nuw i64 %.sroa.0.0.i2371843, 2      ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %.sroa.18.2.i204
  br i1 %i.fl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !171, !noundef !8
  %i.fo = icmp eq i8 %i.fn, -128
  br i1 %i.fo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i205, i64 %i.fk
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !171, !noundef !8
  %.mask.i238 = and i8 %i.fq, -2
  %i.fr = icmp eq i8 %.mask.i238, -88
  br label %bb.av

bb.av:                                            ; preds = %bb.ar, %bb.aq, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.as, %bb.ap, %bb.ao
  %.sroa.012.1.i.shrunk = phi i1 [ false, %bb.as ], [ %i.fz, %bb.ax ], [ true, %bb.aw ], [ true, %bb.ap ], [ false, %bb.aq ], [ false, %bb.ao ], [ %i.fr, %bb.au ], [ false, %bb.at ], [ %i.fj, %bb.ar ]
  %.sroa.012.1.i = zext i1 %.sroa.012.1.i.shrunk to i64
  %i.fs = add nuw nsw i64 %.sroa.0.0.i2371843, 1  ; 4 uses
  %i.ft = icmp ult i64 %i.fs, %.sroa.18.2.i204
  %i.fu = icmp samesign ugt i64 %i.ey, %.sroa.012.1.i
  %or.cond.i = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond.i, label %.lr.ph1844, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit

bb.aw:                                            ; preds = %bb.ap
  %i.fv = add nuw nsw i64 %.sroa.0.0.i2371843, 1  ; 2 uses
  %i.fw = icmp samesign ult i64 %i.fv, %.sroa.18.2.i204
  br i1 %i.fw, label %bb.ax, label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i205, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !171, !noundef !8
  %i.fz = icmp ne i8 %i.fy, 10
  br label %bb.av

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit: ; preds = %bb.av
  %.not2459 = icmp ult i64 %.sroa.0.0.i2371843, %.sroa.18.2.i204
  br i1 %.not2459, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread, label %bb.ay, !prof !116

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread: ; preds = %.loopexit1744, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit
  %.sroa.0.0.i237.lcssa2284 = phi i64 [ %i.fs, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 0, %.loopexit1744 ]
  %.neg.i207 = sub i64 %i.aq, %.sroa.18.2.i204
  %i.ga = add i64 %.neg.i207, %.sroa.0.0.i237.lcssa2284 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215, label %.lr.ph1847

bb.ay:                                            ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %.sroa.18.2.i204, i64 noundef %.sroa.18.2.i204, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable

.lr.ph1847:                                       ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread, %bb.ba
  %.sroa.0.0.i2081846 = phi i64 [ %i.gg, %bb.ba ], [ %i.ga, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread ] ; 5 uses
  %.not42.i209 = icmp ult i64 %.sroa.0.0.i2081846, %i.aq
  br i1 %.not42.i209, label %bb.az, label %.split

.split:                                           ; preds = %.lr.ph1847
  %i.gc = icmp eq i64 %.sroa.0.0.i2081846, %i.aq
  br i1 %i.gc, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215, label %bb.ba

bb.az:                                            ; preds = %.lr.ph1847
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i2081846
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !174, !noundef !8
  %i.gf = icmp sgt i8 %i.ge, -65
  br i1 %i.gf, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215, label %bb.ba

bb.ba:                                            ; preds = %.split, %bb.az
  %i.gg = add i64 %.sroa.0.0.i2081846, 1          ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215, label %.lr.ph1847

_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215: ; preds = %bb.az, %bb.ba, %.split, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread
  %.sroa.0.0.i208.lcssa = phi i64 [ 0, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread ], [ %i.aq, %.split ], [ 0, %bb.ba ], [ %.sroa.0.0.i2081846, %bb.az ] ; 3 uses
  %i.gi = sub i64 %i.q, %i.v                      ; 10 uses
  %.not151 = icmp ult i64 %.sroa.0.0.i208.lcssa, %i.gi
  br i1 %.not151, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %bb.g, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, i64 noundef %i.ag, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17
  unreachable

bb.bc:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215
  %.not152 = icmp eq i64 %.sroa.0.0.i208.lcssa, %i.aq
  br i1 %.not152, label %bb.bf, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665

bb.bd:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215
  %.not.i632 = icmp ult i64 %i.gi, %i.aq
  br i1 %.not.i632, label %bb.be, label %.split.i633

.split.i633:                                      ; preds = %bb.bd
  %i.gj = icmp eq i64 %i.gi, %i.aq
  br i1 %i.gj, label %.preheader.i665, label %bb.er

bb.be:                                            ; preds = %bb.bd
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.gi
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !177, !noundef !8
  %i.gm = icmp sgt i8 %i.gl, -65
  br i1 %i.gm, label %.preheader.i665, label %bb.er

bb.bf:                                            ; preds = %bb.bc
  %i.gn = icmp eq i64 %i.aq, 0
  br i1 %i.gn, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bf
  %.sroa.01.024.i = add i64 %i.aq, -1             ; 2 uses
  %i.go = icmp eq i64 %.sroa.01.024.i, 0
  br i1 %i.go, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.backedge.i
  %.sroa.01.025.i = phi i64 [ %.sroa.01.0.i636, %.backedge.i ], [ %.sroa.01.024.i, %.preheader.i ] ; 5 uses
  %.not.i635 = icmp ult i64 %.sroa.01.025.i, %i.aq
  br i1 %.not.i635, label %bb.bg, label %.backedge.i

bb.bg:                                            ; preds = %.lr.ph.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.01.025.i
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !180, !noundef !8
  %i.gr = icmp sgt i8 %i.gq, -65
  br i1 %i.gr, label %.split.i.i, label %.backedge.i

.backedge.i:                                      ; preds = %bb.bg, %.lr.ph.i
  %.sroa.01.0.i636 = add i64 %.sroa.01.025.i, -1  ; 2 uses
  %i.gs = icmp eq i64 %.sroa.01.0.i636, 0
  br i1 %i.gs, label %.split10.i, label %.lr.ph.i

.split.i.i:                                       ; preds = %bb.bg
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.01.025.i
  %i.gu = sub nuw i64 %i.aq, %.sroa.01.025.i
  br label %.split10.i

.split10.i:                                       ; preds = %.backedge.i, %.split.i.i
  %.sroa.0.0.i.pn.i = phi ptr [ %i.gt, %.split.i.i ], [ %i.ar, %.backedge.i ] ; 6 uses
  %.sroa.3.0.i.pn.i = phi i64 [ %i.gu, %.split.i.i ], [ %i.aq, %.backedge.i ]
  switch i64 %.sroa.3.0.i.pn.i, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread [
    i64 1, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
    i64 2, label %.split1668
    i64 3, label %bb.bh
  ]

.split1668:                                       ; preds = %.split10.i
  %i.gv = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.gw = icmp ne i16 %i.gv, -31294
  %i.gx = zext i1 %i.gw to i32
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

bb.bh:                                            ; preds = %.split10.i
  %i.gz = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.ha = xor i16 %i.gz, -32542
  %i.hb = getelementptr i8, ptr %.sroa.0.0.i.pn.i, i64 2
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = zext i8 %i.hc to i16
  %i.he = xor i16 %i.hd, 168
  %i.hf = or i16 %i.ha, %i.he
  %i.hg = icmp ne i16 %i.hf, 0
  %i.hh = zext i1 %i.hg to i32
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665, label %.split1667

.split1667:                                       ; preds = %bb.bh
  %i.hj = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.hk = xor i16 %i.hj, -32542
  %i.hl = getelementptr i8, ptr %.sroa.0.0.i.pn.i, i64 2
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = zext i8 %i.hm to i16
  %i.ho = xor i16 %i.hn, 169
  %i.hp = or i16 %i.hk, %i.ho
  %i.hq = icmp ne i16 %i.hp, 0
  %i.hr = zext i1 %i.hq to i32
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit: ; preds = %.preheader.i, %.split10.i
  %.sroa.0.0.i.pn31.i = phi ptr [ %.sroa.0.0.i.pn.i, %.split10.i ], [ %i.ar, %.preheader.i ]
  %lhsc.i = load i8, ptr %.sroa.0.0.i.pn31.i, align 1, !alias.scope !180
  %i.ht = add i8 %lhsc.i, -10
  %switch.selectcmp.i = icmp ult i8 %i.ht, 4
  br i1 %switch.selectcmp.i, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread: ; preds = %.split10.i, %bb.bf, %.split1668, %.split1667, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
  %i.hu = add i64 %i.aq, %i.v                     ; 2 uses
  store i64 %i.hu, ptr %i.u, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !noundef !8 ; 10 uses
  %i.hx = icmp ult i64 %i.hw, 576460752303423488
  tail call void @llvm.assume(i1 %i.hx)
  %.not153 = icmp eq i64 %i.hw, 0
  br i1 %.not153, label %bb.bk, label %bb.bl, !prof !10

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665: ; preds = %bb.bh, %.split1668, %.split1667, %bb.bc, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit684, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
  %.sroa.014.0 = phi i64 [ %i.ahu, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit684 ], [ 1, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit ], [ 1, %bb.bc ], [ 1, %.split1668 ], [ 1, %.split1667 ], [ 1, %bb.bh ]
  %.sroa.08.0 = phi i64 [ %i.gi, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit684 ], [ %i.aq, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit ], [ %.sroa.0.0.i208.lcssa, %bb.bc ], [ %i.aq, %.split1668 ], [ %i.aq, %.split1667 ], [ %i.aq, %bb.bh ] ; 17 uses
  %i.hy = icmp eq i64 %.sroa.08.0, 0
  br i1 %i.hy, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %bb.bi

_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread: ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665
  store i64 %i.v, ptr %i.u, align 8
  store i32 %i.af, ptr %i.ae, align 8
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.bi:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665
  %.not.i638 = icmp ult i64 %.sroa.08.0, %i.aq
  br i1 %.not.i638, label %bb.bj, label %.split.i639

.split.i639:                                      ; preds = %bb.bi
  %i.hz = icmp eq i64 %.sroa.08.0, %i.aq
  br i1 %i.hz, label %bb.es, label %bb.ev

bb.bj:                                            ; preds = %bb.bi
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.08.0
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !183, !noundef !8
  %i.ic = icmp sgt i8 %i.ib, -65
  br i1 %i.ic, label %bb.es, label %bb.ev

bb.bk:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #17
  unreachable

bb.bl:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.if = add nsw i64 %i.hw, -1                   ; 6 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.if ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !nonnull !8, !align !186, !noundef !8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ij = load i64, ptr %i.ii, align 8, !noundef !8
  %i.ik = load ptr, ptr %i.ih, align 8, !nonnull !8, !noundef !8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.il)
  %i.in = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.im) ; 2 uses
  %i.io = extractvalue { ptr, i64 } %i.in, 0
  %i.ip = extractvalue { ptr, i64 } %i.in, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ij, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 0, ptr %i.ir, align 8
  %i.is = call fastcc { ptr, i64 } @_RNvXs8_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoE5indexB1F_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.io, i64 noundef %i.ip) #18 ; 2 uses
  %i.it = extractvalue { ptr, i64 } %i.is, 0      ; 5 uses
  %i.iu = extractvalue { ptr, i64 } %i.is, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit, label %.preheader1740.preheader

.preheader1740.preheader:                         ; preds = %bb.bl
  %xtraiter2895 = and i64 %i.iu, 3                ; 3 uses
  %i.iw = icmp ult i64 %i.iu, 4
  br i1 %i.iw, label %.preheader1740.epil.preheader, label %.preheader1740.preheader.new

.preheader1740.preheader.new:                     ; preds = %.preheader1740.preheader
  %unroll_iter = and i64 %i.iu, -4
  br label %.preheader1740

.preheader1740:                                   ; preds = %.preheader1740, %.preheader1740.preheader.new
  %.sroa.01.0.i642 = phi i64 [ 0, %.preheader1740.preheader.new ], [ %i.jn, %.preheader1740 ] ; 5 uses
  %i.ix = phi <4 x i64> [ zeroinitializer, %.preheader1740.preheader.new ], [ %i.jm, %.preheader1740 ]
  %niter = phi i64 [ 0, %.preheader1740.preheader.new ], [ %niter.next.3, %.preheader1740 ]
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %.sroa.01.0.i642
  %i.iz = load <4 x i64>, ptr %i.iy, align 8, !alias.scope !187, !noalias !190
  %i.ja = add <4 x i64> %i.iz, %i.ix
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %.sroa.01.0.i642
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jd = load <4 x i64>, ptr %i.jc, align 8, !alias.scope !187, !noalias !190
  %i.je = add <4 x i64> %i.jd, %i.ja
  %i.jf = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %.sroa.01.0.i642
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  %i.jh = load <4 x i64>, ptr %i.jg, align 8, !alias.scope !187, !noalias !190
  %i.ji = add <4 x i64> %i.jh, %i.je
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %.sroa.01.0.i642
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 96
  %i.jl = load <4 x i64>, ptr %i.jk, align 8, !alias.scope !187, !noalias !190
  %i.jm = add <4 x i64> %i.jl, %i.ji              ; 3 uses
  %i.jn = add nuw i64 %.sroa.01.0.i642, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa, label %.preheader1740

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa: ; preds = %.preheader1740
  %lcmp.mod2897.not = icmp eq i64 %xtraiter2895, 0
  br i1 %lcmp.mod2897.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit, label %.preheader1740.epil.preheader

.preheader1740.epil.preheader:                    ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa, %.preheader1740.preheader
  %.sroa.01.0.i642.epil.init = phi i64 [ 0, %.preheader1740.preheader ], [ %i.jn, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x i64> [ zeroinitializer, %.preheader1740.preheader ], [ %i.jm, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2899 = icmp ne i64 %xtraiter2895, 0
  tail call void @llvm.assume(i1 %lcmp.mod2899)
  br label %.preheader1740.epil

.preheader1740.epil:                              ; preds = %.preheader1740.epil, %.preheader1740.epil.preheader
  %.sroa.01.0.i642.epil = phi i64 [ %i.js, %.preheader1740.epil ], [ %.sroa.01.0.i642.epil.init, %.preheader1740.epil.preheader ] ; 2 uses
  %i.jo = phi <4 x i64> [ %i.jr, %.preheader1740.epil ], [ %.epil.init, %.preheader1740.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader1740.epil ], [ 0, %.preheader1740.epil.preheader ]
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %.sroa.01.0.i642.epil
  %i.jq = load <4 x i64>, ptr %i.jp, align 8, !alias.scope !187, !noalias !190
  %i.jr = add <4 x i64> %i.jq, %i.jo              ; 2 uses
  %i.js = add nuw i64 %.sroa.01.0.i642.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2895
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit, label %.preheader1740.epil, !llvm.loop !196

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa, %.preheader1740.epil, %bb.bl
  %i.jt = phi <4 x i64> [ zeroinitializer, %bb.bl ], [ %i.jm, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa ], [ %i.jr, %.preheader1740.epil ] ; 3 uses
  call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.aq) #18
  %i.ju = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.jw = load <2 x i64>, ptr %i.jv, align 8      ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.jy = load i64, ptr %i.jx, align 8, !noundef !8 ; 2 uses
  %i.jz = extractelement <4 x i64> %i.jt, i64 0
  %i.ka = sub i64 %i.jz, %i.ju
  %i.kb = shufflevector <4 x i64> %i.jt, <4 x i64> poison, <2 x i32> <i32 1, i32 2>
  %i.kc = sub <2 x i64> %i.kb, %i.jw
  %i.kd = extractelement <4 x i64> %i.jt, i64 3
  %i.ke = sub i64 %i.kd, %i.jy
  %i.kf = icmp ne i64 %i.aq, 0
  %i.kg = getelementptr [16 x i8], ptr %i.ie, i64 %i.hw ; 2 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 -16
  %i.ki = getelementptr i8, ptr %i.kg, i64 -8
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit, %bb.bz
  %i.kj = phi i64 [ %i.ju, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %i.po, %bb.bz ] ; 3 uses
  %i.kk = phi i64 [ %i.hu, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %i.pq, %bb.bz ] ; 3 uses
  %.sroa.21.0 = phi i64 [ %i.ke, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %.sroa.21.1, %bb.bz ] ; 3 uses
  %.sroa.0743.0 = phi i64 [ %i.ka, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %.sroa.0743.1, %bb.bz ] ; 3 uses
  %.sroa.031.0 = phi i1 [ %i.kf, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ true, %bb.bz ]
  %.sroa.052.0 = phi i64 [ %i.if, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %.sroa.052.1, %bb.bz ] ; 6 uses
  %i.kl = phi <2 x i64> [ %i.kc, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %i.oq, %bb.bz ] ; 3 uses
  %i.km = phi <2 x i64> [ %i.jw, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %i.pp, %bb.bz ] ; 3 uses
  %i.kn = load i64, ptr %i.ii, align 8, !noundef !8
  %i.ko = add i64 %i.kn, 1                        ; 2 uses
  store i64 %i.ko, ptr %i.ii, align 8
  %i.kp = load ptr, ptr %i.ig, align 8, !nonnull !8, !align !186, !noundef !8
  %i.kq = load ptr, ptr %i.kp, align 8, !nonnull !8, !noundef !8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.kr)
  %.not155 = icmp ult i64 %i.ko, %i.ks
  br i1 %.not155, label %.loopexit1737, label %.lr.ph1888

bb.bn:                                            ; preds = %bb.bp
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ld, i64 noundef %i.hw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #17
  unreachable

.lr.ph1888:                                       ; preds = %bb.bm, %bb.bp
  %.sroa.032.01887 = phi i64 [ %i.ld, %bb.bp ], [ %i.if, %bb.bm ] ; 7 uses
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %.sroa.032.01887 ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !noundef !8
  %i.kw = load ptr, ptr %i.kt, align 8, !nonnull !8, !align !186, !noundef !8
  %i.kx = load ptr, ptr %i.kw, align 8, !nonnull !8, !noundef !8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ky)
  %i.la = add i64 %i.kz, -1
  %.not156 = icmp ult i64 %i.kv, %i.la
  br i1 %.not156, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph1888
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.lc = icmp ult i64 %.sroa.032.01887, %.sroa.052.0
  br i1 %i.lc, label %bb.bq, label %.loopexit1738

bb.bp:                                            ; preds = %.lr.ph1888
  %i.ld = add nsw i64 %.sroa.032.01887, -1        ; 3 uses
  %i.le = icmp ult i64 %i.ld, %i.hw
  br i1 %i.le, label %.lr.ph1888, label %bb.bn

bb.bq:                                            ; preds = %bb.bo
  %.not157 = icmp ugt i64 %.sroa.052.0, %i.hw
  br i1 %.not157, label %bb.br, label %.lr.ph1909.preheader, !prof !10

bb.br:                                            ; preds = %bb.bq
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.032.01887, i64 noundef %.sroa.052.0, i64 noundef %i.hw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #17
  unreachable

.lr.ph1909.preheader:                             ; preds = %bb.bq
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %.sroa.052.0
  br label %.lr.ph1909

.loopexit1736:                                    ; preds = %.lr.ph1898.prol.loopexit, %.lr.ph1898, %bb.bs
  %.sroa.21.4.lcssa = phi i64 [ %.sroa.21.31903, %bb.bs ], [ %.lcssa2791.unr, %.lr.ph1898.prol.loopexit ], [ %i.nt, %.lr.ph1898 ] ; 2 uses
  %.sroa.0743.4.lcssa = phi i64 [ %.sroa.0743.31906, %bb.bs ], [ %.lcssa2793.unr.a, %.lr.ph1898.prol.loopexit ], [ %i.nr, %.lr.ph1898 ] ; 2 uses
  %i.lg = phi <2 x i64> [ %i.li, %bb.bs ], [ %.lcssa2792.unr, %.lr.ph1898.prol.loopexit ], [ %i.ns, %.lr.ph1898 ] ; 2 uses
  %i.lh = icmp eq ptr %i.lj, %i.lf
  br i1 %i.lh, label %.loopexit1738, label %.lr.ph1909

.lr.ph1909:                                       ; preds = %.lr.ph1909.preheader, %.loopexit1736
  %.sroa.046.01907 = phi ptr [ %i.lj, %.loopexit1736 ], [ %i.kt, %.lr.ph1909.preheader ] ; 3 uses
  %.sroa.0743.31906 = phi i64 [ %.sroa.0743.4.lcssa, %.loopexit1736 ], [ %.sroa.0743.0, %.lr.ph1909.preheader ] ; 3 uses
  %.sroa.21.31903 = phi i64 [ %.sroa.21.4.lcssa, %.loopexit1736 ], [ %.sroa.21.0, %.lr.ph1909.preheader ] ; 3 uses
  %i.li = phi <2 x i64> [ %i.lg, %.loopexit1736 ], [ %i.kl, %.lr.ph1909.preheader ] ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.046.01907, i64 16 ; 2 uses
  %i.lk = load ptr, ptr %.sroa.046.01907, align 8, !nonnull !8, !align !186, !noundef !8
  %i.ll = load ptr, ptr %i.lk, align 8, !nonnull !8, !noundef !8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.lm)
  %i.lo = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.ln) ; 2 uses
  %i.lp = extractvalue { ptr, i64 } %i.lo, 1      ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.046.01907, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !noundef !8 ; 4 uses
  %.not158 = icmp ugt i64 %i.lr, %i.lp
  br i1 %.not158, label %bb.bt, label %bb.bs, !prof !132

bb.bs:                                            ; preds = %.lr.ph1909
  %i.ls = extractvalue { ptr, i64 } %i.lo, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  %.idx2042 = shl i64 %i.lr, 5                    ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.idx2042
  %i.lu = icmp eq i64 %i.lr, 0
  br i1 %i.lu, label %.loopexit1736, label %.lr.ph1898.preheader

.lr.ph1898.preheader:                             ; preds = %bb.bs
  %i.lv = add i64 %.idx2042, -32                  ; 2 uses
  %i.lw = lshr exact i64 %i.lv, 5
  %i.lx = add nuw nsw i64 %i.lw, 1
  %xtraiter2900 = and i64 %i.lx, 3                ; 2 uses
  %lcmp.mod2901.not = icmp eq i64 %xtraiter2900, 0
  br i1 %lcmp.mod2901.not, label %.lr.ph1898.prol.loopexit, label %.lr.ph1898.prol

.lr.ph1898.prol:                                  ; preds = %.lr.ph1898.preheader, %.lr.ph1898.prol
  %.sroa.049.01896.prol = phi ptr [ %i.lz, %.lr.ph1898.prol ], [ %i.ls, %.lr.ph1898.preheader ] ; 4 uses
  %.sroa.0743.41895.prol = phi i64 [ %i.mf, %.lr.ph1898.prol ], [ %.sroa.0743.31906, %.lr.ph1898.preheader ]
  %.sroa.21.41892.prol = phi i64 [ %i.mh, %.lr.ph1898.prol ], [ %.sroa.21.31903, %.lr.ph1898.preheader ]
  %i.ly = phi <2 x i64> [ %i.mg, %.lr.ph1898.prol ], [ %i.li, %.lr.ph1898.preheader ]
  %prol.iter2902 = phi i64 [ %prol.iter2902.next, %.lr.ph1898.prol ], [ 0, %.lr.ph1898.preheader ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.049.01896.prol, i64 32 ; 2 uses
  %i.ma = load i64, ptr %.sroa.049.01896.prol, align 8, !noundef !8
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.049.01896.prol, i64 8
  %i.mc = load <2 x i64>, ptr %i.mb, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.049.01896.prol, i64 24
  %i.me = load i64, ptr %i.md, align 8, !noundef !8
  %i.mf = add i64 %i.ma, %.sroa.0743.41895.prol   ; 3 uses
  %i.mg = add <2 x i64> %i.mc, %i.ly              ; 3 uses
  %i.mh = add i64 %i.me, %.sroa.21.41892.prol     ; 3 uses
  %prol.iter2902.next = add i64 %prol.iter2902, 1 ; 2 uses
  %prol.iter2902.cmp.not = icmp eq i64 %prol.iter2902.next, %xtraiter2900
  br i1 %prol.iter2902.cmp.not, label %.lr.ph1898.prol.loopexit, label %.lr.ph1898.prol, !llvm.loop !197

.lr.ph1898.prol.loopexit:                         ; preds = %.lr.ph1898.prol, %.lr.ph1898.preheader
  %.lcssa2793.unr.a = phi i64 [ poison, %.lr.ph1898.preheader ], [ %i.mf, %.lr.ph1898.prol ]
  %.lcssa2792.unr = phi <2 x i64> [ poison, %.lr.ph1898.preheader ], [ %i.mg, %.lr.ph1898.prol ]
  %.lcssa2791.unr = phi i64 [ poison, %.lr.ph1898.preheader ], [ %i.mh, %.lr.ph1898.prol ]
  %.sroa.049.01896.unr = phi ptr [ %i.ls, %.lr.ph1898.preheader ], [ %i.lz, %.lr.ph1898.prol ]
  %.sroa.0743.41895.unr = phi i64 [ %.sroa.0743.31906, %.lr.ph1898.preheader ], [ %i.mf, %.lr.ph1898.prol ]
  %.sroa.21.41892.unr = phi i64 [ %.sroa.21.31903, %.lr.ph1898.preheader ], [ %i.mh, %.lr.ph1898.prol ]
  %.unr2903 = phi <2 x i64> [ %i.li, %.lr.ph1898.preheader ], [ %i.mg, %.lr.ph1898.prol ]
  %i.mi = icmp ult i64 %i.lv, 96
  br i1 %i.mi, label %.loopexit1736, label %.lr.ph1898

bb.bt:                                            ; preds = %.lr.ph1909
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lr, i64 noundef %i.lp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #17
  unreachable

.lr.ph1898:                                       ; preds = %.lr.ph1898.prol.loopexit, %.lr.ph1898
  %.sroa.049.01896 = phi ptr [ %i.nl, %.lr.ph1898 ], [ %.sroa.049.01896.unr, %.lr.ph1898.prol.loopexit ] ; 13 uses
  %.sroa.0743.41895 = phi i64 [ %i.nr, %.lr.ph1898 ], [ %.sroa.0743.41895.unr, %.lr.ph1898.prol.loopexit ]
  %.sroa.21.41892 = phi i64 [ %i.nt, %.lr.ph1898 ], [ %.sroa.21.41892.unr, %.lr.ph1898.prol.loopexit ]
  %i.mj = phi <2 x i64> [ %i.ns, %.lr.ph1898 ], [ %.unr2903, %.lr.ph1898.prol.loopexit ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 32
  %i.ml = load i64, ptr %.sroa.049.01896, align 8, !noundef !8
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 8
  %i.mn = load <2 x i64>, ptr %i.mm, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 24
  %i.mp = load i64, ptr %i.mo, align 8, !noundef !8
  %i.mq = add i64 %i.ml, %.sroa.0743.41895
  %i.mr = add <2 x i64> %i.mn, %i.mj
  %i.ms = add i64 %i.mp, %.sroa.21.41892
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 64
  %i.mu = load i64, ptr %i.mk, align 8, !noundef !8
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 40
  %i.mw = load <2 x i64>, ptr %i.mv, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 56
  %i.my = load i64, ptr %i.mx, align 8, !noundef !8
  %i.mz = add i64 %i.mu, %i.mq
  %i.na = add <2 x i64> %i.mw, %i.mr
  %i.nb = add i64 %i.my, %i.ms
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 96
  %i.nd = load i64, ptr %i.mt, align 8, !noundef !8
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 72
  %i.nf = load <2 x i64>, ptr %i.ne, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 88
  %i.nh = load i64, ptr %i.ng, align 8, !noundef !8
  %i.ni = add i64 %i.nd, %i.mz
  %i.nj = add <2 x i64> %i.nf, %i.na
  %i.nk = add i64 %i.nh, %i.nb
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 128 ; 2 uses
  %i.nm = load i64, ptr %i.nc, align 8, !noundef !8
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 104
  %i.no = load <2 x i64>, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 120
  %i.nq = load i64, ptr %i.np, align 8, !noundef !8
  %i.nr = add i64 %i.nm, %i.ni                    ; 2 uses
  %i.ns = add <2 x i64> %i.no, %i.nj              ; 2 uses
  %i.nt = add i64 %i.nq, %i.nk                    ; 2 uses
  %i.nu = icmp eq ptr %i.nl, %i.lt
  br i1 %i.nu, label %.loopexit1736, label %.lr.ph1898

.loopexit1738:                                    ; preds = %.loopexit1736, %bb.bo
  %.sroa.21.2 = phi i64 [ %.sroa.21.0, %bb.bo ], [ %.sroa.21.4.lcssa, %.loopexit1736 ] ; 3 uses
  %.sroa.0743.2 = phi i64 [ %.sroa.0743.0, %bb.bo ], [ %.sroa.0743.4.lcssa, %.loopexit1736 ] ; 3 uses
  %.sroa.052.2 = phi i64 [ %.sroa.052.0, %bb.bo ], [ %.sroa.032.01887, %.loopexit1736 ] ; 3 uses
  %i.nv = phi <2 x i64> [ %i.kl, %bb.bo ], [ %i.lg, %.loopexit1736 ] ; 3 uses
  %i.nw = load i64, ptr %i.lb, align 8, !noundef !8
  %i.nx = add i64 %i.nw, 1                        ; 4 uses
  store i64 %i.nx, ptr %i.lb, align 8
  %i.ny = icmp ult i64 %.sroa.032.01887, %i.if
  br i1 %i.ny, label %.lr.ph1916.preheader, label %.loopexit1737

.lr.ph1916.preheader:                             ; preds = %.loopexit1738
  %.pre = load ptr, ptr %i.kt, align 8
  %i.nz = load ptr, ptr %.pre, align 8, !nonnull !8, !noundef !8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.oa)
  %i.oc = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.ob) ; 2 uses
  %i.od = extractvalue { ptr, i64 } %i.oc, 1      ; 2 uses
  %i.oe = icmp ult i64 %i.nx, %i.od
  br i1 %i.oe, label %bb.bu, label %.loopexit2905

bb.bu:                                            ; preds = %.lr.ph1916.preheader
  %i.of = add i64 %.sroa.032.01887, 1             ; 3 uses
  %i.og = extractvalue { ptr, i64 } %i.oc, 0
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.nx ; 2 uses
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.of ; 2 uses
  store ptr %i.oh, ptr %i.oi, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i64 0, ptr %i.oj, align 8
  %exitcond.not.peel = icmp eq i64 %i.of, %i.if
  br i1 %exitcond.not.peel, label %.loopexit1737, label %.lr.ph1916
end_hunk_3
begin_hunk_4_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9next_impl:bb.a
  %i.avf = icmp eq i64 %.sroa.01.0.vec.extract.i, 0
  %.sroa.01.8.vec.extract.i = extractelement <2 x i64> %i.ati, i64 1
  %i.avg = icmp eq i64 %.sroa.01.8.vec.extract.i, 0
  %.sroa.0.0.i285 = select i1 %i.avf, i1 %i.avg, i1 false
  br i1 %.sroa.0.0.i285, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221, label %bb.gd

bb.gd:                                            ; preds = %.thread1698
  %i.avh = icmp eq <16 x i8> %i.asw, splat (i8 10)
  %.neg1720 = sext <16 x i1> %i.avh to <16 x i8>
  %.neg1721 = shufflevector <16 x i8> %.neg1720, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %.neg1722 = select <16 x i1> %i.atg, <16 x i8> %.neg1721, <16 x i8> zeroinitializer
  %i.avi = add <16 x i8> %i.ave, %.neg1722        ; 4 uses
  %.not1723 = icmp ne i64 %.sroa.18.1.i2013, 16
  %i.avj = icmp eq i8 %i.atl, 13
  %or.cond2458 = select i1 %.not1723, i1 %i.avj, i1 false
  br i1 %or.cond2458, label %bb.ge, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221

bb.ge:                                            ; preds = %bb.gd
  %i.avk = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i2014, i64 16
  %i.avl = load i8, ptr %i.avk, align 16, !alias.scope !288, !noalias !291, !noundef !8
  %i.avm = icmp eq i8 %i.avl, 10
  br i1 %i.avm, label %bb.gf, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221

bb.gf:                                            ; preds = %bb.ge
  %.sroa.0.15.vec.extract.i = extractelement <16 x i8> %i.avi, i64 15
  %i.avn = add i8 %.sroa.0.15.vec.extract.i, -1
  %.sroa.0.15.vec.insert.i = insertelement <16 x i8> %i.avi, i8 %i.avn, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221: ; preds = %bb.gd, %bb.ge, %bb.gf, %.thread1698
  %.sroa.01004.5.in = phi <16 x i8> [ %i.ave, %.thread1698 ], [ %.sroa.0.15.vec.insert.i, %bb.gf ], [ %i.avi, %bb.ge ], [ %i.avi, %bb.gd ]
  %i.avo = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.sroa.01004.5.in, <16 x i8> zeroinitializer)
  %i.avp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.avo)
  %i.avq = sub nsw i64 0, %.sroa.03.1.i2015
  %.not41.i = icmp eq i64 %i.avp, %i.avq
  br i1 %.not41.i, label %bb.gg, label %.loopexit

bb.gg:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221
  %i.avr = add i64 %.sroa.18.1.i2013, -16         ; 3 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i2014, i64 16 ; 2 uses
  %i.avt = icmp ugt i64 %i.avr, 15
  br i1 %i.avt, label %.lr.ph2016, label %.loopexit

.loopexit:                                        ; preds = %bb.gg, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221, %bb.fc
  %.sroa.18.2.i = phi i64 [ %.sroa.18.0.i, %bb.fc ], [ %.sroa.18.1.i2013, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221 ], [ %i.avr, %bb.gg ] ; 9 uses
  %.sroa.07.2.i = phi ptr [ %.sroa.07.0.i, %bb.fc ], [ %.sroa.07.1.i2014, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221 ], [ %i.avs, %bb.gg ] ; 4 uses
  %.sroa.03.2.i = phi i64 [ %.sroa.03.0.i, %bb.fc ], [ %.sroa.03.1.i2015, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit221 ], [ 0, %bb.gg ] ; 2 uses
  %i.avu = sub nuw nsw i64 1, %.sroa.03.2.i
  %i.avv = icmp ne i64 %.sroa.18.2.i, 0
  %i.avw = icmp ne i64 %.sroa.03.2.i, 1
  %or.cond.i2652023 = and i1 %i.avv, %i.avw
  br i1 %or.cond.i2652023, label %.lr.ph2027, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread

.lr.ph2027:                                       ; preds = %.loopexit, %bb.go
  %.sroa.0.0.i2642025 = phi i64 [ %i.awo, %bb.go ], [ 0, %.loopexit ] ; 6 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 %.sroa.0.0.i2642025 ; 2 uses
  %i.avy = load i8, ptr %i.avx, align 1, !alias.scope !293, !noundef !8 ; 3 uses
  %i.avz = add i8 %i.avy, -10
  %spec.select.i718 = icmp ult i8 %i.avz, 4
  br i1 %spec.select.i718, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %.lr.ph2027
  switch i8 %i.avy, label %bb.go [
    i8 -62, label %bb.gj
    i8 -30, label %bb.gl
  ]

bb.gi:                                            ; preds = %.lr.ph2027
  %i.awa = icmp eq i8 %i.avy, 13
  br i1 %i.awa, label %bb.gp, label %bb.go

bb.gj:                                            ; preds = %bb.gh
  %i.awb = add nuw nsw i64 %.sroa.0.0.i2642025, 1 ; 2 uses
  %i.awc = icmp samesign ult i64 %i.awb, %.sroa.18.2.i
  br i1 %i.awc, label %bb.gk, label %bb.go

bb.gk:                                            ; preds = %bb.gj
  %i.awd = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 %i.awb
  %i.awe = load i8, ptr %i.awd, align 1, !alias.scope !293, !noundef !8
  %i.awf = icmp eq i8 %i.awe, -123
  br label %bb.go

bb.gl:                                            ; preds = %bb.gh
  %i.awg = add nuw i64 %.sroa.0.0.i2642025, 2     ; 2 uses
  %i.awh = icmp ult i64 %i.awg, %.sroa.18.2.i
  br i1 %i.awh, label %bb.gm, label %bb.go

bb.gm:                                            ; preds = %bb.gl
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avx, i64 1
  %i.awj = load i8, ptr %i.awi, align 1, !alias.scope !293, !noundef !8
  %i.awk = icmp eq i8 %i.awj, -128
  br i1 %i.awk, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.awl = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 %i.awg
  %i.awm = load i8, ptr %i.awl, align 1, !alias.scope !293, !noundef !8
  %.mask.i267 = and i8 %i.awm, -2
  %i.awn = icmp eq i8 %.mask.i267, -88
  br label %bb.go

bb.go:                                            ; preds = %bb.gk, %bb.gj, %bb.gq, %bb.gp, %bb.gn, %bb.gm, %bb.gl, %bb.gi, %bb.gh
  %.sroa.012.1.i266.shrunk = phi i1 [ false, %bb.gl ], [ %i.awv, %bb.gq ], [ true, %bb.gp ], [ true, %bb.gi ], [ false, %bb.gj ], [ false, %bb.gh ], [ %i.awn, %bb.gn ], [ false, %bb.gm ], [ %i.awf, %bb.gk ]
  %.sroa.012.1.i266 = zext i1 %.sroa.012.1.i266.shrunk to i64
  %i.awo = add nuw nsw i64 %.sroa.0.0.i2642025, 1 ; 4 uses
  %i.awp = icmp ult i64 %i.awo, %.sroa.18.2.i
  %i.awq = icmp samesign ugt i64 %i.avu, %.sroa.012.1.i266
  %or.cond.i265 = select i1 %i.awp, i1 %i.awq, i1 false
  br i1 %or.cond.i265, label %.lr.ph2027, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270

bb.gp:                                            ; preds = %bb.gi
  %i.awr = add nuw nsw i64 %.sroa.0.0.i2642025, 1 ; 2 uses
  %i.aws = icmp samesign ult i64 %i.awr, %.sroa.18.2.i
  br i1 %i.aws, label %bb.gq, label %bb.go

bb.gq:                                            ; preds = %bb.gp
  %i.awt = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 %i.awr
  %i.awu = load i8, ptr %i.awt, align 1, !alias.scope !293, !noundef !8
  %i.awv = icmp ne i8 %i.awu, 10
  br label %bb.go

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270: ; preds = %bb.go
  %.not2461 = icmp ult i64 %.sroa.0.0.i2642025, %.sroa.18.2.i
  br i1 %.not2461, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread, label %bb.gr, !prof !116

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread: ; preds = %.loopexit, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270
  %.sroa.0.0.i264.lcssa2316 = phi i64 [ %i.awo, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270 ], [ 0, %.loopexit ]
  %.neg.i = sub i64 %i.arl, %.sroa.18.2.i
  %i.aww = add i64 %.neg.i, %.sroa.0.0.i264.lcssa2316 ; 2 uses
  %i.awx = icmp eq i64 %i.aww, 0
  br i1 %i.awx, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph2031

bb.gr:                                            ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.awo, i64 noundef %.sroa.18.2.i, i64 noundef %.sroa.18.2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable

.lr.ph2031:                                       ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread, %bb.gt
  %.sroa.0.0.i1832029 = phi i64 [ %i.axc, %bb.gt ], [ %i.aww, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread ] ; 5 uses
  %.not42.i = icmp ult i64 %.sroa.0.0.i1832029, %i.arl
  br i1 %.not42.i, label %bb.gs, label %.split1699

.split1699:                                       ; preds = %.lr.ph2031
  %i.awy = icmp eq i64 %.sroa.0.0.i1832029, %i.arl
  br i1 %i.awy, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.gt

bb.gs:                                            ; preds = %.lr.ph2031
  %i.awz = getelementptr inbounds nuw i8, ptr %i.arm, i64 %.sroa.0.0.i1832029
  %i.axa = load i8, ptr %i.awz, align 1, !alias.scope !296, !noundef !8
  %i.axb = icmp sgt i8 %i.axa, -65
  br i1 %i.axb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.gt

bb.gt:                                            ; preds = %.split1699, %bb.gs
  %i.axc = add i64 %.sroa.0.0.i1832029, 1         ; 2 uses
  %i.axd = icmp eq i64 %i.axc, 0
  br i1 %i.axd, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph2031

_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.gs, %bb.gt, %.split1699, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread
  %.sroa.0.0.i183.lcssa = phi i64 [ 0, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread ], [ %i.arl, %.split1699 ], [ 0, %bb.gt ], [ %.sroa.0.0.i1832029, %bb.gs ] ; 2 uses
  %i.axe = add i64 %.sroa.0.0.i183.lcssa, %i.aqz  ; 6 uses
  store i64 %i.axe, ptr %i.aqy, align 8
  %i.axf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.axg = load i64, ptr %i.axf, align 8, !noundef !8
  %i.axh = add i64 %i.axg, 1
  store i64 %i.axh, ptr %i.axf, align 8
  %i.axi = icmp eq i64 %i.axe, %i.l               ; 2 uses
  br i1 %i.axi, label %bb.gz, label %bb.gv

bb.gu:                                            ; preds = %bb.ez, %bb.ey
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.aqz, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #17
  unreachable

bb.gv:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.axj = icmp ugt i64 %i.aqz, %i.axe
  %i.axk = icmp ugt i64 %i.axe, %i.l
  %or.cond.i279 = or i1 %i.axj, %i.axk
  br i1 %or.cond.i279, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.gw, !prof !120

bb.gw:                                            ; preds = %bb.gv
  br i1 %i.arb, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gy, %bb.gw
  br i1 %i.axi, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1701, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

bb.gy:                                            ; preds = %bb.gw
  %i.axl = load i8, ptr %i.arm, align 1, !alias.scope !299, !noundef !8
  %i.axm = icmp sgt i8 %i.axl, -65
  br i1 %i.axm, label %bb.gx, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, !prof !124

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.gx
  %i.axn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.axe
  %i.axo = load i8, ptr %i.axn, align 1, !alias.scope !299, !noundef !8
  %i.axp = icmp sgt i8 %i.axo, -65
  br i1 %i.axp, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1701, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, !prof !125

bb.gz:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.axq = icmp eq i64 %i.l, 0
  br i1 %i.axq, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738, label %.preheader.i719

.preheader.i719:                                  ; preds = %bb.gz
  %.sroa.01.024.i720 = add i64 %i.l, -1           ; 2 uses
  %i.axr = icmp eq i64 %.sroa.01.024.i720, 0
  br i1 %i.axr, label %.split10.thread.i733, label %.lr.ph.i721

.lr.ph.i721:                                      ; preds = %.preheader.i719, %.backedge.i724
  %.sroa.01.025.i722 = phi i64 [ %.sroa.01.0.i725, %.backedge.i724 ], [ %.sroa.01.024.i720, %.preheader.i719 ] ; 5 uses
  %.not.i723 = icmp ult i64 %.sroa.01.025.i722, %i.l
  br i1 %.not.i723, label %bb.ha, label %.backedge.i724

bb.ha:                                            ; preds = %.lr.ph.i721
  %i.axs = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.025.i722
  %i.axt = load i8, ptr %i.axs, align 1, !alias.scope !302, !noundef !8
  %i.axu = icmp sgt i8 %i.axt, -65
  br i1 %i.axu, label %.split.i.i737, label %.backedge.i724

.backedge.i724:                                   ; preds = %bb.ha, %.lr.ph.i721
  %.sroa.01.0.i725 = add i64 %.sroa.01.025.i722, -1 ; 2 uses
  %i.axv = icmp eq i64 %.sroa.01.0.i725, 0
  br i1 %i.axv, label %.split10.i726, label %.lr.ph.i721

.split.i.i737:                                    ; preds = %bb.ha
  %i.axw = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.025.i722
  %i.axx = sub nuw i64 %i.l, %.sroa.01.025.i722
  br label %.split10.i726

.split10.i726:                                    ; preds = %.backedge.i724, %.split.i.i737
  %.sroa.0.0.i.pn.i727 = phi ptr [ %i.axw, %.split.i.i737 ], [ %i.j, %.backedge.i724 ] ; 6 uses
  %.sroa.3.0.i.pn.i728 = phi i64 [ %i.axx, %.split.i.i737 ], [ %i.l, %.backedge.i724 ]
  switch i64 %.sroa.3.0.i.pn.i728, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738 [
    i64 1, label %.split10.thread.i733
    i64 2, label %bb.hb
    i64 3, label %bb.hc
  ]

.split10.thread.i733:                             ; preds = %.split10.i726, %.preheader.i719
  %.sroa.0.0.i.pn31.i734 = phi ptr [ %.sroa.0.0.i.pn.i727, %.split10.i726 ], [ %i.j, %.preheader.i719 ]
  %lhsc.i735 = load i8, ptr %.sroa.0.0.i.pn31.i734, align 1, !alias.scope !302
  %i.axy = add i8 %lhsc.i735, -10
  %switch.selectcmp.i736 = icmp ult i8 %i.axy, 4
  br label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738

bb.hb:                                            ; preds = %.split10.i726
  %i.axz = load i16, ptr %.sroa.0.0.i.pn.i727, align 1
  %i.aya = icmp ne i16 %i.axz, -31294
  %i.ayb = zext i1 %i.aya to i32
  %i.ayc = icmp eq i32 %i.ayb, 0
  br label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738

bb.hc:                                            ; preds = %.split10.i726
  %i.ayd = load i16, ptr %.sroa.0.0.i.pn.i727, align 1
  %i.aye = xor i16 %i.ayd, -32542
  %i.ayf = getelementptr i8, ptr %.sroa.0.0.i.pn.i727, i64 2
  %i.ayg = load i8, ptr %i.ayf, align 1
  %i.ayh = zext i8 %i.ayg to i16
  %i.ayi = xor i16 %i.ayh, 168
  %i.ayj = or i16 %i.aye, %i.ayi
  %i.ayk = icmp ne i16 %i.ayj, 0
  %i.ayl = zext i1 %i.ayk to i32
  %i.aym = icmp eq i32 %i.ayl, 0
  br i1 %i.aym, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ayn = load i16, ptr %.sroa.0.0.i.pn.i727, align 1
  %i.ayo = xor i16 %i.ayn, -32542
  %i.ayp = getelementptr i8, ptr %.sroa.0.0.i.pn.i727, i64 2
  %i.ayq = load i8, ptr %i.ayp, align 1
  %i.ayr = zext i8 %i.ayq to i16
  %i.ays = xor i16 %i.ayr, 169
  %i.ayt = or i16 %i.ayo, %i.ays
  %i.ayu = icmp ne i16 %i.ayt, 0
  %i.ayv = zext i1 %i.ayu to i32
  %i.ayw = icmp eq i32 %i.ayv, 0
  br label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738: ; preds = %bb.gz, %.split10.i726, %.split10.thread.i733, %bb.hb, %bb.hc, %bb.hd
  %.sroa.0.0.i731 = phi i1 [ false, %bb.gz ], [ %switch.selectcmp.i736, %.split10.thread.i733 ], [ true, %bb.hc ], [ %i.ayc, %bb.hb ], [ %i.ayw, %bb.hd ], [ false, %.split10.i726 ]
  %i.ayx = xor i1 %.sroa.0.0.i731, true
  %i.ayy = zext i1 %i.ayx to i8
  store i8 %i.ayy, ptr %i.m, align 1
  br label %bb.gv

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.gy, %bb.gv, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.aqz, i64 noundef %i.axe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #17
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1701: ; preds = %bb.gx, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXs0_NtCs2wCc12Mnjqg_5ropey5sliceNtB5_9RopeSliceINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ayz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.arm, i64 noundef %.sroa.0.0.i183.lcssa) #18
  br label %bb.el
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9prev_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = load i64, ptr %1, align 8, !range !4, !noundef !8
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !range !9, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  store i8 0, ptr %i.j, align 1
  br i1 %i.l, label %bb.bi, label %bb.bh

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !noundef !8 ; 4 uses
  %i.s = zext i32 %i.r to i64                     ; 17 uses
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i411 = icmp ugt i64 %i.p, %i.s
  br i1 %.not.i411, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.u = icmp eq i64 %i.p, %i.s
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !305, !noundef !8
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.split.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !range !9, !noundef !8
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.y, align 1
  br i1 %i.aa, label %.preheader.i, label %bb.h

.thread:                                          ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !range !9, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  store i8 0, ptr %i.ab, align 1
  br i1 %i.ad, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, i64 noundef 0, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #17
  unreachable

bb.h:                                             ; preds = %.thread, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !noundef !8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.bg, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

.preheader.i:                                     ; preds = %bb.f
  %.sroa.01.024.i = add nsw i64 %i.s, -1          ; 2 uses
  %i.ah = icmp eq i64 %.sroa.01.024.i, 0
  br i1 %i.ah, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.backedge.i
  %.sroa.01.025.i = phi i64 [ %.sroa.01.0.i414, %.backedge.i ], [ %.sroa.01.024.i, %.preheader.i ] ; 5 uses
  %.not.i413 = icmp ult i64 %.sroa.01.025.i, %i.s
  br i1 %.not.i413, label %bb.i, label %.backedge.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.025.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !308, !noundef !8
  %i.ak = icmp sgt i8 %i.aj, -65
  br i1 %i.ak, label %.split.i.i, label %.backedge.i

.backedge.i:                                      ; preds = %bb.i, %.lr.ph.i
  %.sroa.01.0.i414 = add i64 %.sroa.01.025.i, -1  ; 2 uses
  %i.al = icmp eq i64 %.sroa.01.0.i414, 0
  br i1 %i.al, label %.split10.i, label %.lr.ph.i

.split.i.i:                                       ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.025.i
  %i.an = sub nuw nsw i64 %i.s, %.sroa.01.025.i
  br label %.split10.i

.split10.i:                                       ; preds = %.backedge.i, %.split.i.i
  %.sroa.0.0.i.pn.i = phi ptr [ %i.am, %.split.i.i ], [ %i.n, %.backedge.i ] ; 6 uses
  %.sroa.3.0.i.pn.i = phi i64 [ %i.an, %.split.i.i ], [ %i.s, %.backedge.i ]
  switch i64 %.sroa.3.0.i.pn.i, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread [
    i64 1, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
    i64 2, label %.split1014
    i64 3, label %bb.j
  ]

.split1014:                                       ; preds = %.split10.i
  %i.ao = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.ap = icmp ne i16 %i.ao, -31294
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

bb.j:                                             ; preds = %.split10.i
  %i.as = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.at = xor i16 %i.as, -32542
  %i.au = getelementptr i8, ptr %.sroa.0.0.i.pn.i, i64 2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i16
  %i.ax = xor i16 %i.aw, 168
  %i.ay = or i16 %i.at, %i.ax
  %i.az = icmp ne i16 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, label %.split

.split:                                           ; preds = %bb.j
  %i.bc = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.bd = xor i16 %i.bc, -32542
  %i.be = getelementptr i8, ptr %.sroa.0.0.i.pn.i, i64 2
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i16
  %i.bh = xor i16 %i.bg, 169
  %i.bi = or i16 %i.bd, %i.bh
  %i.bj = icmp ne i16 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit: ; preds = %.preheader.i, %.split10.i
  %.sroa.0.0.i.pn31.i = phi ptr [ %.sroa.0.0.i.pn.i, %.split10.i ], [ %i.n, %.preheader.i ]
  %lhsc.i = load i8, ptr %.sroa.0.0.i.pn31.i, align 1, !alias.scope !308
  %i.bm = add i8 %lhsc.i, -10
  %switch.selectcmp.i = icmp ult i8 %i.bm, 4
  br i1 %switch.selectcmp.i, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread: ; preds = %.thread, %.split10.i, %.split1014, %.split, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit, %bb.h
  %.sroa.0.0 = phi i64 [ 0, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit ], [ 1, %bb.h ], [ 0, %.split1014 ], [ 0, %.split ], [ 0, %.split10.i ], [ 0, %.thread ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !8
  %i.bp = add i64 %i.bo, -1
  store i64 %i.bp, ptr %i.bn, align 8
  %i.bq = tail call fastcc { ptr, i64 } @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils15trim_line_break(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.s) #18 ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1
  %i.bt = tail call noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils24last_line_start_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bs) ; 8 uses
  %i.bu = sub i64 %i.s, %i.bt                     ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !8 ; 7 uses
  %.not170 = icmp ult i64 %i.bu, %i.bw
  br i1 %.not170, label %bb.k, label %bb.n

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012: ; preds = %bb.j, %.split1014, %.split, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !noundef !8
  %i.bz = add i64 %i.by, -1
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ca, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.55.0..sroa_idx, i8 0, i64 32, i1 false)
  br label %bb.bg

bb.k:                                             ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread
  %i.cb = icmp eq i64 %i.bt, 0
  br i1 %i.cb, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i416 = icmp ult i64 %i.bt, %i.s
  br i1 %.not.i416, label %bb.m, label %.split.i417

.split.i417:                                      ; preds = %bb.l
  %i.cc = icmp eq i64 %i.bt, %i.s
  br i1 %i.cc, label %.thread1019, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bt
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !311, !noundef !8
  %i.cf = icmp sgt i8 %i.ce, -65
  br i1 %i.cf, label %.thread1019, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.n:                                             ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread
  %i.cg = sub i64 %i.s, %i.bw                     ; 7 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i419 = icmp ult i64 %i.cg, %i.s
  br i1 %.not.i419, label %bb.p, label %.split.i420

.split.i420:                                      ; preds = %bb.o
  %i.ci = icmp eq i64 %i.bw, 0
  br i1 %i.ci, label %.thread1520, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

.thread1520:                                      ; preds = %.split.i420
  %.sroa.0124.01515 = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cg
  store i32 %i.r, ptr %i.q, align 8
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cg
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !314, !noundef !8
  %i.cl = icmp sgt i8 %i.ck, -65
  br i1 %i.cl, label %bb.r, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

.thread1019:                                      ; preds = %bb.m, %.split.i417
  %i.cm = sub i64 %i.bw, %i.bu
  br label %bb.r

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i420, %bb.p, %.split.i417, %bb.m
  %.sroa.010.0 = phi i64 [ %i.bt, %.split.i417 ], [ %i.bt, %bb.m ], [ %i.cg, %bb.p ], [ %i.cg, %.split.i420 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.s, i64 noundef %.sroa.010.0, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #17
  unreachable

bb.q:                                             ; preds = %bb.k
  %i.cn = sub i64 %i.bw, %i.bu                    ; 2 uses
  store i64 %i.cn, ptr %i.bv, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !8 ; 10 uses
  %i.cq = icmp ult i64 %i.cp, 576460752303423488
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = add nsw i64 %i.cp, -1                   ; 5 uses
  %.not173 = icmp eq i64 %i.cp, 0
  br i1 %.not173, label %bb.v, label %bb.w, !prof !10

bb.r:                                             ; preds = %bb.n, %bb.p, %.thread1019
  %storemerge = phi i64 [ %i.cm, %.thread1019 ], [ 0, %bb.p ], [ 0, %bb.n ]
  %.sroa.010.1 = phi i64 [ %i.bt, %.thread1019 ], [ %i.cg, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %.sroa.6128.0 = phi i64 [ %i.bu, %.thread1019 ], [ %i.bw, %bb.p ], [ %i.bw, %bb.n ] ; 13 uses
  %.sroa.0124.0 = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.010.1 ; 12 uses
  store i64 %storemerge, ptr %i.bv, align 8
  %i.cs = trunc i64 %.sroa.010.1 to i32
  store i32 %i.cs, ptr %i.q, align 8
  %i.ct = icmp samesign ult i64 %.sroa.6128.0, 16
  br i1 %i.ct, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !317
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0124.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6128.0)
  %i.cu = load ptr, ptr %i.d, align 8, !noalias !317, !nonnull !8, !noundef !8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !317, !noundef !8 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !317, !nonnull !8, !align !14, !noundef !8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !noalias !317, !noundef !8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !317, !nonnull !8, !noundef !8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !noalias !317, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !317
  %i.df = icmp samesign eq i64 %i.cw, 0
  br i1 %i.df, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit, label %.preheader.i424.preheader

.preheader.i424.preheader:                        ; preds = %bb.s
  %min.iters.check = icmp ult i64 %i.cw, 4
  br i1 %min.iters.check, label %.preheader.i424.preheader2144, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i424.preheader
  %n.vec = and i64 %i.cw, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi1789 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %wide.load = load <2 x i8>, ptr %i.dg, align 1, !alias.scope !320
  %wide.load1790 = load <2 x i8>, ptr %i.dh, align 1, !alias.scope !320
  %i.di = icmp slt <2 x i8> %wide.load, splat (i8 -64)
  %i.dj = icmp slt <2 x i8> %wide.load1790, splat (i8 -64)
  %i.dk = zext <2 x i1> %i.di to <2 x i64>
  %i.dl = zext <2 x i1> %i.dj to <2 x i64>
  %i.dm = add <2 x i64> %vec.phi, %i.dk           ; 2 uses
  %i.dn = add <2 x i64> %vec.phi1789, %i.dl       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dn, %i.dm
  %i.dp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit, label %.preheader.i424.preheader2144

.preheader.i424.preheader2144:                    ; preds = %.preheader.i424.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i424.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %.preheader.i424.preheader ], [ %i.dp, %middle.block ]
  br label %.preheader.i424

.preheader.i424:                                  ; preds = %.preheader.i424.preheader2144, %.preheader.i424
  %.sroa.04.0.i.i = phi i64 [ %i.du, %.preheader.i424 ], [ %.sroa.04.0.i.i.ph, %.preheader.i424.preheader2144 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.dt, %.preheader.i424 ], [ %.sroa.02.0.i.i.ph, %.preheader.i424.preheader2144 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.dq, align 1, !alias.scope !320, !noundef !8
  %i.dr = icmp slt i8 %.val.i.i, -64
  %i.ds = zext i1 %i.dr to i64
  %i.dt = add i64 %.sroa.02.0.i.i, %i.ds          ; 2 uses
  %i.du = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.dv = icmp eq i64 %i.du, %i.cw
  br i1 %i.dv, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit, label %.preheader.i424, !llvm.loop !324

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit: ; preds = %.preheader.i424, %middle.block, %bb.s
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.s ], [ %i.dp, %middle.block ], [ %i.dt, %.preheader.i424 ] ; 3 uses
  %i.dw = icmp ule i64 %.sroa.0.0.i.i, %i.cw
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = and i64 %i.da, 576460752303423484       ; 3 uses
  %.not.i2071160 = icmp eq i64 %i.dx, 0
  br i1 %.not.i2071160, label %._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %bb.r
  %i.dy = icmp samesign eq i64 %.sroa.6128.0, 0
  br i1 %i.dy, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, label %.preheader1072.preheader

.preheader1072.preheader:                         ; preds = %bb.t
  %xtraiter2149 = and i64 %.sroa.6128.0, 3        ; 3 uses
  %i.dz = icmp ult i64 %.sroa.6128.0, 4
  br i1 %i.dz, label %.preheader1072.epil.preheader, label %.preheader1072.preheader.new

.preheader1072.preheader.new:                     ; preds = %.preheader1072.preheader
  %unroll_iter = and i64 %.sroa.6128.0, 12
  br label %.preheader1072

.preheader1072:                                   ; preds = %.preheader1072, %.preheader1072.preheader.new
  %.sroa.04.0.i425 = phi i64 [ 0, %.preheader1072.preheader.new ], [ %i.et, %.preheader1072 ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader1072.preheader.new ], [ %i.es, %.preheader1072 ]
  %niter = phi i64 [ 0, %.preheader1072.preheader.new ], [ %niter.next.3, %.preheader1072 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 %.sroa.04.0.i425
  %.val.i = load i8, ptr %i.ea, align 1, !noundef !8
  %i.eb = icmp sgt i8 %.val.i, -65
  %i.ec = zext i1 %i.eb to i64
  %i.ed = add i64 %.sroa.02.0.i, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 %.sroa.04.0.i425
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %.val.i.1 = load i8, ptr %i.ef, align 1, !noundef !8
  %i.eg = icmp sgt i8 %.val.i.1, -65
  %i.eh = zext i1 %i.eg to i64
  %i.ei = add i64 %i.ed, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 %.sroa.04.0.i425
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %.val.i.2 = load i8, ptr %i.ek, align 1, !noundef !8
  %i.el = icmp sgt i8 %.val.i.2, -65
  %i.em = zext i1 %i.el to i64
  %i.en = add i64 %i.ei, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 %.sroa.04.0.i425
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %.val.i.3 = load i8, ptr %i.ep, align 1, !noundef !8
  %i.eq = icmp sgt i8 %.val.i.3, -65
  %i.er = zext i1 %i.eq to i64
  %i.es = add i64 %i.en, %i.er                    ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.04.0.i425, 4     ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213.unr-lcssa, label %.preheader1072

._crit_edge:                                      ; preds = %.lr.ph, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit
  %.sroa.01.0.i206.lcssa = phi i64 [ %.sroa.0.0.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit ], [ %i.hx, %.lr.ph ]
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.dx ; 3 uses
  %i.ev = shl i64 %i.da, 4
  %.idx = and i64 %i.ev, 48                       ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx
  %i.ex = icmp samesign eq i64 %.idx, 0
  br i1 %i.ex, label %._crit_edge1167, label %.lr.ph1166.preheader

.lr.ph1166.preheader:                             ; preds = %._crit_edge
  %i.ey = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ez = lshr exact i64 %i.ey, 4
  %i.fa = add nuw nsw i64 %i.ez, 1
  %xtraiter = and i64 %i.fa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1166.prol.loopexit, label %.lr.ph1166.prol

.lr.ph1166.prol:                                  ; preds = %.lr.ph1166.preheader, %.lr.ph1166.prol
  %.sroa.012.0.i2111164.prol = phi ptr [ %i.fc, %.lr.ph1166.prol ], [ %i.eu, %.lr.ph1166.preheader ] ; 2 uses
  %i.fb = phi <16 x i8> [ %i.fg, %.lr.ph1166.prol ], [ zeroinitializer, %.lr.ph1166.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1166.prol ], [ 0, %.lr.ph1166.preheader ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2111164.prol, i64 16 ; 2 uses
  %i.fd = load <16 x i8>, ptr %.sroa.012.0.i2111164.prol, align 16
  %i.fe = icmp slt <16 x i8> %i.fd, splat (i8 -64)
  %i.ff = zext <16 x i1> %i.fe to <16 x i8>
  %i.fg = add <16 x i8> %i.fb, %i.ff              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1166.prol.loopexit, label %.lr.ph1166.prol, !llvm.loop !325

.lr.ph1166.prol.loopexit:                         ; preds = %.lr.ph1166.prol, %.lr.ph1166.preheader
  %.lcssa2142.unr = phi <16 x i8> [ poison, %.lr.ph1166.preheader ], [ %i.fg, %.lr.ph1166.prol ]
  %.sroa.012.0.i2111164.unr = phi ptr [ %i.eu, %.lr.ph1166.preheader ], [ %i.fc, %.lr.ph1166.prol ]
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph1166.preheader ], [ %i.fg, %.lr.ph1166.prol ]
  %i.fh = icmp ult i64 %i.ey, 48
  br i1 %i.fh, label %._crit_edge1167, label %.lr.ph1166

.lr.ph1166:                                       ; preds = %.lr.ph1166.prol.loopexit, %.lr.ph1166
  %.sroa.012.0.i2111164 = phi ptr [ %i.fy, %.lr.ph1166 ], [ %.sroa.012.0.i2111164.unr, %.lr.ph1166.prol.loopexit ] ; 5 uses
  %i.fi = phi <16 x i8> [ %i.gc, %.lr.ph1166 ], [ %.unr, %.lr.ph1166.prol.loopexit ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2111164, i64 16
  %i.fk = load <16 x i8>, ptr %.sroa.012.0.i2111164, align 16
  %i.fl = icmp slt <16 x i8> %i.fk, splat (i8 -64)
  %i.fm = zext <16 x i1> %i.fl to <16 x i8>
  %i.fn = add <16 x i8> %i.fi, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2111164, i64 32
  %i.fp = load <16 x i8>, ptr %i.fj, align 16
  %i.fq = icmp slt <16 x i8> %i.fp, splat (i8 -64)
  %i.fr = zext <16 x i1> %i.fq to <16 x i8>
  %i.fs = add <16 x i8> %i.fn, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2111164, i64 48
  %i.fu = load <16 x i8>, ptr %i.fo, align 16
  %i.fv = icmp slt <16 x i8> %i.fu, splat (i8 -64)
  %i.fw = zext <16 x i1> %i.fv to <16 x i8>
  %i.fx = add <16 x i8> %i.fs, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2111164, i64 64 ; 2 uses
  %i.fz = load <16 x i8>, ptr %i.ft, align 16
  %i.ga = icmp slt <16 x i8> %i.fz, splat (i8 -64)
  %i.gb = zext <16 x i1> %i.ga to <16 x i8>
  %i.gc = add <16 x i8> %i.fx, %i.gb              ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9prev_impl:bb.a
  %min.iters.check1824 = icmp ult i64 %i.ip, 4
  br i1 %min.iters.check1824, label %.lr.ph1188.preheader2127, label %vector.ph1825

vector.ph1825:                                    ; preds = %.lr.ph1188.preheader
  %n.vec1826 = and i64 %i.ip, -4                  ; 3 uses
  %i.jy = getelementptr i8, ptr %i.in, i64 %n.vec1826
  %i.jz = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.1.i232.lcssa, i64 0
  br label %vector.body1827

vector.body1827:                                  ; preds = %vector.body1827, %vector.ph1825
  %index1828 = phi i64 [ 0, %vector.ph1825 ], [ %index.next1834, %vector.body1827 ] ; 2 uses
  %vec.phi1829 = phi <2 x i64> [ %i.jz, %vector.ph1825 ], [ %i.kf, %vector.body1827 ]
  %vec.phi1830 = phi <2 x i64> [ zeroinitializer, %vector.ph1825 ], [ %i.kg, %vector.body1827 ]
  %next.gep1831 = getelementptr i8, ptr %i.in, i64 %index1828 ; 2 uses
  %i.ka = getelementptr i8, ptr %next.gep1831, i64 2
  %wide.load1832 = load <2 x i8>, ptr %next.gep1831, align 1
  %wide.load1833 = load <2 x i8>, ptr %i.ka, align 1
  %i.kb = icmp ugt <2 x i8> %wide.load1832, splat (i8 -17)
  %i.kc = icmp ugt <2 x i8> %wide.load1833, splat (i8 -17)
  %i.kd = zext <2 x i1> %i.kb to <2 x i64>
  %i.ke = zext <2 x i1> %i.kc to <2 x i64>
  %i.kf = add <2 x i64> %vec.phi1829, %i.kd       ; 2 uses
  %i.kg = add <2 x i64> %vec.phi1830, %i.ke       ; 2 uses
  %index.next1834 = add nuw i64 %index1828, 4     ; 2 uses
  %i.kh = icmp eq i64 %index.next1834, %n.vec1826
  br i1 %i.kh, label %middle.block1835, label %vector.body1827, !llvm.loop !344

middle.block1835:                                 ; preds = %vector.body1827
  %bin.rdx1836 = add <2 x i64> %i.kg, %i.kf
  %i.ki = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1836) ; 2 uses
  %cmp.n1837 = icmp eq i64 %i.ip, %n.vec1826
  br i1 %cmp.n1837, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, label %.lr.ph1188.preheader2127

.lr.ph1188.preheader2127:                         ; preds = %.lr.ph1188.preheader, %middle.block1835
  %.sroa.0.2.i2361186.ph = phi i64 [ %.sroa.0.1.i232.lcssa, %.lr.ph1188.preheader ], [ %i.ki, %middle.block1835 ]
  %.sroa.012.0.i2351185.ph = phi ptr [ %i.in, %.lr.ph1188.preheader ], [ %i.jy, %middle.block1835 ]
  br label %.lr.ph1188

.lr.ph1188:                                       ; preds = %.lr.ph1188.preheader2127, %.lr.ph1188
  %.sroa.0.2.i2361186 = phi i64 [ %i.kn, %.lr.ph1188 ], [ %.sroa.0.2.i2361186.ph, %.lr.ph1188.preheader2127 ]
  %.sroa.012.0.i2351185 = phi ptr [ %i.kj, %.lr.ph1188 ], [ %.sroa.012.0.i2351185.ph, %.lr.ph1188.preheader2127 ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2351185, i64 1 ; 2 uses
  %i.kk = load i8, ptr %.sroa.012.0.i2351185, align 1, !noundef !8
  %i.kl = icmp ugt i8 %i.kk, -17
  %i.km = zext i1 %i.kl to i64
  %i.kn = add i64 %.sroa.0.2.i2361186, %i.km      ; 2 uses
  %i.ko = icmp eq ptr %i.kj, %i.jw
  br i1 %i.ko, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, label %.lr.ph1188, !llvm.loop !345

.lr.ph1176:                                       ; preds = %.lr.ph1176.prol.loopexit, %.lr.ph1176
  %.sroa.016.0.i2341174 = phi ptr [ %i.lf, %.lr.ph1176 ], [ %.sroa.016.0.i2341174.unr, %.lr.ph1176.prol.loopexit ] ; 5 uses
  %i.kp = phi <16 x i8> [ %i.lj, %.lr.ph1176 ], [ %.unr2156, %.lr.ph1176.prol.loopexit ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 16
  %i.kr = load <16 x i8>, ptr %.sroa.016.0.i2341174, align 16, !alias.scope !337, !noalias !340
  %i.ks = icmp ugt <16 x i8> %i.kr, splat (i8 -17)
  %i.kt = zext <16 x i1> %i.ks to <16 x i8>
  %i.ku = add <16 x i8> %i.kp, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 32
  %i.kw = load <16 x i8>, ptr %i.kq, align 16, !alias.scope !337, !noalias !340
  %i.kx = icmp ugt <16 x i8> %i.kw, splat (i8 -17)
  %i.ky = zext <16 x i1> %i.kx to <16 x i8>
  %i.kz = add <16 x i8> %i.ku, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 48
  %i.lb = load <16 x i8>, ptr %i.kv, align 16, !alias.scope !337, !noalias !340
  %i.lc = icmp ugt <16 x i8> %i.lb, splat (i8 -17)
  %i.ld = zext <16 x i1> %i.lc to <16 x i8>
  %i.le = add <16 x i8> %i.kz, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 64 ; 2 uses
  %i.lg = load <16 x i8>, ptr %i.la, align 16, !alias.scope !337, !noalias !340
  %i.lh = icmp ugt <16 x i8> %i.lg, splat (i8 -17)
  %i.li = zext <16 x i1> %i.lh to <16 x i8>
  %i.lj = add <16 x i8> %i.le, %i.li              ; 2 uses
  %i.lk = icmp eq ptr %i.lf, %i.jl
  br i1 %i.lk, label %._crit_edge1177, label %.lr.ph1176

._crit_edge1177:                                  ; preds = %.lr.ph1176, %.lr.ph1176.prol.loopexit
  %.lcssa2131 = phi <16 x i8> [ %.lcssa2131.unr, %.lr.ph1176.prol.loopexit ], [ %i.lj, %.lr.ph1176 ]
  %i.ll = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa2131, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.ll, i64 0
  %.sroa.0.8.vec.extract.i = extractelement <2 x i64> %i.ll, i64 1
  %i.lm = add i64 %.sroa.0.8.vec.extract.i, %.sroa.0.1.i2321181
  %i.ln = add i64 %i.lm, %.sroa.0.0.vec.extract.i ; 2 uses
  %i.lo = icmp eq i64 %i.jk, 0
  br i1 %i.lo, label %._crit_edge1183, label %.lr.ph1176.preheader

_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238: ; preds = %.lr.ph1188, %middle.block1835, %.thread1520, %bb.t, %._crit_edge1183, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213
  %.sroa.0.0.i2121528 = phi i64 [ %.lcssa2137, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.0.0.i2121535, %._crit_edge1183 ], [ 0, %.thread1520 ], [ 0, %bb.t ], [ %.sroa.0.0.i2121535, %middle.block1835 ], [ %.sroa.0.0.i2121535, %.lr.ph1188 ]
  %.sroa.6128.015161527 = phi i64 [ %.sroa.6128.0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.6128.0, %._crit_edge1183 ], [ 0, %.thread1520 ], [ 0, %bb.t ], [ %.sroa.6128.0, %middle.block1835 ], [ %.sroa.6128.0, %.lr.ph1188 ]
  %.sroa.0124.015191526 = phi ptr [ %.sroa.0124.0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.0124.0, %._crit_edge1183 ], [ %.sroa.0124.01515, %.thread1520 ], [ %.sroa.0124.0, %bb.t ], [ %.sroa.0124.0, %middle.block1835 ], [ %.sroa.0124.0, %.lr.ph1188 ]
  %.sroa.0.3.i237 = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.0.1.i232.lcssa, %._crit_edge1183 ], [ 0, %.thread1520 ], [ 0, %bb.t ], [ %i.ki, %middle.block1835 ], [ %i.kn, %.lr.ph1188 ]
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.lp, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0124.015191526, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6128.015161527, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.i2121528, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.3.i237, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0, ptr %.sroa.839.0..sroa_idx, align 8
  br label %bb.bg

bb.v:                                             ; preds = %bb.q
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #17
  unreachable

bb.w:                                             ; preds = %bb.q
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.cr ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !nonnull !8, !align !186, !noundef !8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 3 uses
  %i.lv = load i64, ptr %i.lu, align 8, !noundef !8 ; 7 uses
  %i.lw = load ptr, ptr %i.lt, align 8, !nonnull !8, !noundef !8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.lx)
  %i.lz = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.ly) ; 2 uses
  %i.ma = extractvalue { ptr, i64 } %i.lz, 1      ; 2 uses
  %.not174 = icmp ugt i64 %i.lv, %i.ma
  br i1 %.not174, label %bb.y, label %bb.x, !prof !132

bb.x:                                             ; preds = %bb.w
  %i.mb = extractvalue { ptr, i64 } %i.lz, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mb) ]
  %i.mc = icmp eq i64 %i.lv, 0
  br i1 %i.mc, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit, label %.preheader1070.preheader

.preheader1070.preheader:                         ; preds = %bb.x
  %xtraiter2157 = and i64 %i.lv, 1
  %i.md = icmp eq i64 %i.lv, 1
  br i1 %i.md, label %.preheader1070.epil.preheader, label %.preheader1070.preheader.new

.preheader1070.preheader.new:                     ; preds = %.preheader1070.preheader
  %unroll_iter2163 = and i64 %i.lv, -2
  br label %.preheader1070

.preheader1070:                                   ; preds = %.preheader1070, %.preheader1070.preheader.new
  %.sroa.01.0.i434 = phi i64 [ 0, %.preheader1070.preheader.new ], [ %i.mo, %.preheader1070 ] ; 3 uses
  %i.me = phi <4 x i64> [ zeroinitializer, %.preheader1070.preheader.new ], [ %i.mn, %.preheader1070 ]
  %niter2164 = phi i64 [ 0, %.preheader1070.preheader.new ], [ %niter2164.next.1, %.preheader1070 ]
  %i.mf = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %.sroa.01.0.i434
  %i.mg = load <4 x i64>, ptr %i.mf, align 8, !alias.scope !346, !noalias !349
  %i.mh = shufflevector <4 x i64> %i.mg, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.mi = add <4 x i64> %i.mh, %i.me
  %i.mj = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %.sroa.01.0.i434
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load <4 x i64>, ptr %i.mk, align 8, !alias.scope !346, !noalias !349
  %i.mm = shufflevector <4 x i64> %i.ml, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.mn = add <4 x i64> %i.mm, %i.mi              ; 3 uses
  %i.mo = add nuw i64 %.sroa.01.0.i434, 2         ; 2 uses
  %niter2164.next.1 = add nuw i64 %niter2164, 2   ; 2 uses
  %niter2164.ncmp.1 = icmp eq i64 %niter2164.next.1, %unroll_iter2163
  br i1 %niter2164.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa, label %.preheader1070

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa: ; preds = %.preheader1070
  %lcmp.mod2160.not = icmp eq i64 %xtraiter2157, 0
  br i1 %lcmp.mod2160.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit, label %.preheader1070.epil.preheader

.preheader1070.epil.preheader:                    ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa, %.preheader1070.preheader
  %.sroa.01.0.i434.epil.init = phi i64 [ 0, %.preheader1070.preheader ], [ %i.mo, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x i64> [ zeroinitializer, %.preheader1070.preheader ], [ %i.mn, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2162 = trunc i64 %i.lv to i1
  tail call void @llvm.assume(i1 %lcmp.mod2162)
  %i.mp = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %.sroa.01.0.i434.epil.init
  %i.mq = load <4 x i64>, ptr %i.mp, align 8, !alias.scope !346, !noalias !349
  %i.mr = shufflevector <4 x i64> %i.mq, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ms = add <4 x i64> %i.mr, %.epil.init
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit: ; preds = %.preheader1070.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa, %bb.x
  %i.mt = phi <4 x i64> [ zeroinitializer, %bb.x ], [ %i.mn, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa ], [ %i.ms, %.preheader1070.epil.preheader ] ; 3 uses
  call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.s) #18
  %i.mu = load i64, ptr %i.g, align 8, !noundef !8 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.mw = load <2 x i64>, ptr %i.mv, align 8      ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.my = load i64, ptr %i.mx, align 8, !noundef !8 ; 2 uses
  %i.mz = extractelement <4 x i64> %i.mt, i64 3
  %i.na = add i64 %i.mu, %i.mz
  %i.nb = shufflevector <4 x i64> %i.mt, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.nc = add <2 x i64> %i.mw, %i.nb
  %i.nd = extractelement <4 x i64> %i.mt, i64 2
  %i.ne = add i64 %i.my, %i.nd
  %i.nf = icmp ne i32 %i.r, 0
  %i.ng = getelementptr [16 x i8], ptr %i.lr, i64 %i.cp ; 2 uses
  %i.nh = getelementptr i8, ptr %i.ng, i64 -16
  %i.ni = getelementptr i8, ptr %i.ng, i64 -8
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lv, i64 noundef %i.ma, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #17
  unreachable

bb.z:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit, %bb.ao
  %i.nj = phi i64 [ %i.mu, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.sg, %bb.ao ] ; 2 uses
  %i.nk = phi i64 [ %i.cn, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.si, %bb.ao ] ; 6 uses
  %.sroa.22.0 = phi i64 [ %i.ne, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %.sroa.22.4, %bb.ao ] ; 3 uses
  %.sroa.0515.0 = phi i64 [ %i.na, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %.sroa.0515.4, %bb.ao ] ; 3 uses
  %.sroa.042.0 = phi i1 [ %i.nf, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ true, %bb.ao ]
  %.sroa.061.0 = phi i64 [ %i.cr, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %.sroa.061.2, %bb.ao ] ; 6 uses
  %i.nl = phi <2 x i64> [ %i.nc, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.rj, %bb.ao ] ; 3 uses
  %i.nm = phi <2 x i64> [ %i.mw, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.sh, %bb.ao ] ; 2 uses
  %i.nn = load i64, ptr %i.lu, align 8, !noundef !8 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 0
  br i1 %i.no, label %.lr.ph1192, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.np = add i64 %i.nn, -1
  store i64 %i.np, ptr %i.lu, align 8
  br label %.loopexit1067

.lr.ph1192:                                       ; preds = %bb.z, %bb.ac
  %.sroa.043.01191 = phi i64 [ %i.nu, %bb.ac ], [ %i.cr, %bb.z ] ; 7 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %.sroa.043.01191 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load i64, ptr %i.nr, align 8, !noundef !8 ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.ac
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.nu, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #17
  unreachable

bb.ac:                                            ; preds = %.lr.ph1192
  %i.nu = add nsw i64 %.sroa.043.01191, -1        ; 3 uses
  %i.nv = icmp ult i64 %i.nu, %i.cp
  br i1 %i.nv, label %.lr.ph1192, label %bb.ab

bb.ad:                                            ; preds = %.lr.ph1192
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  %i.nx = icmp ult i64 %.sroa.043.01191, %.sroa.061.0
  br i1 %i.nx, label %bb.ae, label %.loopexit1068

bb.ae:                                            ; preds = %bb.ad
  %.not176 = icmp ugt i64 %.sroa.061.0, %i.cp
  br i1 %.not176, label %bb.af, label %.lr.ph1213.preheader, !prof !10

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.043.01191, i64 noundef %.sroa.061.0, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #17
  unreachable

.lr.ph1213.preheader:                             ; preds = %bb.ae
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %.sroa.061.0
  br label %.lr.ph1213

.loopexit:                                        ; preds = %.lr.ph1202.prol.loopexit, %.lr.ph1202, %bb.ag
  %.sroa.22.3.lcssa = phi i64 [ %.sroa.22.21207, %bb.ag ], [ %.lcssa2059.unr, %.lr.ph1202.prol.loopexit ], [ %i.qm, %.lr.ph1202 ] ; 2 uses
  %.sroa.0515.3.lcssa = phi i64 [ %.sroa.0515.21210, %bb.ag ], [ %.lcssa2061.unr.a, %.lr.ph1202.prol.loopexit ], [ %i.qk, %.lr.ph1202 ] ; 2 uses
  %i.nz = phi <2 x i64> [ %i.ob, %bb.ag ], [ %.lcssa2060.unr.a, %.lr.ph1202.prol.loopexit ], [ %i.ql, %.lr.ph1202 ] ; 2 uses
  %i.oa = icmp eq ptr %i.oc, %i.ny
  br i1 %i.oa, label %.loopexit1068.loopexit, label %.lr.ph1213

.lr.ph1213:                                       ; preds = %.lr.ph1213.preheader, %.loopexit
  %.sroa.055.01211 = phi ptr [ %i.oc, %.loopexit ], [ %i.nq, %.lr.ph1213.preheader ] ; 3 uses
  %.sroa.0515.21210 = phi i64 [ %.sroa.0515.3.lcssa, %.loopexit ], [ %.sroa.0515.0, %.lr.ph1213.preheader ] ; 3 uses
  %.sroa.22.21207 = phi i64 [ %.sroa.22.3.lcssa, %.loopexit ], [ %.sroa.22.0, %.lr.ph1213.preheader ] ; 3 uses
  %i.ob = phi <2 x i64> [ %i.nz, %.loopexit ], [ %i.nl, %.lr.ph1213.preheader ] ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.055.01211, i64 16 ; 2 uses
  %i.od = load ptr, ptr %.sroa.055.01211, align 8, !nonnull !8, !align !186, !noundef !8
  %i.oe = load ptr, ptr %i.od, align 8, !nonnull !8, !noundef !8
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.of)
  %i.oh = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.og) ; 2 uses
  %i.oi = extractvalue { ptr, i64 } %i.oh, 1      ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.055.01211, i64 8
  %i.ok = load i64, ptr %i.oj, align 8, !noundef !8 ; 4 uses
  %.not177 = icmp ugt i64 %i.ok, %i.oi
  br i1 %.not177, label %bb.ah, label %bb.ag, !prof !132

bb.ag:                                            ; preds = %.lr.ph1213
  %i.ol = extractvalue { ptr, i64 } %i.oh, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ol) ]
  %.idx1322 = shl i64 %i.ok, 5                    ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %.idx1322
  %i.on = icmp eq i64 %i.ok, 0
  br i1 %i.on, label %.loopexit, label %.lr.ph1202.preheader

.lr.ph1202.preheader:                             ; preds = %bb.ag
  %i.oo = add i64 %.idx1322, -32                  ; 2 uses
  %i.op = lshr exact i64 %i.oo, 5
  %i.oq = add nuw nsw i64 %i.op, 1
  %xtraiter2165 = and i64 %i.oq, 3                ; 2 uses
  %lcmp.mod2166.not = icmp eq i64 %xtraiter2165, 0
  br i1 %lcmp.mod2166.not, label %.lr.ph1202.prol.loopexit, label %.lr.ph1202.prol

.lr.ph1202.prol:                                  ; preds = %.lr.ph1202.preheader, %.lr.ph1202.prol
  %.sroa.058.01200.prol = phi ptr [ %i.os, %.lr.ph1202.prol ], [ %i.ol, %.lr.ph1202.preheader ] ; 4 uses
  %.sroa.0515.31199.prol = phi i64 [ %i.oy, %.lr.ph1202.prol ], [ %.sroa.0515.21210, %.lr.ph1202.preheader ]
  %.sroa.22.31196.prol = phi i64 [ %i.pa, %.lr.ph1202.prol ], [ %.sroa.22.21207, %.lr.ph1202.preheader ]
  %i.or = phi <2 x i64> [ %i.oz, %.lr.ph1202.prol ], [ %i.ob, %.lr.ph1202.preheader ]
  %prol.iter2167 = phi i64 [ %prol.iter2167.next, %.lr.ph1202.prol ], [ 0, %.lr.ph1202.preheader ]
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 32 ; 2 uses
  %i.ot = load i64, ptr %.sroa.058.01200.prol, align 8, !noundef !8
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 8
  %i.ov = load <2 x i64>, ptr %i.ou, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 24
  %i.ox = load i64, ptr %i.ow, align 8, !noundef !8
  %i.oy = add i64 %i.ot, %.sroa.0515.31199.prol   ; 3 uses
  %i.oz = add <2 x i64> %i.ov, %i.or              ; 3 uses
  %i.pa = add i64 %i.ox, %.sroa.22.31196.prol     ; 3 uses
  %prol.iter2167.next = add i64 %prol.iter2167, 1 ; 2 uses
  %prol.iter2167.cmp.not = icmp eq i64 %prol.iter2167.next, %xtraiter2165
  br i1 %prol.iter2167.cmp.not, label %.lr.ph1202.prol.loopexit, label %.lr.ph1202.prol, !llvm.loop !355

.lr.ph1202.prol.loopexit:                         ; preds = %.lr.ph1202.prol, %.lr.ph1202.preheader
  %.lcssa2061.unr.a = phi i64 [ poison, %.lr.ph1202.preheader ], [ %i.oy, %.lr.ph1202.prol ]
  %.lcssa2060.unr.a = phi <2 x i64> [ poison, %.lr.ph1202.preheader ], [ %i.oz, %.lr.ph1202.prol ]
  %.lcssa2059.unr = phi i64 [ poison, %.lr.ph1202.preheader ], [ %i.pa, %.lr.ph1202.prol ]
  %.sroa.058.01200.unr = phi ptr [ %i.ol, %.lr.ph1202.preheader ], [ %i.os, %.lr.ph1202.prol ]
  %.sroa.0515.31199.unr = phi i64 [ %.sroa.0515.21210, %.lr.ph1202.preheader ], [ %i.oy, %.lr.ph1202.prol ]
  %.sroa.22.31196.unr = phi i64 [ %.sroa.22.21207, %.lr.ph1202.preheader ], [ %i.pa, %.lr.ph1202.prol ]
  %.unr2168 = phi <2 x i64> [ %i.ob, %.lr.ph1202.preheader ], [ %i.oz, %.lr.ph1202.prol ]
  %i.pb = icmp ult i64 %i.oo, 96
  br i1 %i.pb, label %.loopexit, label %.lr.ph1202

bb.ah:                                            ; preds = %.lr.ph1213
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ok, i64 noundef %i.oi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #17
  unreachable

.lr.ph1202:                                       ; preds = %.lr.ph1202.prol.loopexit, %.lr.ph1202
  %.sroa.058.01200 = phi ptr [ %i.qe, %.lr.ph1202 ], [ %.sroa.058.01200.unr, %.lr.ph1202.prol.loopexit ] ; 13 uses
  %.sroa.0515.31199 = phi i64 [ %i.qk, %.lr.ph1202 ], [ %.sroa.0515.31199.unr, %.lr.ph1202.prol.loopexit ]
  %.sroa.22.31196 = phi i64 [ %i.qm, %.lr.ph1202 ], [ %.sroa.22.31196.unr, %.lr.ph1202.prol.loopexit ]
  %i.pc = phi <2 x i64> [ %i.ql, %.lr.ph1202 ], [ %.unr2168, %.lr.ph1202.prol.loopexit ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 32
  %i.pe = load i64, ptr %.sroa.058.01200, align 8, !noundef !8
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 8
  %i.pg = load <2 x i64>, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 24
  %i.pi = load i64, ptr %i.ph, align 8, !noundef !8
  %i.pj = add i64 %i.pe, %.sroa.0515.31199
  %i.pk = add <2 x i64> %i.pg, %i.pc
  %i.pl = add i64 %i.pi, %.sroa.22.31196
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 64
  %i.pn = load i64, ptr %i.pd, align 8, !noundef !8
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 40
  %i.pp = load <2 x i64>, ptr %i.po, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 56
  %i.pr = load i64, ptr %i.pq, align 8, !noundef !8
  %i.ps = add i64 %i.pn, %i.pj
  %i.pt = add <2 x i64> %i.pp, %i.pk
  %i.pu = add i64 %i.pr, %i.pl
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 96
  %i.pw = load i64, ptr %i.pm, align 8, !noundef !8
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 72
  %i.py = load <2 x i64>, ptr %i.px, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 88
  %i.qa = load i64, ptr %i.pz, align 8, !noundef !8
  %i.qb = add i64 %i.pw, %i.ps
  %i.qc = add <2 x i64> %i.py, %i.pt
  %i.qd = add i64 %i.qa, %i.pu
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 128 ; 2 uses
  %i.qf = load i64, ptr %i.pv, align 8, !noundef !8
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 104
  %i.qh = load <2 x i64>, ptr %i.qg, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 120
  %i.qj = load i64, ptr %i.qi, align 8, !noundef !8
  %i.qk = add i64 %i.qf, %i.qb                    ; 2 uses
  %i.ql = add <2 x i64> %i.qh, %i.qc              ; 2 uses
  %i.qm = add i64 %i.qj, %i.qd                    ; 2 uses
  %i.qn = icmp eq ptr %i.qe, %i.om
  br i1 %i.qn, label %.loopexit, label %.lr.ph1202

.loopexit1068.loopexit:                           ; preds = %.loopexit
  %.pre = load i64, ptr %i.nw, align 8
  br label %.loopexit1068

.loopexit1068:                                    ; preds = %.loopexit1068.loopexit, %bb.ad
  %i.qo = phi i64 [ %i.ns, %bb.ad ], [ %.pre, %.loopexit1068.loopexit ]
  %.sroa.22.1 = phi i64 [ %.sroa.22.0, %bb.ad ], [ %.sroa.22.3.lcssa, %.loopexit1068.loopexit ] ; 2 uses
  %.sroa.0515.1 = phi i64 [ %.sroa.0515.0, %bb.ad ], [ %.sroa.0515.3.lcssa, %.loopexit1068.loopexit ] ; 2 uses
  %.sroa.061.1 = phi i64 [ %.sroa.061.0, %bb.ad ], [ %.sroa.043.01191, %.loopexit1068.loopexit ] ; 2 uses
  %i.qp = phi <2 x i64> [ %i.nl, %bb.ad ], [ %i.nz, %.loopexit1068.loopexit ] ; 2 uses
  %i.qq = add i64 %i.qo, -1                       ; 2 uses
  store i64 %i.qq, ptr %i.nw, align 8
  %i.qr = icmp ult i64 %.sroa.043.01191, %i.cr
  br i1 %i.qr, label %.lr.ph1220.preheader, label %.loopexit1067

.lr.ph1220.preheader:                             ; preds = %.loopexit1068
  %.pre1449 = load ptr, ptr %i.nq, align 8
  br label %.lr.ph1220

.lr.ph1220:                                       ; preds = %.lr.ph1220.preheader, %bb.ai
  %i.qs = phi ptr [ %i.rb, %bb.ai ], [ %.pre1449, %.lr.ph1220.preheader ]
  %i.qt = phi i64 [ %i.rg, %bb.ai ], [ %i.qq, %.lr.ph1220.preheader ] ; 3 uses
  %.sroa.043.11219 = phi i64 [ %i.rf, %bb.ai ], [ %.sroa.043.01191, %.lr.ph1220.preheader ]
  %i.qu = load ptr, ptr %i.qs, align 8, !nonnull !8, !noundef !8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.qv)
  %i.qx = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.qw) ; 2 uses
  %i.qy = extractvalue { ptr, i64 } %i.qx, 1      ; 2 uses
  %i.qz = icmp ult i64 %i.qt, %i.qy
  br i1 %i.qz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1220
  %i.ra = extractvalue { ptr, i64 } %i.qx, 0
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %i.qt ; 3 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !nonnull !8, !noundef !8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.re = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.rd)
end_hunk_5
begin_hunk_6_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9prev_impl:bb.a
  %..i.i458 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5700.01277, i64 255) ; 3 uses
  %i.aam = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0699.01276, i64 %..i.i458
  %i.aan = sub nuw nsw i64 %.sroa.5700.01277, %..i.i458 ; 2 uses
  %.idx1324 = shl nuw nsw i64 %..i.i458, 4        ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.0699.01276, i64 %.idx1324
  %i.aap = add nsw i64 %.idx1324, -16             ; 2 uses
  %i.aaq = lshr exact i64 %i.aap, 4
  %i.aar = add nuw nsw i64 %i.aaq, 1
  %xtraiter2173 = and i64 %i.aar, 3               ; 2 uses
  %lcmp.mod2174.not = icmp eq i64 %xtraiter2173, 0
  br i1 %lcmp.mod2174.not, label %.lr.ph1273.prol.loopexit, label %.lr.ph1273.prol

.lr.ph1273.prol:                                  ; preds = %.lr.ph1273.preheader, %.lr.ph1273.prol
  %.sroa.016.0.i2231271.prol = phi ptr [ %i.aat, %.lr.ph1273.prol ], [ %.sroa.0699.01276, %.lr.ph1273.preheader ] ; 2 uses
  %i.aas = phi <16 x i8> [ %i.aax, %.lr.ph1273.prol ], [ zeroinitializer, %.lr.ph1273.preheader ]
  %prol.iter2175 = phi i64 [ %prol.iter2175.next, %.lr.ph1273.prol ], [ 0, %.lr.ph1273.preheader ]
  %i.aat = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271.prol, i64 16 ; 2 uses
  %i.aau = load <16 x i8>, ptr %.sroa.016.0.i2231271.prol, align 16, !alias.scope !379, !noalias !382
  %i.aav = icmp ugt <16 x i8> %i.aau, splat (i8 -17)
  %i.aaw = zext <16 x i1> %i.aav to <16 x i8>
  %i.aax = add <16 x i8> %i.aas, %i.aaw           ; 3 uses
  %prol.iter2175.next = add i64 %prol.iter2175, 1 ; 2 uses
  %prol.iter2175.cmp.not = icmp eq i64 %prol.iter2175.next, %xtraiter2173
  br i1 %prol.iter2175.cmp.not, label %.lr.ph1273.prol.loopexit, label %.lr.ph1273.prol, !llvm.loop !385

.lr.ph1273.prol.loopexit:                         ; preds = %.lr.ph1273.prol, %.lr.ph1273.preheader
  %.lcssa2032.unr = phi <16 x i8> [ poison, %.lr.ph1273.preheader ], [ %i.aax, %.lr.ph1273.prol ]
  %.sroa.016.0.i2231271.unr = phi ptr [ %.sroa.0699.01276, %.lr.ph1273.preheader ], [ %i.aat, %.lr.ph1273.prol ]
  %.unr2176 = phi <16 x i8> [ zeroinitializer, %.lr.ph1273.preheader ], [ %i.aax, %.lr.ph1273.prol ]
  %i.aay = icmp ult i64 %i.aap, 48
  br i1 %i.aay, label %._crit_edge1274, label %.lr.ph1273

._crit_edge1280:                                  ; preds = %._crit_edge1274, %.preheader1066
  %.sroa.0.1.i221.lcssa = phi i64 [ %.sroa.0.0.i218.lcssa, %.preheader1066 ], [ %i.acq, %._crit_edge1274 ] ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zs
  %i.aba = icmp samesign eq i64 %i.zs, 0
  br i1 %i.aba, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227, label %.lr.ph1285.preheader

.lr.ph1285.preheader:                             ; preds = %._crit_edge1280
  %min.iters.check1906 = icmp ult i64 %i.zs, 4
  br i1 %min.iters.check1906, label %.lr.ph1285.preheader2028, label %vector.ph1907

vector.ph1907:                                    ; preds = %.lr.ph1285.preheader
  %n.vec1908 = and i64 %i.zs, -4                  ; 3 uses
  %i.abb = getelementptr i8, ptr %i.zq, i64 %n.vec1908
  %i.abc = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.1.i221.lcssa, i64 0
  br label %vector.body1909

vector.body1909:                                  ; preds = %vector.body1909, %vector.ph1907
  %index1910 = phi i64 [ 0, %vector.ph1907 ], [ %index.next1916, %vector.body1909 ] ; 2 uses
  %vec.phi1911 = phi <2 x i64> [ %i.abc, %vector.ph1907 ], [ %i.abi, %vector.body1909 ]
  %vec.phi1912 = phi <2 x i64> [ zeroinitializer, %vector.ph1907 ], [ %i.abj, %vector.body1909 ]
  %next.gep1913 = getelementptr i8, ptr %i.zq, i64 %index1910 ; 2 uses
  %i.abd = getelementptr i8, ptr %next.gep1913, i64 2
  %wide.load1914 = load <2 x i8>, ptr %next.gep1913, align 1
  %wide.load1915 = load <2 x i8>, ptr %i.abd, align 1
  %i.abe = icmp ugt <2 x i8> %wide.load1914, splat (i8 -17)
  %i.abf = icmp ugt <2 x i8> %wide.load1915, splat (i8 -17)
  %i.abg = zext <2 x i1> %i.abe to <2 x i64>
  %i.abh = zext <2 x i1> %i.abf to <2 x i64>
  %i.abi = add <2 x i64> %vec.phi1911, %i.abg     ; 2 uses
  %i.abj = add <2 x i64> %vec.phi1912, %i.abh     ; 2 uses
  %index.next1916 = add nuw i64 %index1910, 4     ; 2 uses
  %i.abk = icmp eq i64 %index.next1916, %n.vec1908
  br i1 %i.abk, label %middle.block1917, label %vector.body1909, !llvm.loop !386

middle.block1917:                                 ; preds = %vector.body1909
  %bin.rdx1918 = add <2 x i64> %i.abj, %i.abi
  %i.abl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1918) ; 2 uses
  %cmp.n1919 = icmp eq i64 %i.zs, %n.vec1908
  br i1 %cmp.n1919, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227, label %.lr.ph1285.preheader2028

.lr.ph1285.preheader2028:                         ; preds = %.lr.ph1285.preheader, %middle.block1917
  %.sroa.0.2.i2251283.ph = phi i64 [ %.sroa.0.1.i221.lcssa, %.lr.ph1285.preheader ], [ %i.abl, %middle.block1917 ]
  %.sroa.012.0.i2241282.ph = phi ptr [ %i.zq, %.lr.ph1285.preheader ], [ %i.abb, %middle.block1917 ]
  br label %.lr.ph1285

.lr.ph1285:                                       ; preds = %.lr.ph1285.preheader2028, %.lr.ph1285
  %.sroa.0.2.i2251283 = phi i64 [ %i.abq, %.lr.ph1285 ], [ %.sroa.0.2.i2251283.ph, %.lr.ph1285.preheader2028 ]
  %.sroa.012.0.i2241282 = phi ptr [ %i.abm, %.lr.ph1285 ], [ %.sroa.012.0.i2241282.ph, %.lr.ph1285.preheader2028 ] ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2241282, i64 1 ; 2 uses
  %i.abn = load i8, ptr %.sroa.012.0.i2241282, align 1, !noundef !8
  %i.abo = icmp ugt i8 %i.abn, -17
  %i.abp = zext i1 %i.abo to i64
  %i.abq = add i64 %.sroa.0.2.i2251283, %i.abp    ; 2 uses
  %i.abr = icmp eq ptr %i.abm, %i.aaz
  br i1 %i.abr, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227, label %.lr.ph1285, !llvm.loop !387

.lr.ph1273:                                       ; preds = %.lr.ph1273.prol.loopexit, %.lr.ph1273
  %.sroa.016.0.i2231271 = phi ptr [ %i.aci, %.lr.ph1273 ], [ %.sroa.016.0.i2231271.unr, %.lr.ph1273.prol.loopexit ] ; 5 uses
  %i.abs = phi <16 x i8> [ %i.acm, %.lr.ph1273 ], [ %.unr2176, %.lr.ph1273.prol.loopexit ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271, i64 16
  %i.abu = load <16 x i8>, ptr %.sroa.016.0.i2231271, align 16, !alias.scope !379, !noalias !382
  %i.abv = icmp ugt <16 x i8> %i.abu, splat (i8 -17)
  %i.abw = zext <16 x i1> %i.abv to <16 x i8>
  %i.abx = add <16 x i8> %i.abs, %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271, i64 32
  %i.abz = load <16 x i8>, ptr %i.abt, align 16, !alias.scope !379, !noalias !382
  %i.aca = icmp ugt <16 x i8> %i.abz, splat (i8 -17)
  %i.acb = zext <16 x i1> %i.aca to <16 x i8>
  %i.acc = add <16 x i8> %i.abx, %i.acb
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271, i64 48
  %i.ace = load <16 x i8>, ptr %i.aby, align 16, !alias.scope !379, !noalias !382
  %i.acf = icmp ugt <16 x i8> %i.ace, splat (i8 -17)
  %i.acg = zext <16 x i1> %i.acf to <16 x i8>
  %i.ach = add <16 x i8> %i.acc, %i.acg
  %i.aci = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271, i64 64 ; 2 uses
  %i.acj = load <16 x i8>, ptr %i.acd, align 16, !alias.scope !379, !noalias !382
  %i.ack = icmp ugt <16 x i8> %i.acj, splat (i8 -17)
  %i.acl = zext <16 x i1> %i.ack to <16 x i8>
  %i.acm = add <16 x i8> %i.ach, %i.acl           ; 2 uses
  %i.acn = icmp eq ptr %i.aci, %i.aao
  br i1 %i.acn, label %._crit_edge1274, label %.lr.ph1273

._crit_edge1274:                                  ; preds = %.lr.ph1273, %.lr.ph1273.prol.loopexit
  %.lcssa2032 = phi <16 x i8> [ %.lcssa2032.unr, %.lr.ph1273.prol.loopexit ], [ %i.acm, %.lr.ph1273 ]
  %i.aco = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa2032, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i240 = extractelement <2 x i64> %i.aco, i64 0
  %.sroa.0.8.vec.extract.i241 = extractelement <2 x i64> %i.aco, i64 1
  %i.acp = add i64 %.sroa.0.8.vec.extract.i241, %.sroa.0.1.i2211278
  %i.acq = add i64 %i.acp, %.sroa.0.0.vec.extract.i240 ; 2 uses
  %i.acr = icmp eq i64 %i.aan, 0
  br i1 %i.acr, label %._crit_edge1280, label %.lr.ph1273.preheader

_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227: ; preds = %.lr.ph1285, %middle.block1917, %bb.az, %._crit_edge1280, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198
  %.sroa.0.0.i1971537 = phi i64 [ %.lcssa1685, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198 ], [ %.sroa.0.0.i1971540, %._crit_edge1280 ], [ 0, %bb.az ], [ %.sroa.0.0.i1971540, %middle.block1917 ], [ %.sroa.0.0.i1971540, %.lr.ph1285 ] ; 2 uses
  %.sroa.0.3.i226 = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198 ], [ %.sroa.0.1.i221.lcssa, %._crit_edge1280 ], [ 0, %bb.az ], [ %i.abl, %middle.block1917 ], [ %i.abq, %.lr.ph1285 ] ; 2 uses
  %i.acs = insertelement <2 x i64> poison, i64 %i.to, i64 0
  %i.act = insertelement <2 x i64> %i.acs, i64 %.sroa.0.0.i1971537, i64 1
  br i1 %.sroa.042.0, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %bb.au, %.split.i436
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sy, i64 noundef %i.sx, i64 noundef %.sroa.070.0, i64 noundef %i.sx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #17
  unreachable

bb.bc:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227
  %i.acu = icmp ult i64 %.sroa.061.2, %i.cp
  br i1 %i.acu, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227, %bb.be
  %.sroa.10.sroa.3.0 = phi i64 [ %.sroa.22.4, %bb.be ], [ undef, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %.sroa.073.0 = phi ptr [ %i.acz, %bb.be ], [ null, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %.sroa.374.0 = phi ptr [ %i.adh, %bb.be ], [ %i.tp, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %.sroa.777.0 = phi i64 [ %i.adg, %bb.be ], [ %.sroa.0.3.i226, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %.sroa.878.0 = phi i64 [ %.sroa.0515.4, %bb.be ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %i.acv = phi <2 x i64> [ %i.adf, %bb.be ], [ %i.act, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %i.acw = phi <2 x i64> [ %i.rj, %bb.be ], [ undef, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.073.0, ptr %i.acx, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.374.0, ptr %.sroa.484.0..sroa_idx, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.acv, ptr %.sroa.585.0..sroa_idx, align 8
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.777.0, ptr %.sroa.787.0..sroa_idx, align 8
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.878.0, ptr %.sroa.888.0..sroa_idx, align 8
  %.sroa.989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.acw, ptr %.sroa.989.0..sroa_idx, align 8
  %.sroa.989.sroa.5.0..sroa.989.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10.sroa.3.0, ptr %.sroa.989.sroa.5.0..sroa.989.0..sroa_idx.sroa_idx, align 8
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.acy = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %.sroa.061.2
  %i.acz = load ptr, ptr %i.acy, align 8, !nonnull !8, !align !186, !noundef !8
  %i.ada = add i64 %i.to, %i.nj
  %i.adb = sub i64 %.sroa.0515.4, %i.ada
  %i.adc = insertelement <2 x i64> poison, i64 %.sroa.0.0.i1971537, i64 0
  %i.add = insertelement <2 x i64> %i.adc, i64 %.sroa.0.3.i226, i64 1
  %i.ade = add <2 x i64> %i.add, %i.nm
  %i.adf = sub <2 x i64> %i.rj, %i.ade
  %i.adg = sub i64 %.sroa.22.4, %i.my
  %i.adh = inttoptr i64 %i.adb to ptr
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bc
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.061.2, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #17
  unreachable

bb.bg:                                            ; preds = %bb.h, %bb.bh, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.bd
  %.sink = phi i64 [ 1, %bb.bd ], [ 1, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread ], [ 1, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238 ], [ 1, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012 ], [ 0, %bb.bh ], [ 1, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %bb.h ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.bh:                                            ; preds = %bb.b
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.adj = load i64, ptr %i.adi, align 8, !noundef !8
  %i.adk = icmp eq i64 %i.adj, 0
  br i1 %i.adk, label %bb.bg, label %._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge

._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge: ; preds = %bb.bh
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre1450 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1451 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre1452 = load i64, ptr %.phi.trans.insert1451, align 8
  br label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037

bb.bi:                                            ; preds = %bb.b
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.adm = load i64, ptr %i.adl, align 8, !noundef !8 ; 9 uses
  %i.adn = icmp eq i64 %i.adm, 0
  br i1 %i.adn, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %.preheader.i466

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037: ; preds = %._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge, %.split10.i473, %.split1040, %.split1039, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485
  %i.ado = phi i64 [ %.pre1452, %._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge ], [ %i.adm, %.split10.i473 ], [ %i.adm, %.split1040 ], [ %i.adm, %.split1039 ], [ %i.adm, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485 ] ; 7 uses
  %i.adp = phi ptr [ %.pre1450, %._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge ], [ %i.ady, %.split10.i473 ], [ %i.ady, %.split1040 ], [ %i.ady, %.split1039 ], [ %i.ady, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485 ] ; 7 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.adr = load i64, ptr %i.adq, align 8, !noundef !8 ; 13 uses
  %i.ads = icmp eq i64 %i.adr, 0
  br i1 %i.ads, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037
  %.not.i462 = icmp ult i64 %i.adr, %i.ado
  br i1 %.not.i462, label %bb.bk, label %.split.i463

.split.i463:                                      ; preds = %bb.bj
  %i.adt = icmp eq i64 %i.adr, %i.ado
  br i1 %i.adt, label %bb.bn, label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adr
  %i.adv = load i8, ptr %i.adu, align 1, !alias.scope !388, !noundef !8
  %i.adw = icmp sgt i8 %i.adv, -65
  br i1 %i.adw, label %bb.bn, label %bb.bs

.preheader.i466:                                  ; preds = %bb.bi
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ady = load ptr, ptr %i.adx, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %.sroa.01.024.i467 = add i64 %i.adm, -1         ; 2 uses
  %i.adz = icmp eq i64 %.sroa.01.024.i467, 0
  br i1 %i.adz, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485, label %.lr.ph.i468

.lr.ph.i468:                                      ; preds = %.preheader.i466, %.backedge.i471
  %.sroa.01.025.i469 = phi i64 [ %.sroa.01.0.i472, %.backedge.i471 ], [ %.sroa.01.024.i467, %.preheader.i466 ] ; 5 uses
  %.not.i470 = icmp ult i64 %.sroa.01.025.i469, %i.adm
  br i1 %.not.i470, label %bb.bl, label %.backedge.i471

bb.bl:                                            ; preds = %.lr.ph.i468
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 %.sroa.01.025.i469
  %i.aeb = load i8, ptr %i.aea, align 1, !alias.scope !391, !noundef !8
  %i.aec = icmp sgt i8 %i.aeb, -65
  br i1 %i.aec, label %.split.i.i484, label %.backedge.i471

.backedge.i471:                                   ; preds = %bb.bl, %.lr.ph.i468
  %.sroa.01.0.i472 = add i64 %.sroa.01.025.i469, -1 ; 2 uses
  %i.aed = icmp eq i64 %.sroa.01.0.i472, 0
  br i1 %i.aed, label %.split10.i473, label %.lr.ph.i468

.split.i.i484:                                    ; preds = %bb.bl
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ady, i64 %.sroa.01.025.i469
  %i.aef = sub nuw i64 %i.adm, %.sroa.01.025.i469
  br label %.split10.i473

.split10.i473:                                    ; preds = %.backedge.i471, %.split.i.i484
  %.sroa.0.0.i.pn.i474 = phi ptr [ %i.aee, %.split.i.i484 ], [ %i.ady, %.backedge.i471 ] ; 6 uses
  %.sroa.3.0.i.pn.i475 = phi i64 [ %i.aef, %.split.i.i484 ], [ %i.adm, %.backedge.i471 ]
  switch i64 %.sroa.3.0.i.pn.i475, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037 [
    i64 1, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485
    i64 2, label %.split1039
    i64 3, label %bb.bm
  ]

.split1039:                                       ; preds = %.split10.i473
  %i.aeg = load i16, ptr %.sroa.0.0.i.pn.i474, align 1
  %i.aeh = icmp ne i16 %i.aeg, -31294
  %i.aei = zext i1 %i.aeh to i32
  %i.aej = icmp eq i32 %i.aei, 0
  br i1 %i.aej, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037

bb.bm:                                            ; preds = %.split10.i473
  %i.aek = load i16, ptr %.sroa.0.0.i.pn.i474, align 1
  %i.ael = xor i16 %i.aek, -32542
  %i.aem = getelementptr i8, ptr %.sroa.0.0.i.pn.i474, i64 2
  %i.aen = load i8, ptr %i.aem, align 1
  %i.aeo = zext i8 %i.aen to i16
  %i.aep = xor i16 %i.aeo, 168
  %i.aeq = or i16 %i.ael, %i.aep
  %i.aer = icmp ne i16 %i.aeq, 0
  %i.aes = zext i1 %i.aer to i32
  %i.aet = icmp eq i32 %i.aes, 0
  br i1 %i.aet, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %.split1040

.split1040:                                       ; preds = %bb.bm
  %i.aeu = load i16, ptr %.sroa.0.0.i.pn.i474, align 1
  %i.aev = xor i16 %i.aeu, -32542
  %i.aew = getelementptr i8, ptr %.sroa.0.0.i.pn.i474, i64 2
  %i.aex = load i8, ptr %i.aew, align 1
  %i.aey = zext i8 %i.aex to i16
  %i.aez = xor i16 %i.aey, 169
  %i.afa = or i16 %i.aev, %i.aez
  %i.afb = icmp ne i16 %i.afa, 0
  %i.afc = zext i1 %i.afb to i32
  %i.afd = icmp eq i32 %i.afc, 0
  br i1 %i.afd, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485: ; preds = %.preheader.i466, %.split10.i473
  %.sroa.0.0.i.pn31.i481 = phi ptr [ %.sroa.0.0.i.pn.i474, %.split10.i473 ], [ %i.ady, %.preheader.i466 ]
  %lhsc.i482 = load i8, ptr %.sroa.0.0.i.pn31.i481, align 1, !alias.scope !391
  %i.afe = add i8 %lhsc.i482, -10
  %switch.selectcmp.i483 = icmp ult i8 %i.afe, 4
  br i1 %switch.selectcmp.i483, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread: ; preds = %bb.bm, %.split1040, %.split1039, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485, %bb.bi
  %i.aff = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.afg = load i64, ptr %i.aff, align 8, !noundef !8
  %i.afh = add i64 %i.afg, -1
  store i64 %i.afh, ptr %i.aff, align 8
  %i.afi = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> zeroinitializer, <16 x i8> zeroinitializer)
  %i.afj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.afi)
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.afk, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5512.0..sroa_idx, i8 0, i64 24, i1 false)
  store i64 %i.afj, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.bg

bb.bn:                                            ; preds = %bb.bk, %.split.i463, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037
  %i.afl = tail call fastcc { ptr, i64 } @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils15trim_line_break(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adp, i64 noundef %i.adr) #18 ; 2 uses
  %i.afm = extractvalue { ptr, i64 } %i.afl, 0
  %i.afn = extractvalue { ptr, i64 } %i.afl, 1
  %i.afo = tail call noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils24last_line_start_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afm, i64 noundef %i.afn) ; 9 uses
  store i64 %i.afo, ptr %i.adq, align 8
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.afq = load i64, ptr %i.afp, align 8, !noundef !8
  %i.afr = add i64 %i.afq, -1
  store i64 %i.afr, ptr %i.afp, align 8
  %i.afs = icmp ugt i64 %i.afo, %i.adr
  %i.aft = icmp ugt i64 %i.adr, %i.ado
  %or.cond.i = or i1 %i.aft, %i.afs
  br i1 %or.cond.i, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1043, label %bb.bo, !prof !120

bb.bo:                                            ; preds = %bb.bn
  %i.afu = icmp eq i64 %i.afo, %i.ado
  br i1 %i.afu, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.afv = icmp eq i64 %i.afo, 0
  br i1 %i.afv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.br, %bb.bp
  %i.afw = icmp eq i64 %i.adr, %i.ado
  br i1 %i.afw, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

bb.br:                                            ; preds = %bb.bp
  %i.afx = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.afo
  %i.afy = load i8, ptr %i.afx, align 1, !alias.scope !394, !noundef !8
  %i.afz = icmp sgt i8 %i.afy, -65
  br i1 %i.afz, label %bb.bq, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1043, !prof !124

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.bq
  %i.aga = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adr
  %i.agb = load i8, ptr %i.aga, align 1, !alias.scope !394, !noundef !8
  %i.agc = icmp sgt i8 %i.agb, -65
  br i1 %i.agc, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1043, !prof !125

bb.bs:                                            ; preds = %bb.bk, %.split.i463
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adp, i64 noundef %i.ado, i64 noundef 0, i64 noundef %i.adr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #17
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1043: ; preds = %bb.br, %bb.bn, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adp, i64 noundef %i.ado, i64 noundef %i.afo, i64 noundef %i.adr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #17
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.bq, %bb.bo, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.agd = sub nuw i64 %i.adr, %i.afo             ; 10 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.afo ; 10 uses
  %i.agf = icmp samesign ult i64 %i.agd, 16
  br i1 %i.agf, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !397
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.age, i64 noundef range(i64 0, -9223372036854775808) %i.agd)
  %i.agg = load ptr, ptr %i.f, align 8, !noalias !397, !nonnull !8, !noundef !8 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.agi = load i64, ptr %i.agh, align 8, !noalias !397, !noundef !8 ; 6 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.agk = load ptr, ptr %i.agj, align 8, !noalias !397, !nonnull !8, !align !14, !noundef !8 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.agm = load i64, ptr %i.agl, align 8, !noalias !397, !noundef !8 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ago = load ptr, ptr %i.agn, align 8, !noalias !397, !nonnull !8, !noundef !8 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.agq = load i64, ptr %i.agp, align 8, !noalias !397, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !397
  %i.agr = icmp samesign eq i64 %i.agi, 0
  br i1 %i.agr, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494, label %.preheader.i489.preheader

.preheader.i489.preheader:                        ; preds = %bb.bt
  %min.iters.check1923 = icmp ult i64 %i.agi, 4
  br i1 %min.iters.check1923, label %.preheader.i489.preheader2023, label %vector.ph1924

vector.ph1924:                                    ; preds = %.preheader.i489.preheader
  %n.vec1925 = and i64 %i.agi, -4                 ; 3 uses
  br label %vector.body1926

vector.body1926:                                  ; preds = %vector.body1926, %vector.ph1924
  %index1927 = phi i64 [ 0, %vector.ph1924 ], [ %index.next1932, %vector.body1926 ] ; 2 uses
  %vec.phi1928 = phi <2 x i64> [ zeroinitializer, %vector.ph1924 ], [ %i.agy, %vector.body1926 ]
  %vec.phi1929 = phi <2 x i64> [ zeroinitializer, %vector.ph1924 ], [ %i.agz, %vector.body1926 ]
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agg, i64 %index1927 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 2
  %wide.load1930 = load <2 x i8>, ptr %i.ags, align 1, !alias.scope !400
  %wide.load1931 = load <2 x i8>, ptr %i.agt, align 1, !alias.scope !400
  %i.agu = icmp slt <2 x i8> %wide.load1930, splat (i8 -64)
  %i.agv = icmp slt <2 x i8> %wide.load1931, splat (i8 -64)
  %i.agw = zext <2 x i1> %i.agu to <2 x i64>
  %i.agx = zext <2 x i1> %i.agv to <2 x i64>
  %i.agy = add <2 x i64> %vec.phi1928, %i.agw     ; 2 uses
  %i.agz = add <2 x i64> %vec.phi1929, %i.agx     ; 2 uses
  %index.next1932 = add nuw i64 %index1927, 4     ; 2 uses
  %i.aha = icmp eq i64 %index.next1932, %n.vec1925
  br i1 %i.aha, label %middle.block1933, label %vector.body1926, !llvm.loop !403

middle.block1933:                                 ; preds = %vector.body1926
  %bin.rdx1934 = add <2 x i64> %i.agz, %i.agy
  %i.ahb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1934) ; 2 uses
  %cmp.n1935 = icmp eq i64 %i.agi, %n.vec1925
  br i1 %cmp.n1935, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494, label %.preheader.i489.preheader2023

.preheader.i489.preheader2023:                    ; preds = %.preheader.i489.preheader, %middle.block1933
  %.sroa.04.0.i.i490.ph = phi i64 [ 0, %.preheader.i489.preheader ], [ %n.vec1925, %middle.block1933 ]
  %.sroa.02.0.i.i491.ph = phi i64 [ 0, %.preheader.i489.preheader ], [ %i.ahb, %middle.block1933 ]
  br label %.preheader.i489

.preheader.i489:                                  ; preds = %.preheader.i489.preheader2023, %.preheader.i489
  %.sroa.04.0.i.i490 = phi i64 [ %i.ahg, %.preheader.i489 ], [ %.sroa.04.0.i.i490.ph, %.preheader.i489.preheader2023 ] ; 2 uses
  %.sroa.02.0.i.i491 = phi i64 [ %i.ahf, %.preheader.i489 ], [ %.sroa.02.0.i.i491.ph, %.preheader.i489.preheader2023 ]
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agg, i64 %.sroa.04.0.i.i490
  %.val.i.i492 = load i8, ptr %i.ahc, align 1, !alias.scope !400, !noundef !8
  %i.ahd = icmp slt i8 %.val.i.i492, -64
  %i.ahe = zext i1 %i.ahd to i64
  %i.ahf = add i64 %.sroa.02.0.i.i491, %i.ahe     ; 2 uses
  %i.ahg = add nuw i64 %.sroa.04.0.i.i490, 1      ; 2 uses
  %i.ahh = icmp eq i64 %i.ahg, %i.agi
  br i1 %i.ahh, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494, label %.preheader.i489, !llvm.loop !404

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494: ; preds = %.preheader.i489, %middle.block1933, %bb.bt
  %.sroa.0.0.i.i493 = phi i64 [ 0, %bb.bt ], [ %i.ahb, %middle.block1933 ], [ %i.ahf, %.preheader.i489 ] ; 3 uses
  %i.ahi = icmp ule i64 %.sroa.0.0.i.i493, %i.agi
  tail call void @llvm.assume(i1 %i.ahi)
  %i.ahj = and i64 %i.agm, 576460752303423484     ; 3 uses
  %.not.i1288 = icmp eq i64 %i.ahj, 0
  br i1 %.not.i1288, label %._crit_edge1293, label %.lr.ph1292

end_hunk_6
