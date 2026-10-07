Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ops-f10fbde8402c1e77.polars_ops.acb822c2e599fb91-cgu.15?download=true
inline.NumInlined: 15629
inline.NumDeleted: 4055
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB6_8AnyValue7extractyECsePnBjWcsLF5_10polars_ops:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6086
  store i64 %.sroa.01.0.i, ptr %i.fn, align 16, !dbg !6086
  store i8 2, ptr %i.a, align 16, !dbg !6086
  %i.fo = invoke fastcc { i64, i64 } @_RINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB6_8AnyValue7extractyECsePnBjWcsLF5_10polars_ops(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.ay unwind label %bb.ax, !dbg !6098 ; 2 uses

bb.as:                                            ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6099
  %i.fq = load i128, ptr %i.fp, align 16, !dbg !6099, !noundef !1434 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6100
  %i.fs = load i64, ptr %i.fr, align 16, !dbg !6100, !noundef !1434 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0, !dbg !6101
  br i1 %i.ft, label %bb.bc, label %bb.bb, !dbg !6101

bb.at:                                            ; preds = %bb.a, %bb.bc, %bb.ay, %bb.aw, %bb.av, %bb.au, %_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix.exit, %.split10, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %_RINvXsw_NtCslmKYcnV0hjo_10num_traits4castyNtB6_7NumCast4fromNtNtCs2mZqlW55729_12polars_utils7float164pf16ECsePnBjWcsLF5_10polars_ops.exit, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.26.0 = phi i64 [ %.sroa.3.0.i.i40, %bb.bc ], [ %i.f, %.split10 ], [ undef, %bb.au ], [ %.sroa.3.0.i.i36, %bb.av ], [ %.sroa.3.0.i.i33, %_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix.exit ], [ %i.bm, %bb.p ], [ %i.bp, %bb.q ], [ %i.bs, %bb.r ], [ %i.bu, %bb.s ], [ %.sroa.3.0.i.i, %bb.t ], [ %.sroa.3.0.i.i12, %bb.u ], [ %.sroa.3.0.i.i14, %bb.v ], [ %.sroa.3.0.i.i16, %bb.w ], [ %i.cm, %bb.x ], [ %.sroa.3.0.i.i18, %bb.y ], [ %.sroa.3.0.i.i.i, %_RINvXsw_NtCslmKYcnV0hjo_10num_traits4castyNtB6_7NumCast4fromNtNtCs2mZqlW55729_12polars_utils7float164pf16ECsePnBjWcsLF5_10polars_ops.exit ], [ %.sroa.3.0.i.i21, %bb.ak ], [ %.sroa.3.0.i.i24, %bb.al ], [ %.sroa.3.0.i.i26, %bb.am ], [ %i.ge, %bb.aw ], [ %i.ey, %bb.an ], [ %i.fb, %bb.ao ], [ %i.gi, %bb.ay ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i41, %bb.bc ], [ 1, %.split10 ], [ 0, %bb.au ], [ %.sroa.0.0.i.i37, %bb.av ], [ %.sroa.0.0.i.i34, %_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix.exit ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ], [ %.sroa.0.0.i.i13, %bb.u ], [ %.sroa.0.0.i.i15, %bb.v ], [ %.sroa.0.0.i.i17, %bb.w ], [ %..i.i, %bb.x ], [ %.sroa.0.0.i.i19, %bb.y ], [ %.sroa.0.0.i.i.i, %_RINvXsw_NtCslmKYcnV0hjo_10num_traits4castyNtB6_7NumCast4fromNtNtCs2mZqlW55729_12polars_utils7float164pf16ECsePnBjWcsLF5_10polars_ops.exit ], [ %.sroa.0.0.i.i22, %bb.ak ], [ %.sroa.0.0.i.i25, %bb.al ], [ %.sroa.0.0.i.i27, %bb.am ], [ %..i.i38, %bb.aw ], [ %..i.i28, %bb.an ], [ %..i.i29, %bb.ao ], [ %i.gh, %bb.ay ], [ 0, %bb.a ], !dbg !6102
  %i.fu = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !6103
  %i.fv = insertvalue { i64, i64 } %i.fu, i64 %.sroa.26.0, 1, !dbg !6103
  ret { i64, i64 } %i.fv, !dbg !6103

.loopexit:                                        ; preds = %.lr.ph.i, %bb.h, %bb.g, %.lr.ph141.i, %.preheader111.i, %bb.l, %bb.m, %.lr.ph150.i, %bb.c, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6104
  call void @_RNvXs2_NtNtCscgRAwXFJnXP_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j) #24, !dbg !6105
  %i.fw = load i8, ptr %i.b, align 8, !dbg !6106, !range !1437, !noundef !1434
  %i.fx = trunc nuw i8 %i.fw to i1, !dbg !6106
  br i1 %i.fx, label %bb.au, label %bb.av, !dbg !6107

_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix.exit: ; preds = %bb.i, %bb.j, %bb.n, %bb.o, %.preheader.i, %.preheader114.i
  %.sroa.1542.0 = phi i128 [ %i.bj, %bb.o ], [ %i.am, %bb.j ], [ %i.ba, %bb.n ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.ad, %bb.i ], !dbg !6108 ; 2 uses
  %or.cond.i.i32 = icmp ult i128 %.sroa.1542.0, 18446744073709551616, !dbg !6109 ; 2 uses
  %i.fy = trunc nuw i128 %.sroa.1542.0 to i64, !dbg !6109
  %.sroa.3.0.i.i33 = select i1 %or.cond.i.i32, i64 %i.fy, i64 undef, !dbg !6109
  %.sroa.0.0.i.i34 = zext i1 %or.cond.i.i32 to i64, !dbg !6109
  br label %bb.at, !dbg !6110

bb.au:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6111
  br label %bb.at, !dbg !6103

bb.av:                                            ; preds = %.loopexit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6112
  %i.ga = load double, ptr %i.fz, align 8, !dbg !6112, !noundef !1434 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6111
  %i.gb = fcmp ogt double %i.ga, -1.000000e+00, !dbg !6113
  %i.gc = fcmp olt double %i.ga, f0x43F0000000000000
  %or.cond.i.i35 = and i1 %i.gb, %i.gc, !dbg !6113 ; 2 uses
  %i.gd = fptoui double %i.ga to i64, !dbg !6113
  %.sroa.3.0.i.i36 = select i1 %or.cond.i.i35, i64 %i.gd, i64 undef, !dbg !6113
  %.sroa.0.0.i.i37 = zext i1 %or.cond.i.i35 to i64, !dbg !6113
  br label %bb.at, !dbg !6110

bb.aw:                                            ; preds = %bb.a, %bb.a
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6114
  %i.ge = load i64, ptr %.sroa.01.0, align 8, !dbg !6115, !noundef !1434 ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, -1, !dbg !6116
  %..i.i38 = zext i1 %i.gf to i64, !dbg !6117
  br label %bb.at, !dbg !6118

bb.ax:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 16 dereferenceable(48) %i.a) #25
          to label %bb.ba unwind label %bb.az, !dbg !6119

bb.ay:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.gh = extractvalue { i64, i64 } %i.fo, 0, !dbg !6086
  %i.gi = extractvalue { i64, i64 } %i.fo, 1, !dbg !6086
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 16 dereferenceable(48) %i.a), !dbg !6119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6119
  br label %bb.at, !dbg !6119

bb.az:                                            ; preds = %bb.ax
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #26, !dbg !6120
  unreachable, !dbg !6120

bb.ba:                                            ; preds = %bb.ax
  resume { ptr, i32 } %i.gg, !dbg !6120

bb.bb:                                            ; preds = %bb.as
  %i.gk = tail call fastcc noundef i128 @_RNvNtCslFlrwjHoTci_14polars_compute7decimal13div_128_pow10(i128 noundef %i.fq, i64 noundef %i.fs) #23, !dbg !6121
  br label %bb.bc, !dbg !6121

bb.bc:                                            ; preds = %bb.as, %bb.bb
  %.sroa.02.0 = phi i128 [ %i.gk, %bb.bb ], [ %i.fq, %bb.as ], !dbg !6122 ; 2 uses
  %or.cond.i.i39 = icmp ult i128 %.sroa.02.0, 18446744073709551616, !dbg !6123 ; 2 uses
  %i.gl = trunc nuw i128 %.sroa.02.0 to i64, !dbg !6123
  %.sroa.3.0.i.i40 = select i1 %or.cond.i.i39, i64 %i.gl, i64 undef, !dbg !6123
  %.sroa.0.0.i.i41 = zext i1 %or.cond.i.i39 to i64, !dbg !6123
  br label %bb.at, !dbg !6124
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBT_7float164pf16EEINtNtBT_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6125 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6215
  %i.b = load i64, ptr %i.a, align 8, !dbg !6215, !noundef !1434
  %i.c = icmp eq i64 %i.b, 0, !dbg !6216
  br i1 %i.c, label %bb.g, label %bb.b, !dbg !6216

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6217
  %i.e = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBT_6option6OptionNtNtB1J_7float164pf16EEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %1), !dbg !6218 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6201), !dbg !6219
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6203), !dbg !6219
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6204), !dbg !6220
  %i.f = lshr i64 %i.e, 57, !dbg !6221
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !6222
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6223
  %i.i = load i64, ptr %i.h, align 8, !dbg !6223, !alias.scope !6205, !noalias !6206, !noundef !1434 ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !6205, !noalias !6206, !nonnull !1434, !noundef !1434 ; 8 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %.val.i.i.i = load i16, ptr %1, align 2, !range !1566, !alias.scope !6203, !noalias !6201
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val1.i.i.i = load i16, ptr %i.m, align 2, !alias.scope !6203, !noalias !6201
  %.val1.i.i.fr.i = freeze i16 %.val1.i.i.i       ; 3 uses
  %.val.i.i.fr.i = freeze i16 %.val.i.i.i
  %i.n = trunc i16 %.val.i.i.fr.i to i1
  br i1 %i.n, label %.split.us59.i, label %.split.i

.split.us59.i:                                    ; preds = %bb.b
  %i.o = and i16 %.val1.i.i.fr.i, 32767
  %i.p = icmp samesign ugt i16 %i.o, 31744
  br i1 %i.p, label %.split.us59.split.us.i, label %.split.us59.split.i

.split.us59.split.us.i:                           ; preds = %.split.us59.i, %bb.c
  %.sroa.011.0.i.us.us.i = phi i64 [ %i.aj, %bb.c ], [ 0, %.split.us59.i ], !dbg !6224
  %.pn.i.us.us.i = phi i64 [ %i.ak, %bb.c ], [ %i.e, %.split.us59.i ]
  %.sroa.01.0.i.us.us.i = and i64 %.pn.i.us.us.i, %i.i, !dbg !6224 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.us.us.i, !dbg !6225
  %.sroa.0.0.copyload.i30.us.us.i = load <16 x i8>, ptr %i.q, align 1, !dbg !6226, !noalias !6207 ; 2 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.us.us.i, %i.l, !dbg !6227
  %i.s = bitcast <16 x i1> %i.r to i16, !dbg !6228 ; 2 uses
  %.not.i.not36.us.us.i = icmp eq i16 %i.s, 0, !dbg !6229
  br i1 %.not.i.not36.us.us.i, label %._crit_edge.split.us.split.us.us.us.i, label %.lr.ph.us.us.i, !dbg !6230

.lr.ph.us.us.i:                                   ; preds = %.split.us59.split.us.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us.us.us.i
  %.sroa.05.0.i37.us.us.us.us.i = phi i16 [ %i.af, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us.us.us.i ], [ %i.s, %.split.us59.split.us.i ] ; 3 uses
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.us.us.us.us.i, i1 true), !dbg !6231
  %i.u = zext nneg i16 %i.t to i64, !dbg !6232
  %i.v = add i64 %.sroa.01.0.i.us.us.i, %i.u, !dbg !6233
  %i.w = and i64 %i.v, %i.i, !dbg !6233
  %i.x = sub nsw i64 0, %i.w, !dbg !6234          ; 2 uses
  %i.y = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.x, !dbg !6235 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24, !dbg !6236
  %.val2.i.us.us.us.us.i = load i16, ptr %i.z, align 2, !dbg !6237, !noalias !6208
  %i.aa = getelementptr i8, ptr %i.y, i64 -22, !dbg !6237
  %.val3.i.us.us.us.us.i = load i16, ptr %i.aa, align 2, !dbg !6237, !noalias !6208
  %i.ab = trunc nuw i16 %.val2.i.us.us.us.us.i to i1, !dbg !6238
  %i.ac = and i16 %.val3.i.us.us.us.us.i, 32767
  %i.ad = icmp samesign ugt i16 %i.ac, 31744
  %or.cond.i = select i1 %i.ab, i1 %i.ad, i1 false, !dbg !6238, !prof !6209
  br i1 %or.cond.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us.us.us.i, !dbg !6238, !prof !6209

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us.us.us.i: ; preds = %.lr.ph.us.us.i
  %i.ae = add i16 %.sroa.05.0.i37.us.us.us.us.i, -1, !dbg !6239
  %i.af = and i16 %i.ae, %.sroa.05.0.i37.us.us.us.us.i, !dbg !6240 ; 2 uses
  %.not.i.not.us.us.us.us.i = icmp eq i16 %i.af, 0, !dbg !6229
  br i1 %.not.i.not.us.us.us.us.i, label %._crit_edge.split.us.split.us.us.us.i, label %.lr.ph.us.us.i, !dbg !6230

._crit_edge.split.us.split.us.us.us.i:            ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us.us.us.i, %.split.us59.split.us.i
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.us.us.i, splat (i8 -1), !dbg !6241
  %i.ah = bitcast <16 x i1> %i.ag to i16, !dbg !6242
  %i.ai = icmp eq i16 %i.ah, 0, !dbg !6243
  br i1 %i.ai, label %bb.c, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBV_7float164pf16EEINtNtBV_7idx_vec7UnitVecmEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2J_E0ECsePnBjWcsLF5_10polars_ops.exit, !dbg !6243, !prof !1486

bb.c:                                             ; preds = %._crit_edge.split.us.split.us.us.us.i
  %i.aj = add i64 %.sroa.011.0.i.us.us.i, 16, !dbg !6244 ; 2 uses
  %i.ak = add i64 %.sroa.01.0.i.us.us.i, %i.aj, !dbg !6245
  br label %.split.us59.split.us.i, !dbg !6246

.split.us59.split.i:                              ; preds = %.split.us59.i, %bb.e
  %.sroa.011.0.i.us.i = phi i64 [ %i.bi, %bb.e ], [ 0, %.split.us59.i ], !dbg !6224
  %.pn.i.us.i = phi i64 [ %i.bj, %bb.e ], [ %i.e, %.split.us59.i ]
  %.sroa.01.0.i.us.i = and i64 %.pn.i.us.i, %i.i, !dbg !6224 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.us.i, !dbg !6225
  %.sroa.0.0.copyload.i30.us.i = load <16 x i8>, ptr %i.al, align 1, !dbg !6226, !noalias !6207 ; 2 uses
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.us.i, %i.l, !dbg !6227
  %i.an = bitcast <16 x i1> %i.am to i16, !dbg !6228 ; 2 uses
  %.not.i.not36.us.i = icmp eq i16 %i.an, 0, !dbg !6229
  br i1 %.not.i.not36.us.i, label %._crit_edge.split.us.split.us68.i, label %.lr.ph.us.i, !dbg !6230

.lr.ph.us.i:                                      ; preds = %.split.us59.split.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us66.i
  %.sroa.05.0.i37.us.us62.i = phi i16 [ %i.be, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us66.i ], [ %i.an, %.split.us59.split.i ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.us.us62.i, i1 true), !dbg !6231
  %i.ap = zext nneg i16 %i.ao to i64, !dbg !6232
  %i.aq = add i64 %.sroa.01.0.i.us.i, %i.ap, !dbg !6233
  %i.ar = and i64 %i.aq, %i.i, !dbg !6233
  %i.as = sub nsw i64 0, %i.ar, !dbg !6234        ; 3 uses
  %i.at = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.as, !dbg !6235 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -24, !dbg !6236
  %.val2.i.us.us63.i = load i16, ptr %i.au, align 2, !dbg !6237, !noalias !6208
  %i.av = getelementptr i8, ptr %i.at, i64 -22, !dbg !6237
  %.val3.i.us.us64.i = load i16, ptr %i.av, align 2, !dbg !6237, !noalias !6208 ; 3 uses
  %i.aw = trunc nuw i16 %.val2.i.us.us63.i to i1, !dbg !6238
  %i.ax = and i16 %.val3.i.us.us64.i, 32767
  %i.ay = icmp samesign ult i16 %i.ax, 31745
  %or.cond89.not.i = select i1 %i.aw, i1 %i.ay, i1 false, !dbg !6238
  br i1 %or.cond89.not.i, label %bb.d, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us66.i, !dbg !6238, !prof !6210

bb.d:                                             ; preds = %.lr.ph.us.i
  %i.az = icmp eq i16 %.val1.i.i.fr.i, %.val3.i.us.us64.i, !dbg !6247
  br i1 %i.az, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %.split.us.us.i, !dbg !6247

.split.us.us.i:                                   ; preds = %bb.d
  %i.ba = or i16 %.val3.i.us.us64.i, %.val1.i.i.fr.i, !dbg !6248
  %i.bb = and i16 %i.ba, 32767, !dbg !6248
  %i.bc = icmp eq i16 %i.bb, 0, !dbg !6249
  br i1 %i.bc, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us66.i, !dbg !6250, !prof !6212

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us66.i: ; preds = %.split.us.us.i, %.lr.ph.us.i
  %i.bd = add i16 %.sroa.05.0.i37.us.us62.i, -1, !dbg !6239
  %i.be = and i16 %i.bd, %.sroa.05.0.i37.us.us62.i, !dbg !6240 ; 2 uses
  %.not.i.not.us.us67.i = icmp eq i16 %i.be, 0, !dbg !6229
  br i1 %.not.i.not.us.us67.i, label %._crit_edge.split.us.split.us68.i, label %.lr.ph.us.i, !dbg !6230

._crit_edge.split.us.split.us68.i:                ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.us.us66.i, %.split.us59.split.i
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.us.i, splat (i8 -1), !dbg !6241
  %i.bg = bitcast <16 x i1> %i.bf to i16, !dbg !6242
  %i.bh = icmp eq i16 %i.bg, 0, !dbg !6243
  br i1 %i.bh, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBV_7float164pf16EEINtNtBV_7idx_vec7UnitVecmEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2J_E0ECsePnBjWcsLF5_10polars_ops.exit, !dbg !6243, !prof !1486

bb.e:                                             ; preds = %._crit_edge.split.us.split.us68.i
  %i.bi = add i64 %.sroa.011.0.i.us.i, 16, !dbg !6244 ; 2 uses
  %i.bj = add i64 %.sroa.01.0.i.us.i, %i.bi, !dbg !6245
  br label %.split.us59.split.i, !dbg !6246

.split.i:                                         ; preds = %bb.b, %bb.f
  %.sroa.011.0.i.i = phi i64 [ %i.ci, %bb.f ], [ 0, %bb.b ], !dbg !6224
  %.pn.i.i = phi i64 [ %i.cj, %bb.f ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !6224 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !6225
  %.sroa.0.0.copyload.i30.i = load <16 x i8>, ptr %i.bk, align 1, !dbg !6226, !noalias !6207 ; 2 uses
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i, %i.l, !dbg !6227
  %i.bm = bitcast <16 x i1> %i.bl to i16, !dbg !6228 ; 3 uses
  %.not.i.not36.i = icmp eq i16 %i.bm, 0, !dbg !6229
  br i1 %.not.i.not36.i, label %._crit_edge.split.i, label %.lr.ph.i, !dbg !6230

.lr.ph.i:                                         ; preds = %.split.i
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bm, i1 true), !dbg !6231
  %i.bo = zext nneg i16 %i.bn to i64, !dbg !6232
  %i.bp = add i64 %.sroa.01.0.i.i, %i.bo, !dbg !6233
  %i.bq = and i64 %i.bp, %i.i, !dbg !6233
  %i.br = sub nsw i64 0, %i.bq, !dbg !6234        ; 2 uses
  %i.bs = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.br, !dbg !6235
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -24, !dbg !6236
  %.val2.i47.i = load i16, ptr %i.bt, align 2, !dbg !6237, !noalias !6208
  %i.bu = trunc nuw i16 %.val2.i47.i to i1, !dbg !6238
  br i1 %i.bu, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, !dbg !6250, !prof !6213

.split29.i:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.i
  %i.bv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ch, i1 true), !dbg !6231
  %i.bw = zext nneg i16 %i.bv to i64, !dbg !6232
  %i.bx = add i64 %.sroa.01.0.i.i, %i.bw, !dbg !6233
  %i.by = and i64 %i.bx, %i.i, !dbg !6233
  %i.bz = sub nsw i64 0, %i.by, !dbg !6234        ; 2 uses
  %i.ca = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.bz, !dbg !6235
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -24, !dbg !6236
  %.val2.i.i = load i16, ptr %i.cb, align 2, !dbg !6237, !noalias !6208
  %i.cc = trunc nuw i16 %.val2.i.i to i1, !dbg !6238
  br i1 %i.cc, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, !dbg !6250, !prof !6214

._crit_edge.split.i:                              ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.i, %.split.i
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i, splat (i8 -1), !dbg !6241
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !6242
  %i.cf = icmp eq i16 %i.ce, 0, !dbg !6243
  br i1 %i.cf, label %bb.f, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBV_7float164pf16EEINtNtBV_7idx_vec7UnitVecmEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2J_E0ECsePnBjWcsLF5_10polars_ops.exit, !dbg !6243, !prof !1486

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBX_7float164pf16EEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2L_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread27.i: ; preds = %.lr.ph.i, %.split29.i
  %.sroa.05.0.i3748.i = phi i16 [ %i.ch, %.split29.i ], [ %i.bm, %.lr.ph.i ] ; 2 uses
  %i.cg = add i16 %.sroa.05.0.i3748.i, -1, !dbg !6239
  %i.ch = and i16 %i.cg, %.sroa.05.0.i3748.i, !dbg !6240 ; 3 uses
  %.not.i.not.i = icmp eq i16 %i.ch, 0, !dbg !6229
  br i1 %.not.i.not.i, label %._crit_edge.split.i, label %.split29.i, !dbg !6230

bb.f:                                             ; preds = %._crit_edge.split.i
  %i.ci = add i64 %.sroa.011.0.i.i, 16, !dbg !6244 ; 2 uses
  %i.cj = add i64 %.sroa.01.0.i.i, %i.ci, !dbg !6245
  br label %.split.i, !dbg !6246

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i: ; preds = %.lr.ph.i, %.split29.i, %.split.us.us.i, %bb.d, %.lr.ph.us.us.i
  %.pre-phi = phi i64 [ %i.bz, %.split29.i ], [ %i.as, %.split.us.us.i ], [ %i.x, %.lr.ph.us.us.i ], [ %i.as, %bb.d ], [ %i.br, %.lr.ph.i ], !dbg !6251
  %i.ck = getelementptr inbounds [24 x i8], ptr %i.j, i64 %.pre-phi, !dbg !6251
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBV_7float164pf16EEINtNtBV_7idx_vec7UnitVecmEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2J_E0ECsePnBjWcsLF5_10polars_ops.exit, !dbg !6251

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBV_7float164pf16EEINtNtBV_7idx_vec7UnitVecmEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2J_E0ECsePnBjWcsLF5_10polars_ops.exit: ; preds = %._crit_edge.split.i, %._crit_edge.split.us.split.us68.i, %._crit_edge.split.us.split.us.us.us.i, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i
  %i.cl = phi ptr [ %i.ck, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i ], [ null, %._crit_edge.split.us.split.us.us.us.i ], [ null, %._crit_edge.split.us.split.us68.i ], [ null, %._crit_edge.split.i ], !dbg !6251 ; 2 uses
  %.not = icmp eq ptr %i.cl, null, !dbg !6252
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -16, !dbg !6253
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.cm, !dbg !6253
  br label %bb.g, !dbg !6254

bb.g:                                             ; preds = %bb.a, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBV_7float164pf16EEINtNtBV_7idx_vec7UnitVecmEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2J_E0ECsePnBjWcsLF5_10polars_ops.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtBV_7float164pf16EEINtNtBV_7idx_vec7UnitVecmEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2J_E0ECsePnBjWcsLF5_10polars_ops.exit ], [ null, %bb.a ], !dbg !6255
  ret ptr %.sroa.0.0, !dbg !6256
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEINtNtBT_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6257 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6336
  %i.b = load i64, ptr %i.a, align 8, !dbg !6336, !noundef !1434
  %i.c = icmp eq i64 %i.b, 0, !dbg !6337
  br i1 %i.c, label %bb.e, label %bb.b, !dbg !6337

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6338
  %i.e = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBT_6option6OptiondEEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !6339 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6327), !dbg !6340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6329), !dbg !6340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6330), !dbg !6341
  %i.f = lshr i64 %i.e, 57, !dbg !6342
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !6343
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6344
  %i.i = load i64, ptr %i.h, align 8, !dbg !6344, !alias.scope !6331, !noalias !6332, !noundef !1434 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !6331, !noalias !6332, !nonnull !1434, !noundef !1434 ; 6 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.val.i.i.i = load i64, ptr %1, align 8, !range !1606, !alias.scope !6329, !noalias !6327
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load double, ptr %i.m, align 8, !alias.scope !6329, !noalias !6327 ; 2 uses
  %.val.i.i.fr.i = freeze i64 %.val.i.i.i
  %i.n = trunc i64 %.val.i.i.fr.i to i1
  %i.o = fcmp uno double %.val1.i.i.i, 0.000000e+00
  br i1 %i.n, label %.split.us52.i, label %.split.i

.split.us52.i:                                    ; preds = %bb.b, %bb.c
  %.sroa.011.0.i.us.i = phi i64 [ %i.ai, %bb.c ], [ 0, %bb.b ], !dbg !6345
  %.pn.i.us.i = phi i64 [ %i.aj, %bb.c ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.us.i = and i64 %.pn.i.us.i, %i.i, !dbg !6345 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.us.i, !dbg !6346
  %.sroa.0.0.copyload.i27.us.i = load <16 x i8>, ptr %i.p, align 1, !dbg !6347, !noalias !6333 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, %i.l, !dbg !6348
  %i.r = bitcast <16 x i1> %i.q to i16, !dbg !6349 ; 2 uses
  %.not.i.not33.us.i = icmp eq i16 %i.r, 0, !dbg !6350
  br i1 %.not.i.not33.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i, !dbg !6351

.lr.ph.us.i:                                      ; preds = %.split.us52.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2s_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread.us.us.i
  %.sroa.05.0.i34.us.us.i = phi i16 [ %i.ae, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2s_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread.us.us.i ], [ %i.r, %.split.us52.i ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.us.us.i, i1 true), !dbg !6352
  %i.t = zext nneg i16 %i.s to i64, !dbg !6353
  %i.u = add i64 %.sroa.01.0.i.us.i, %i.t, !dbg !6354
  %i.v = and i64 %i.u, %i.i, !dbg !6354
  %i.w = sub nsw i64 0, %i.v, !dbg !6355          ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.w, !dbg !6356 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -32, !dbg !6357
  %.val2.i.us.us.i = load i64, ptr %i.y, align 8, !dbg !6358, !noalias !6334
  %i.z = trunc nuw i64 %.val2.i.us.us.i to i1, !dbg !6359
  br i1 %i.z, label %.split.us.us.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2s_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread.us.us.i, !dbg !6359, !prof !1607

.split.us.us.i:                                   ; preds = %.lr.ph.us.i
  %i.aa = getelementptr i8, ptr %i.x, i64 -24, !dbg !6358
  %.val3.i.us.us.i = load double, ptr %i.aa, align 8, !dbg !6358, !noalias !6334 ; 2 uses
  %i.ab = fcmp uno double %.val3.i.us.us.i, 0.000000e+00, !dbg !6360
  %i.ac = fcmp oeq double %.val1.i.i.i, %.val3.i.us.us.i, !dbg !6360
  %.sroa.0.0.in.i.i.i.i.us.us.i = select i1 %i.o, i1 %i.ab, i1 %i.ac, !dbg !6360
  br i1 %.sroa.0.0.in.i.i.i.i.us.us.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2s_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread.us.us.i, !dbg !6361, !prof !1608

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2s_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread.us.us.i: ; preds = %.split.us.us.i, %.lr.ph.us.i
  %i.ad = add i16 %.sroa.05.0.i34.us.us.i, -1, !dbg !6362
  %i.ae = and i16 %i.ad, %.sroa.05.0.i34.us.us.i, !dbg !6363 ; 2 uses
  %.not.i.not.us.us.i = icmp eq i16 %i.ae, 0, !dbg !6350
  br i1 %.not.i.not.us.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i, !dbg !6351

._crit_edge.split.us.us.i:                        ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2s_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread.us.us.i, %.split.us52.i
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, splat (i8 -1), !dbg !6364
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !6365
  %i.ah = icmp eq i16 %i.ag, 0, !dbg !6366
  br i1 %i.ah, label %bb.c, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEINtNtBV_7idx_vec7UnitVecmEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2q_E0ECsePnBjWcsLF5_10polars_ops.exit, !dbg !6366, !prof !1486

bb.c:                                             ; preds = %._crit_edge.split.us.us.i
  %i.ai = add i64 %.sroa.011.0.i.us.i, 16, !dbg !6367 ; 2 uses
  %i.aj = add i64 %.sroa.01.0.i.us.i, %i.ai, !dbg !6368
  br label %.split.us52.i, !dbg !6369

.split.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.011.0.i.i = phi i64 [ %i.bi, %bb.d ], [ 0, %bb.b ], !dbg !6345
  %.pn.i.i = phi i64 [ %i.bj, %bb.d ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !6345 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !6346
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.ak, align 1, !dbg !6347, !noalias !6333 ; 2 uses
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l, !dbg !6348
  %i.am = bitcast <16 x i1> %i.al to i16, !dbg !6349 ; 3 uses
  %.not.i.not33.i = icmp eq i16 %i.am, 0, !dbg !6350
  br i1 %.not.i.not33.i, label %._crit_edge.split.i, label %.lr.ph.i, !dbg !6351

.lr.ph.i:                                         ; preds = %.split.i
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true), !dbg !6352
  %i.ao = zext nneg i16 %i.an to i64, !dbg !6353
  %i.ap = add i64 %.sroa.01.0.i.i, %i.ao, !dbg !6354
  %i.aq = and i64 %i.ap, %i.i, !dbg !6354
  %i.ar = sub nsw i64 0, %i.aq, !dbg !6355        ; 2 uses
  %i.as = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.ar, !dbg !6356
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32, !dbg !6357
  %.val2.i44.i = load i64, ptr %i.at, align 8, !dbg !6358, !noalias !6334
  %i.au = trunc nuw i64 %.val2.i44.i to i1, !dbg !6359
  br i1 %i.au, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEINtNtBX_7idx_vec7UnitVecmEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2s_E0E0CsePnBjWcsLF5_10polars_ops.exit.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, !dbg !6361, !prof !1609

end_hunk_0
