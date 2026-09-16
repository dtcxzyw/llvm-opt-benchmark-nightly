Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.09?download=true
inline.NumInlined: 154
inline.NumDeleted: 89
begin_hunk_0_@_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1q_4node9GreenNodeEuENtNtNtB6_5alloc5inner6GlobalECsfF8zpZz1lvn_13yara_x_parser:bb.a
  %i.af = phi ptr [ %.pre, %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_4node9GreenNodeEuEECsfF8zpZz1lvn_13yara_x_parser.exit.loopexit ], [ %.pre5, %bb.b ]
  %i.ag = add i64 %i.c, 1
  %i.ah = mul nuw i64 %i.ag, %2                   ; 2 uses
  %i.ai = add i64 %3, -1
  %i.aj = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = icmp uge i64 %i.aj, %i.ah
  call void @llvm.assume(i1 %i.ak)
  %i.al = sub i64 0, %3
  %i.am = and i64 %i.aj, %i.al                    ; 3 uses
  %i.an = add i64 %i.c, 17
  %i.ao = add i64 %i.an, %i.am                    ; 3 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = sub nuw i64 -9223372036854775808, %3
  %i.ar = icmp ule i64 %i.ao, %i.aq
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ne i64 %3, 0
  call void @llvm.assume(i1 %i.as)
  %i.at = sub nsw i64 0, %i.am
  %i.au = getelementptr inbounds i8, ptr %i.af, i64 %i.at
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) %3) #18
  br label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_4node9GreenNodeEuEECsfF8zpZz1lvn_13yara_x_parser.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1q_5token10GreenTokenEuENtNtNtB6_5alloc5inner6GlobalECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !77, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %.pre5 = load ptr, ptr %0, align 8              ; 4 uses
  br i1 %i.g, label %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val24.i.i = load <16 x i8>, ptr %.pre5, align 16, !noalias !78
  %i.h = icmp sgt <16 x i8> %.val24.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre5, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtBH_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.i, %bb.c
  %.sroa.14.010.i = phi i64 [ %i.f, %bb.c ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtBH_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.i ]
  %.sroa.10.09.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtBH_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.i ] ; 2 uses
  %.sroa.6.08.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtBH_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.i ] ; 2 uses
  %.sroa.04.07.i = phi ptr [ %.pre5, %bb.c ], [ %.sroa.04.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtBH_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.i ] ; 2 uses
  %.not10.i.i = icmp eq i16 %.sroa.10.09.i, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB18_5token10GreenTokenEuEE9next_implKb0_ECsfF8zpZz1lvn_13yara_x_parser.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i ], [ %.sroa.6.08.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i ], [ %.sroa.04.07.i, %bb.d ]
  %.val68.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !79
  %i.n = icmp sgt <16 x i8> %.val68.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.n to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB18_5token10GreenTokenEuEE9next_implKb0_ECsfF8zpZz1lvn_13yara_x_parser.exit.i

_RINvMsh_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB18_5token10GreenTokenEuEE9next_implKb0_ECsfF8zpZz1lvn_13yara_x_parser.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.1.i = phi ptr [ %.sroa.04.07.i, %bb.d ], [ %i.o, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.08.i, %bb.d ], [ %i.p, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.09.i, %bb.d ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i, -1
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [8 x i8], ptr %.sroa.04.1.i, i64 %i.u
  %i.w = add i64 %.sroa.14.010.i, -1              ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -8
  %.val.i = load ptr, ptr %i.x, align 8, !noalias !77, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !77, !noundef !4
  store ptr %.val.i, ptr %i.a, align 8, !noalias !77
  store i64 %i.z, ptr %i.k, align 8, !noalias !77
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.aa = atomicrmw sub ptr %.val.i, i64 1 release, align 8, !noalias !82
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtBH_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.i

bb.e:                                             ; preds = %_RINvMsh_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB18_5token10GreenTokenEuEE9next_implKb0_ECsfF8zpZz1lvn_13yara_x_parser.exit.i
  %i.ac = load ptr, ptr %i.a, align 8, !alias.scope !83, !noalias !77, !nonnull !4, !noundef !4
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8, !noalias !82 ; 0 uses
  call void @_RNvMs3_NtCskKs5foxPL5A_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green5token14GreenTokenHeadShEE9drop_slowB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #17, !noalias !77
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtBH_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtBH_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.i: ; preds = %bb.e, %_RINvMsh_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB18_5token10GreenTokenEuEE9next_implKb0_ECsfF8zpZz1lvn_13yara_x_parser.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.loopexit, label %bb.d

_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.loopexit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtBH_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.i
  %.pre = load ptr, ptr %0, align 8
  br label %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit

_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.loopexit, %bb.b
  %i.af = phi ptr [ %.pre, %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit.loopexit ], [ %.pre5, %bb.b ]
  %i.ag = add i64 %i.c, 1
  %i.ah = mul nuw i64 %i.ag, %2                   ; 2 uses
  %i.ai = add i64 %3, -1
  %i.aj = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = icmp uge i64 %i.aj, %i.ah
  call void @llvm.assume(i1 %i.ak)
  %i.al = sub i64 0, %3
  %i.am = and i64 %i.aj, %i.al                    ; 3 uses
  %i.an = add i64 %i.c, 17
  %i.ao = add i64 %i.an, %i.am                    ; 3 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = sub nuw i64 -9223372036854775808, %3
  %i.ar = icmp ule i64 %i.ao, %i.aq
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ne i64 %3, 0
  call void @llvm.assume(i1 %i.as)
  %i.at = sub nsw i64 0, %i.am
  %i.au = getelementptr inbounds i8, ptr %i.af, i64 %i.at
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) %3) #18
  br label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtNtCskKs5foxPL5A_5rowan5green10node_cache6NoHashNtNtB1n_5token10GreenTokenEuEECsfF8zpZz1lvn_13yara_x_parser.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMsh_NtCskKs5foxPL5A_5rowan3arcINtB6_7ThinArcNtNtNtB8_5green5token14GreenTokenHeadhE20from_header_and_iterNtNtNtCskKLDkoKarTP_4core3str4iter5BytesECsfF8zpZz1lvn_13yara_x_parser(i16 noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, -25
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.d, 24
  %i.g = add i64 %i.d, 31
  %i.h = and i64 %i.g, -8                         ; 4 uses
  %.not = icmp ult i64 %i.h, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 29 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc, label %bb.f, !prof !6

.noexc:                                           ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16
  unreachable

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.j = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef 8) #18 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  store i64 1, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i16 %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.d, ptr %i.m, align 8
  %i.n = icmp eq ptr %2, %1
  br i1 %i.n, label %bb.j, label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.h) #19
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.p = xor i64 %i.c, -1
  %i.q = add i64 %i.p, %i.b
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.d)
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 33
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.ph

.lr.ph.preheader56.loopexit:                      ; preds = %vector.body
  %3 = getelementptr i8, ptr %i.o, i64 %n.vec
  %4 = getelementptr i8, ptr %1, i64 %n.vec
  br label %.lr.ph.preheader56

.lr.ph.preheader56:                               ; preds = %.lr.ph.preheader56.loopexit, %.lr.ph.preheader
  %.sroa.05.046.ph = phi ptr [ %i.o, %.lr.ph.preheader ], [ %3, %.lr.ph.preheader56.loopexit ]
  %.sroa.010.045.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %.lr.ph.preheader56.loopexit ]
  %.sroa.021.144.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %4, %.lr.ph.preheader56.loopexit ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.t = and i64 %i.s, 31                         ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 32, i64 %i.t
  %n.vec = sub i64 %i.s, %i.v                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %index ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep52, align 1, !noalias !88
  %wide.load53 = load <16 x i8>, ptr %i.w, align 1, !noalias !88
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 8
  store <16 x i8> %wide.load53, ptr %i.x, align 8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %.lr.ph.preheader56.loopexit, label %vector.body, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.k
  %.not40 = icmp eq ptr %i.aa, %2
  br i1 %.not40, label %bb.j, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader56, %bb.k
  %.sroa.05.046 = phi ptr [ %i.ac, %bb.k ], [ %.sroa.05.046.ph, %.lr.ph.preheader56 ] ; 2 uses
  %.sroa.010.045 = phi i64 [ %i.z, %bb.k ], [ %.sroa.010.045.ph, %.lr.ph.preheader56 ]
  %.sroa.021.144 = phi ptr [ %i.aa, %bb.k ], [ %.sroa.021.144.ph, %.lr.ph.preheader56 ] ; 3 uses
  %.not41 = icmp eq ptr %.sroa.021.144, %2
  br i1 %.not41, label %bb.l, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19
  unreachable

bb.j:                                             ; preds = %._crit_edge, %bb.g
  ret ptr %i.j

bb.k:                                             ; preds = %.lr.ph
  %i.z = add nuw i64 %.sroa.010.045, 1            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.021.144, i64 1 ; 2 uses
  %i.ab = load i8, ptr %.sroa.021.144, align 1, !noalias !88, !noundef !4
  store i8 %i.ab, ptr %.sroa.05.046, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.046, i64 1
  %exitcond.not = icmp eq i64 %i.z, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !87

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskKLDkoKarTP_4core5slice6rotate10ptr_rotatejECsfF8zpZz1lvn_13yara_x_parser(i64 noundef range(i64 -1152921504606846975, 1152921504606846976) %0, ptr noundef nonnull %1, i64 noundef range(i64 -1152921504606846975, 1152921504606846976) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = icmp eq i64 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate15ptr_rotate_swapjECsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %. = tail call i64 @llvm.umin.i64(i64 %2, i64 %0)
  %i.d = icmp ult i64 %., 33
  br i1 %i.d, label %bb.d, label %bb.c

_RINvNtNtCskKLDkoKarTP_4core5slice6rotate15ptr_rotate_swapjECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %.loopexit.i, %bb.p, %bb.k, %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate18ptr_rotate_memmovejECsfF8zpZz1lvn_13yara_x_parser.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %2, %0
  %i.f = icmp ult i64 %i.e, 24
  br i1 %i.f, label %bb.g, label %.preheader

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %2, %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = sub nsw i64 0, %0
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %2 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i64 %0, 3                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.i, i64 %i.k, i1 false)
  %i.l = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.l, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.a, i64 %i.k, i1 false)
  br label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate18ptr_rotate_memmovejECsfF8zpZz1lvn_13yara_x_parser.exit

bb.f:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %2, 3                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %1, i64 %i.m, i1 false)
  %i.n = shl nuw nsw i64 %0, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.i, i64 %i.n, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.a, i64 %i.m, i1 false)
  br label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate18ptr_rotate_memmovejECsfF8zpZz1lvn_13yara_x_parser.exit

_RINvNtNtCskKLDkoKarTP_4core5slice6rotate18ptr_rotate_memmovejECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate15ptr_rotate_swapjECsfF8zpZz1lvn_13yara_x_parser.exit

.preheader:                                       ; preds = %bb.c, %.loopexit.i
  %.sroa.016.0.i = phi i64 [ %.sroa.016.2.i, %.loopexit.i ], [ %2, %bb.c ] ; 8 uses
  %.sroa.010.0.i = phi ptr [ %.sroa.010.2.i, %.loopexit.i ], [ %1, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i, %.loopexit.i ], [ %0, %bb.c ] ; 9 uses
  %.not.i2 = icmp ult i64 %.sroa.0.0.i, %.sroa.016.0.i
  br i1 %.not.i2, label %.preheader.i, label %.preheader49.i

.preheader49.i:                                   ; preds = %.preheader
  %i.o = sub nsw i64 0, %.sroa.016.0.i
  %.not37.i = icmp eq i64 %.sroa.016.0.i, 0
  br i1 %.not37.i, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.us.i, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.us.i: ; preds = %.preheader49.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.us.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.us.i

.preheader.i:                                     ; preds = %.preheader
  %.not36.i = icmp eq i64 %.sroa.0.0.i, 0
  %i.p = sub nsw i64 0, %.sroa.0.0.i
  br i1 %.not36.i, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.us.i, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.us.i: ; preds = %.preheader.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.us.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.us.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.016.1.i = phi i64 [ %i.s, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.016.0.i, %.preheader.i ]
  %.sroa.010.1.i = phi ptr [ %i.r, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.010.0.i, %.preheader.i ] ; 3 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %.sroa.010.1.i, i64 %i.p
  tail call void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfF8zpZz1lvn_13yara_x_parser(ptr noundef nonnull %i.q, ptr noundef nonnull %.sroa.010.1.i, i64 noundef %.sroa.0.0.i)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %.sroa.0.0.i ; 2 uses
  %i.s = sub i64 %.sroa.016.1.i, %.sroa.0.0.i     ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sroa.0.0.i
  br i1 %i.t, label %.loopexit.i, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i

.loopexit.i:                                      ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.016.2.i = phi i64 [ %i.s, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.016.0.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i ] ; 2 uses
  %.sroa.010.2.i = phi ptr [ %i.r, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.w, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.x, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i ] ; 2 uses
  %i.u = icmp eq i64 %.sroa.016.2.i, 0
  %i.v = icmp eq i64 %.sroa.0.1.i, 0
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate15ptr_rotate_swapjECsfF8zpZz1lvn_13yara_x_parser.exit, label %.preheader

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i: ; preds = %.preheader49.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i
  %.sroa.010.3.i = phi ptr [ %i.w, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i ], [ %.sroa.010.0.i, %.preheader49.i ] ; 2 uses
  %.sroa.0.2.i = phi i64 [ %i.x, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i ], [ %.sroa.0.0.i, %.preheader49.i ]
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.010.3.i, i64 %i.o ; 3 uses
  tail call void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfF8zpZz1lvn_13yara_x_parser(ptr noundef nonnull %i.w, ptr noundef nonnull %.sroa.010.3.i, i64 noundef %.sroa.016.0.i)
  %i.x = sub i64 %.sroa.0.2.i, %.sroa.016.0.i     ; 3 uses
  %i.y = icmp ult i64 %i.x, %.sroa.016.0.i
  br i1 %i.y, label %.loopexit.i, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit48.i

bb.g:                                             ; preds = %bb.c
  %i.z = sub nsw i64 0, %0
  %i.aa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.z ; 5 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.g
  %.sroa.019.0.i.ph = phi i64 [ %spec.select.i, %bb.l ], [ %2, %bb.g ] ; 3 uses
  %.sroa.027.0.i.ph = phi i64 [ %i.ad, %bb.l ], [ %i.ab, %bb.g ]
  %.sroa.06.0.i.ph = phi i64 [ %i.af, %bb.l ], [ %2, %bb.g ]
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.i
  %.sroa.027.0.i = phi i64 [ %i.ad, %bb.i ], [ %.sroa.027.0.i.ph, %.outer ]
  %.sroa.06.0.i = phi i64 [ %i.ae, %bb.i ], [ %.sroa.06.0.i.ph, %.outer ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.06.0.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 3 uses
  store i64 %.sroa.027.0.i, ptr %i.ac, align 8
  %.not.i3 = icmp ult i64 %.sroa.06.0.i, %0
  br i1 %.not.i3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = add i64 %.sroa.06.0.i, %2
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.af = sub nuw i64 %.sroa.06.0.i, %0           ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.ad, ptr %i.aa, align 8
  %i.ah = icmp ugt i64 %.sroa.019.0.i.ph, 1
  br i1 %i.ah, label %.lr.ph.i, label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate15ptr_rotate_swapjECsfF8zpZz1lvn_13yara_x_parser.exit

bb.l:                                             ; preds = %bb.j
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.019.0.i.ph)
  br label %.outer

.lr.ph.i:                                         ; preds = %bb.k, %bb.p
  %.sroa.021.036.i = phi i64 [ %i.aq, %bb.p ], [ 1, %bb.k ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.021.036.i ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4
  %i.ak = add i64 %.sroa.021.036.i, %2
  br label %bb.m

bb.m:                                             ; preds = %.backedge, %.lr.ph.i
  %.sroa.027.1.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %i.am, %.backedge ]
  %.sroa.06.2.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %.sroa.06.2.i.be, %.backedge ] ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.06.2.i ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !4 ; 2 uses
end_hunk_0
