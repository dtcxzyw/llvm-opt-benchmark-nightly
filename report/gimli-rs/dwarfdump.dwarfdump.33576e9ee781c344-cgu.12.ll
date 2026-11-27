Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.12?download=true
inline.NumInlined: 373
inline.NumDeleted: 234
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECs4phXRVW1pDQ_9dwarfdump:bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3
  %i.f = sub i64 %i.c, %i.e
  %diff.check = icmp ugt i64 %i.f, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !noalias !238 ; 2 uses
  %wide.load5 = load <16 x i8>, ptr %i.k, align 1, !noalias !238 ; 2 uses
  %i.l = add <16 x i8> %wide.load, splat (i8 -65)
  %i.m = add <16 x i8> %wide.load5, splat (i8 -65)
  %i.n = icmp ult <16 x i8> %i.l, splat (i8 26)
  %i.o = icmp ult <16 x i8> %i.m, splat (i8 26)
  %i.p = select <16 x i1> %i.n, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.q = select <16 x i1> %i.o, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.r = or <16 x i8> %i.p, %wide.load
  %i.s = or <16 x i8> %i.q, %wide.load5
  %i.t = getelementptr i8, ptr %i.i, i64 %index   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1, !noalias !239
  store <16 x i8> %i.s, ptr %i.u, align 1, !noalias !239
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs4phXRVW1pDQ_9dwarfdump.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !242

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.d, -8                      ; 4 uses
  %i.w = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index7
  %wide.load8 = load <8 x i8>, ptr %i.y, align 1, !noalias !238 ; 2 uses
  %i.z = add <8 x i8> %wide.load8, splat (i8 -65)
  %i.aa = icmp ult <8 x i8> %i.z, splat (i8 26)
  %i.ab = select <8 x i1> %i.aa, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ac = or <8 x i8> %i.ab, %wide.load8
  %i.ad = getelementptr i8, ptr %i.x, i64 %index7
  store <8 x i8> %i.ac, ptr %i.ad, align 1, !noalias !239
  %index.next9 = add nuw i64 %index7, 8           ; 2 uses
  %i.ae = icmp eq i64 %index.next9, %n.vec6
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.d, %n.vec6
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs4phXRVW1pDQ_9dwarfdump.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %i.b, %i.c
  %i.ag = xor i64 %.sroa.01.0.i.ph, -1
  %i.ah = add i64 %i.ag, %i.b
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i8, ptr %i.ai, align 1, !noalias !238, !noundef !5 ; 2 uses
  %i.aj = add i8 %.val15.i.prol, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = select i1 %i.ak, i8 32, i8 0
  %.sroa.0.0.i.i.i.prol = or i8 %i.al, %.val15.i.prol
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %.sroa.0.0.i.i.i.prol, ptr %i.am, align 1, !noalias !239
  %i.an = add i64 %.ph, 1                         ; 2 uses
  %i.ao = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph.prol ]
  %i.ap = icmp eq i64 %i.ah, %i.c
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs4phXRVW1pDQ_9dwarfdump.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aq = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.be, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ar, align 1, !noalias !238, !noundef !5 ; 2 uses
  %i.as = add i8 %.val15.i, -65
  %i.at = icmp ult i8 %i.as, 26
  %i.au = select i1 %i.at, i8 32, i8 0
  %.sroa.0.0.i.i.i = or i8 %i.au, %.val15.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  store i8 %.sroa.0.0.i.i.i, ptr %i.av, align 1, !noalias !239
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %.val15.i.1 = load i8, ptr %i.ax, align 1, !noalias !238, !noundef !5 ; 2 uses
  %i.ay = add i8 %.val15.i.1, -65
  %i.az = icmp ult i8 %i.ay, 26
  %i.ba = select i1 %i.az, i8 32, i8 0
  %.sroa.0.0.i.i.i.1 = or i8 %i.ba, %.val15.i.1
  %i.bb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.bc, align 1, !noalias !239
  %i.bd = add i64 %i.aq, 2                        ; 2 uses
  %i.be = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.d
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs4phXRVW1pDQ_9dwarfdump.exit, label %vec.epilog.scalar.ph, !llvm.loop !237

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bd, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !238
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetENCINvMs3_NtNtB1P_4read6abbrevNtB2J_18AbbreviationsCache8populateINtNtB2L_8relocate14RelocateReaderINtNtB2L_12endian_slice11EndianSliceNtNtB1P_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB65_8for_each4callTyINtNtBc_6result6ResultINtNtB14_4sync3ArcNtB2J_13AbbreviationsENtB2L_5ErrorEENCINvMsk_B12_INtB12_3VecB78_E14extend_trustedBN_E0E0EB5l_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBX_TyINtNtB1U_6result6ResultINtNtBa_4sync3ArcNtNtNtB11_4read6abbrev13AbbreviationsENtB49_5ErrorEEuNCINvMs3_B47_NtB47_18AbbreviationsCache8populateINtNtB49_8relocate14RelocateReaderINtNtB49_12endian_slice11EndianSliceNtNtB11_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0NCINvNvB1M_8for_each4callB3p_NCINvMsk_B8_INtB8_3VecB3p_E14extend_trustedINtB2S_3MapBI_B4W_EE0E0E0EB7r_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsi68uqYEhoRA_5gimli4read4unit24DebugInfoUnitHeadersIterINtNtB12_8relocate14RelocateReaderINtNtB12_12endian_slice11EndianSliceNtNtB14_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEENCINvB3H_9dump_fileB36_Es_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_10filter_map19filter_map_try_foldINtNtBc_6result6ResultINtNtBc_6option6OptionTNtNtB14_6common5DwoIdINtNtB12_5dwarf4UnitB1Y_jEEENtB3H_5ErrorEIB6e_B6V_B7J_EuINtNtNtBc_3ops12control_flow11ControlFlowINtNtB8g_9try_trait17NeverShortCircuituEENvMs1_B6g_B6d_9transposeNCINvXB8_INtB8_12GenericShuntINtB5B_9FilterMapBN_B9v_EIB6e_zB7J_EEB4O_8try_folduNCINvMB8T_B8Q_10wrap_mut_2uB6V_NCINvNvB4O_8for_each4callB6V_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcj_7HashMapB6W_B7h_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4S_7collect6ExtendB6V_E6extendBa2_E0E0E0B8Q_E0E0B8b_EB3H_(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [768 x i8], align 16              ; 6 uses
  %i.c = alloca [768 x i8], align 16              ; 8 uses
  %.sroa.17.i.i = alloca [736 x i8], align 16     ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %.sroa.2.i.i.sroa.6.i.i.i = alloca [456 x i8], align 8 ; 6 uses
  %i.f = alloca [56 x i8], align 16               ; 9 uses
  %i.g = alloca [56 x i8], align 16               ; 9 uses
  %i.h = alloca [480 x i8], align 16              ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 16               ; 5 uses
  %.sroa.083.i.i.i.i.i = alloca [48 x i8], align 8 ; 4 uses
  %.sroa.687.i.i.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [64 x i8], align 16               ; 5 uses
  %.sroa.077.i.i.i.i.i = alloca [48 x i8], align 8 ; 4 uses
  %.sroa.681.i.i.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %i.m = alloca [64 x i8], align 16               ; 6 uses
  %i.n = alloca [64 x i8], align 16               ; 6 uses
  %i.o = alloca [64 x i8], align 16               ; 6 uses
  %i.p = alloca [64 x i8], align 16               ; 6 uses
  %i.q = alloca [64 x i8], align 16               ; 6 uses
  %i.r = alloca [64 x i8], align 16               ; 6 uses
  %i.s = alloca [64 x i8], align 16               ; 5 uses
  %i.t = alloca [64 x i8], align 16               ; 5 uses
  %i.u = alloca [64 x i8], align 16               ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [136 x i8], align 8               ; 15 uses
  %.sroa.10.i.i.i.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.728.i.i.i.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.7.i.i.i.i.i = alloca [56 x i8], align 8  ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [768 x i8], align 16              ; 41 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [768 x i8], align 16             ; 10 uses
  %.sroa.25.i.i.i = alloca [744 x i8], align 8    ; 5 uses
  %i.ab = alloca [112 x i8], align 8              ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvXs8_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2P_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ac), !noalias !329
  %i.ad = load i64, ptr %i.ab, align 8, !range !330, !noalias !331, !noundef !5 ; 2 uses
  %.not177.not.i = icmp eq i64 %i.ad, -2
  br i1 %.not177.not.i, label %_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit24DebugInfoUnitHeadersIterINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3v_8adapters3map12map_try_foldINtNtB3x_6result6ResultINtB6_10UnitHeaderB14_jENtB8_5ErrorEIB59_INtNtB3x_6option6OptionTNtNtBa_6common5DwoIdINtNtB8_5dwarf4UnitB14_jEEENtB2K_5ErrorEuINtNtNtB3x_3ops12control_flow11ControlFlowINtNtB7C_9try_trait17NeverShortCircuituEENCINvB2K_9dump_fileB2a_Es_0NCINvNtB4B_10filter_map19filter_map_try_foldB65_IB59_B6x_B7j_EuB7x_NvMs1_B5b_B65_9transposeNCINvXB4B_INtB4B_12GenericShuntINtB9o_9FilterMapINtB4z_3MapB3_B8S_EBao_EIB59_zB7j_EEB3p_8try_folduNCINvMB8g_B8d_10wrap_mut_2uB6x_NCINvNvB3p_8for_each4callB6x_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBdu_7HashMapB6y_B6S_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3t_7collect6ExtendB6x_E6extendBaW_E0E0E0B8d_E0E0E0B7x_EB2K_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 88 ; 2 uses
  %.sroa.109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 108
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx18.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %.sroa.620.0..sroa_idx21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.4.sroa.2.0..sroa.620.0..sroa_idx21.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.618.16..sroa.620.0..sroa_idx21.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %.sroa.622.0..sroa_idx23.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 720 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 608 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 656 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 657
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 664 ; 2 uses
  %.sroa.313.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 712 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 713
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 728 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 736 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 744 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 752 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 760 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 128 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.gep198.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.473.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.471.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.469.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.7.0..sroa_idx25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.5144.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  %.sroa.728.0..sroa_idx29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.5147.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 680
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 688
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 696
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 704
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6202.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.7204.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.8205.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 624
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 632
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 640
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 648
  %.sroa.5209.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6210.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7212.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.8213.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5150.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.792.0..sroa_idx94.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 136 ; 2 uses
  %.sroa.2.i.i.sroa.5.0..sroa.792.0..sroa_idx94.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %.sroa.2.i.i.sroa.6.0..sroa.792.0..sroa_idx94.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 152 ; 2 uses
  %.sroa.10.0..sroa_idx35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4154.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 720 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 128 ; 2 uses
  %.sroa.5.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.813.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.i.sroa.8.0..sroa.813.16..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.i.sroa.10.0..sroa.813.16..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 720 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.cz, %.lr.ph.i
  %i.bp = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.hw, %bb.cz ] ; 3 uses
  %.sroa.54.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !331 ; 3 uses
  %.sroa.65.0.copyload.i = load i64, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !331 ; 2 uses
  %i.bq = load <2 x i64>, ptr %.sroa.87.0..sroa_idx.i, align 8, !noalias !331
  %.sroa.87.0.copyload.i = load i64, ptr %.sroa.87.0..sroa_idx.i, align 8, !noalias !331
  %.sroa.109.0.copyload.i = load i32, ptr %.sroa.109.0..sroa_idx.i, align 8, !noalias !331 ; 4 uses
  %.sroa.109.0.copyload.i.a = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.i)
  %.val.i.i = load ptr, ptr %0, align 8, !noalias !332, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.i.i)
  %i.br = load ptr, ptr %.val.i.i, align 8, !noalias !333, !nonnull !5, !align !8, !noundef !5 ; 7 uses
  %i.bs = icmp eq i64 %i.bp, -1
  br i1 %i.bs, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !335
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  call void @_RINvMs3_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_18AbbreviationsCache3getINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2P_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bu, i64 noundef %.sroa.87.0.copyload.i), !noalias !336
  %i.bv = load i8, ptr %i.z, align 8, !range !337, !noalias !335, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_4UnitINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE3newB2v_.exit.thread.i.i.i

_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_4UnitINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE3newB2v_.exit.thread.i.i.i: ; preds = %bb.c
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.sroa.11.sroa.12.sroa.0.0.copyload.i.i.i = load i56, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 1, !noalias !338
  %.sroa.513.0.copyload.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !335
  %i.bw = ptrtoint ptr %.sroa.513.0.copyload.i.i.i.i to i64
  br label %bb.ce

bb.d:                                             ; preds = %bb.c
  %i.bx = load ptr, ptr %i.ae, align 8, !noalias !335, !nonnull !5, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !335
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !340
  store ptr %i.bx, ptr %i.x, align 8, !noalias !340
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 928
  %i.bz = load i8, ptr %i.by, align 8, !range !13, !alias.scope !341, !noalias !333, !noundef !5
  %i.ca = trunc nuw i8 %i.bz to i1                ; 3 uses
  %i.cb = invoke noundef i64 @_RNvMs7_NtNtCsi68uqYEhoRA_5gimli4read3strNtNtB9_6common19DebugStrOffsetsBase29default_for_encoding_and_fileCs4phXRVW1pDQ_9dwarfdump(i32 noundef %.sroa.109.0.copyload.i, i1 noundef zeroext %i.ca)
          to label %bb.g unwind label %bb.f, !noalias !342

bb.e:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsE9drop_slowCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #23
          to label %common.resume.i.i unwind label %bb.cc, !noalias !343

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = atomicrmw add ptr %i.bx, i64 -1 release, align 8, !noalias !344
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.e, label %common.resume.i.i

bb.g:                                             ; preds = %bb.d
  %i.cf = invoke noundef i64 @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read8loclistsNtNtB9_6common17DebugLocListsBase29default_for_encoding_and_fileCs4phXRVW1pDQ_9dwarfdump(i32 noundef %.sroa.109.0.copyload.i, i1 noundef zeroext %i.ca)
          to label %bb.h unwind label %bb.f, !noalias !343

bb.h:                                             ; preds = %bb.g
  %i.cg = invoke noundef i64 @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsNtNtB9_6common17DebugRngListsBase29default_for_encoding_and_fileCs4phXRVW1pDQ_9dwarfdump(i32 noundef %.sroa.109.0.copyload.i, i1 noundef zeroext %i.ca)
          to label %bb.i unwind label %bb.f, !noalias !343

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.off.i.i.i.i.i = add nsw i64 %i.bp, -3
  %switch.i.i.i.i.i = icmp ult i64 %.sroa.0.0.copyload.off.i.i.i.i.i, 2 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %switch.i.i.i.i.i, i64 %.sroa.54.0.copyload.i, i64 undef
  %spec.select216.i.i.i.i.i = zext i1 %switch.i.i.i.i.i to i64
  store i64 %i.bp, ptr %i.af, align 16, !noalias !345
  store i64 %.sroa.54.0.copyload.i, ptr %.sroa.5.0..sroa_idx18.i.i.i.i, align 8, !noalias !345
  store i64 %.sroa.65.0.copyload.i, ptr %.sroa.620.0..sroa_idx21.i.i.i.i, align 16, !noalias !346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.sroa.2.0..sroa.620.0..sroa_idx21.i.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.76.0..sroa_idx.i, i64 64, i1 false), !noalias !331
  store <2 x i64> %i.bq, ptr %.sroa.618.16..sroa.620.0..sroa_idx21.i.sroa_idx.i.i.i, align 8, !noalias !346
  %2 = zext i32 %.sroa.109.0.copyload.i to i64
  %3 = freeze i32 %.sroa.109.0.copyload.i.a
  %4 = zext i32 %3 to i64
  %5 = shl nuw i64 %4, 32
  %6 = or disjoint i64 %5, %2
  store i64 %6, ptr %.sroa.622.0..sroa_idx23.i.i.i.i, align 8, !noalias !345
  store ptr %i.bx, ptr %i.ag, align 16, !noalias !340
  store i8 2, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 16, !noalias !340
  store i8 2, ptr %.sroa.313.0..sroa_idx.i.i.i.i.i, align 8, !noalias !340
  store i64 0, ptr %i.aj, align 8, !noalias !340
  store i64 %i.cb, ptr %i.ak, align 16, !noalias !340
  store i64 0, ptr %i.al, align 8, !noalias !340
  store i64 %i.cf, ptr %i.am, align 16, !noalias !340
  store i64 %i.cg, ptr %i.an, align 8, !noalias !340
  store i64 -2, ptr %i.ao, align 16, !noalias !340
  store i64 %spec.select216.i.i.i.i.i, ptr %i.y, align 16, !noalias !340
  store i64 %spec.select.i.i.i.i.i, ptr %i.ap, align 8, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.728.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !340
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  invoke void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE7entriesB2B_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ch)
          to label %bb.j unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !340
  invoke void @_RNvMsh_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE8next_dfsB2E_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.w)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.j
  %lpad.loopexit.split-lp478 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4unit13EntriesCursorINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB37_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.w) #20
          to label %.body.i.i.i.i.i unwind label %bb.cc, !noalias !343

bb.k:                                             ; preds = %bb.j
  %i.ci = load i8, ptr %i.v, align 8, !range !337, !noalias !340, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ci, -1
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.4125.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.11.sroa.12.sroa.0.0.copyload16.i.i.i = load i56, ptr %.sroa.4125.0..sroa_idx.i.i.i.i.i, align 1, !noalias !347
  %.sroa.5126.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5126.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5126.0..sroa_idx.i.i.i.i.i, align 8, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !340
  %i.cj = ptrtoint ptr %.sroa.5126.0.copyload.i.i.i.i.i to i64
  br label %.loopexit18.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !340
  %i.ck = load i16, ptr %i.aq, align 8, !alias.scope !348, !noalias !340, !noundef !5
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %.loopexit18.i, label %bb.p

.loopexit18.i:                                    ; preds = %bb.m, %bb.l
  %.sroa.11.sroa.12.sroa.0.0.i.i.i = phi i56 [ %.sroa.11.sroa.12.sroa.0.0.copyload16.i.i.i, %bb.l ], [ undef, %bb.m ]
  %.sroa.11.sroa.0.0.i.i.i = phi i8 [ %i.ci, %bb.l ], [ 62, %bb.m ]
  %.sroa.20.0.i.i.i = phi i64 [ %i.cj, %bb.l ], [ undef, %bb.m ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit9AttributeINtNtBK_8relocate14RelocateReaderINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB36_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4unit25DebuggingInformationEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEB3j_.exit.i.i.i.i.i.i unwind label %bb.n, !noalias !343

bb.n:                                             ; preds = %.loopexit18.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit9AttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.w)
          to label %.body.i.i.i.i.i unwind label %bb.o, !noalias !343

bb.o:                                             ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !343
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4unit25DebuggingInformationEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEB3j_.exit.i.i.i.i.i.i: ; preds = %.loopexit18.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit9AttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4unit13EntriesCursorINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB37_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.p:                                             ; preds = %bb.m
  %.val177.i.i.i.i.i = load ptr, ptr %.sroa.gep198.i.i.i.i.i, align 8, !noalias !340, !nonnull !5, !noundef !5 ; 2 uses
  %.val178.i.i.i.i.i = load i64, ptr %.sroa.gep.i.i.i.i.i, align 8, !noalias !340, !noundef !5 ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.val178.i.i.i.i.i, 80
  %i.co = getelementptr inbounds nuw i8, ptr %.val177.i.i.i.i.i, i64 %.idx.i.i.i.i.i
  %i.cp = icmp eq i64 %.val178.i.i.i.i.i, 0
  br i1 %i.cp, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %.sroa.023.0227.i.i.i.i.i = phi i64 [ %.sroa.023.1.i.i.i.i.i, %bb.q ], [ -1, %bb.p ] ; 16 uses
  %.sroa.026.0226.i.i.i.i.i = phi i64 [ %.sroa.026.1.i.i.i.i.i, %bb.q ], [ -1, %bb.p ] ; 16 uses
  %.sroa.030.0225.i.i.i.i.i = phi i64 [ %.sroa.030.1.i.i.i.i.i, %bb.q ], [ -1, %bb.p ] ; 16 uses
  %.sroa.0140.0224.i.i.i.i.i = phi ptr [ %i.cq, %bb.q ], [ %.val177.i.i.i.i.i, %bb.p ] ; 11 uses
  %.sroa.074.0223.i.i.i.i.i = phi i1 [ %.sroa.074.1.i.i.i.i.i, %bb.q ], [ false, %bb.p ] ; 16 uses
  %.sroa.375.0222.i.i.i.i.i = phi i64 [ %.sroa.375.1.i.i.i.i.i, %bb.q ], [ undef, %bb.p ] ; 16 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0140.0224.i.i.i.i.i, i64 80 ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.0140.0224.i.i.i.i.i, i64 64
  %.sroa.0140.0.val.i.i.i.i.i = load i16, ptr %i.cr, align 16, !noalias !343, !noundef !5
  switch i16 %.sroa.0140.0.val.i.i.i.i.i, label %bb.q [
    i16 3, label %bb.r
    i16 27, label %bb.s
    i16 17, label %bb.t
    i16 16, label %bb.u
    i16 114, label %bb.v
    i16 115, label %bb.w
    i16 8499, label %bb.w
    i16 140, label %bb.x
    i16 116, label %bb.y
    i16 8498, label %bb.y
    i16 8497, label %bb.z
  ]

bb.q:                                             ; preds = %bb.av, %bb.au, %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.z, %.lr.ph.i.i.i.i.i
  %.sroa.375.1.i.i.i.i.i = phi i64 [ %.sroa.375.0222.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.375.0222.i.i.i.i.i, %bb.aa ], [ %.sroa.375.0222.i.i.i.i.i, %bb.ab ], [ %.sroa.375.0222.i.i.i.i.i, %bb.ac ], [ %i.cw, %bb.ae ], [ %.sroa.375.0222.i.i.i.i.i, %bb.af ], [ %.sroa.375.0222.i.i.i.i.i, %bb.ah ], [ %.sroa.375.0222.i.i.i.i.i, %bb.ai ], [ %.sroa.375.0222.i.i.i.i.i, %bb.ak ], [ %.sroa.375.0222.i.i.i.i.i, %bb.al ], [ %.sroa.375.0222.i.i.i.i.i, %bb.an ], [ %.sroa.375.0222.i.i.i.i.i, %bb.ao ], [ %.sroa.375.0222.i.i.i.i.i, %bb.aq ], [ %.sroa.375.0222.i.i.i.i.i, %bb.ar ], [ %.sroa.375.0222.i.i.i.i.i, %bb.au ], [ %.sroa.375.0222.i.i.i.i.i, %bb.av ], [ %.sroa.375.0222.i.i.i.i.i, %bb.z ] ; 2 uses
  %.sroa.074.1.i.i.i.i.i = phi i1 [ %.sroa.074.0223.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.074.0223.i.i.i.i.i, %bb.aa ], [ %.sroa.074.0223.i.i.i.i.i, %bb.ab ], [ %.sroa.074.0223.i.i.i.i.i, %bb.ac ], [ true, %bb.ae ], [ %.sroa.074.0223.i.i.i.i.i, %bb.af ], [ %.sroa.074.0223.i.i.i.i.i, %bb.ah ], [ %.sroa.074.0223.i.i.i.i.i, %bb.ai ], [ %.sroa.074.0223.i.i.i.i.i, %bb.ak ], [ %.sroa.074.0223.i.i.i.i.i, %bb.al ], [ %.sroa.074.0223.i.i.i.i.i, %bb.an ], [ %.sroa.074.0223.i.i.i.i.i, %bb.ao ], [ %.sroa.074.0223.i.i.i.i.i, %bb.aq ], [ %.sroa.074.0223.i.i.i.i.i, %bb.ar ], [ %.sroa.074.0223.i.i.i.i.i, %bb.au ], [ %.sroa.074.0223.i.i.i.i.i, %bb.av ], [ %.sroa.074.0223.i.i.i.i.i, %bb.z ] ; 2 uses
  %.sroa.030.1.i.i.i.i.i = phi i64 [ %.sroa.030.0225.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.030.0225.i.i.i.i.i, %bb.aa ], [ %.sroa.030.0225.i.i.i.i.i, %bb.ab ], [ %.sroa.072.0.copyload.i.i.i.i.i, %bb.ac ], [ %.sroa.030.0225.i.i.i.i.i, %bb.ae ], [ %.sroa.030.0225.i.i.i.i.i, %bb.af ], [ %.sroa.030.0225.i.i.i.i.i, %bb.ah ], [ %.sroa.030.0225.i.i.i.i.i, %bb.ai ], [ %.sroa.030.0225.i.i.i.i.i, %bb.ak ], [ %.sroa.030.0225.i.i.i.i.i, %bb.al ], [ %.sroa.030.0225.i.i.i.i.i, %bb.an ], [ %.sroa.030.0225.i.i.i.i.i, %bb.ao ], [ %.sroa.030.0225.i.i.i.i.i, %bb.aq ], [ %.sroa.030.0225.i.i.i.i.i, %bb.ar ], [ %.sroa.030.0225.i.i.i.i.i, %bb.au ], [ %.sroa.030.0225.i.i.i.i.i, %bb.av ], [ %.sroa.030.0225.i.i.i.i.i, %bb.z ] ; 2 uses
  %.sroa.026.1.i.i.i.i.i = phi i64 [ %.sroa.026.0226.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.026.0226.i.i.i.i.i, %bb.aa ], [ %.sroa.070.0.copyload.i.i.i.i.i, %bb.ab ], [ %.sroa.026.0226.i.i.i.i.i, %bb.ac ], [ %.sroa.026.0226.i.i.i.i.i, %bb.ae ], [ %.sroa.026.0226.i.i.i.i.i, %bb.af ], [ %.sroa.026.0226.i.i.i.i.i, %bb.ah ], [ %.sroa.026.0226.i.i.i.i.i, %bb.ai ], [ %.sroa.026.0226.i.i.i.i.i, %bb.ak ], [ %.sroa.026.0226.i.i.i.i.i, %bb.al ], [ %.sroa.026.0226.i.i.i.i.i, %bb.an ], [ %.sroa.026.0226.i.i.i.i.i, %bb.ao ], [ %.sroa.026.0226.i.i.i.i.i, %bb.aq ], [ %.sroa.026.0226.i.i.i.i.i, %bb.ar ], [ %.sroa.026.0226.i.i.i.i.i, %bb.au ], [ %.sroa.026.0226.i.i.i.i.i, %bb.av ], [ %.sroa.026.0226.i.i.i.i.i, %bb.z ] ; 2 uses
  %.sroa.023.1.i.i.i.i.i = phi i64 [ %.sroa.023.0227.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.068.0.copyload.i.i.i.i.i, %bb.aa ], [ %.sroa.023.0227.i.i.i.i.i, %bb.ab ], [ %.sroa.023.0227.i.i.i.i.i, %bb.ac ], [ %.sroa.023.0227.i.i.i.i.i, %bb.ae ], [ %.sroa.023.0227.i.i.i.i.i, %bb.af ], [ %.sroa.023.0227.i.i.i.i.i, %bb.ah ], [ %.sroa.023.0227.i.i.i.i.i, %bb.ai ], [ %.sroa.023.0227.i.i.i.i.i, %bb.ak ], [ %.sroa.023.0227.i.i.i.i.i, %bb.al ], [ %.sroa.023.0227.i.i.i.i.i, %bb.an ], [ %.sroa.023.0227.i.i.i.i.i, %bb.ao ], [ %.sroa.023.0227.i.i.i.i.i, %bb.aq ], [ %.sroa.023.0227.i.i.i.i.i, %bb.ar ], [ %.sroa.023.0227.i.i.i.i.i, %bb.au ], [ %.sroa.023.0227.i.i.i.i.i, %bb.av ], [ %.sroa.023.0227.i.i.i.i.i, %bb.z ] ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.co
  br i1 %i.cs, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !340
  invoke void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5valueB2z_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.0140.0224.i.i.i.i.i)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !340
  invoke void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5valueB2z_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.0140.0224.i.i.i.i.i)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !340
  invoke void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5valueB2z_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.s, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.0140.0224.i.i.i.i.i)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !340
  invoke void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5valueB2z_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.r, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.0140.0224.i.i.i.i.i)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !340
  invoke void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5valueB2z_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.0140.0224.i.i.i.i.i)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !340
  invoke void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5valueB2z_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.0140.0224.i.i.i.i.i)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !340
  invoke void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5valueB2z_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.0140.0224.i.i.i.i.i)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !340
  invoke void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5valueB2z_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.0140.0224.i.i.i.i.i)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ct = load i64, ptr %i.y, align 16, !range !12, !noalias !340, !noundef !5
  %.not166.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not166.i.i.i.i.i, label %bb.as, label %bb.q

bb.aa:                                            ; preds = %bb.r
  %.sroa.068.0.copyload.i.i.i.i.i = load i64, ptr %i.u, align 16, !noalias !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.469.0..sroa_idx.i.i.i.i.i, i64 56, i1 false), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !340
  br label %bb.q

bb.ab:                                            ; preds = %bb.s
  %.sroa.070.0.copyload.i.i.i.i.i = load i64, ptr %i.t, align 16, !noalias !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.728.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.471.0..sroa_idx.i.i.i.i.i, i64 56, i1 false), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !340
  br label %bb.q

bb.ac:                                            ; preds = %bb.t
  %.sroa.072.0.copyload.i.i.i.i.i = load i64, ptr %i.s, align 16, !noalias !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.473.0..sroa_idx.i.i.i.i.i, i64 56, i1 false), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !340
  br label %bb.q

bb.ad:                                            ; preds = %bb.u
  %i.cu = load i64, ptr %i.r, align 16, !range !349, !noalias !340, !noundef !5
  %i.cv = icmp eq i64 %i.cu, 17
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = load i64, ptr %i.aw, align 8, !noalias !340, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !340
  br label %bb.q

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !340
  br label %bb.q

bb.ag:                                            ; preds = %bb.v
  %i.cx = load i64, ptr %i.q, align 16, !range !349, !noalias !340, !noundef !5
  %i.cy = icmp eq i64 %i.cx, 29
  br i1 %i.cy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cz = load i64, ptr %i.av, align 8, !noalias !340, !noundef !5
  store i64 %i.cz, ptr %i.ak, align 16, !noalias !340
end_hunk_0
