Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/main?download=true
inline.NumInlined: 13087
inline.NumDeleted: 5245
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__insert_with_sizeB8ne180100INS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EESF_NSD_IPKS8_EET_T0_l:bb.a
.lr.ph.i38.prol.loopexit:                         ; preds = %.lr.ph.i38.prol, %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit
  %.sroa.0.012.i.unr = phi ptr [ %i.cw, %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit ], [ %i.dh, %.lr.ph.i38.prol ]
  %.sroa.08.011.i.unr = phi ptr [ %2, %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit ], [ %i.di, %.lr.ph.i38.prol ]
  %i.dj = icmp ult i64 %i.cz, 56
  br i1 %i.dj, label %.unr-lcssa, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.prol.loopexit, %.lr.ph.i38
  %.sroa.0.012.i = phi ptr [ %i.dw, %.lr.ph.i38 ], [ %.sroa.0.012.i.unr, %.lr.ph.i38.prol.loopexit ] ; 7 uses
  %.sroa.08.011.i = phi ptr [ %i.dx, %.lr.ph.i38 ], [ %.sroa.08.011.i.unr, %.lr.ph.i38.prol.loopexit ] ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.012.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.08.011.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.08.011.i, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 48
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !286
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !286
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dp, ptr noundef nonnull align 8 dereferenceable(56) %i.dq, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dq, i8 0, i64 24, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 80
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 80 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 104
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 104
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !286
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !286
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 112 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 112
  %.not.i39.1 = icmp eq ptr %i.dw, %i.cy
  br i1 %.not.i39.1, label %.unr-lcssa, label %.lr.ph.i38, !llvm.loop !1508

.unr-lcssa:                                       ; preds = %.lr.ph.i38, %.lr.ph.i38.prol.loopexit
  %i.dy = load ptr, ptr %0, align 8, !tbaa !542   ; 2 uses
  %.not12.i.i = icmp eq ptr %1, %i.dy
  br i1 %.not12.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEENS_16reverse_iteratorIPS8_EESC_SC_EET2_RT_T0_T1_SD_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.unr-lcssa, %.lr.ph.i.i
  %i.dz = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.cw, %.unr-lcssa ] ; 3 uses
  %.sroa.18.013.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %i.e, %.unr-lcssa ] ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -56 ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -56 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ea, ptr noundef nonnull align 8 dereferenceable(56) %i.eb, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, i8 0, i64 24, i1 false)
  %i.ec = getelementptr inbounds i8, ptr %i.dz, i64 -32
  %i.ed = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 24, i1 false)
  %i.ee = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.ef = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !286
  store i32 %i.eg, ptr %i.ee, align 8, !tbaa !286
  %.not.i.i = icmp eq ptr %i.eb, %i.dy
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEENS_16reverse_iteratorIPS8_EESC_SC_EET2_RT_T0_T1_SD_.exit.i, label %.lr.ph.i.i, !llvm.loop !49

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEENS_16reverse_iteratorIPS8_EESC_SC_EET2_RT_T0_T1_SD_.exit.i: ; preds = %.lr.ph.i.i, %.unr-lcssa
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.cw, %.unr-lcssa ], [ %i.ea, %.lr.ph.i.i ]
  %i.eh = load ptr, ptr %i.i, align 8, !tbaa !538 ; 3 uses
  %.not8.i.i = icmp eq ptr %1, %i.eh
  br i1 %.not8.i.i, label %bb.m, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEENS_16reverse_iteratorIPS8_EESC_SC_EET2_RT_T0_T1_SD_.exit.i, %.lr.ph.i14.i
  %.010.i.i = phi ptr [ %i.en, %.lr.ph.i14.i ], [ %i.e, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEENS_16reverse_iteratorIPS8_EESC_SC_EET2_RT_T0_T1_SD_.exit.i ] ; 5 uses
  %storemerge9.i.i = phi ptr [ %i.eo, %.lr.ph.i14.i ], [ %i.cy, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEENS_16reverse_iteratorIPS8_EESC_SC_EET2_RT_T0_T1_SD_.exit.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %storemerge9.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.010.i.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.010.i.i, i8 0, i64 24, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %storemerge9.i.i, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %storemerge9.i.i, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 48
  %i.em = load i32, ptr %i.el, align 8, !tbaa !286
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !286
  %i.en = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 56 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %storemerge9.i.i, i64 56 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.en, %i.eh
  br i1 %.not.i15.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEPS8_SA_SA_EET2_RT_T0_T1_SB_.exit.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !1509

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEPS8_SA_SA_EET2_RT_T0_T1_SB_.exit.loopexit.i: ; preds = %.lr.ph.i14.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !539
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEPS8_SA_SA_EET2_RT_T0_T1_SB_.exit.loopexit.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEENS_16reverse_iteratorIPS8_EESC_SC_EET2_RT_T0_T1_SD_.exit.i
  %i.ep = phi ptr [ %i.eh, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEENS_16reverse_iteratorIPS8_EESC_SC_EET2_RT_T0_T1_SD_.exit.i ], [ %.pre, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEPS8_SA_SA_EET2_RT_T0_T1_SB_.exit.loopexit.i ] ; 2 uses
  %storemerge.lcssa.i.i = phi ptr [ %i.cy, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEENS_16reverse_iteratorIPS8_EESC_SC_EET2_RT_T0_T1_SD_.exit.i ], [ %i.eo, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEPS8_SA_SA_EET2_RT_T0_T1_SB_.exit.loopexit.i ]
  %i.eq = load ptr, ptr %0, align 8, !tbaa !539   ; 5 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !539
  store ptr %storemerge.lcssa.i.i, ptr %i.i, align 8, !tbaa !539
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !539
  store ptr %i.cx, ptr %i.g, align 8, !tbaa !539
  %.not2.i.i.i.i = icmp eq ptr %i.eq, %i.ep
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i.i
  %i.es = phi ptr [ %i.et, %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i.i ], [ %i.ep, %bb.m ] ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -56 ; 4 uses
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 -32 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 8
  %i.ew = trunc i8 %i.ev to i1
  br i1 %i.ew, label %bb.n, label %_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ex = getelementptr inbounds i8, ptr %i.es, i64 -16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !104
  %i.ez = load i64, ptr %i.eu, align 8
  %i.fa = and i64 %i.ez, -2
  tail call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fa) #43
  br label %_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.fb = load i8, ptr %i.et, align 8
  %i.fc = trunc i8 %i.fb to i1
  br i1 %i.fc, label %bb.o, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i.i

bb.o:                                             ; preds = %_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.fd = getelementptr inbounds i8, ptr %i.es, i64 -40
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !104
  %i.ff = load i64, ptr %i.et, align 8
  %i.fg = and i64 %i.ff, -2
  tail call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fg) #43
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i.i: ; preds = %bb.o, %_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.eq, %i.et
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i.i, %bb.m
  %.not.i41 = icmp eq ptr %i.eq, null
  br i1 %.not.i41, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_jEEEEEEESB_EET0_T_SF_SE_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i
  %i.fh = ptrtoint ptr %i.er to i64
  %i.fi = ptrtoint ptr %i.eq to i64
  %i.fj = sub i64 %i.fh, %i.fi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.fj) #43
  br label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_jEEEEEEESB_EET0_T_SF_SE_.exit

_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_jEEEEEEESB_EET0_T_SF_SE_.exit: ; preds = %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i, %bb.p, %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE12__move_rangeEPS8_SB_SB_.exit, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit, %bb.a
  %.035 = phi ptr [ %i.e, %bb.a ], [ %i.cw, %bb.p ], [ %i.e, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit ], [ %i.e, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE12__move_rangeEPS8_SB_SB_.exit ], [ %i.cw, %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit.i ], [ %i.e, %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i ]
  ret ptr %.035
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPS3_EESA_EESA_NS8_IPKS3_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !547    ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 10 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args7CommandEEES5_EET0_T_S8_S7_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !549
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !548  ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.p ; 4 uses
  %i.t = ptrtoint ptr %3 to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %3, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit

_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit: ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v ; 3 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !548
  %i.x = icmp sgt i64 %i.q, 0
  br i1 %i.x, label %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args7CommandEEES5_EET0_T_S8_S7_.exit

_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit
  %.pre48 = ptrtoint ptr %i.w to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre48, %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %i.w, %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.j, %bb.c ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %i.s, %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %.pre-phi, %i.ab                ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.e, i64 %i.ac ; 5 uses
  %i.ae = icmp ult ptr %i.ad, %i.j
  br i1 %i.ae, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.af = shl i64 %4, 3
  %i.ag = add i64 %i.af, %i.l
  %i.ah = xor i64 %.pre-phi, -1
  %i.ai = add i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 136
  br i1 %min.iters.check, label %.lr.ph.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.al = shl i64 %4, 3
  %i.am = add i64 %i.al, %i.z
  %i.an = sub i64 %.pre-phi, %i.am
  %diff.check = icmp ugt i64 %i.an, -32
  br i1 %diff.check, label %.lr.ph.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.y, i64 %i.ao   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.y, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !581
  %wide.load60 = load <2 x ptr>, ptr %i.as, align 8, !tbaa !581
  %i.at = getelementptr i8, ptr %next.gep59, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep59, align 8, !tbaa !581
  store <2 x ptr> %wide.load60, ptr %i.at, align 8, !tbaa !581
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1510

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader62

.lr.ph.i.preheader62:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.01924.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.sroa.6.023.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.y, %.critedge ], [ %i.aq, %middle.block ], [ %i.ba, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !548
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.av = ashr exact i64 %i.ac, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ax, ptr align 8 %i.e, i64 %i.ac, i1 false)
  br label %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader62, %.lr.ph.i
  %.01924.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.01924.i.ph, %.lr.ph.i.preheader62 ] ; 2 uses
  %.sroa.6.023.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.sroa.6.023.i.ph, %.lr.ph.i.preheader62 ] ; 2 uses
  %i.ay = load ptr, ptr %.01924.i, align 8, !tbaa !581
  store ptr %i.ay, ptr %.sroa.6.023.i, align 8, !tbaa !581
  %i.az = getelementptr inbounds nuw i8, ptr %.01924.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 8 ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.j
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1511

_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit: ; preds = %._crit_edge.i, %bb.f
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, %2
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args7CommandEEES5_EET0_T_S8_S7_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit
  %i.bc = ptrtoint ptr %.sroa.0.0 to i64
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.e, ptr align 8 %2, i64 %i.be, i1 false)
  br label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args7CommandEEES5_EET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.b
  %i.bf = sub i64 %i.l, %i.c
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add i64 %i.bg, %4                       ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 2305843009213693951
  br i1 %i.bi, label %bb.i, label %_ZNKSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNKSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #41
  unreachable

_ZNKSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.h
  %i.bj = sub i64 %i.k, %i.c                      ; 2 uses
  %.not.i = icmp ult i64 %i.bj, 9223372036854775800
  %i.bk = ashr exact i64 %i.bj, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %i.bh)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.bl = icmp eq i64 %.0.i, 0
  br i1 %i.bl, label %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEEC2EmmS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.bm = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.bm, label %bb.k, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args7CommandEEEEEDaRT_m.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #41
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args7CommandEEEEEDaRT_m.exit.i: ; preds = %bb.j
  %i.bn = shl nuw i64 %.0.i, 3
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #42
  %.pre = load ptr, ptr %0, align 8, !tbaa !547
  br label %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEEC2EmmS6_.exit

_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %_ZNKSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args7CommandEEEEEDaRT_m.exit.i
  %i.bp = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args7CommandEEEEEDaRT_m.exit.i ], [ %i.a, %_ZNKSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 5 uses
  %storemerge.i = phi ptr [ %i.bo, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args7CommandEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 6 uses
  %.idx.i = shl nuw nsw i64 %4, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %.idx.i, i1 false), !tbaa !581
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %storemerge.i, i64 %.0.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %1, %i.bp
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args7CommandEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEEC2EmmS6_.exit, %.lr.ph.i.i.i.i.i.i.i
  %i.bt = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bq, %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEEC2EmmS6_.exit ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %i.e, %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEEC2EmmS6_.exit ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !581, !noalias !1521
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !581, !noalias !1521
  %.not.i.i.i.i.i.i.i41 = icmp eq ptr %i.bu, %i.bp
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args7CommandEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1520

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args7CommandEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.sroa.436.0.i.i.i.i.i.i = phi ptr [ %i.bq, %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.b                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args7CommandEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr align 8 %i.e, i64 %i.bz, i1 false)
  br label %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %bb.l, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args7CommandEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bz
  store ptr %.sroa.436.0.i.i.i.i.i.i, ptr %0, align 8, !tbaa !549
  store ptr %i.ca, ptr %i.i, align 8, !tbaa !549
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !549
  store ptr %i.br, ptr %i.g, align 8, !tbaa !549
  %.not.i42 = icmp eq ptr %i.bp, null
  br i1 %.not.i42, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args7CommandEEES5_EET0_T_S8_S7_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bp to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.ce) #43
  br label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args7CommandEEES5_EET0_T_S8_S7_.exit

_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args7CommandEEES5_EET0_T_S8_S7_.exit: ; preds = %bb.m, %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit, %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, %bb.g, %bb.a
  %.035 = phi ptr [ %i.e, %bb.a ], [ %i.e, %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit ], [ %i.e, %bb.g ], [ %i.e, %_ZNSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit ], [ %i.bq, %_ZNSt3__114__split_bufferIPN4args7CommandERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i ], [ %i.bq, %bb.m ]
  ret ptr %.035
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPN4args7CommandENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.7) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPS3_EESA_EESA_NS8_IPKS3_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !555    ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 10 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !556
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !554  ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.p ; 4 uses
  %i.t = ptrtoint ptr %3 to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %3, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit

_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit: ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v ; 3 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !554
  %i.x = icmp sgt i64 %i.q, 0
  br i1 %i.x, label %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit

_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit
  %.pre48 = ptrtoint ptr %i.w to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre48, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %i.w, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.j, %bb.c ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %i.s, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %.pre-phi, %i.ab                ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.e, i64 %i.ac ; 5 uses
  %i.ae = icmp ult ptr %i.ad, %i.j
  br i1 %i.ae, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.af = shl i64 %4, 3
  %i.ag = add i64 %i.af, %i.l
  %i.ah = xor i64 %.pre-phi, -1
  %i.ai = add i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 136
  br i1 %min.iters.check, label %.lr.ph.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.al = shl i64 %4, 3
  %i.am = add i64 %i.al, %i.z
  %i.an = sub i64 %.pre-phi, %i.am
  %diff.check = icmp ugt i64 %i.an, -32
  br i1 %diff.check, label %.lr.ph.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.y, i64 %i.ao   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.y, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !583
  %wide.load60 = load <2 x ptr>, ptr %i.as, align 8, !tbaa !583
  %i.at = getelementptr i8, ptr %next.gep59, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep59, align 8, !tbaa !583
  store <2 x ptr> %wide.load60, ptr %i.at, align 8, !tbaa !583
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1522

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader62

.lr.ph.i.preheader62:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.01924.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.sroa.6.023.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.y, %.critedge ], [ %i.aq, %middle.block ], [ %i.ba, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !554
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.av = ashr exact i64 %i.ac, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ax, ptr align 8 %i.e, i64 %i.ac, i1 false)
  br label %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader62, %.lr.ph.i
  %.01924.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.01924.i.ph, %.lr.ph.i.preheader62 ] ; 2 uses
  %.sroa.6.023.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.sroa.6.023.i.ph, %.lr.ph.i.preheader62 ] ; 2 uses
  %i.ay = load ptr, ptr %.01924.i, align 8, !tbaa !583
  store ptr %i.ay, ptr %.sroa.6.023.i, align 8, !tbaa !583
  %i.az = getelementptr inbounds nuw i8, ptr %.01924.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 8 ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.j
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1523

_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit: ; preds = %._crit_edge.i, %bb.f
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, %2
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit
  %i.bc = ptrtoint ptr %.sroa.0.0 to i64
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.e, ptr align 8 %2, i64 %i.be, i1 false)
  br label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.b
  %i.bf = sub i64 %i.l, %i.c
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add i64 %i.bg, %4                       ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 2305843009213693951
  br i1 %i.bi, label %bb.i, label %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #41
  unreachable

_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.h
  %i.bj = sub i64 %i.k, %i.c                      ; 2 uses
  %.not.i = icmp ult i64 %i.bj, 9223372036854775800
  %i.bk = ashr exact i64 %i.bj, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %i.bh)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.bl = icmp eq i64 %.0.i, 0
  br i1 %i.bl, label %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.bm = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.bm, label %bb.k, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #41
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i: ; preds = %bb.j
  %i.bn = shl nuw i64 %.0.i, 3
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #42
  %.pre = load ptr, ptr %0, align 8, !tbaa !555
  br label %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit

_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i
  %i.bp = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i ], [ %i.a, %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 5 uses
  %storemerge.i = phi ptr [ %i.bo, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 6 uses
  %.idx.i = shl nuw nsw i64 %4, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %.idx.i, i1 false), !tbaa !583
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %storemerge.i, i64 %.0.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %1, %i.bp
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit, %.lr.ph.i.i.i.i.i.i.i
  %i.bt = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bq, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %i.e, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !583, !noalias !1533
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !583, !noalias !1533
  %.not.i.i.i.i.i.i.i41 = icmp eq ptr %i.bu, %i.bp
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1532

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.sroa.436.0.i.i.i.i.i.i = phi ptr [ %i.bq, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !554 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.b                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr align 8 %i.e, i64 %i.bz, i1 false)
  br label %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %bb.l, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bz
  store ptr %.sroa.436.0.i.i.i.i.i.i, ptr %0, align 8, !tbaa !556
  store ptr %i.ca, ptr %i.i, align 8, !tbaa !556
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !556
  store ptr %i.br, ptr %i.g, align 8, !tbaa !556
  %.not.i42 = icmp eq ptr %i.bp, null
  br i1 %.not.i42, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bp to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.ce) #43
  br label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit

_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit: ; preds = %bb.m, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, %bb.g, %bb.a
  %.035 = phi ptr [ %i.e, %bb.a ], [ %i.e, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit ], [ %i.e, %bb.g ], [ %i.e, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit ], [ %i.bq, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i ], [ %i.bq, %bb.m ]
  ret ptr %.035
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.7) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__insert_with_sizeB8ne180100INS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EESD_NSB_IPKS6_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 9 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEES9_EET0_T_SD_SC_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101  ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 3 uses
end_hunk_0
