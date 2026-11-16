Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.14?download=true
inline.NumInlined: 271
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta14reverse_suffix23strip_literal_suffix_at:bb.a
_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit.loopexit, %bb.o
  %.sroa.567.0.copyload.i = phi i64 [ %.sroa.567.0.copyload.i.pre, %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit.loopexit ], [ %i.bt, %bb.o ], !dbg !14593 ; 2 uses
  %.sroa.466.0.copyload.i = phi ptr [ %.sroa.466.0.copyload.i.pre, %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit.loopexit ], [ %i.bs, %bb.o ], !dbg !14593 ; 3 uses
    #dbg_value(ptr %i.j, !14019, !DIExpression(), !13527)
  %.sroa.065.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !14593, !noalias !14178 ; 2 uses
    #dbg_value(i64 %.sroa.065.0.copyload.i, !14020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13527)
    #dbg_value(i64 %.sroa.065.0.copyload.i, !14002, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13528)
    #dbg_value(ptr %.sroa.466.0.copyload.i, !14020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13527)
    #dbg_value(ptr %.sroa.466.0.copyload.i, !14002, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13528)
    #dbg_value(i64 %.sroa.567.0.copyload.i, !14020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13527)
    #dbg_value(i64 %.sroa.567.0.copyload.i, !14002, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14594, !noalias !14178
    #dbg_value(i64 %.sroa.065.0.copyload.i, !14003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13529)
    #dbg_value(ptr %.sroa.466.0.copyload.i, !14003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13529)
    #dbg_value(i64 %.sroa.567.0.copyload.i, !14003, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13529)
    #dbg_value(ptr %.sroa.466.0.copyload.i, !14005, !DIExpression(), !13530)
    #dbg_value(ptr %.sroa.466.0.copyload.i, !14006, !DIExpression(), !13531)
    #dbg_value(ptr %.sroa.466.0.copyload.i, !14237, !DIExpression(), !13533)
    #dbg_value(ptr undef, !14041, !DIExpression(), !13293)
    #dbg_value(i64 %.sroa.567.0.copyload.i, !14238, !DIExpression(), !13533)
  %i.cc = icmp ult i64 %.sroa.567.0.copyload.i, 192153584101141163, !dbg !14595
  call void @llvm.assume(i1 %i.cc), !dbg !14596
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %.sroa.466.0.copyload.i, i64 %.sroa.567.0.copyload.i, !dbg !14597
    #dbg_value(ptr %i.cd, !14007, !DIExpression(), !13534)
    #dbg_value(ptr undef, !13981, !DIExpression(), !13290)
    #dbg_value(ptr undef, !13975, !DIExpression(), !13289)
    #dbg_value(i64 %.sroa.065.0.copyload.i, !14186, !DIExpression(), !13536)
  %i.ce = icmp sgt i64 %.sroa.065.0.copyload.i, -1, !dbg !14598
  call void @llvm.assume(i1 %i.ce), !dbg !14598
    #dbg_value(i64 %.sroa.065.0.copyload.i, !14008, !DIExpression(), !13537)
  store ptr %.sroa.466.0.copyload.i, ptr %i.f, align 8, !dbg !14599, !noalias !14178
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !14599
  store i64 %.sroa.065.0.copyload.i, ptr %i.cf, align 8, !dbg !14599, !noalias !14178
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14599
  store ptr %.sroa.466.0.copyload.i, ptr %i.cg, align 8, !dbg !14599, !noalias !14178
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !14599
  store ptr %i.cd, ptr %i.ch, align 8, !dbg !14599, !noalias !14178
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.r unwind label %bb.z, !dbg !14600, !noalias !14182, !inline_history !13414

bb.r:                                             ; preds = %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14601, !noalias !14178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14602, !noalias !14178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14603, !noalias !14178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !14603, !noalias !14178
  invoke void @_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3Hir6concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %bb.s unwind label %.body129, !dbg !14602, !noalias !14182, !inline_history !13414

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14604, !noalias !14178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !14605, !noalias !14308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14606, !noalias !14178
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14607
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !14607, !alias.scope !14130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14589, !noalias !14178
  br i1 %i.br, label %bb.u, label %bb.t, !dbg !14566

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit126, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !14566, !noalias !14178
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta14reverse_suffix31strip_repetition_literal_suffix.exit, !dbg !14608

bb.u:                                             ; preds = %bb.s
    #dbg_value(ptr %i.l, !1607, !DIExpression(), !13538)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.w unwind label %bb.v, !dbg !14554, !noalias !14182, !inline_history !13413

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l) #21
          to label %.body106 unwind label %bb.y, !dbg !14554, !noalias !14182, !inline_history !13413

bb.w:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit126 unwind label %bb.x, !dbg !14554, !noalias !14182, !inline_history !13413

bb.x:                                             ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body106

bb.y:                                             ; preds = %bb.v
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14554, !noalias !14182, !inline_history !13413
  unreachable, !dbg !14554

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit126: ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !14554
  %.val.i122 = load ptr, ptr %i.cl, align 8, !dbg !14554, !alias.scope !14184, !noalias !14182, !nonnull !894, !noundef !894
    #dbg_value(ptr poison, !1613, !DIExpression(), !13540)
    #dbg_value(ptr poison, !1620, !DIExpression(), !13542)
    #dbg_value(ptr poison, !1627, !DIExpression(), !13544)
    #dbg_value(ptr %.val.i122, !1630, !DIExpression(), !13545)
    #dbg_value(i64 8, !1631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13546)
    #dbg_value(i64 80, !1631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13546)
    #dbg_value(ptr poison, !1644, !DIExpression(), !13548)
    #dbg_value(ptr poison, !1651, !DIExpression(), !13550)
    #dbg_value(ptr %.val.i122, !1648, !DIExpression(), !13548)
    #dbg_value(ptr %.val.i122, !1654, !DIExpression(), !13550)
    #dbg_value(ptr %.val.i122, !1657, !DIExpression(), !13552)
    #dbg_value(ptr %.val.i122, !1663, !DIExpression(), !13554)
    #dbg_value(i64 8, !1649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13548)
    #dbg_value(i64 8, !1655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13550)
    #dbg_value(i64 8, !1661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13552)
    #dbg_value(i64 8, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13554)
    #dbg_value(i64 80, !1649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13548)
    #dbg_value(i64 80, !1655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13550)
    #dbg_value(i64 80, !1661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13552)
    #dbg_value(i64 80, !1664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13554)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i122, i64 noundef 80, i64 noundef 8) #23, !dbg !14609, !noalias !14182, !inline_history !13413
  br label %bb.t, !dbg !14554

bb.z:                                             ; preds = %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #21
          to label %bb.k unwind label %bb.aa, !dbg !14589, !noalias !14182, !inline_history !13414

bb.aa:                                            ; preds = %.thread, %bb.ac, %bb.z
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14610, !noalias !14182, !inline_history !13414
  unreachable, !dbg !14610

bb.ab:                                            ; preds = %bb.m
  unreachable

bb.ac:                                            ; preds = %.thread142, %bb.k
  %.sroa.017.2.i147 = phi i1 [ true, %.thread142 ], [ false, %bb.k ]
  %.pn.i146 = phi { ptr, i32 } [ %i.bf, %.thread142 ], [ %.pn.i, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(48) %i.l) #21
          to label %bb.h unwind label %bb.aa, !dbg !14566, !noalias !14182, !inline_history !13414

._crit_edge:                                      ; preds = %bb.g, %bb.d
  store i64 -1, ptr %0, align 8, !dbg !14611, !alias.scope !14130
  br label %bb.ad, !dbg !14612

.lr.ph420:                                        ; preds = %.lr.ph420.preheader, %bb.g
  %.sroa.510.0.i245419 = phi i32 [ %.sroa.510.1.i, %bb.g ], [ %i.ak, %.lr.ph420.preheader ]
  %.sroa.04.0.i246418 = phi i32 [ %i.cs, %bb.g ], [ %i.ah, %.lr.ph420.preheader ]
  %.sroa.0.0.i247417 = phi i64 [ %.sroa.419.0.copyload.i, %bb.g ], [ %4, %.lr.ph420.preheader ] ; 2 uses
    #dbg_value(i32 %.sroa.510.0.i245419, !14152, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13362)
    #dbg_value(i32 %.sroa.04.0.i246418, !14140, !DIExpression(), !13335)
    #dbg_value(i64 %.sroa.0.0.i247417, !14033, !DIExpression(), !13555)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !14543, !noalias !14178
  invoke fastcc void @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta14reverse_suffix23strip_literal_suffix_at(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 1, -9223372036854775808) %3, i64 noundef %.sroa.0.0.i247417)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14543, !noalias !14182, !inline_history !13414

bb.ad:                                            ; preds = %bb.bc, %bb.ai, %._crit_edge
    #dbg_value(ptr %i.p, !1422, !DIExpression(), !13557)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit119 unwind label %bb.ae, !dbg !14613, !noalias !14182

bb.ae:                                            ; preds = %bb.ad
  %i.co = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.p, !1427, !DIExpression(), !13559)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.af, !dbg !14614, !noalias !14182

bb.af:                                            ; preds = %bb.ae
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14613, !noalias !14182
  unreachable, !dbg !14613

common.resume:                                    ; preds = %.thread151, %bb.cf, %bb.bj, %bb.h, %.thread, %.body106, %bb.k, %bb.ae, %bb.bv
  %common.resume.op = phi { ptr, i32 } [ %i.ga, %bb.cf ], [ %i.co, %bb.ae ], [ %.pn.i, %bb.k ], [ %i.fr, %bb.bv ], [ %lpad.loopexit.i, %bb.bj ], [ %.pn71.i139, %.thread ], [ %.pn.i146, %bb.h ], [ %.pn.i120, %.body106 ], [ %.pn89155, %.thread151 ]
  resume { ptr, i32 } %common.resume.op, !dbg !14077

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit119: ; preds = %bb.ad
    #dbg_value(ptr %i.p, !1427, !DIExpression(), !13561)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !dbg !14615, !noalias !14182
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta14reverse_suffix31strip_repetition_literal_suffix.exit, !dbg !14608

bb.ag:                                            ; preds = %.lr.ph420
  %i.cq = load i64, ptr %i.n, align 8, !dbg !14616, !range !3102, !noalias !14178, !noundef !894
  %.not70.i = icmp eq i64 %i.cq, -1, !dbg !14616
  br i1 %.not70.i, label %bb.ai, label %bb.ah, !dbg !14617

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !14618, !noalias !14178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !dbg !14619, !noalias !14178
  %.sroa.419.0.copyload.i = load i64, ptr %.sroa.419.0..sroa_idx.i, align 8, !dbg !14619, !noalias !14178 ; 3 uses
    #dbg_value(i64 %.sroa.419.0.copyload.i, !14044, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !13562)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !14620, !noalias !14178
    #dbg_value(i64 %.sroa.419.0.copyload.i, !14028, !DIExpression(), !13320)
    #dbg_value(i64 %.sroa.419.0.copyload.i, !14031, !DIExpression(), !13321)
    #dbg_value(i64 %.sroa.419.0.copyload.i, !14035, !DIExpression(), !13322)
  %i.cr = icmp eq i64 %.sroa.419.0.copyload.i, %.sroa.0.0.i247417, !dbg !14621
  br i1 %i.cr, label %bb.ak, label %bb.aj, !dbg !14621

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !14620, !noalias !14178
  store i64 -1, ptr %0, align 8, !dbg !14622, !alias.scope !14130
  br label %bb.ad, !dbg !14623

bb.aj:                                            ; preds = %bb.ah
  %i.cs = add i32 %.sroa.04.0.i246418, -1, !dbg !14624 ; 3 uses
    #dbg_value(i32 %i.cs, !14029, !DIExpression(), !13360)
    #dbg_value(i32 %i.cs, !14140, !DIExpression(), !13335)
  %i.ct = call i32 @llvm.usub.sat.i32(i32 %.sroa.510.0.i245419, i32 1), !dbg !14625
  %.sroa.510.1.i = select i1 %i.ao, i32 %i.ct, i32 undef, !dbg !14625 ; 2 uses
    #dbg_value(i32 %i.ai, !14152, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13362)
    #dbg_value(i32 %i.ai, !14030, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13361)
    #dbg_value(i32 %.sroa.510.1.i, !14152, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13362)
    #dbg_value(i32 %.sroa.510.1.i, !14030, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13361)
  %i.cu = load i64, ptr %i.o, align 8, !dbg !14626, !range !1677, !noalias !14178, !noundef !894 ; 2 uses
  %i.cv = icmp ne i64 %i.cu, 4, !dbg !14626
  call void @llvm.assume(i1 %i.cv), !dbg !14626
  %i.cw = icmp eq i64 %i.cu, 2, !dbg !14627
  br i1 %i.cw, label %bb.au, label %bb.aq, !dbg !14627

bb.ak:                                            ; preds = %bb.ah
  store i64 -1, ptr %0, align 8, !dbg !14628, !alias.scope !14130
    #dbg_value(ptr %i.o, !1607, !DIExpression(), !13566)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %bb.am unwind label %bb.al, !dbg !14629, !noalias !14182, !inline_history !13413

bb.al:                                            ; preds = %bb.ak
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o) #21
          to label %bb.ap unwind label %bb.ao, !dbg !14629, !noalias !14182, !inline_history !13413

bb.am:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %bb.bc unwind label %bb.an, !dbg !14629, !noalias !14182, !inline_history !13413

bb.an:                                            ; preds = %bb.am
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14629, !noalias !14182, !inline_history !13413
  unreachable, !dbg !14629

bb.ap:                                            ; preds = %bb.an, %bb.al
  %.pn.i111 = phi { ptr, i32 } [ %i.cy, %bb.an ], [ %i.cx, %bb.al ]
  %.val3.i112 = load ptr, ptr %i.ap, align 8, !dbg !14629, !alias.scope !14314, !noalias !14182, !nonnull !894, !noundef !894
    #dbg_value(ptr poison, !1613, !DIExpression(), !13570)
    #dbg_value(ptr poison, !1620, !DIExpression(), !13572)
    #dbg_value(ptr poison, !1627, !DIExpression(), !13574)
    #dbg_value(ptr %.val3.i112, !1630, !DIExpression(), !13575)
    #dbg_value(i64 8, !1631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13576)
    #dbg_value(i64 80, !1631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13576)
    #dbg_value(ptr poison, !1644, !DIExpression(), !13578)
    #dbg_value(ptr poison, !1651, !DIExpression(), !13580)
    #dbg_value(ptr %.val3.i112, !1648, !DIExpression(), !13578)
    #dbg_value(ptr %.val3.i112, !1654, !DIExpression(), !13580)
    #dbg_value(ptr %.val3.i112, !1657, !DIExpression(), !13582)
    #dbg_value(ptr %.val3.i112, !1663, !DIExpression(), !13584)
    #dbg_value(i64 8, !1649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13578)
    #dbg_value(i64 8, !1655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13580)
    #dbg_value(i64 8, !1661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(i64 8, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13584)
    #dbg_value(i64 80, !1649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13578)
    #dbg_value(i64 80, !1655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13580)
    #dbg_value(i64 80, !1661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 80, !1664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13584)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i112, i64 noundef 80, i64 noundef 8) #23, !dbg !14630, !noalias !14182, !inline_history !13413
  br label %.thread, !dbg !14629

bb.aq:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.p, !14136, !DIExpression(), !13585)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !14631, !noalias !14178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !dbg !14631, !noalias !14178
    #dbg_value(ptr %i.p, !14288, !DIExpression(), !13587)
    #dbg_value(ptr %i.p, !14296, !DIExpression(), !13589)
    #dbg_declare(ptr %i.m, !14292, !DIExpression(), !13590)
    #dbg_value(i64 48, !14298, !DIExpression(), !13593)
  %i.da = load i64, ptr %i.am, align 8, !dbg !14632, !alias.scope !14315, !noalias !14182, !noundef !894 ; 3 uses
    #dbg_value(i64 %i.da, !14293, !DIExpression(), !13596)
    #dbg_value(i64 %i.da, !14303, !DIExpression(), !13598)
    #dbg_value(ptr %i.p, !14301, !DIExpression(), !13599)
  %i.db = load i64, ptr %i.p, align 8, !dbg !14633, !range !2500, !alias.scope !14315, !noalias !14182, !noundef !894
  %i.dc = icmp eq i64 %i.da, %i.db, !dbg !14634
  br i1 %i.dc, label %bb.ar, label %bb.ba, !dbg !14634

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ba unwind label %bb.as, !dbg !14635, !noalias !14316

bb.as:                                            ; preds = %bb.ar
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #21
          to label %.thread unwind label %bb.at, !dbg !14636, !noalias !14182

bb.at:                                            ; preds = %bb.as
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14637, !noalias !14182
  unreachable, !dbg !14637

bb.au:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.o, !1607, !DIExpression(), !13602)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %bb.aw unwind label %bb.av, !dbg !14638, !noalias !14182, !inline_history !13413

bb.av:                                            ; preds = %bb.au
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o) #21
          to label %bb.az unwind label %bb.ay, !dbg !14638, !noalias !14182, !inline_history !13413

bb.aw:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit108 unwind label %bb.ax, !dbg !14638, !noalias !14182, !inline_history !13413

bb.ax:                                            ; preds = %bb.aw
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.av
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14638, !noalias !14182, !inline_history !13413
  unreachable, !dbg !14638

bb.az:                                            ; preds = %bb.ax, %bb.av
  %.pn.i103 = phi { ptr, i32 } [ %i.dg, %bb.ax ], [ %i.df, %bb.av ]
  %.val3.i104 = load ptr, ptr %i.ap, align 8, !dbg !14638, !alias.scope !14317, !noalias !14182, !nonnull !894, !noundef !894
    #dbg_value(ptr poison, !1613, !DIExpression(), !13606)
    #dbg_value(ptr poison, !1620, !DIExpression(), !13608)
    #dbg_value(ptr poison, !1627, !DIExpression(), !13610)
    #dbg_value(ptr %.val3.i104, !1630, !DIExpression(), !13611)
    #dbg_value(i64 8, !1631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13612)
    #dbg_value(i64 80, !1631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13612)
    #dbg_value(ptr poison, !1644, !DIExpression(), !13614)
    #dbg_value(ptr poison, !1651, !DIExpression(), !13616)
    #dbg_value(ptr %.val3.i104, !1648, !DIExpression(), !13614)
    #dbg_value(ptr %.val3.i104, !1654, !DIExpression(), !13616)
    #dbg_value(ptr %.val3.i104, !1657, !DIExpression(), !13618)
    #dbg_value(ptr %.val3.i104, !1663, !DIExpression(), !13620)
    #dbg_value(i64 8, !1649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13614)
    #dbg_value(i64 8, !1655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13616)
    #dbg_value(i64 8, !1661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13618)
    #dbg_value(i64 8, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13620)
    #dbg_value(i64 80, !1649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13614)
    #dbg_value(i64 80, !1655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13616)
    #dbg_value(i64 80, !1661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13618)
    #dbg_value(i64 80, !1664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13620)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i104, i64 noundef 80, i64 noundef 8) #23, !dbg !14639, !noalias !14182, !inline_history !13413
  br label %.thread, !dbg !14638

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit108: ; preds = %bb.aw
  %.val.i105 = load ptr, ptr %i.ap, align 8, !dbg !14638, !alias.scope !14317, !noalias !14182, !nonnull !894, !noundef !894
    #dbg_value(ptr poison, !1613, !DIExpression(), !13622)
    #dbg_value(ptr poison, !1620, !DIExpression(), !13624)
    #dbg_value(ptr poison, !1627, !DIExpression(), !13626)
    #dbg_value(ptr %.val.i105, !1630, !DIExpression(), !13627)
    #dbg_value(i64 8, !1631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13628)
    #dbg_value(i64 80, !1631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13628)
    #dbg_value(ptr poison, !1644, !DIExpression(), !13630)
    #dbg_value(ptr poison, !1651, !DIExpression(), !13632)
    #dbg_value(ptr %.val.i105, !1648, !DIExpression(), !13630)
    #dbg_value(ptr %.val.i105, !1654, !DIExpression(), !13632)
    #dbg_value(ptr %.val.i105, !1657, !DIExpression(), !13634)
    #dbg_value(ptr %.val.i105, !1663, !DIExpression(), !13636)
    #dbg_value(i64 8, !1649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13630)
    #dbg_value(i64 8, !1655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13632)
    #dbg_value(i64 8, !1661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13634)
    #dbg_value(i64 8, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13636)
    #dbg_value(i64 80, !1649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13630)
    #dbg_value(i64 80, !1655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13632)
    #dbg_value(i64 80, !1661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13634)
    #dbg_value(i64 80, !1664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13636)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i105, i64 noundef 80, i64 noundef 8) #23, !dbg !14640, !noalias !14182, !inline_history !13413
  br label %bb.bb, !dbg !14638

bb.ba:                                            ; preds = %bb.ar, %bb.aq
  %i.di = load ptr, ptr %i.al, align 8, !dbg !14641, !alias.scope !14315, !noalias !14182, !nonnull !894, !noundef !894
    #dbg_value(ptr %i.di, !14304, !DIExpression(), !13598)
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %i.da, !dbg !14642
    #dbg_value(ptr %i.dj, !14294, !DIExpression(), !13643)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !14643, !noalias !14182
  %i.dk = add i64 %i.da, 1, !dbg !14644
  store i64 %i.dk, ptr %i.am, align 8, !dbg !14644, !alias.scope !14315, !noalias !14182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !14645, !noalias !14178
  br label %bb.bb, !dbg !14646

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata.exit108, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !14646, !noalias !14178
    #dbg_value(i64 %.sroa.419.0.copyload.i, !14035, !DIExpression(), !13322)
    #dbg_value(i64 %.sroa.419.0.copyload.i, !14031, !DIExpression(), !13321)
    #dbg_value(i64 %.sroa.419.0.copyload.i, !14028, !DIExpression(), !13320)
    #dbg_value(i32 %i.cs, !14140, !DIExpression(), !13335)
    #dbg_value(i32 %i.cs, !14029, !DIExpression(), !13360)
    #dbg_value(i32 %i.ai, !14152, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13362)
    #dbg_value(i32 %i.ai, !14030, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13361)
    #dbg_value(i32 %.sroa.510.1.i, !14152, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13362)
    #dbg_value(i32 %.sroa.510.1.i, !14030, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13361)
  %.not.i = icmp eq i64 %.sroa.419.0.copyload.i, 0, !dbg !14647
  br i1 %.not.i, label %bb.e, label %bb.g, !dbg !14647

bb.bc:                                            ; preds = %bb.am
end_hunk_0
