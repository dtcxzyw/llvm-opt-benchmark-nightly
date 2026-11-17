Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.10?download=true
inline.NumInlined: 13523
inline.NumDeleted: 3839
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_RNvMs9_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_12DtypeVisitor9visit_rec:bb.a
  br i1 %.not230, label %bb.dv, label %bb.dt, !dbg !119653

bb.dt:                                            ; preds = %bb.ds
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !119654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.iu, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !dbg !119655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !119656
  store i64 1, ptr %0, align 16, !dbg !119654
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.ir) #56
          to label %bb.dy unwind label %bb.du, !dbg !119657, !noalias !119389, !inline_history !5996

bb.du:                                            ; preds = %bb.dt
  %i.iv = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ir, i64 noundef 48, i64 noundef 16) #49, !dbg !119658, !noalias !119389, !inline_history !5996
  br label %.body315, !dbg !119657

bb.dv:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !119656
  %i.iw = ptrtoint ptr %i.ir to i64, !dbg !119659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !119651
  br label %bb.af, !dbg !119651

bb.dw:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !119398
  br label %bb.dp, !dbg !119399

bb.dx:                                            ; preds = %bb.dp
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %2), !dbg !119399
  br label %bb.cu, !dbg !119399

.body315:                                         ; preds = %bb.du, %bb.dr
  %.pn231 = phi { ptr, i32 } [ %i.is, %bb.dr ], [ %i.iv, %bb.du ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceEBM_(ptr nonnull %i.in, ptr nonnull %i.ip) #51
          to label %.thread355 unwind label %bb.y, !dbg !119651

bb.dy:                                            ; preds = %bb.dt
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ir, i64 noundef 48, i64 noundef 16) #49, !dbg !119660, !noalias !119389, !inline_history !5996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !119651
  %i.ix = load ptr, ptr %i.ip, align 8, !dbg !119661, !invariant.load !5453 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ix, null, !dbg !119661
  br i1 %.not.i.i, label %bb.ea, label %bb.dz, !dbg !119661

bb.dz:                                            ; preds = %bb.dy
  invoke void %i.ix(ptr noundef nonnull %i.in)
          to label %bb.ea unwind label %bb.ec, !dbg !119661

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ip, i64 8, !dbg !119662
  %i.iz = load i64, ptr %i.iy, align 8, !dbg !119662, !range !5687, !invariant.load !5453 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 0, !dbg !119663
  br i1 %i.ja, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceEBM_.exit, label %bb.eb, !dbg !119663

bb.eb:                                            ; preds = %bb.ea
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ip, i64 16, !dbg !119662
  %i.jc = load i64, ptr %i.jb, align 8, !dbg !119664, !range !5979, !invariant.load !5453
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.in, i64 noundef range(i64 1, -9223372036854775808) %i.iz, i64 noundef range(i64 1, 536870913) %i.jc) #49, !dbg !119665
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceEBM_.exit, !dbg !119666

bb.ec:                                            ; preds = %bb.dz
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 8, !dbg !119667
  %i.jf = load i64, ptr %i.je, align 8, !dbg !119667, !range !5687, !invariant.load !5453 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 0, !dbg !119668
  br i1 %i.jg, label %.thread355, label %bb.ed, !dbg !119668

bb.ed:                                            ; preds = %bb.ec
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ip, i64 16, !dbg !119667
  %i.ji = load i64, ptr %i.jh, align 8, !dbg !119669, !range !5979, !invariant.load !5453
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.in, i64 noundef range(i64 1, -9223372036854775808) %i.jf, i64 noundef range(i64 1, 536870913) %i.ji) #49, !dbg !119670
  br label %.thread355, !dbg !119671

bb.ee:                                            ; preds = %bb.cv
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %2), !dbg !119399
  br label %bb.cu, !dbg !119399

.critedge:                                        ; preds = %.invoke443, %bb.ej, %.thread355, %bb.ek, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.k
  %.pn252339 = phi { ptr, i32 } [ %.pn252340, %bb.ej ], [ %.pn252340, %.thread355 ], [ %.pn252340, %.invoke443 ], [ %lpad.thr_comm.split-lp391, %bb.k ], [ %.pn252340, %bb.ek ], [ %.pn252340, %bb.ef ], [ %.pn252340, %bb.eg ], [ %.pn252340, %bb.ei ], [ %.pn252340, %bb.eh ]
  resume { ptr, i32 } %.pn252339, !dbg !119442

.thread355:                                       ; preds = %bb.dm, %bb.dn, %.body, %bb.av, %bb.v, %bb.as, %.body315, %.thread407, %bb.cn, %bb.az, %bb.ab, %bb.ed, %bb.ec, %bb.cq, %bb.bn, %.thread381, %.thread348, %.thread341, %bb.k
  %.pn252340 = phi { ptr, i32 } [ %i.jd, %bb.ed ], [ %lpad.thr_comm.split-lp391, %bb.k ], [ %i.cl, %.thread341 ], [ %i.dx, %.thread348 ], [ %lpad.thr_comm, %.thread381 ], [ %i.fe, %bb.bn ], [ %i.gu, %bb.cq ], [ %i.jd, %bb.ec ], [ %eh.lpad-body, %.body ], [ %.pn231, %.body315 ], [ %.pn239, %.thread407 ], [ %i.gr, %bb.cn ], [ %i.ci, %bb.ab ], [ %i.du, %bb.az ], [ %i.do, %bb.av ], [ %i.bo, %bb.v ], [ %i.dl, %bb.as ], [ %i.ih, %bb.dn ], [ %i.ih, %bb.dm ] ; 8 uses
  %.sroa.0216.0338 = phi i1 [ true, %bb.ed ], [ true, %bb.k ], [ true, %.thread341 ], [ false, %.thread348 ], [ %.sroa.0216.1.ph, %.thread381 ], [ true, %bb.bn ], [ true, %bb.cq ], [ true, %bb.ec ], [ true, %.body ], [ true, %.body315 ], [ true, %.thread407 ], [ true, %bb.cn ], [ true, %bb.ab ], [ false, %bb.az ], [ true, %bb.av ], [ true, %bb.v ], [ true, %bb.as ], [ true, %bb.dn ], [ true, %bb.dm ]
  %.sroa.0215.0337 = phi i1 [ true, %bb.ed ], [ true, %bb.k ], [ false, %.thread341 ], [ true, %.thread348 ], [ %.sroa.0215.1.ph, %.thread381 ], [ true, %bb.bn ], [ true, %bb.cq ], [ true, %bb.ec ], [ true, %.body ], [ true, %.body315 ], [ true, %.thread407 ], [ true, %bb.cn ], [ false, %bb.ab ], [ true, %bb.az ], [ true, %bb.av ], [ true, %bb.v ], [ true, %bb.as ], [ true, %bb.dn ], [ true, %bb.dm ]
  %.sroa.0214.0336 = phi i1 [ true, %bb.ed ], [ %i.az, %bb.k ], [ true, %.thread341 ], [ true, %.thread348 ], [ %.sroa.0214.1.ph, %.thread381 ], [ true, %bb.bn ], [ false, %bb.cq ], [ true, %bb.ec ], [ true, %.body ], [ true, %.body315 ], [ true, %.thread407 ], [ false, %bb.cn ], [ true, %bb.ab ], [ true, %bb.az ], [ true, %bb.av ], [ true, %bb.v ], [ true, %bb.as ], [ true, %bb.dn ], [ true, %bb.dm ]
  %.sroa.0213.0335 = phi i1 [ false, %bb.ed ], [ true, %bb.k ], [ true, %.thread341 ], [ true, %.thread348 ], [ %.sroa.0213.1.ph, %.thread381 ], [ true, %bb.bn ], [ true, %bb.cq ], [ false, %bb.ec ], [ true, %.body ], [ false, %.body315 ], [ true, %.thread407 ], [ true, %bb.cn ], [ true, %bb.ab ], [ true, %bb.az ], [ true, %bb.av ], [ true, %bb.v ], [ true, %bb.as ], [ true, %bb.dn ], [ true, %bb.dm ]
  %i.jj = load i8, ptr %2, align 16, !dbg !119399, !range !5958, !noundef !5453
  switch i8 %i.jj, label %bb.ef [
    i8 31, label %.critedge
    i8 22, label %bb.eg
    i8 23, label %bb.eh
    i8 28, label %bb.ei
    i8 29, label %bb.ej
  ], !dbg !119399

bb.ef:                                            ; preds = %.thread355
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %2) #51
          to label %.critedge unwind label %bb.y, !dbg !119399

bb.eg:                                            ; preds = %.thread355
  br i1 %.sroa.0215.0337, label %.invoke443, label %.critedge, !dbg !119399

bb.eh:                                            ; preds = %.thread355
  br i1 %.sroa.0216.0338, label %.invoke443, label %.critedge, !dbg !119399

bb.ei:                                            ; preds = %.thread355
  br i1 %.sroa.0214.0336, label %bb.ek, label %.critedge, !dbg !119399

bb.ej:                                            ; preds = %.thread355
  br i1 %.sroa.0213.0335, label %bb.el, label %.critedge, !dbg !119399

bb.ek:                                            ; preds = %bb.ei
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !119399
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.jk) #51
          to label %.critedge unwind label %bb.y, !dbg !119399

bb.el:                                            ; preds = %bb.ej
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !119399
  %.val = load ptr, ptr %i.jl, align 8, !dbg !119399
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !119399
  %.val261 = load ptr, ptr %i.jm, align 16, !dbg !119399, !nonnull !5453, !align !5713, !noundef !5453
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceEBM_(ptr %.val, ptr nonnull %.val261) #51
          to label %.invoke443 unwind label %bb.y, !dbg !119399

.invoke443:                                       ; preds = %bb.el, %bb.eh, %bb.eg
  %.sink = phi i64 [ 8, %bb.eh ], [ 16, %bb.eg ], [ 24, %bb.el ]
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 %.sink, !dbg !119399
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEB1l_(ptr noalias noundef align 8 dereferenceable(8) %i.jn) #51
          to label %.critedge unwind label %bb.y, !dbg !119399
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1f_7float164pf16EEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !119672 !guid !119679 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionNtNtB1I_7float164pf16EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %1), !dbg !119682 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !119683
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !119684
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !119685
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !119685
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !119684
  %i.g = and i64 %i.a, 16383, !dbg !119686
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !119687 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !119687, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !119688
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !119689
  ret void, !dbg !119690
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1f_7float164pf16EEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !119691 !guid !119737 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !119745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119738), !dbg !119746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !119747, !alias.scope !119738
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !119748 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !119748, !noalias !119739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !119749, !noalias !119738
  br label %bb.b, !dbg !119750

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !119751
  %i.e = load i8, ptr %i.d, align 2, !dbg !119752, !alias.scope !119741, !noalias !119739, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !119753        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !119754
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !119754

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !119754 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !119754, !alias.scope !119738, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !119754
  store i32 %i.j, ptr %i.h, align 4, !dbg !119754, !alias.scope !119738
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !119751
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !119751
  %i.m = load i8, ptr %i.l, align 1, !dbg !119752, !alias.scope !119741, !noalias !119739, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !119753        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !119754
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !119754

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !119755    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !119754 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !119754, !alias.scope !119738, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !119754
  store i32 %i.s, ptr %i.q, align 4, !dbg !119754, !alias.scope !119738
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !119750
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1f_7float164pf16EEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !119750

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !119753
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !119754, !noalias !119739
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1f_7float164pf16EEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !119756, !noalias !119739
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !119757
  %i.u = load i32, ptr %i.t, align 4, !dbg !119757, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !119757
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !119758
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !119758 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !119759
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !119759
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !119759

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1f_7float164pf16EEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !119760
  br label %bb.g, !dbg !119761

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !119762 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !119763
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !119764 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !119765 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !119766 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !119767
  %i.af = fmul double %i.ac, %i.ae, !dbg !119766
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !119768 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !119769
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !119769

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !119770
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !119771
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !119772

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1f_7float164pf16EEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1f_7float164pf16EEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119763
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !119773
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !119773, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !119773
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !119773, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !119773
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !119773, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !119773
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !119773, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !119773
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !119773, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !119773
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !119773, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !119773
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !119773, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !119773
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !119773, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !119773
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !119773, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !119773
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !119773, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !119773
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !119773, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !119773
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !119773, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !119773
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !119773, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !119773
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !119773, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !119773
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !119773, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !119773
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !119773, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !119773
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !119773, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !119773
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !119773, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !119773
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !119773, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !119773
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !119773, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !119773
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !119773, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !119773
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !119773, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !119773
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !119773, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !119773
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !119773, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !119773
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !119773, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !119773
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !119773, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !119773
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !119773, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !119773
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !119773, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !119773
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !119773, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !119773
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !119773, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !119773
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !119773, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !119773
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !119773, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !119773
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !119773, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !119773
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !119773, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !119773
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !119773, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !119773
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !119773, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !119773
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !119773, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !119773
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !119773, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !119773
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !119773, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !119773
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !119773, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !119773
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !119773, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !119773
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !119773, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !119773
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !119773, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !119773
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !119773, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !119773
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !119773, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !119773
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !119773, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !119773
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !119773, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !119773
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !119773, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !119773
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !119773, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !119773
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !119773, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !119774, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !119774
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !119774 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !119775
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !119775

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119776 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119777 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119778 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !119779 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !119780
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !119781 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !119782
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !119783
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !119783

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !119784
  br label %bb.j, !dbg !119785

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119776
  %i.cs = uitofp i32 %i.ak to double, !dbg !119773
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !119786
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !119787
  %i.cv = uitofp i32 %i.al to double, !dbg !119773
  %i.cw = fadd double %i.cu, %i.cv, !dbg !119786
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !119787
  %i.cy = uitofp i32 %i.am to double, !dbg !119773
  %i.cz = fadd double %i.cx, %i.cy, !dbg !119786
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !119787
  %i.db = uitofp i32 %i.an to double, !dbg !119773
  %i.dc = fadd double %i.da, %i.db, !dbg !119786
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !119787
  %i.de = uitofp i32 %i.ao to double, !dbg !119773
  %i.df = fadd double %i.dd, %i.de, !dbg !119786
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !119787
  %i.dh = uitofp i32 %i.ap to double, !dbg !119773
  %i.di = fadd double %i.dg, %i.dh, !dbg !119786
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !119787
  %i.dk = uitofp i32 %i.aq to double, !dbg !119773
  %i.dl = fadd double %i.dj, %i.dk, !dbg !119786
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !119787
  %i.dn = uitofp i32 %i.ar to double, !dbg !119773
  %i.do = fadd double %i.dm, %i.dn, !dbg !119786
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !119787
  %i.dq = uitofp i32 %i.as to double, !dbg !119773
  %i.dr = fadd double %i.dp, %i.dq, !dbg !119786
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !119787
  %i.dt = uitofp i32 %i.at to double, !dbg !119773
  %i.du = fadd double %i.ds, %i.dt, !dbg !119786
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !119787
  %i.dw = uitofp i32 %i.au to double, !dbg !119773
  %i.dx = fadd double %i.dv, %i.dw, !dbg !119786
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !119787
  %i.dz = uitofp i32 %i.av to double, !dbg !119773
  %i.ea = fadd double %i.dy, %i.dz, !dbg !119786
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !119787
  %i.ec = uitofp i32 %i.aw to double, !dbg !119773
  %i.ed = fadd double %i.eb, %i.ec, !dbg !119786
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !119787
  %i.ef = uitofp i32 %i.ax to double, !dbg !119773
  %i.eg = fadd double %i.ee, %i.ef, !dbg !119786
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !119787
  %i.ei = uitofp i32 %i.ay to double, !dbg !119773
  %i.ej = fadd double %i.eh, %i.ei, !dbg !119786
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !119787
  %i.el = uitofp i32 %i.az to double, !dbg !119773
  %i.em = fadd double %i.ek, %i.el, !dbg !119786
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !119787
  %i.eo = uitofp i32 %i.ba to double, !dbg !119773
  %i.ep = fadd double %i.en, %i.eo, !dbg !119786
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !119787
  %i.er = uitofp i32 %i.bb to double, !dbg !119773
  %i.es = fadd double %i.eq, %i.er, !dbg !119786
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !119787
  %i.eu = uitofp i32 %i.bc to double, !dbg !119773
  %i.ev = fadd double %i.et, %i.eu, !dbg !119786
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !119787
  %i.ex = uitofp i32 %i.bd to double, !dbg !119773
  %i.ey = fadd double %i.ew, %i.ex, !dbg !119786
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !119787
  %i.fa = uitofp i32 %i.be to double, !dbg !119773
  %i.fb = fadd double %i.ez, %i.fa, !dbg !119786
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !119787
  %i.fd = uitofp i32 %i.bf to double, !dbg !119773
  %i.fe = fadd double %i.fc, %i.fd, !dbg !119786
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !119787
  %i.fg = uitofp i32 %i.bg to double, !dbg !119773
  %i.fh = fadd double %i.ff, %i.fg, !dbg !119786
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !119787
  %i.fj = uitofp i32 %i.bh to double, !dbg !119773
  %i.fk = fadd double %i.fi, %i.fj, !dbg !119786
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !119787
  %i.fm = uitofp i32 %i.bi to double, !dbg !119773
  %i.fn = fadd double %i.fl, %i.fm, !dbg !119786
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !119787
  %i.fp = uitofp i32 %i.bj to double, !dbg !119773
  %i.fq = fadd double %i.fo, %i.fp, !dbg !119786
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !119787
  %i.fs = uitofp i32 %i.bk to double, !dbg !119773
  %i.ft = fadd double %i.fr, %i.fs, !dbg !119786
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !119787
  %i.fv = uitofp i32 %i.bl to double, !dbg !119773
  %i.fw = fadd double %i.fu, %i.fv, !dbg !119786
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !119787
  %i.fy = uitofp i32 %i.bm to double, !dbg !119773
  %i.fz = fadd double %i.fx, %i.fy, !dbg !119786
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !119787
  %i.gb = uitofp i32 %i.bn to double, !dbg !119773
  %i.gc = fadd double %i.ga, %i.gb, !dbg !119786
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !119787
  %i.ge = uitofp i32 %i.bo to double, !dbg !119773
  %i.gf = fadd double %i.gd, %i.ge, !dbg !119786
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !119787
  %i.gh = uitofp i32 %i.bp to double, !dbg !119773
  %i.gi = fadd double %i.gg, %i.gh, !dbg !119786
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !119787
  %i.gk = uitofp i32 %i.bq to double, !dbg !119773
  %i.gl = fadd double %i.gj, %i.gk, !dbg !119786
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !119787
  %i.gn = uitofp i32 %i.br to double, !dbg !119773
  %i.go = fadd double %i.gm, %i.gn, !dbg !119786
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !119787
  %i.gq = uitofp i32 %i.bs to double, !dbg !119773
  %i.gr = fadd double %i.gp, %i.gq, !dbg !119786
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !119787
  %i.gt = uitofp i32 %i.bt to double, !dbg !119773
  %i.gu = fadd double %i.gs, %i.gt, !dbg !119786
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !119787
  %i.gw = uitofp i32 %i.bu to double, !dbg !119773
  %i.gx = fadd double %i.gv, %i.gw, !dbg !119786
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !119787
  %i.gz = uitofp i32 %i.bv to double, !dbg !119773
  %i.ha = fadd double %i.gy, %i.gz, !dbg !119786
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !119787
  %i.hc = uitofp i32 %i.bw to double, !dbg !119773
  %i.hd = fadd double %i.hb, %i.hc, !dbg !119786
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !119787
  %i.hf = uitofp i32 %i.bx to double, !dbg !119773
  %i.hg = fadd double %i.he, %i.hf, !dbg !119786
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !119787
  %i.hi = uitofp i32 %i.by to double, !dbg !119773
  %i.hj = fadd double %i.hh, %i.hi, !dbg !119786
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !119787
  %i.hl = uitofp i32 %i.bz to double, !dbg !119773
  %i.hm = fadd double %i.hk, %i.hl, !dbg !119786
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !119787
  %i.ho = uitofp i32 %i.ca to double, !dbg !119773
  %i.hp = fadd double %i.hn, %i.ho, !dbg !119786
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !119787
  %i.hr = uitofp i32 %i.cb to double, !dbg !119773
  %i.hs = fadd double %i.hq, %i.hr, !dbg !119786
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !119787
  %i.hu = uitofp i32 %i.cc to double, !dbg !119773
  %i.hv = fadd double %i.ht, %i.hu, !dbg !119786
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !119787
  %i.hx = uitofp i32 %i.cd to double, !dbg !119773
  %i.hy = fadd double %i.hw, %i.hx, !dbg !119786
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !119787
  %i.ia = uitofp i32 %i.ce to double, !dbg !119773
  %i.ib = fadd double %i.hz, %i.ia, !dbg !119786
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !119787
  %i.id = uitofp i32 %i.cf to double, !dbg !119773
  %i.ie = fadd double %i.ic, %i.id, !dbg !119786
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !119787
  %i.ig = uitofp i32 %i.cg to double, !dbg !119773
  %i.ih = fadd double %i.if, %i.ig, !dbg !119786
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !119787
  %i.ij = uitofp i32 %i.ch to double, !dbg !119773
  %i.ik = fadd double %i.ii, %i.ij, !dbg !119786
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !119787
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !119788
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !119789
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !119790
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !119789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !119791
  ret i64 %i.ip, !dbg !119792
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRShEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !119793 !guid !119800 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionRShEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !119803 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !119804
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !119805
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !119806
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !119806
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !119805
  %i.g = and i64 %i.a, 16383, !dbg !119807
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !119808 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !119808, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !119809
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !119810
  ret void, !dbg !119811
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRShEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !119812 !guid !119858 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !119866
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119859), !dbg !119867
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !119868, !alias.scope !119859
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !119869 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !119869, !noalias !119860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !119870, !noalias !119859
  br label %bb.b, !dbg !119871

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !119872
  %i.e = load i8, ptr %i.d, align 2, !dbg !119873, !alias.scope !119862, !noalias !119860, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !119874        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !119875
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !119875

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !119875 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !119875, !alias.scope !119859, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !119875
  store i32 %i.j, ptr %i.h, align 4, !dbg !119875, !alias.scope !119859
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !119872
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !119872
  %i.m = load i8, ptr %i.l, align 1, !dbg !119873, !alias.scope !119862, !noalias !119860, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !119874        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !119875
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !119875

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !119876    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !119875 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !119875, !alias.scope !119859, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !119875
  store i32 %i.s, ptr %i.q, align 4, !dbg !119875, !alias.scope !119859
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !119871
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRShEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !119871

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !119874
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !119875, !noalias !119860
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRShEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !119877, !noalias !119860
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !119878
  %i.u = load i32, ptr %i.t, align 4, !dbg !119878, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !119878
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !119879
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !119879 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !119880
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !119880
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !119880

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRShEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !119881
  br label %bb.g, !dbg !119882

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !119883 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !119884
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !119885 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !119886 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !119887 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !119888
  %i.af = fmul double %i.ac, %i.ae, !dbg !119887
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !119889 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !119890
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !119890

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !119891
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !119892
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !119893

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRShEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRShEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119884
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !119894
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !119894, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !119894
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !119894, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !119894
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !119894, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !119894
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !119894, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !119894
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !119894, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !119894
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !119894, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !119894
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !119894, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !119894
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !119894, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !119894
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !119894, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !119894
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !119894, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !119894
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !119894, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !119894
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !119894, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !119894
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !119894, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !119894
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !119894, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !119894
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !119894, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !119894
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !119894, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !119894
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !119894, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !119894
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !119894, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !119894
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !119894, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !119894
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !119894, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !119894
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !119894, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !119894
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !119894, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !119894
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !119894, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !119894
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !119894, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !119894
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !119894, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !119894
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !119894, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !119894
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !119894, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !119894
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !119894, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !119894
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !119894, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !119894
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !119894, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !119894
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !119894, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !119894
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !119894, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !119894
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !119894, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !119894
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !119894, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !119894
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !119894, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !119894
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !119894, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !119894
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !119894, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !119894
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !119894, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !119894
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !119894, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !119894
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !119894, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !119894
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !119894, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !119894
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !119894, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !119894
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !119894, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !119894
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !119894, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !119894
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !119894, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !119894
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !119894, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !119894
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !119894, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !119894
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !119894, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !119894
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !119894, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !119894
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !119894, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !119895, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !119895
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !119895 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !119896
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !119896

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119897 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119898 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119899 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !119900 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !119901
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !119902 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !119903
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !119904
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !119904

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !119905
  br label %bb.j, !dbg !119906

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !119897
  %i.cs = uitofp i32 %i.ak to double, !dbg !119894
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !119907
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !119908
  %i.cv = uitofp i32 %i.al to double, !dbg !119894
  %i.cw = fadd double %i.cu, %i.cv, !dbg !119907
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !119908
  %i.cy = uitofp i32 %i.am to double, !dbg !119894
  %i.cz = fadd double %i.cx, %i.cy, !dbg !119907
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !119908
  %i.db = uitofp i32 %i.an to double, !dbg !119894
  %i.dc = fadd double %i.da, %i.db, !dbg !119907
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !119908
  %i.de = uitofp i32 %i.ao to double, !dbg !119894
  %i.df = fadd double %i.dd, %i.de, !dbg !119907
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !119908
  %i.dh = uitofp i32 %i.ap to double, !dbg !119894
  %i.di = fadd double %i.dg, %i.dh, !dbg !119907
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !119908
  %i.dk = uitofp i32 %i.aq to double, !dbg !119894
  %i.dl = fadd double %i.dj, %i.dk, !dbg !119907
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !119908
  %i.dn = uitofp i32 %i.ar to double, !dbg !119894
  %i.do = fadd double %i.dm, %i.dn, !dbg !119907
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !119908
  %i.dq = uitofp i32 %i.as to double, !dbg !119894
  %i.dr = fadd double %i.dp, %i.dq, !dbg !119907
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !119908
  %i.dt = uitofp i32 %i.at to double, !dbg !119894
  %i.du = fadd double %i.ds, %i.dt, !dbg !119907
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !119908
  %i.dw = uitofp i32 %i.au to double, !dbg !119894
  %i.dx = fadd double %i.dv, %i.dw, !dbg !119907
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !119908
  %i.dz = uitofp i32 %i.av to double, !dbg !119894
  %i.ea = fadd double %i.dy, %i.dz, !dbg !119907
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !119908
  %i.ec = uitofp i32 %i.aw to double, !dbg !119894
  %i.ed = fadd double %i.eb, %i.ec, !dbg !119907
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !119908
  %i.ef = uitofp i32 %i.ax to double, !dbg !119894
  %i.eg = fadd double %i.ee, %i.ef, !dbg !119907
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !119908
  %i.ei = uitofp i32 %i.ay to double, !dbg !119894
  %i.ej = fadd double %i.eh, %i.ei, !dbg !119907
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !119908
  %i.el = uitofp i32 %i.az to double, !dbg !119894
  %i.em = fadd double %i.ek, %i.el, !dbg !119907
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !119908
  %i.eo = uitofp i32 %i.ba to double, !dbg !119894
  %i.ep = fadd double %i.en, %i.eo, !dbg !119907
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !119908
  %i.er = uitofp i32 %i.bb to double, !dbg !119894
  %i.es = fadd double %i.eq, %i.er, !dbg !119907
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !119908
  %i.eu = uitofp i32 %i.bc to double, !dbg !119894
  %i.ev = fadd double %i.et, %i.eu, !dbg !119907
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !119908
  %i.ex = uitofp i32 %i.bd to double, !dbg !119894
  %i.ey = fadd double %i.ew, %i.ex, !dbg !119907
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !119908
  %i.fa = uitofp i32 %i.be to double, !dbg !119894
  %i.fb = fadd double %i.ez, %i.fa, !dbg !119907
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !119908
  %i.fd = uitofp i32 %i.bf to double, !dbg !119894
  %i.fe = fadd double %i.fc, %i.fd, !dbg !119907
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !119908
  %i.fg = uitofp i32 %i.bg to double, !dbg !119894
  %i.fh = fadd double %i.ff, %i.fg, !dbg !119907
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !119908
  %i.fj = uitofp i32 %i.bh to double, !dbg !119894
  %i.fk = fadd double %i.fi, %i.fj, !dbg !119907
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !119908
  %i.fm = uitofp i32 %i.bi to double, !dbg !119894
  %i.fn = fadd double %i.fl, %i.fm, !dbg !119907
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !119908
  %i.fp = uitofp i32 %i.bj to double, !dbg !119894
  %i.fq = fadd double %i.fo, %i.fp, !dbg !119907
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !119908
  %i.fs = uitofp i32 %i.bk to double, !dbg !119894
  %i.ft = fadd double %i.fr, %i.fs, !dbg !119907
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !119908
  %i.fv = uitofp i32 %i.bl to double, !dbg !119894
  %i.fw = fadd double %i.fu, %i.fv, !dbg !119907
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !119908
  %i.fy = uitofp i32 %i.bm to double, !dbg !119894
  %i.fz = fadd double %i.fx, %i.fy, !dbg !119907
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !119908
  %i.gb = uitofp i32 %i.bn to double, !dbg !119894
  %i.gc = fadd double %i.ga, %i.gb, !dbg !119907
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !119908
  %i.ge = uitofp i32 %i.bo to double, !dbg !119894
  %i.gf = fadd double %i.gd, %i.ge, !dbg !119907
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !119908
  %i.gh = uitofp i32 %i.bp to double, !dbg !119894
  %i.gi = fadd double %i.gg, %i.gh, !dbg !119907
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !119908
  %i.gk = uitofp i32 %i.bq to double, !dbg !119894
  %i.gl = fadd double %i.gj, %i.gk, !dbg !119907
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !119908
  %i.gn = uitofp i32 %i.br to double, !dbg !119894
  %i.go = fadd double %i.gm, %i.gn, !dbg !119907
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !119908
  %i.gq = uitofp i32 %i.bs to double, !dbg !119894
  %i.gr = fadd double %i.gp, %i.gq, !dbg !119907
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !119908
  %i.gt = uitofp i32 %i.bt to double, !dbg !119894
  %i.gu = fadd double %i.gs, %i.gt, !dbg !119907
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !119908
  %i.gw = uitofp i32 %i.bu to double, !dbg !119894
  %i.gx = fadd double %i.gv, %i.gw, !dbg !119907
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !119908
  %i.gz = uitofp i32 %i.bv to double, !dbg !119894
  %i.ha = fadd double %i.gy, %i.gz, !dbg !119907
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !119908
  %i.hc = uitofp i32 %i.bw to double, !dbg !119894
  %i.hd = fadd double %i.hb, %i.hc, !dbg !119907
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !119908
  %i.hf = uitofp i32 %i.bx to double, !dbg !119894
  %i.hg = fadd double %i.he, %i.hf, !dbg !119907
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !119908
  %i.hi = uitofp i32 %i.by to double, !dbg !119894
  %i.hj = fadd double %i.hh, %i.hi, !dbg !119907
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !119908
  %i.hl = uitofp i32 %i.bz to double, !dbg !119894
  %i.hm = fadd double %i.hk, %i.hl, !dbg !119907
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !119908
  %i.ho = uitofp i32 %i.ca to double, !dbg !119894
  %i.hp = fadd double %i.hn, %i.ho, !dbg !119907
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !119908
  %i.hr = uitofp i32 %i.cb to double, !dbg !119894
  %i.hs = fadd double %i.hq, %i.hr, !dbg !119907
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !119908
  %i.hu = uitofp i32 %i.cc to double, !dbg !119894
  %i.hv = fadd double %i.ht, %i.hu, !dbg !119907
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !119908
  %i.hx = uitofp i32 %i.cd to double, !dbg !119894
  %i.hy = fadd double %i.hw, %i.hx, !dbg !119907
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !119908
  %i.ia = uitofp i32 %i.ce to double, !dbg !119894
  %i.ib = fadd double %i.hz, %i.ia, !dbg !119907
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !119908
  %i.id = uitofp i32 %i.cf to double, !dbg !119894
  %i.ie = fadd double %i.ic, %i.id, !dbg !119907
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !119908
  %i.ig = uitofp i32 %i.cg to double, !dbg !119894
  %i.ih = fadd double %i.if, %i.ig, !dbg !119907
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !119908
  %i.ij = uitofp i32 %i.ch to double, !dbg !119894
  %i.ik = fadd double %i.ii, %i.ij, !dbg !119907
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !119908
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !119909
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !119910
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !119911
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !119910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !119912
  ret i64 %i.ip, !dbg !119913
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionReEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !119914 !guid !119921 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionReEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !119924 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !119925
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !119926
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !119927
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !119927
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !119926
  %i.g = and i64 %i.a, 16383, !dbg !119928
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !119929 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !119929, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !119930
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !119931
  ret void, !dbg !119932
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionReEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !119933 !guid !119979 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !119987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119980), !dbg !119988
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !119989, !alias.scope !119980
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !119990 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !119990, !noalias !119981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !119991, !noalias !119980
  br label %bb.b, !dbg !119992

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !119993
  %i.e = load i8, ptr %i.d, align 2, !dbg !119994, !alias.scope !119983, !noalias !119981, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !119995        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !119996
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !119996

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !119996 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !119996, !alias.scope !119980, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !119996
  store i32 %i.j, ptr %i.h, align 4, !dbg !119996, !alias.scope !119980
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !119993
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !119993
  %i.m = load i8, ptr %i.l, align 1, !dbg !119994, !alias.scope !119983, !noalias !119981, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !119995        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !119996
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !119996

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !119997    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !119996 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !119996, !alias.scope !119980, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !119996
  store i32 %i.s, ptr %i.q, align 4, !dbg !119996, !alias.scope !119980
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !119992
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionReEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !119992

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !119995
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !119996, !noalias !119981
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionReEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !119998, !noalias !119981
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !119999
  %i.u = load i32, ptr %i.t, align 4, !dbg !119999, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !119999
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !120000
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !120000 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !120001
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !120001
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !120001

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionReEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !120002
  br label %bb.g, !dbg !120003

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !120004 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !120005
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !120006 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !120007 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !120008 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !120009
  %i.af = fmul double %i.ac, %i.ae, !dbg !120008
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !120010 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !120011
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !120011

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !120012
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !120013
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !120014

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionReEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionReEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120005
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !120015
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !120015, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !120015
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !120015, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !120015
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !120015, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !120015
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !120015, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !120015
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !120015, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !120015
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !120015, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !120015
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !120015, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !120015
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !120015, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !120015
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !120015, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !120015
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !120015, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !120015
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !120015, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !120015
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !120015, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !120015
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !120015, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !120015
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !120015, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !120015
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !120015, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !120015
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !120015, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !120015
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !120015, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !120015
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !120015, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !120015
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !120015, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !120015
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !120015, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !120015
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !120015, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !120015
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !120015, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !120015
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !120015, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !120015
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !120015, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !120015
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !120015, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !120015
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !120015, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !120015
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !120015, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !120015
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !120015, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !120015
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !120015, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !120015
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !120015, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !120015
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !120015, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !120015
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !120015, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !120015
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !120015, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !120015
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !120015, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !120015
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !120015, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !120015
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !120015, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !120015
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !120015, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !120015
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !120015, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !120015
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !120015, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !120015
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !120015, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !120015
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !120015, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !120015
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !120015, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !120015
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !120015, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !120015
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !120015, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !120015
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !120015, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !120015
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !120015, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !120015
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !120015, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !120015
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !120015, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120015
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !120015, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !120015
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !120015, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !120016, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !120016
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !120016 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !120017
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !120017

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120018 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120019 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120020 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !120021 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !120022
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !120023 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !120024
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !120025
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !120025

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !120026
  br label %bb.j, !dbg !120027

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120018
  %i.cs = uitofp i32 %i.ak to double, !dbg !120015
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !120028
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !120029
  %i.cv = uitofp i32 %i.al to double, !dbg !120015
  %i.cw = fadd double %i.cu, %i.cv, !dbg !120028
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !120029
  %i.cy = uitofp i32 %i.am to double, !dbg !120015
  %i.cz = fadd double %i.cx, %i.cy, !dbg !120028
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !120029
  %i.db = uitofp i32 %i.an to double, !dbg !120015
  %i.dc = fadd double %i.da, %i.db, !dbg !120028
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !120029
  %i.de = uitofp i32 %i.ao to double, !dbg !120015
  %i.df = fadd double %i.dd, %i.de, !dbg !120028
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !120029
  %i.dh = uitofp i32 %i.ap to double, !dbg !120015
  %i.di = fadd double %i.dg, %i.dh, !dbg !120028
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !120029
  %i.dk = uitofp i32 %i.aq to double, !dbg !120015
  %i.dl = fadd double %i.dj, %i.dk, !dbg !120028
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !120029
  %i.dn = uitofp i32 %i.ar to double, !dbg !120015
  %i.do = fadd double %i.dm, %i.dn, !dbg !120028
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !120029
  %i.dq = uitofp i32 %i.as to double, !dbg !120015
  %i.dr = fadd double %i.dp, %i.dq, !dbg !120028
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !120029
  %i.dt = uitofp i32 %i.at to double, !dbg !120015
  %i.du = fadd double %i.ds, %i.dt, !dbg !120028
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !120029
  %i.dw = uitofp i32 %i.au to double, !dbg !120015
  %i.dx = fadd double %i.dv, %i.dw, !dbg !120028
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !120029
  %i.dz = uitofp i32 %i.av to double, !dbg !120015
  %i.ea = fadd double %i.dy, %i.dz, !dbg !120028
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !120029
  %i.ec = uitofp i32 %i.aw to double, !dbg !120015
  %i.ed = fadd double %i.eb, %i.ec, !dbg !120028
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !120029
  %i.ef = uitofp i32 %i.ax to double, !dbg !120015
  %i.eg = fadd double %i.ee, %i.ef, !dbg !120028
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !120029
  %i.ei = uitofp i32 %i.ay to double, !dbg !120015
  %i.ej = fadd double %i.eh, %i.ei, !dbg !120028
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !120029
  %i.el = uitofp i32 %i.az to double, !dbg !120015
  %i.em = fadd double %i.ek, %i.el, !dbg !120028
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !120029
  %i.eo = uitofp i32 %i.ba to double, !dbg !120015
  %i.ep = fadd double %i.en, %i.eo, !dbg !120028
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !120029
  %i.er = uitofp i32 %i.bb to double, !dbg !120015
  %i.es = fadd double %i.eq, %i.er, !dbg !120028
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !120029
  %i.eu = uitofp i32 %i.bc to double, !dbg !120015
  %i.ev = fadd double %i.et, %i.eu, !dbg !120028
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !120029
  %i.ex = uitofp i32 %i.bd to double, !dbg !120015
  %i.ey = fadd double %i.ew, %i.ex, !dbg !120028
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !120029
  %i.fa = uitofp i32 %i.be to double, !dbg !120015
  %i.fb = fadd double %i.ez, %i.fa, !dbg !120028
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !120029
  %i.fd = uitofp i32 %i.bf to double, !dbg !120015
  %i.fe = fadd double %i.fc, %i.fd, !dbg !120028
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !120029
  %i.fg = uitofp i32 %i.bg to double, !dbg !120015
  %i.fh = fadd double %i.ff, %i.fg, !dbg !120028
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !120029
  %i.fj = uitofp i32 %i.bh to double, !dbg !120015
  %i.fk = fadd double %i.fi, %i.fj, !dbg !120028
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !120029
  %i.fm = uitofp i32 %i.bi to double, !dbg !120015
  %i.fn = fadd double %i.fl, %i.fm, !dbg !120028
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !120029
  %i.fp = uitofp i32 %i.bj to double, !dbg !120015
  %i.fq = fadd double %i.fo, %i.fp, !dbg !120028
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !120029
  %i.fs = uitofp i32 %i.bk to double, !dbg !120015
  %i.ft = fadd double %i.fr, %i.fs, !dbg !120028
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !120029
  %i.fv = uitofp i32 %i.bl to double, !dbg !120015
  %i.fw = fadd double %i.fu, %i.fv, !dbg !120028
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !120029
  %i.fy = uitofp i32 %i.bm to double, !dbg !120015
  %i.fz = fadd double %i.fx, %i.fy, !dbg !120028
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !120029
  %i.gb = uitofp i32 %i.bn to double, !dbg !120015
  %i.gc = fadd double %i.ga, %i.gb, !dbg !120028
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !120029
  %i.ge = uitofp i32 %i.bo to double, !dbg !120015
  %i.gf = fadd double %i.gd, %i.ge, !dbg !120028
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !120029
  %i.gh = uitofp i32 %i.bp to double, !dbg !120015
  %i.gi = fadd double %i.gg, %i.gh, !dbg !120028
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !120029
  %i.gk = uitofp i32 %i.bq to double, !dbg !120015
  %i.gl = fadd double %i.gj, %i.gk, !dbg !120028
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !120029
  %i.gn = uitofp i32 %i.br to double, !dbg !120015
  %i.go = fadd double %i.gm, %i.gn, !dbg !120028
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !120029
  %i.gq = uitofp i32 %i.bs to double, !dbg !120015
  %i.gr = fadd double %i.gp, %i.gq, !dbg !120028
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !120029
  %i.gt = uitofp i32 %i.bt to double, !dbg !120015
  %i.gu = fadd double %i.gs, %i.gt, !dbg !120028
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !120029
  %i.gw = uitofp i32 %i.bu to double, !dbg !120015
  %i.gx = fadd double %i.gv, %i.gw, !dbg !120028
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !120029
  %i.gz = uitofp i32 %i.bv to double, !dbg !120015
  %i.ha = fadd double %i.gy, %i.gz, !dbg !120028
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !120029
  %i.hc = uitofp i32 %i.bw to double, !dbg !120015
  %i.hd = fadd double %i.hb, %i.hc, !dbg !120028
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !120029
  %i.hf = uitofp i32 %i.bx to double, !dbg !120015
  %i.hg = fadd double %i.he, %i.hf, !dbg !120028
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !120029
  %i.hi = uitofp i32 %i.by to double, !dbg !120015
  %i.hj = fadd double %i.hh, %i.hi, !dbg !120028
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !120029
  %i.hl = uitofp i32 %i.bz to double, !dbg !120015
  %i.hm = fadd double %i.hk, %i.hl, !dbg !120028
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !120029
  %i.ho = uitofp i32 %i.ca to double, !dbg !120015
  %i.hp = fadd double %i.hn, %i.ho, !dbg !120028
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !120029
  %i.hr = uitofp i32 %i.cb to double, !dbg !120015
  %i.hs = fadd double %i.hq, %i.hr, !dbg !120028
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !120029
  %i.hu = uitofp i32 %i.cc to double, !dbg !120015
  %i.hv = fadd double %i.ht, %i.hu, !dbg !120028
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !120029
  %i.hx = uitofp i32 %i.cd to double, !dbg !120015
  %i.hy = fadd double %i.hw, %i.hx, !dbg !120028
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !120029
  %i.ia = uitofp i32 %i.ce to double, !dbg !120015
  %i.ib = fadd double %i.hz, %i.ia, !dbg !120028
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !120029
  %i.id = uitofp i32 %i.cf to double, !dbg !120015
  %i.ie = fadd double %i.ic, %i.id, !dbg !120028
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !120029
  %i.ig = uitofp i32 %i.cg to double, !dbg !120015
  %i.ih = fadd double %i.if, %i.ig, !dbg !120028
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !120029
  %i.ij = uitofp i32 %i.ch to double, !dbg !120015
  %i.ik = fadd double %i.ii, %i.ij, !dbg !120028
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !120029
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !120030
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !120031
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !120032
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !120031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120033
  ret i64 %i.ip, !dbg !120034
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionaEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120035 !guid !120042 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionaEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %1), !dbg !120045 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !120046
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !120047
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !120048
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !120048
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !120047
  %i.g = and i64 %i.a, 16383, !dbg !120049
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !120050 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !120050, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !120051
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !120052
  ret void, !dbg !120053
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionaEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120054 !guid !120100 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120101), !dbg !120109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !120110, !alias.scope !120101
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !120111 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120111, !noalias !120102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !120112, !noalias !120101
  br label %bb.b, !dbg !120113

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120114
  %i.e = load i8, ptr %i.d, align 2, !dbg !120115, !alias.scope !120104, !noalias !120102, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !120116        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !120117
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !120117

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !120117 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !120117, !alias.scope !120101, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !120117
  store i32 %i.j, ptr %i.h, align 4, !dbg !120117, !alias.scope !120101
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !120114
  %i.m = load i8, ptr %i.l, align 1, !dbg !120115, !alias.scope !120104, !noalias !120102, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !120116        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !120117
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !120117

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !120118    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !120117 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !120117, !alias.scope !120101, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !120117
  store i32 %i.s, ptr %i.q, align 4, !dbg !120117, !alias.scope !120101
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !120113
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionaEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !120113

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !120116
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !120117, !noalias !120102
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionaEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120119, !noalias !120102
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !120120
  %i.u = load i32, ptr %i.t, align 4, !dbg !120120, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !120120
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !120121
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !120121 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !120122
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !120122
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !120122

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionaEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !120123
  br label %bb.g, !dbg !120124

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !120125 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !120126
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !120127 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !120128 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !120129 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !120130
  %i.af = fmul double %i.ac, %i.ae, !dbg !120129
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !120131 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !120132
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !120132

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !120133
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !120134
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !120135

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionaEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionaEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120126
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !120136
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !120136, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !120136
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !120136, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !120136
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !120136, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !120136
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !120136, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !120136
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !120136, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !120136
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !120136, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !120136
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !120136, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !120136
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !120136, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !120136
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !120136, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !120136
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !120136, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !120136
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !120136, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !120136
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !120136, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !120136
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !120136, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !120136
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !120136, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !120136
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !120136, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !120136
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !120136, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !120136
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !120136, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !120136
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !120136, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !120136
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !120136, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !120136
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !120136, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !120136
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !120136, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !120136
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !120136, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !120136
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !120136, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !120136
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !120136, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !120136
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !120136, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !120136
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !120136, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !120136
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !120136, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !120136
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !120136, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !120136
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !120136, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !120136
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !120136, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !120136
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !120136, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !120136
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !120136, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !120136
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !120136, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !120136
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !120136, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !120136
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !120136, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !120136
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !120136, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !120136
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !120136, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !120136
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !120136, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !120136
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !120136, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !120136
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !120136, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !120136
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !120136, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !120136
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !120136, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !120136
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !120136, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !120136
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !120136, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !120136
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !120136, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !120136
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !120136, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !120136
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !120136, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !120136
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !120136, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120136
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !120136, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !120136
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !120136, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !120137, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !120137
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !120137 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !120138
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !120138

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120139 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120140 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120141 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !120142 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !120143
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !120144 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !120145
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !120146
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !120146

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !120147
  br label %bb.j, !dbg !120148

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120139
  %i.cs = uitofp i32 %i.ak to double, !dbg !120136
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !120149
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !120150
  %i.cv = uitofp i32 %i.al to double, !dbg !120136
  %i.cw = fadd double %i.cu, %i.cv, !dbg !120149
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !120150
  %i.cy = uitofp i32 %i.am to double, !dbg !120136
  %i.cz = fadd double %i.cx, %i.cy, !dbg !120149
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !120150
  %i.db = uitofp i32 %i.an to double, !dbg !120136
  %i.dc = fadd double %i.da, %i.db, !dbg !120149
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !120150
  %i.de = uitofp i32 %i.ao to double, !dbg !120136
  %i.df = fadd double %i.dd, %i.de, !dbg !120149
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !120150
  %i.dh = uitofp i32 %i.ap to double, !dbg !120136
  %i.di = fadd double %i.dg, %i.dh, !dbg !120149
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !120150
  %i.dk = uitofp i32 %i.aq to double, !dbg !120136
  %i.dl = fadd double %i.dj, %i.dk, !dbg !120149
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !120150
  %i.dn = uitofp i32 %i.ar to double, !dbg !120136
  %i.do = fadd double %i.dm, %i.dn, !dbg !120149
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !120150
  %i.dq = uitofp i32 %i.as to double, !dbg !120136
  %i.dr = fadd double %i.dp, %i.dq, !dbg !120149
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !120150
  %i.dt = uitofp i32 %i.at to double, !dbg !120136
  %i.du = fadd double %i.ds, %i.dt, !dbg !120149
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !120150
  %i.dw = uitofp i32 %i.au to double, !dbg !120136
  %i.dx = fadd double %i.dv, %i.dw, !dbg !120149
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !120150
  %i.dz = uitofp i32 %i.av to double, !dbg !120136
  %i.ea = fadd double %i.dy, %i.dz, !dbg !120149
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !120150
  %i.ec = uitofp i32 %i.aw to double, !dbg !120136
  %i.ed = fadd double %i.eb, %i.ec, !dbg !120149
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !120150
  %i.ef = uitofp i32 %i.ax to double, !dbg !120136
  %i.eg = fadd double %i.ee, %i.ef, !dbg !120149
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !120150
  %i.ei = uitofp i32 %i.ay to double, !dbg !120136
  %i.ej = fadd double %i.eh, %i.ei, !dbg !120149
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !120150
  %i.el = uitofp i32 %i.az to double, !dbg !120136
  %i.em = fadd double %i.ek, %i.el, !dbg !120149
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !120150
  %i.eo = uitofp i32 %i.ba to double, !dbg !120136
  %i.ep = fadd double %i.en, %i.eo, !dbg !120149
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !120150
  %i.er = uitofp i32 %i.bb to double, !dbg !120136
  %i.es = fadd double %i.eq, %i.er, !dbg !120149
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !120150
  %i.eu = uitofp i32 %i.bc to double, !dbg !120136
  %i.ev = fadd double %i.et, %i.eu, !dbg !120149
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !120150
  %i.ex = uitofp i32 %i.bd to double, !dbg !120136
  %i.ey = fadd double %i.ew, %i.ex, !dbg !120149
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !120150
  %i.fa = uitofp i32 %i.be to double, !dbg !120136
  %i.fb = fadd double %i.ez, %i.fa, !dbg !120149
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !120150
  %i.fd = uitofp i32 %i.bf to double, !dbg !120136
  %i.fe = fadd double %i.fc, %i.fd, !dbg !120149
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !120150
  %i.fg = uitofp i32 %i.bg to double, !dbg !120136
  %i.fh = fadd double %i.ff, %i.fg, !dbg !120149
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !120150
  %i.fj = uitofp i32 %i.bh to double, !dbg !120136
  %i.fk = fadd double %i.fi, %i.fj, !dbg !120149
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !120150
  %i.fm = uitofp i32 %i.bi to double, !dbg !120136
  %i.fn = fadd double %i.fl, %i.fm, !dbg !120149
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !120150
  %i.fp = uitofp i32 %i.bj to double, !dbg !120136
  %i.fq = fadd double %i.fo, %i.fp, !dbg !120149
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !120150
  %i.fs = uitofp i32 %i.bk to double, !dbg !120136
  %i.ft = fadd double %i.fr, %i.fs, !dbg !120149
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !120150
  %i.fv = uitofp i32 %i.bl to double, !dbg !120136
  %i.fw = fadd double %i.fu, %i.fv, !dbg !120149
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !120150
  %i.fy = uitofp i32 %i.bm to double, !dbg !120136
  %i.fz = fadd double %i.fx, %i.fy, !dbg !120149
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !120150
  %i.gb = uitofp i32 %i.bn to double, !dbg !120136
  %i.gc = fadd double %i.ga, %i.gb, !dbg !120149
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !120150
  %i.ge = uitofp i32 %i.bo to double, !dbg !120136
  %i.gf = fadd double %i.gd, %i.ge, !dbg !120149
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !120150
  %i.gh = uitofp i32 %i.bp to double, !dbg !120136
  %i.gi = fadd double %i.gg, %i.gh, !dbg !120149
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !120150
  %i.gk = uitofp i32 %i.bq to double, !dbg !120136
  %i.gl = fadd double %i.gj, %i.gk, !dbg !120149
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !120150
  %i.gn = uitofp i32 %i.br to double, !dbg !120136
  %i.go = fadd double %i.gm, %i.gn, !dbg !120149
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !120150
  %i.gq = uitofp i32 %i.bs to double, !dbg !120136
  %i.gr = fadd double %i.gp, %i.gq, !dbg !120149
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !120150
  %i.gt = uitofp i32 %i.bt to double, !dbg !120136
  %i.gu = fadd double %i.gs, %i.gt, !dbg !120149
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !120150
  %i.gw = uitofp i32 %i.bu to double, !dbg !120136
  %i.gx = fadd double %i.gv, %i.gw, !dbg !120149
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !120150
  %i.gz = uitofp i32 %i.bv to double, !dbg !120136
  %i.ha = fadd double %i.gy, %i.gz, !dbg !120149
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !120150
  %i.hc = uitofp i32 %i.bw to double, !dbg !120136
  %i.hd = fadd double %i.hb, %i.hc, !dbg !120149
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !120150
  %i.hf = uitofp i32 %i.bx to double, !dbg !120136
  %i.hg = fadd double %i.he, %i.hf, !dbg !120149
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !120150
  %i.hi = uitofp i32 %i.by to double, !dbg !120136
  %i.hj = fadd double %i.hh, %i.hi, !dbg !120149
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !120150
  %i.hl = uitofp i32 %i.bz to double, !dbg !120136
  %i.hm = fadd double %i.hk, %i.hl, !dbg !120149
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !120150
  %i.ho = uitofp i32 %i.ca to double, !dbg !120136
  %i.hp = fadd double %i.hn, %i.ho, !dbg !120149
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !120150
  %i.hr = uitofp i32 %i.cb to double, !dbg !120136
  %i.hs = fadd double %i.hq, %i.hr, !dbg !120149
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !120150
  %i.hu = uitofp i32 %i.cc to double, !dbg !120136
  %i.hv = fadd double %i.ht, %i.hu, !dbg !120149
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !120150
  %i.hx = uitofp i32 %i.cd to double, !dbg !120136
  %i.hy = fadd double %i.hw, %i.hx, !dbg !120149
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !120150
  %i.ia = uitofp i32 %i.ce to double, !dbg !120136
  %i.ib = fadd double %i.hz, %i.ia, !dbg !120149
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !120150
  %i.id = uitofp i32 %i.cf to double, !dbg !120136
  %i.ie = fadd double %i.ic, %i.id, !dbg !120149
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !120150
  %i.ig = uitofp i32 %i.cg to double, !dbg !120136
  %i.ih = fadd double %i.if, %i.ig, !dbg !120149
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !120150
  %i.ij = uitofp i32 %i.ch to double, !dbg !120136
  %i.ik = fadd double %i.ii, %i.ij, !dbg !120149
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !120150
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !120151
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !120152
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !120153
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !120152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120154
  ret i64 %i.ip, !dbg !120155
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionbEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120156 !guid !120163 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionbEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1), !dbg !120166 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !120167
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !120168
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !120169
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !120169
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !120168
  %i.g = and i64 %i.a, 16383, !dbg !120170
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !120171 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !120171, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !120172
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !120173
  ret void, !dbg !120174
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionbEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120175 !guid !120221 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120222), !dbg !120230
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !120231, !alias.scope !120222
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !120232 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120232, !noalias !120223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !120233, !noalias !120222
  br label %bb.b, !dbg !120234

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120235
  %i.e = load i8, ptr %i.d, align 2, !dbg !120236, !alias.scope !120225, !noalias !120223, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !120237        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !120238
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !120238

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !120238 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !120238, !alias.scope !120222, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !120238
  store i32 %i.j, ptr %i.h, align 4, !dbg !120238, !alias.scope !120222
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120235
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !120235
  %i.m = load i8, ptr %i.l, align 1, !dbg !120236, !alias.scope !120225, !noalias !120223, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !120237        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !120238
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !120238

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !120239    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !120238 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !120238, !alias.scope !120222, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !120238
  store i32 %i.s, ptr %i.q, align 4, !dbg !120238, !alias.scope !120222
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !120234
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionbEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !120234

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !120237
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !120238, !noalias !120223
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionbEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120240, !noalias !120223
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !120241
  %i.u = load i32, ptr %i.t, align 4, !dbg !120241, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !120241
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !120242
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !120242 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !120243
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !120243
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !120243

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionbEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !120244
  br label %bb.g, !dbg !120245

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !120246 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !120247
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !120248 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !120249 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !120250 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !120251
  %i.af = fmul double %i.ac, %i.ae, !dbg !120250
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !120252 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !120253
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !120253

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !120254
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !120255
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !120256

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionbEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionbEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120247
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !120257
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !120257, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !120257
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !120257, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !120257
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !120257, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !120257
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !120257, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !120257
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !120257, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !120257
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !120257, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !120257
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !120257, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !120257
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !120257, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !120257
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !120257, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !120257
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !120257, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !120257
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !120257, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !120257
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !120257, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !120257
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !120257, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !120257
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !120257, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !120257
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !120257, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !120257
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !120257, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !120257
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !120257, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !120257
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !120257, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !120257
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !120257, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !120257
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !120257, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !120257
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !120257, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !120257
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !120257, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !120257
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !120257, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !120257
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !120257, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !120257
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !120257, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !120257
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !120257, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !120257
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !120257, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !120257
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !120257, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !120257
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !120257, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !120257
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !120257, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !120257
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !120257, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !120257
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !120257, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !120257
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !120257, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !120257
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !120257, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !120257
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !120257, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !120257
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !120257, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !120257
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !120257, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !120257
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !120257, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !120257
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !120257, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !120257
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !120257, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !120257
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !120257, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !120257
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !120257, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !120257
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !120257, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !120257
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !120257, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !120257
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !120257, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !120257
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !120257, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !120257
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !120257, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !120257
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !120257, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120257
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !120257, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !120257
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !120257, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !120258, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !120258
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !120258 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !120259
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !120259

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120260 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120261 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120262 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !120263 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !120264
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !120265 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !120266
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !120267
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !120267

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !120268
  br label %bb.j, !dbg !120269

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120260
  %i.cs = uitofp i32 %i.ak to double, !dbg !120257
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !120270
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !120271
  %i.cv = uitofp i32 %i.al to double, !dbg !120257
  %i.cw = fadd double %i.cu, %i.cv, !dbg !120270
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !120271
  %i.cy = uitofp i32 %i.am to double, !dbg !120257
  %i.cz = fadd double %i.cx, %i.cy, !dbg !120270
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !120271
  %i.db = uitofp i32 %i.an to double, !dbg !120257
  %i.dc = fadd double %i.da, %i.db, !dbg !120270
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !120271
  %i.de = uitofp i32 %i.ao to double, !dbg !120257
  %i.df = fadd double %i.dd, %i.de, !dbg !120270
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !120271
  %i.dh = uitofp i32 %i.ap to double, !dbg !120257
  %i.di = fadd double %i.dg, %i.dh, !dbg !120270
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !120271
  %i.dk = uitofp i32 %i.aq to double, !dbg !120257
  %i.dl = fadd double %i.dj, %i.dk, !dbg !120270
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !120271
  %i.dn = uitofp i32 %i.ar to double, !dbg !120257
  %i.do = fadd double %i.dm, %i.dn, !dbg !120270
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !120271
  %i.dq = uitofp i32 %i.as to double, !dbg !120257
  %i.dr = fadd double %i.dp, %i.dq, !dbg !120270
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !120271
  %i.dt = uitofp i32 %i.at to double, !dbg !120257
  %i.du = fadd double %i.ds, %i.dt, !dbg !120270
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !120271
  %i.dw = uitofp i32 %i.au to double, !dbg !120257
  %i.dx = fadd double %i.dv, %i.dw, !dbg !120270
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !120271
  %i.dz = uitofp i32 %i.av to double, !dbg !120257
  %i.ea = fadd double %i.dy, %i.dz, !dbg !120270
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !120271
  %i.ec = uitofp i32 %i.aw to double, !dbg !120257
  %i.ed = fadd double %i.eb, %i.ec, !dbg !120270
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !120271
  %i.ef = uitofp i32 %i.ax to double, !dbg !120257
  %i.eg = fadd double %i.ee, %i.ef, !dbg !120270
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !120271
  %i.ei = uitofp i32 %i.ay to double, !dbg !120257
  %i.ej = fadd double %i.eh, %i.ei, !dbg !120270
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !120271
  %i.el = uitofp i32 %i.az to double, !dbg !120257
  %i.em = fadd double %i.ek, %i.el, !dbg !120270
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !120271
  %i.eo = uitofp i32 %i.ba to double, !dbg !120257
  %i.ep = fadd double %i.en, %i.eo, !dbg !120270
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !120271
  %i.er = uitofp i32 %i.bb to double, !dbg !120257
  %i.es = fadd double %i.eq, %i.er, !dbg !120270
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !120271
  %i.eu = uitofp i32 %i.bc to double, !dbg !120257
  %i.ev = fadd double %i.et, %i.eu, !dbg !120270
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !120271
  %i.ex = uitofp i32 %i.bd to double, !dbg !120257
  %i.ey = fadd double %i.ew, %i.ex, !dbg !120270
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !120271
  %i.fa = uitofp i32 %i.be to double, !dbg !120257
  %i.fb = fadd double %i.ez, %i.fa, !dbg !120270
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !120271
  %i.fd = uitofp i32 %i.bf to double, !dbg !120257
  %i.fe = fadd double %i.fc, %i.fd, !dbg !120270
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !120271
  %i.fg = uitofp i32 %i.bg to double, !dbg !120257
  %i.fh = fadd double %i.ff, %i.fg, !dbg !120270
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !120271
  %i.fj = uitofp i32 %i.bh to double, !dbg !120257
  %i.fk = fadd double %i.fi, %i.fj, !dbg !120270
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !120271
  %i.fm = uitofp i32 %i.bi to double, !dbg !120257
  %i.fn = fadd double %i.fl, %i.fm, !dbg !120270
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !120271
  %i.fp = uitofp i32 %i.bj to double, !dbg !120257
  %i.fq = fadd double %i.fo, %i.fp, !dbg !120270
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !120271
  %i.fs = uitofp i32 %i.bk to double, !dbg !120257
  %i.ft = fadd double %i.fr, %i.fs, !dbg !120270
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !120271
  %i.fv = uitofp i32 %i.bl to double, !dbg !120257
  %i.fw = fadd double %i.fu, %i.fv, !dbg !120270
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !120271
  %i.fy = uitofp i32 %i.bm to double, !dbg !120257
  %i.fz = fadd double %i.fx, %i.fy, !dbg !120270
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !120271
  %i.gb = uitofp i32 %i.bn to double, !dbg !120257
  %i.gc = fadd double %i.ga, %i.gb, !dbg !120270
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !120271
  %i.ge = uitofp i32 %i.bo to double, !dbg !120257
  %i.gf = fadd double %i.gd, %i.ge, !dbg !120270
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !120271
  %i.gh = uitofp i32 %i.bp to double, !dbg !120257
  %i.gi = fadd double %i.gg, %i.gh, !dbg !120270
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !120271
  %i.gk = uitofp i32 %i.bq to double, !dbg !120257
  %i.gl = fadd double %i.gj, %i.gk, !dbg !120270
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !120271
  %i.gn = uitofp i32 %i.br to double, !dbg !120257
  %i.go = fadd double %i.gm, %i.gn, !dbg !120270
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !120271
  %i.gq = uitofp i32 %i.bs to double, !dbg !120257
  %i.gr = fadd double %i.gp, %i.gq, !dbg !120270
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !120271
  %i.gt = uitofp i32 %i.bt to double, !dbg !120257
  %i.gu = fadd double %i.gs, %i.gt, !dbg !120270
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !120271
  %i.gw = uitofp i32 %i.bu to double, !dbg !120257
  %i.gx = fadd double %i.gv, %i.gw, !dbg !120270
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !120271
  %i.gz = uitofp i32 %i.bv to double, !dbg !120257
  %i.ha = fadd double %i.gy, %i.gz, !dbg !120270
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !120271
  %i.hc = uitofp i32 %i.bw to double, !dbg !120257
  %i.hd = fadd double %i.hb, %i.hc, !dbg !120270
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !120271
  %i.hf = uitofp i32 %i.bx to double, !dbg !120257
  %i.hg = fadd double %i.he, %i.hf, !dbg !120270
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !120271
  %i.hi = uitofp i32 %i.by to double, !dbg !120257
  %i.hj = fadd double %i.hh, %i.hi, !dbg !120270
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !120271
  %i.hl = uitofp i32 %i.bz to double, !dbg !120257
  %i.hm = fadd double %i.hk, %i.hl, !dbg !120270
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !120271
  %i.ho = uitofp i32 %i.ca to double, !dbg !120257
  %i.hp = fadd double %i.hn, %i.ho, !dbg !120270
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !120271
  %i.hr = uitofp i32 %i.cb to double, !dbg !120257
  %i.hs = fadd double %i.hq, %i.hr, !dbg !120270
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !120271
  %i.hu = uitofp i32 %i.cc to double, !dbg !120257
  %i.hv = fadd double %i.ht, %i.hu, !dbg !120270
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !120271
  %i.hx = uitofp i32 %i.cd to double, !dbg !120257
  %i.hy = fadd double %i.hw, %i.hx, !dbg !120270
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !120271
  %i.ia = uitofp i32 %i.ce to double, !dbg !120257
  %i.ib = fadd double %i.hz, %i.ia, !dbg !120270
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !120271
  %i.id = uitofp i32 %i.cf to double, !dbg !120257
  %i.ie = fadd double %i.ic, %i.id, !dbg !120270
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !120271
  %i.ig = uitofp i32 %i.cg to double, !dbg !120257
  %i.ih = fadd double %i.if, %i.ig, !dbg !120270
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !120271
  %i.ij = uitofp i32 %i.ch to double, !dbg !120257
  %i.ik = fadd double %i.ii, %i.ij, !dbg !120270
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !120271
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !120272
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !120273
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !120274
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !120273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120275
  ret i64 %i.ip, !dbg !120276
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120277 !guid !120284 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !120287 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !120288
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !120289
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !120290
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !120290
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !120289
  %i.g = and i64 %i.a, 16383, !dbg !120291
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !120292 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !120292, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !120293
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !120294
  ret void, !dbg !120295
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120296 !guid !120342 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120343), !dbg !120351
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !120352, !alias.scope !120343
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !120353 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120353, !noalias !120344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !120354, !noalias !120343
  br label %bb.b, !dbg !120355

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120356
  %i.e = load i8, ptr %i.d, align 2, !dbg !120357, !alias.scope !120346, !noalias !120344, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !120358        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !120359
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !120359

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !120359 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !120359, !alias.scope !120343, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !120359
  store i32 %i.j, ptr %i.h, align 4, !dbg !120359, !alias.scope !120343
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120356
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !120356
  %i.m = load i8, ptr %i.l, align 1, !dbg !120357, !alias.scope !120346, !noalias !120344, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !120358        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !120359
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !120359

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !120360    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !120359 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !120359, !alias.scope !120343, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !120359
  store i32 %i.s, ptr %i.q, align 4, !dbg !120359, !alias.scope !120343
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !120355
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !120355

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !120358
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !120359, !noalias !120344
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120361, !noalias !120344
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !120362
  %i.u = load i32, ptr %i.t, align 4, !dbg !120362, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !120362
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !120363
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !120363 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !120364
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !120364
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !120364

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !120365
  br label %bb.g, !dbg !120366

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !120367 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !120368
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !120369 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !120370 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !120371 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !120372
  %i.af = fmul double %i.ac, %i.ae, !dbg !120371
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !120373 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !120374
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !120374

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !120375
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !120376
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !120377

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiondEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120368
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !120378
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !120378, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !120378
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !120378, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !120378
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !120378, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !120378
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !120378, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !120378
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !120378, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !120378
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !120378, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !120378
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !120378, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !120378
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !120378, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !120378
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !120378, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !120378
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !120378, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !120378
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !120378, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !120378
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !120378, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !120378
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !120378, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !120378
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !120378, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !120378
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !120378, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !120378
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !120378, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !120378
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !120378, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !120378
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !120378, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !120378
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !120378, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !120378
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !120378, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !120378
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !120378, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !120378
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !120378, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !120378
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !120378, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !120378
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !120378, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !120378
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !120378, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !120378
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !120378, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !120378
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !120378, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !120378
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !120378, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !120378
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !120378, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !120378
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !120378, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !120378
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !120378, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !120378
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !120378, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !120378
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !120378, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !120378
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !120378, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !120378
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !120378, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !120378
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !120378, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !120378
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !120378, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !120378
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !120378, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !120378
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !120378, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !120378
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !120378, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !120378
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !120378, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !120378
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !120378, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !120378
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !120378, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !120378
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !120378, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !120378
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !120378, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !120378
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !120378, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !120378
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !120378, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !120378
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !120378, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120378
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !120378, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !120378
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !120378, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !120379, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !120379
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !120379 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !120380
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !120380

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120381 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120382 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120383 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !120384 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !120385
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !120386 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !120387
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !120388
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !120388

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !120389
  br label %bb.j, !dbg !120390

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120381
  %i.cs = uitofp i32 %i.ak to double, !dbg !120378
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !120391
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !120392
  %i.cv = uitofp i32 %i.al to double, !dbg !120378
  %i.cw = fadd double %i.cu, %i.cv, !dbg !120391
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !120392
  %i.cy = uitofp i32 %i.am to double, !dbg !120378
  %i.cz = fadd double %i.cx, %i.cy, !dbg !120391
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !120392
  %i.db = uitofp i32 %i.an to double, !dbg !120378
  %i.dc = fadd double %i.da, %i.db, !dbg !120391
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !120392
  %i.de = uitofp i32 %i.ao to double, !dbg !120378
  %i.df = fadd double %i.dd, %i.de, !dbg !120391
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !120392
  %i.dh = uitofp i32 %i.ap to double, !dbg !120378
  %i.di = fadd double %i.dg, %i.dh, !dbg !120391
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !120392
  %i.dk = uitofp i32 %i.aq to double, !dbg !120378
  %i.dl = fadd double %i.dj, %i.dk, !dbg !120391
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !120392
  %i.dn = uitofp i32 %i.ar to double, !dbg !120378
  %i.do = fadd double %i.dm, %i.dn, !dbg !120391
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !120392
  %i.dq = uitofp i32 %i.as to double, !dbg !120378
  %i.dr = fadd double %i.dp, %i.dq, !dbg !120391
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !120392
  %i.dt = uitofp i32 %i.at to double, !dbg !120378
  %i.du = fadd double %i.ds, %i.dt, !dbg !120391
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !120392
  %i.dw = uitofp i32 %i.au to double, !dbg !120378
  %i.dx = fadd double %i.dv, %i.dw, !dbg !120391
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !120392
  %i.dz = uitofp i32 %i.av to double, !dbg !120378
  %i.ea = fadd double %i.dy, %i.dz, !dbg !120391
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !120392
  %i.ec = uitofp i32 %i.aw to double, !dbg !120378
  %i.ed = fadd double %i.eb, %i.ec, !dbg !120391
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !120392
  %i.ef = uitofp i32 %i.ax to double, !dbg !120378
  %i.eg = fadd double %i.ee, %i.ef, !dbg !120391
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !120392
  %i.ei = uitofp i32 %i.ay to double, !dbg !120378
  %i.ej = fadd double %i.eh, %i.ei, !dbg !120391
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !120392
  %i.el = uitofp i32 %i.az to double, !dbg !120378
  %i.em = fadd double %i.ek, %i.el, !dbg !120391
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !120392
  %i.eo = uitofp i32 %i.ba to double, !dbg !120378
  %i.ep = fadd double %i.en, %i.eo, !dbg !120391
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !120392
  %i.er = uitofp i32 %i.bb to double, !dbg !120378
  %i.es = fadd double %i.eq, %i.er, !dbg !120391
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !120392
  %i.eu = uitofp i32 %i.bc to double, !dbg !120378
  %i.ev = fadd double %i.et, %i.eu, !dbg !120391
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !120392
  %i.ex = uitofp i32 %i.bd to double, !dbg !120378
  %i.ey = fadd double %i.ew, %i.ex, !dbg !120391
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !120392
  %i.fa = uitofp i32 %i.be to double, !dbg !120378
  %i.fb = fadd double %i.ez, %i.fa, !dbg !120391
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !120392
  %i.fd = uitofp i32 %i.bf to double, !dbg !120378
  %i.fe = fadd double %i.fc, %i.fd, !dbg !120391
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !120392
  %i.fg = uitofp i32 %i.bg to double, !dbg !120378
  %i.fh = fadd double %i.ff, %i.fg, !dbg !120391
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !120392
  %i.fj = uitofp i32 %i.bh to double, !dbg !120378
  %i.fk = fadd double %i.fi, %i.fj, !dbg !120391
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !120392
  %i.fm = uitofp i32 %i.bi to double, !dbg !120378
  %i.fn = fadd double %i.fl, %i.fm, !dbg !120391
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !120392
  %i.fp = uitofp i32 %i.bj to double, !dbg !120378
  %i.fq = fadd double %i.fo, %i.fp, !dbg !120391
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !120392
  %i.fs = uitofp i32 %i.bk to double, !dbg !120378
  %i.ft = fadd double %i.fr, %i.fs, !dbg !120391
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !120392
  %i.fv = uitofp i32 %i.bl to double, !dbg !120378
  %i.fw = fadd double %i.fu, %i.fv, !dbg !120391
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !120392
  %i.fy = uitofp i32 %i.bm to double, !dbg !120378
  %i.fz = fadd double %i.fx, %i.fy, !dbg !120391
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !120392
  %i.gb = uitofp i32 %i.bn to double, !dbg !120378
  %i.gc = fadd double %i.ga, %i.gb, !dbg !120391
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !120392
  %i.ge = uitofp i32 %i.bo to double, !dbg !120378
  %i.gf = fadd double %i.gd, %i.ge, !dbg !120391
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !120392
  %i.gh = uitofp i32 %i.bp to double, !dbg !120378
  %i.gi = fadd double %i.gg, %i.gh, !dbg !120391
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !120392
  %i.gk = uitofp i32 %i.bq to double, !dbg !120378
  %i.gl = fadd double %i.gj, %i.gk, !dbg !120391
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !120392
  %i.gn = uitofp i32 %i.br to double, !dbg !120378
  %i.go = fadd double %i.gm, %i.gn, !dbg !120391
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !120392
  %i.gq = uitofp i32 %i.bs to double, !dbg !120378
  %i.gr = fadd double %i.gp, %i.gq, !dbg !120391
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !120392
  %i.gt = uitofp i32 %i.bt to double, !dbg !120378
  %i.gu = fadd double %i.gs, %i.gt, !dbg !120391
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !120392
  %i.gw = uitofp i32 %i.bu to double, !dbg !120378
  %i.gx = fadd double %i.gv, %i.gw, !dbg !120391
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !120392
  %i.gz = uitofp i32 %i.bv to double, !dbg !120378
  %i.ha = fadd double %i.gy, %i.gz, !dbg !120391
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !120392
  %i.hc = uitofp i32 %i.bw to double, !dbg !120378
  %i.hd = fadd double %i.hb, %i.hc, !dbg !120391
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !120392
  %i.hf = uitofp i32 %i.bx to double, !dbg !120378
  %i.hg = fadd double %i.he, %i.hf, !dbg !120391
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !120392
  %i.hi = uitofp i32 %i.by to double, !dbg !120378
  %i.hj = fadd double %i.hh, %i.hi, !dbg !120391
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !120392
  %i.hl = uitofp i32 %i.bz to double, !dbg !120378
  %i.hm = fadd double %i.hk, %i.hl, !dbg !120391
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !120392
  %i.ho = uitofp i32 %i.ca to double, !dbg !120378
  %i.hp = fadd double %i.hn, %i.ho, !dbg !120391
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !120392
  %i.hr = uitofp i32 %i.cb to double, !dbg !120378
  %i.hs = fadd double %i.hq, %i.hr, !dbg !120391
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !120392
  %i.hu = uitofp i32 %i.cc to double, !dbg !120378
  %i.hv = fadd double %i.ht, %i.hu, !dbg !120391
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !120392
  %i.hx = uitofp i32 %i.cd to double, !dbg !120378
  %i.hy = fadd double %i.hw, %i.hx, !dbg !120391
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !120392
  %i.ia = uitofp i32 %i.ce to double, !dbg !120378
  %i.ib = fadd double %i.hz, %i.ia, !dbg !120391
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !120392
  %i.id = uitofp i32 %i.cf to double, !dbg !120378
  %i.ie = fadd double %i.ic, %i.id, !dbg !120391
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !120392
  %i.ig = uitofp i32 %i.cg to double, !dbg !120378
  %i.ih = fadd double %i.if, %i.ig, !dbg !120391
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !120392
  %i.ij = uitofp i32 %i.ch to double, !dbg !120378
  %i.ik = fadd double %i.ii, %i.ij, !dbg !120391
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !120392
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !120393
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !120394
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !120395
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !120394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120396
  ret i64 %i.ip, !dbg !120397
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionfEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120398 !guid !120405 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionfEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1), !dbg !120408 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !120409
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !120410
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !120411
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !120411
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !120410
  %i.g = and i64 %i.a, 16383, !dbg !120412
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !120413 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !120413, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !120414
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !120415
  ret void, !dbg !120416
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionfEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120417 !guid !120463 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120464), !dbg !120472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !120473, !alias.scope !120464
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !120474 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120474, !noalias !120465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !120475, !noalias !120464
  br label %bb.b, !dbg !120476

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120477
  %i.e = load i8, ptr %i.d, align 2, !dbg !120478, !alias.scope !120467, !noalias !120465, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !120479        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !120480
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !120480

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !120480 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !120480, !alias.scope !120464, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !120480
  store i32 %i.j, ptr %i.h, align 4, !dbg !120480, !alias.scope !120464
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120477
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !120477
  %i.m = load i8, ptr %i.l, align 1, !dbg !120478, !alias.scope !120467, !noalias !120465, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !120479        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !120480
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !120480

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !120481    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !120480 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !120480, !alias.scope !120464, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !120480
  store i32 %i.s, ptr %i.q, align 4, !dbg !120480, !alias.scope !120464
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !120476
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionfEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !120476

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !120479
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !120480, !noalias !120465
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionfEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120482, !noalias !120465
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !120483
  %i.u = load i32, ptr %i.t, align 4, !dbg !120483, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !120483
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !120484
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !120484 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !120485
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !120485
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !120485

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionfEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !120486
  br label %bb.g, !dbg !120487

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !120488 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !120489
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !120490 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !120491 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !120492 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !120493
  %i.af = fmul double %i.ac, %i.ae, !dbg !120492
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !120494 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !120495
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !120495

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !120496
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !120497
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !120498

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionfEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionfEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120489
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !120499
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !120499, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !120499
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !120499, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !120499
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !120499, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !120499
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !120499, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !120499
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !120499, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !120499
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !120499, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !120499
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !120499, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !120499
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !120499, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !120499
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !120499, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !120499
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !120499, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !120499
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !120499, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !120499
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !120499, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !120499
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !120499, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !120499
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !120499, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !120499
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !120499, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !120499
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !120499, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !120499
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !120499, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !120499
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !120499, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !120499
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !120499, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !120499
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !120499, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !120499
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !120499, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !120499
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !120499, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !120499
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !120499, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !120499
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !120499, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !120499
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !120499, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !120499
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !120499, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !120499
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !120499, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !120499
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !120499, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !120499
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !120499, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !120499
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !120499, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !120499
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !120499, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !120499
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !120499, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !120499
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !120499, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !120499
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !120499, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !120499
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !120499, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !120499
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !120499, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !120499
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !120499, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !120499
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !120499, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !120499
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !120499, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !120499
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !120499, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !120499
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !120499, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !120499
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !120499, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !120499
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !120499, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !120499
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !120499, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !120499
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !120499, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !120499
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !120499, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !120499
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !120499, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !120499
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !120499, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120499
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !120499, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !120499
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !120499, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !120500, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !120500
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !120500 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !120501
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !120501

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120502 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120503 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120504 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !120505 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !120506
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !120507 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !120508
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !120509
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !120509

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !120510
  br label %bb.j, !dbg !120511

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120502
  %i.cs = uitofp i32 %i.ak to double, !dbg !120499
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !120512
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !120513
  %i.cv = uitofp i32 %i.al to double, !dbg !120499
  %i.cw = fadd double %i.cu, %i.cv, !dbg !120512
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !120513
  %i.cy = uitofp i32 %i.am to double, !dbg !120499
  %i.cz = fadd double %i.cx, %i.cy, !dbg !120512
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !120513
  %i.db = uitofp i32 %i.an to double, !dbg !120499
  %i.dc = fadd double %i.da, %i.db, !dbg !120512
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !120513
  %i.de = uitofp i32 %i.ao to double, !dbg !120499
  %i.df = fadd double %i.dd, %i.de, !dbg !120512
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !120513
  %i.dh = uitofp i32 %i.ap to double, !dbg !120499
  %i.di = fadd double %i.dg, %i.dh, !dbg !120512
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !120513
  %i.dk = uitofp i32 %i.aq to double, !dbg !120499
  %i.dl = fadd double %i.dj, %i.dk, !dbg !120512
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !120513
  %i.dn = uitofp i32 %i.ar to double, !dbg !120499
  %i.do = fadd double %i.dm, %i.dn, !dbg !120512
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !120513
  %i.dq = uitofp i32 %i.as to double, !dbg !120499
  %i.dr = fadd double %i.dp, %i.dq, !dbg !120512
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !120513
  %i.dt = uitofp i32 %i.at to double, !dbg !120499
  %i.du = fadd double %i.ds, %i.dt, !dbg !120512
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !120513
  %i.dw = uitofp i32 %i.au to double, !dbg !120499
  %i.dx = fadd double %i.dv, %i.dw, !dbg !120512
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !120513
  %i.dz = uitofp i32 %i.av to double, !dbg !120499
  %i.ea = fadd double %i.dy, %i.dz, !dbg !120512
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !120513
  %i.ec = uitofp i32 %i.aw to double, !dbg !120499
  %i.ed = fadd double %i.eb, %i.ec, !dbg !120512
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !120513
  %i.ef = uitofp i32 %i.ax to double, !dbg !120499
  %i.eg = fadd double %i.ee, %i.ef, !dbg !120512
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !120513
  %i.ei = uitofp i32 %i.ay to double, !dbg !120499
  %i.ej = fadd double %i.eh, %i.ei, !dbg !120512
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !120513
  %i.el = uitofp i32 %i.az to double, !dbg !120499
  %i.em = fadd double %i.ek, %i.el, !dbg !120512
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !120513
  %i.eo = uitofp i32 %i.ba to double, !dbg !120499
  %i.ep = fadd double %i.en, %i.eo, !dbg !120512
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !120513
  %i.er = uitofp i32 %i.bb to double, !dbg !120499
  %i.es = fadd double %i.eq, %i.er, !dbg !120512
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !120513
  %i.eu = uitofp i32 %i.bc to double, !dbg !120499
  %i.ev = fadd double %i.et, %i.eu, !dbg !120512
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !120513
  %i.ex = uitofp i32 %i.bd to double, !dbg !120499
  %i.ey = fadd double %i.ew, %i.ex, !dbg !120512
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !120513
  %i.fa = uitofp i32 %i.be to double, !dbg !120499
  %i.fb = fadd double %i.ez, %i.fa, !dbg !120512
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !120513
  %i.fd = uitofp i32 %i.bf to double, !dbg !120499
  %i.fe = fadd double %i.fc, %i.fd, !dbg !120512
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !120513
  %i.fg = uitofp i32 %i.bg to double, !dbg !120499
  %i.fh = fadd double %i.ff, %i.fg, !dbg !120512
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !120513
  %i.fj = uitofp i32 %i.bh to double, !dbg !120499
  %i.fk = fadd double %i.fi, %i.fj, !dbg !120512
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !120513
  %i.fm = uitofp i32 %i.bi to double, !dbg !120499
  %i.fn = fadd double %i.fl, %i.fm, !dbg !120512
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !120513
  %i.fp = uitofp i32 %i.bj to double, !dbg !120499
  %i.fq = fadd double %i.fo, %i.fp, !dbg !120512
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !120513
  %i.fs = uitofp i32 %i.bk to double, !dbg !120499
  %i.ft = fadd double %i.fr, %i.fs, !dbg !120512
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !120513
  %i.fv = uitofp i32 %i.bl to double, !dbg !120499
  %i.fw = fadd double %i.fu, %i.fv, !dbg !120512
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !120513
  %i.fy = uitofp i32 %i.bm to double, !dbg !120499
  %i.fz = fadd double %i.fx, %i.fy, !dbg !120512
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !120513
  %i.gb = uitofp i32 %i.bn to double, !dbg !120499
  %i.gc = fadd double %i.ga, %i.gb, !dbg !120512
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !120513
  %i.ge = uitofp i32 %i.bo to double, !dbg !120499
  %i.gf = fadd double %i.gd, %i.ge, !dbg !120512
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !120513
  %i.gh = uitofp i32 %i.bp to double, !dbg !120499
  %i.gi = fadd double %i.gg, %i.gh, !dbg !120512
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !120513
  %i.gk = uitofp i32 %i.bq to double, !dbg !120499
  %i.gl = fadd double %i.gj, %i.gk, !dbg !120512
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !120513
  %i.gn = uitofp i32 %i.br to double, !dbg !120499
  %i.go = fadd double %i.gm, %i.gn, !dbg !120512
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !120513
  %i.gq = uitofp i32 %i.bs to double, !dbg !120499
  %i.gr = fadd double %i.gp, %i.gq, !dbg !120512
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !120513
  %i.gt = uitofp i32 %i.bt to double, !dbg !120499
  %i.gu = fadd double %i.gs, %i.gt, !dbg !120512
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !120513
  %i.gw = uitofp i32 %i.bu to double, !dbg !120499
  %i.gx = fadd double %i.gv, %i.gw, !dbg !120512
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !120513
  %i.gz = uitofp i32 %i.bv to double, !dbg !120499
  %i.ha = fadd double %i.gy, %i.gz, !dbg !120512
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !120513
  %i.hc = uitofp i32 %i.bw to double, !dbg !120499
  %i.hd = fadd double %i.hb, %i.hc, !dbg !120512
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !120513
  %i.hf = uitofp i32 %i.bx to double, !dbg !120499
  %i.hg = fadd double %i.he, %i.hf, !dbg !120512
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !120513
  %i.hi = uitofp i32 %i.by to double, !dbg !120499
  %i.hj = fadd double %i.hh, %i.hi, !dbg !120512
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !120513
  %i.hl = uitofp i32 %i.bz to double, !dbg !120499
  %i.hm = fadd double %i.hk, %i.hl, !dbg !120512
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !120513
  %i.ho = uitofp i32 %i.ca to double, !dbg !120499
  %i.hp = fadd double %i.hn, %i.ho, !dbg !120512
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !120513
  %i.hr = uitofp i32 %i.cb to double, !dbg !120499
  %i.hs = fadd double %i.hq, %i.hr, !dbg !120512
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !120513
  %i.hu = uitofp i32 %i.cc to double, !dbg !120499
  %i.hv = fadd double %i.ht, %i.hu, !dbg !120512
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !120513
  %i.hx = uitofp i32 %i.cd to double, !dbg !120499
  %i.hy = fadd double %i.hw, %i.hx, !dbg !120512
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !120513
  %i.ia = uitofp i32 %i.ce to double, !dbg !120499
  %i.ib = fadd double %i.hz, %i.ia, !dbg !120512
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !120513
  %i.id = uitofp i32 %i.cf to double, !dbg !120499
  %i.ie = fadd double %i.ic, %i.id, !dbg !120512
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !120513
  %i.ig = uitofp i32 %i.cg to double, !dbg !120499
  %i.ih = fadd double %i.if, %i.ig, !dbg !120512
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !120513
  %i.ij = uitofp i32 %i.ch to double, !dbg !120499
  %i.ik = fadd double %i.ii, %i.ij, !dbg !120512
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !120513
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !120514
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !120515
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !120516
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !120515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120517
  ret i64 %i.ip, !dbg !120518
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionhEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120519 !guid !120526 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionhEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %1), !dbg !120529 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !120530
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !120531
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !120532
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !120532
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !120531
  %i.g = and i64 %i.a, 16383, !dbg !120533
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !120534 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !120534, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !120535
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !120536
  ret void, !dbg !120537
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionhEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120538 !guid !120584 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120585), !dbg !120593
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !120594, !alias.scope !120585
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !120595 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120595, !noalias !120586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !120596, !noalias !120585
  br label %bb.b, !dbg !120597

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120598
  %i.e = load i8, ptr %i.d, align 2, !dbg !120599, !alias.scope !120588, !noalias !120586, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !120600        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !120601
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !120601

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !120601 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !120601, !alias.scope !120585, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !120601
  store i32 %i.j, ptr %i.h, align 4, !dbg !120601, !alias.scope !120585
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120598
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !120598
  %i.m = load i8, ptr %i.l, align 1, !dbg !120599, !alias.scope !120588, !noalias !120586, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !120600        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !120601
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !120601

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !120602    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !120601 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !120601, !alias.scope !120585, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !120601
  store i32 %i.s, ptr %i.q, align 4, !dbg !120601, !alias.scope !120585
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !120597
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionhEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !120597

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !120600
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !120601, !noalias !120586
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionhEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120603, !noalias !120586
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !120604
  %i.u = load i32, ptr %i.t, align 4, !dbg !120604, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !120604
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !120605
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !120605 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !120606
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !120606
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !120606

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionhEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !120607
  br label %bb.g, !dbg !120608

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !120609 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !120610
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !120611 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !120612 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !120613 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !120614
  %i.af = fmul double %i.ac, %i.ae, !dbg !120613
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !120615 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !120616
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !120616

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !120617
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !120618
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !120619

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionhEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionhEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120610
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !120620
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !120620, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !120620
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !120620, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !120620
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !120620, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !120620
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !120620, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !120620
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !120620, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !120620
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !120620, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !120620
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !120620, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !120620
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !120620, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !120620
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !120620, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !120620
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !120620, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !120620
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !120620, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !120620
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !120620, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !120620
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !120620, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !120620
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !120620, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !120620
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !120620, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !120620
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !120620, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !120620
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !120620, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !120620
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !120620, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !120620
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !120620, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !120620
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !120620, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !120620
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !120620, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !120620
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !120620, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !120620
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !120620, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !120620
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !120620, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !120620
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !120620, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !120620
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !120620, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !120620
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !120620, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !120620
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !120620, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !120620
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !120620, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !120620
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !120620, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !120620
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !120620, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !120620
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !120620, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !120620
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !120620, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !120620
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !120620, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !120620
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !120620, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !120620
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !120620, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !120620
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !120620, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !120620
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !120620, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !120620
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !120620, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !120620
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !120620, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !120620
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !120620, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !120620
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !120620, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !120620
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !120620, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !120620
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !120620, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !120620
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !120620, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !120620
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !120620, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !120620
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !120620, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !120620
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !120620, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120620
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !120620, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !120620
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !120620, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !120621, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !120621
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !120621 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !120622
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !120622

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120623 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120624 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120625 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !120626 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !120627
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !120628 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !120629
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !120630
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !120630

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !120631
  br label %bb.j, !dbg !120632

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120623
  %i.cs = uitofp i32 %i.ak to double, !dbg !120620
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !120633
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !120634
  %i.cv = uitofp i32 %i.al to double, !dbg !120620
  %i.cw = fadd double %i.cu, %i.cv, !dbg !120633
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !120634
  %i.cy = uitofp i32 %i.am to double, !dbg !120620
  %i.cz = fadd double %i.cx, %i.cy, !dbg !120633
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !120634
  %i.db = uitofp i32 %i.an to double, !dbg !120620
  %i.dc = fadd double %i.da, %i.db, !dbg !120633
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !120634
  %i.de = uitofp i32 %i.ao to double, !dbg !120620
  %i.df = fadd double %i.dd, %i.de, !dbg !120633
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !120634
  %i.dh = uitofp i32 %i.ap to double, !dbg !120620
  %i.di = fadd double %i.dg, %i.dh, !dbg !120633
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !120634
  %i.dk = uitofp i32 %i.aq to double, !dbg !120620
  %i.dl = fadd double %i.dj, %i.dk, !dbg !120633
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !120634
  %i.dn = uitofp i32 %i.ar to double, !dbg !120620
  %i.do = fadd double %i.dm, %i.dn, !dbg !120633
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !120634
  %i.dq = uitofp i32 %i.as to double, !dbg !120620
  %i.dr = fadd double %i.dp, %i.dq, !dbg !120633
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !120634
  %i.dt = uitofp i32 %i.at to double, !dbg !120620
  %i.du = fadd double %i.ds, %i.dt, !dbg !120633
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !120634
  %i.dw = uitofp i32 %i.au to double, !dbg !120620
  %i.dx = fadd double %i.dv, %i.dw, !dbg !120633
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !120634
  %i.dz = uitofp i32 %i.av to double, !dbg !120620
  %i.ea = fadd double %i.dy, %i.dz, !dbg !120633
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !120634
  %i.ec = uitofp i32 %i.aw to double, !dbg !120620
  %i.ed = fadd double %i.eb, %i.ec, !dbg !120633
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !120634
  %i.ef = uitofp i32 %i.ax to double, !dbg !120620
  %i.eg = fadd double %i.ee, %i.ef, !dbg !120633
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !120634
  %i.ei = uitofp i32 %i.ay to double, !dbg !120620
  %i.ej = fadd double %i.eh, %i.ei, !dbg !120633
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !120634
  %i.el = uitofp i32 %i.az to double, !dbg !120620
  %i.em = fadd double %i.ek, %i.el, !dbg !120633
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !120634
  %i.eo = uitofp i32 %i.ba to double, !dbg !120620
  %i.ep = fadd double %i.en, %i.eo, !dbg !120633
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !120634
  %i.er = uitofp i32 %i.bb to double, !dbg !120620
  %i.es = fadd double %i.eq, %i.er, !dbg !120633
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !120634
  %i.eu = uitofp i32 %i.bc to double, !dbg !120620
  %i.ev = fadd double %i.et, %i.eu, !dbg !120633
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !120634
  %i.ex = uitofp i32 %i.bd to double, !dbg !120620
  %i.ey = fadd double %i.ew, %i.ex, !dbg !120633
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !120634
  %i.fa = uitofp i32 %i.be to double, !dbg !120620
  %i.fb = fadd double %i.ez, %i.fa, !dbg !120633
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !120634
  %i.fd = uitofp i32 %i.bf to double, !dbg !120620
  %i.fe = fadd double %i.fc, %i.fd, !dbg !120633
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !120634
  %i.fg = uitofp i32 %i.bg to double, !dbg !120620
  %i.fh = fadd double %i.ff, %i.fg, !dbg !120633
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !120634
  %i.fj = uitofp i32 %i.bh to double, !dbg !120620
  %i.fk = fadd double %i.fi, %i.fj, !dbg !120633
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !120634
  %i.fm = uitofp i32 %i.bi to double, !dbg !120620
  %i.fn = fadd double %i.fl, %i.fm, !dbg !120633
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !120634
  %i.fp = uitofp i32 %i.bj to double, !dbg !120620
  %i.fq = fadd double %i.fo, %i.fp, !dbg !120633
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !120634
  %i.fs = uitofp i32 %i.bk to double, !dbg !120620
  %i.ft = fadd double %i.fr, %i.fs, !dbg !120633
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !120634
  %i.fv = uitofp i32 %i.bl to double, !dbg !120620
  %i.fw = fadd double %i.fu, %i.fv, !dbg !120633
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !120634
  %i.fy = uitofp i32 %i.bm to double, !dbg !120620
  %i.fz = fadd double %i.fx, %i.fy, !dbg !120633
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !120634
  %i.gb = uitofp i32 %i.bn to double, !dbg !120620
  %i.gc = fadd double %i.ga, %i.gb, !dbg !120633
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !120634
  %i.ge = uitofp i32 %i.bo to double, !dbg !120620
  %i.gf = fadd double %i.gd, %i.ge, !dbg !120633
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !120634
  %i.gh = uitofp i32 %i.bp to double, !dbg !120620
  %i.gi = fadd double %i.gg, %i.gh, !dbg !120633
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !120634
  %i.gk = uitofp i32 %i.bq to double, !dbg !120620
  %i.gl = fadd double %i.gj, %i.gk, !dbg !120633
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !120634
  %i.gn = uitofp i32 %i.br to double, !dbg !120620
  %i.go = fadd double %i.gm, %i.gn, !dbg !120633
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !120634
  %i.gq = uitofp i32 %i.bs to double, !dbg !120620
  %i.gr = fadd double %i.gp, %i.gq, !dbg !120633
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !120634
  %i.gt = uitofp i32 %i.bt to double, !dbg !120620
  %i.gu = fadd double %i.gs, %i.gt, !dbg !120633
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !120634
  %i.gw = uitofp i32 %i.bu to double, !dbg !120620
  %i.gx = fadd double %i.gv, %i.gw, !dbg !120633
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !120634
  %i.gz = uitofp i32 %i.bv to double, !dbg !120620
  %i.ha = fadd double %i.gy, %i.gz, !dbg !120633
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !120634
  %i.hc = uitofp i32 %i.bw to double, !dbg !120620
  %i.hd = fadd double %i.hb, %i.hc, !dbg !120633
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !120634
  %i.hf = uitofp i32 %i.bx to double, !dbg !120620
  %i.hg = fadd double %i.he, %i.hf, !dbg !120633
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !120634
  %i.hi = uitofp i32 %i.by to double, !dbg !120620
  %i.hj = fadd double %i.hh, %i.hi, !dbg !120633
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !120634
  %i.hl = uitofp i32 %i.bz to double, !dbg !120620
  %i.hm = fadd double %i.hk, %i.hl, !dbg !120633
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !120634
  %i.ho = uitofp i32 %i.ca to double, !dbg !120620
  %i.hp = fadd double %i.hn, %i.ho, !dbg !120633
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !120634
  %i.hr = uitofp i32 %i.cb to double, !dbg !120620
  %i.hs = fadd double %i.hq, %i.hr, !dbg !120633
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !120634
  %i.hu = uitofp i32 %i.cc to double, !dbg !120620
  %i.hv = fadd double %i.ht, %i.hu, !dbg !120633
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !120634
  %i.hx = uitofp i32 %i.cd to double, !dbg !120620
  %i.hy = fadd double %i.hw, %i.hx, !dbg !120633
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !120634
  %i.ia = uitofp i32 %i.ce to double, !dbg !120620
  %i.ib = fadd double %i.hz, %i.ia, !dbg !120633
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !120634
  %i.id = uitofp i32 %i.cf to double, !dbg !120620
  %i.ie = fadd double %i.ic, %i.id, !dbg !120633
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !120634
  %i.ig = uitofp i32 %i.cg to double, !dbg !120620
  %i.ih = fadd double %i.if, %i.ig, !dbg !120633
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !120634
  %i.ij = uitofp i32 %i.ch to double, !dbg !120620
  %i.ik = fadd double %i.ii, %i.ij, !dbg !120633
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !120634
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !120635
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !120636
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !120637
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !120636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120638
  ret i64 %i.ip, !dbg !120639
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionlEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120640 !guid !120647 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionlEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1), !dbg !120650 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !120651
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !120652
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !120653
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !120653
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !120652
  %i.g = and i64 %i.a, 16383, !dbg !120654
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !120655 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !120655, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !120656
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !120657
  ret void, !dbg !120658
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionlEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120659 !guid !120705 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120706), !dbg !120714
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !120715, !alias.scope !120706
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !120716 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120716, !noalias !120707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !120717, !noalias !120706
  br label %bb.b, !dbg !120718

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120719
  %i.e = load i8, ptr %i.d, align 2, !dbg !120720, !alias.scope !120709, !noalias !120707, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !120721        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !120722
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !120722

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !120722 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !120722, !alias.scope !120706, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !120722
  store i32 %i.j, ptr %i.h, align 4, !dbg !120722, !alias.scope !120706
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120719
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !120719
  %i.m = load i8, ptr %i.l, align 1, !dbg !120720, !alias.scope !120709, !noalias !120707, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !120721        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !120722
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !120722

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !120723    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !120722 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !120722, !alias.scope !120706, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !120722
  store i32 %i.s, ptr %i.q, align 4, !dbg !120722, !alias.scope !120706
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !120718
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionlEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !120718

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !120721
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !120722, !noalias !120707
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionlEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120724, !noalias !120707
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !120725
  %i.u = load i32, ptr %i.t, align 4, !dbg !120725, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !120725
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !120726
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !120726 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !120727
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !120727
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !120727

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionlEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !120728
  br label %bb.g, !dbg !120729

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !120730 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !120731
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !120732 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !120733 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !120734 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !120735
  %i.af = fmul double %i.ac, %i.ae, !dbg !120734
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !120736 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !120737
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !120737

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !120738
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !120739
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !120740

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionlEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionlEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120731
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !120741
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !120741, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !120741
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !120741, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !120741
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !120741, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !120741
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !120741, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !120741
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !120741, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !120741
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !120741, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !120741
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !120741, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !120741
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !120741, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !120741
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !120741, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !120741
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !120741, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !120741
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !120741, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !120741
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !120741, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !120741
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !120741, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !120741
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !120741, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !120741
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !120741, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !120741
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !120741, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !120741
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !120741, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !120741
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !120741, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !120741
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !120741, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !120741
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !120741, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !120741
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !120741, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !120741
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !120741, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !120741
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !120741, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !120741
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !120741, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !120741
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !120741, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !120741
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !120741, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !120741
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !120741, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !120741
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !120741, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !120741
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !120741, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !120741
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !120741, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !120741
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !120741, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !120741
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !120741, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !120741
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !120741, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !120741
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !120741, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !120741
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !120741, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !120741
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !120741, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !120741
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !120741, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !120741
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !120741, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !120741
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !120741, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !120741
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !120741, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !120741
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !120741, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !120741
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !120741, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !120741
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !120741, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !120741
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !120741, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !120741
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !120741, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !120741
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !120741, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !120741
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !120741, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !120741
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !120741, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120741
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !120741, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !120741
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !120741, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !120742, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !120742
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !120742 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !120743
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !120743

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120744 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120745 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120746 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !120747 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !120748
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !120749 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !120750
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !120751
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !120751

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !120752
  br label %bb.j, !dbg !120753

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120744
  %i.cs = uitofp i32 %i.ak to double, !dbg !120741
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !120754
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !120755
  %i.cv = uitofp i32 %i.al to double, !dbg !120741
  %i.cw = fadd double %i.cu, %i.cv, !dbg !120754
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !120755
  %i.cy = uitofp i32 %i.am to double, !dbg !120741
  %i.cz = fadd double %i.cx, %i.cy, !dbg !120754
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !120755
  %i.db = uitofp i32 %i.an to double, !dbg !120741
  %i.dc = fadd double %i.da, %i.db, !dbg !120754
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !120755
  %i.de = uitofp i32 %i.ao to double, !dbg !120741
  %i.df = fadd double %i.dd, %i.de, !dbg !120754
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !120755
  %i.dh = uitofp i32 %i.ap to double, !dbg !120741
  %i.di = fadd double %i.dg, %i.dh, !dbg !120754
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !120755
  %i.dk = uitofp i32 %i.aq to double, !dbg !120741
  %i.dl = fadd double %i.dj, %i.dk, !dbg !120754
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !120755
  %i.dn = uitofp i32 %i.ar to double, !dbg !120741
  %i.do = fadd double %i.dm, %i.dn, !dbg !120754
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !120755
  %i.dq = uitofp i32 %i.as to double, !dbg !120741
  %i.dr = fadd double %i.dp, %i.dq, !dbg !120754
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !120755
  %i.dt = uitofp i32 %i.at to double, !dbg !120741
  %i.du = fadd double %i.ds, %i.dt, !dbg !120754
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !120755
  %i.dw = uitofp i32 %i.au to double, !dbg !120741
  %i.dx = fadd double %i.dv, %i.dw, !dbg !120754
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !120755
  %i.dz = uitofp i32 %i.av to double, !dbg !120741
  %i.ea = fadd double %i.dy, %i.dz, !dbg !120754
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !120755
  %i.ec = uitofp i32 %i.aw to double, !dbg !120741
  %i.ed = fadd double %i.eb, %i.ec, !dbg !120754
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !120755
  %i.ef = uitofp i32 %i.ax to double, !dbg !120741
  %i.eg = fadd double %i.ee, %i.ef, !dbg !120754
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !120755
  %i.ei = uitofp i32 %i.ay to double, !dbg !120741
  %i.ej = fadd double %i.eh, %i.ei, !dbg !120754
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !120755
  %i.el = uitofp i32 %i.az to double, !dbg !120741
  %i.em = fadd double %i.ek, %i.el, !dbg !120754
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !120755
  %i.eo = uitofp i32 %i.ba to double, !dbg !120741
  %i.ep = fadd double %i.en, %i.eo, !dbg !120754
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !120755
  %i.er = uitofp i32 %i.bb to double, !dbg !120741
  %i.es = fadd double %i.eq, %i.er, !dbg !120754
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !120755
  %i.eu = uitofp i32 %i.bc to double, !dbg !120741
  %i.ev = fadd double %i.et, %i.eu, !dbg !120754
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !120755
  %i.ex = uitofp i32 %i.bd to double, !dbg !120741
  %i.ey = fadd double %i.ew, %i.ex, !dbg !120754
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !120755
  %i.fa = uitofp i32 %i.be to double, !dbg !120741
  %i.fb = fadd double %i.ez, %i.fa, !dbg !120754
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !120755
  %i.fd = uitofp i32 %i.bf to double, !dbg !120741
  %i.fe = fadd double %i.fc, %i.fd, !dbg !120754
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !120755
  %i.fg = uitofp i32 %i.bg to double, !dbg !120741
  %i.fh = fadd double %i.ff, %i.fg, !dbg !120754
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !120755
  %i.fj = uitofp i32 %i.bh to double, !dbg !120741
  %i.fk = fadd double %i.fi, %i.fj, !dbg !120754
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !120755
  %i.fm = uitofp i32 %i.bi to double, !dbg !120741
  %i.fn = fadd double %i.fl, %i.fm, !dbg !120754
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !120755
  %i.fp = uitofp i32 %i.bj to double, !dbg !120741
  %i.fq = fadd double %i.fo, %i.fp, !dbg !120754
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !120755
  %i.fs = uitofp i32 %i.bk to double, !dbg !120741
  %i.ft = fadd double %i.fr, %i.fs, !dbg !120754
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !120755
  %i.fv = uitofp i32 %i.bl to double, !dbg !120741
  %i.fw = fadd double %i.fu, %i.fv, !dbg !120754
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !120755
  %i.fy = uitofp i32 %i.bm to double, !dbg !120741
  %i.fz = fadd double %i.fx, %i.fy, !dbg !120754
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !120755
  %i.gb = uitofp i32 %i.bn to double, !dbg !120741
  %i.gc = fadd double %i.ga, %i.gb, !dbg !120754
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !120755
  %i.ge = uitofp i32 %i.bo to double, !dbg !120741
  %i.gf = fadd double %i.gd, %i.ge, !dbg !120754
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !120755
  %i.gh = uitofp i32 %i.bp to double, !dbg !120741
  %i.gi = fadd double %i.gg, %i.gh, !dbg !120754
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !120755
  %i.gk = uitofp i32 %i.bq to double, !dbg !120741
  %i.gl = fadd double %i.gj, %i.gk, !dbg !120754
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !120755
  %i.gn = uitofp i32 %i.br to double, !dbg !120741
  %i.go = fadd double %i.gm, %i.gn, !dbg !120754
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !120755
  %i.gq = uitofp i32 %i.bs to double, !dbg !120741
  %i.gr = fadd double %i.gp, %i.gq, !dbg !120754
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !120755
  %i.gt = uitofp i32 %i.bt to double, !dbg !120741
  %i.gu = fadd double %i.gs, %i.gt, !dbg !120754
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !120755
  %i.gw = uitofp i32 %i.bu to double, !dbg !120741
  %i.gx = fadd double %i.gv, %i.gw, !dbg !120754
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !120755
  %i.gz = uitofp i32 %i.bv to double, !dbg !120741
  %i.ha = fadd double %i.gy, %i.gz, !dbg !120754
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !120755
  %i.hc = uitofp i32 %i.bw to double, !dbg !120741
  %i.hd = fadd double %i.hb, %i.hc, !dbg !120754
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !120755
  %i.hf = uitofp i32 %i.bx to double, !dbg !120741
  %i.hg = fadd double %i.he, %i.hf, !dbg !120754
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !120755
  %i.hi = uitofp i32 %i.by to double, !dbg !120741
  %i.hj = fadd double %i.hh, %i.hi, !dbg !120754
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !120755
  %i.hl = uitofp i32 %i.bz to double, !dbg !120741
  %i.hm = fadd double %i.hk, %i.hl, !dbg !120754
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !120755
  %i.ho = uitofp i32 %i.ca to double, !dbg !120741
  %i.hp = fadd double %i.hn, %i.ho, !dbg !120754
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !120755
  %i.hr = uitofp i32 %i.cb to double, !dbg !120741
  %i.hs = fadd double %i.hq, %i.hr, !dbg !120754
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !120755
  %i.hu = uitofp i32 %i.cc to double, !dbg !120741
  %i.hv = fadd double %i.ht, %i.hu, !dbg !120754
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !120755
  %i.hx = uitofp i32 %i.cd to double, !dbg !120741
  %i.hy = fadd double %i.hw, %i.hx, !dbg !120754
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !120755
  %i.ia = uitofp i32 %i.ce to double, !dbg !120741
  %i.ib = fadd double %i.hz, %i.ia, !dbg !120754
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !120755
  %i.id = uitofp i32 %i.cf to double, !dbg !120741
  %i.ie = fadd double %i.ic, %i.id, !dbg !120754
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !120755
  %i.ig = uitofp i32 %i.cg to double, !dbg !120741
  %i.ih = fadd double %i.if, %i.ig, !dbg !120754
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !120755
  %i.ij = uitofp i32 %i.ch to double, !dbg !120741
  %i.ik = fadd double %i.ii, %i.ij, !dbg !120754
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !120755
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !120756
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !120757
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !120758
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !120757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120759
  ret i64 %i.ip, !dbg !120760
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionmEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120761 !guid !120768 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionmEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1), !dbg !120771 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !120772
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !120773
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !120774
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !120774
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !120773
  %i.g = and i64 %i.a, 16383, !dbg !120775
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !120776 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !120776, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !120777
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !120778
  ret void, !dbg !120779
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionmEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120780 !guid !120826 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120834
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120827), !dbg !120835
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !120836, !alias.scope !120827
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !120837 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120837, !noalias !120828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !120838, !noalias !120827
  br label %bb.b, !dbg !120839

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120840
  %i.e = load i8, ptr %i.d, align 2, !dbg !120841, !alias.scope !120830, !noalias !120828, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !120842        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !120843
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !120843

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !120843 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !120843, !alias.scope !120827, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !120843
  store i32 %i.j, ptr %i.h, align 4, !dbg !120843, !alias.scope !120827
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120840
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !120840
  %i.m = load i8, ptr %i.l, align 1, !dbg !120841, !alias.scope !120830, !noalias !120828, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !120842        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !120843
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !120843

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !120844    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !120843 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !120843, !alias.scope !120827, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !120843
  store i32 %i.s, ptr %i.q, align 4, !dbg !120843, !alias.scope !120827
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !120839
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionmEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !120839

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !120842
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !120843, !noalias !120828
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionmEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120845, !noalias !120828
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !120846
  %i.u = load i32, ptr %i.t, align 4, !dbg !120846, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !120846
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !120847
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !120847 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !120848
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !120848
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !120848

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionmEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !120849
  br label %bb.g, !dbg !120850

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !120851 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !120852
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !120853 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !120854 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !120855 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !120856
  %i.af = fmul double %i.ac, %i.ae, !dbg !120855
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !120857 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !120858
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !120858

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !120859
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !120860
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !120861

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionmEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionmEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120852
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !120862
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !120862, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !120862
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !120862, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !120862
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !120862, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !120862
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !120862, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !120862
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !120862, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !120862
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !120862, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !120862
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !120862, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !120862
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !120862, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !120862
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !120862, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !120862
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !120862, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !120862
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !120862, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !120862
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !120862, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !120862
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !120862, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !120862
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !120862, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !120862
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !120862, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !120862
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !120862, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !120862
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !120862, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !120862
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !120862, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !120862
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !120862, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !120862
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !120862, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !120862
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !120862, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !120862
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !120862, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !120862
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !120862, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !120862
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !120862, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !120862
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !120862, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !120862
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !120862, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !120862
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !120862, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !120862
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !120862, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !120862
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !120862, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !120862
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !120862, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !120862
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !120862, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !120862
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !120862, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !120862
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !120862, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !120862
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !120862, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !120862
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !120862, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !120862
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !120862, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !120862
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !120862, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !120862
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !120862, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !120862
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !120862, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !120862
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !120862, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !120862
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !120862, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !120862
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !120862, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !120862
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !120862, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !120862
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !120862, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !120862
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !120862, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !120862
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !120862, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !120862
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !120862, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !120862
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !120862, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120862
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !120862, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !120862
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !120862, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !120863, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !120863
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !120863 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !120864
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !120864

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120865 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120866 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120867 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !120868 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !120869
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !120870 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !120871
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !120872
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !120872

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !120873
  br label %bb.j, !dbg !120874

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120865
  %i.cs = uitofp i32 %i.ak to double, !dbg !120862
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !120875
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !120876
  %i.cv = uitofp i32 %i.al to double, !dbg !120862
  %i.cw = fadd double %i.cu, %i.cv, !dbg !120875
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !120876
  %i.cy = uitofp i32 %i.am to double, !dbg !120862
  %i.cz = fadd double %i.cx, %i.cy, !dbg !120875
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !120876
  %i.db = uitofp i32 %i.an to double, !dbg !120862
  %i.dc = fadd double %i.da, %i.db, !dbg !120875
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !120876
  %i.de = uitofp i32 %i.ao to double, !dbg !120862
  %i.df = fadd double %i.dd, %i.de, !dbg !120875
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !120876
  %i.dh = uitofp i32 %i.ap to double, !dbg !120862
  %i.di = fadd double %i.dg, %i.dh, !dbg !120875
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !120876
  %i.dk = uitofp i32 %i.aq to double, !dbg !120862
  %i.dl = fadd double %i.dj, %i.dk, !dbg !120875
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !120876
  %i.dn = uitofp i32 %i.ar to double, !dbg !120862
  %i.do = fadd double %i.dm, %i.dn, !dbg !120875
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !120876
  %i.dq = uitofp i32 %i.as to double, !dbg !120862
  %i.dr = fadd double %i.dp, %i.dq, !dbg !120875
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !120876
  %i.dt = uitofp i32 %i.at to double, !dbg !120862
  %i.du = fadd double %i.ds, %i.dt, !dbg !120875
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !120876
  %i.dw = uitofp i32 %i.au to double, !dbg !120862
  %i.dx = fadd double %i.dv, %i.dw, !dbg !120875
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !120876
  %i.dz = uitofp i32 %i.av to double, !dbg !120862
  %i.ea = fadd double %i.dy, %i.dz, !dbg !120875
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !120876
  %i.ec = uitofp i32 %i.aw to double, !dbg !120862
  %i.ed = fadd double %i.eb, %i.ec, !dbg !120875
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !120876
  %i.ef = uitofp i32 %i.ax to double, !dbg !120862
  %i.eg = fadd double %i.ee, %i.ef, !dbg !120875
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !120876
  %i.ei = uitofp i32 %i.ay to double, !dbg !120862
  %i.ej = fadd double %i.eh, %i.ei, !dbg !120875
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !120876
  %i.el = uitofp i32 %i.az to double, !dbg !120862
  %i.em = fadd double %i.ek, %i.el, !dbg !120875
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !120876
  %i.eo = uitofp i32 %i.ba to double, !dbg !120862
  %i.ep = fadd double %i.en, %i.eo, !dbg !120875
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !120876
  %i.er = uitofp i32 %i.bb to double, !dbg !120862
  %i.es = fadd double %i.eq, %i.er, !dbg !120875
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !120876
  %i.eu = uitofp i32 %i.bc to double, !dbg !120862
  %i.ev = fadd double %i.et, %i.eu, !dbg !120875
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !120876
  %i.ex = uitofp i32 %i.bd to double, !dbg !120862
  %i.ey = fadd double %i.ew, %i.ex, !dbg !120875
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !120876
  %i.fa = uitofp i32 %i.be to double, !dbg !120862
  %i.fb = fadd double %i.ez, %i.fa, !dbg !120875
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !120876
  %i.fd = uitofp i32 %i.bf to double, !dbg !120862
  %i.fe = fadd double %i.fc, %i.fd, !dbg !120875
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !120876
  %i.fg = uitofp i32 %i.bg to double, !dbg !120862
  %i.fh = fadd double %i.ff, %i.fg, !dbg !120875
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !120876
  %i.fj = uitofp i32 %i.bh to double, !dbg !120862
  %i.fk = fadd double %i.fi, %i.fj, !dbg !120875
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !120876
  %i.fm = uitofp i32 %i.bi to double, !dbg !120862
  %i.fn = fadd double %i.fl, %i.fm, !dbg !120875
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !120876
  %i.fp = uitofp i32 %i.bj to double, !dbg !120862
  %i.fq = fadd double %i.fo, %i.fp, !dbg !120875
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !120876
  %i.fs = uitofp i32 %i.bk to double, !dbg !120862
  %i.ft = fadd double %i.fr, %i.fs, !dbg !120875
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !120876
  %i.fv = uitofp i32 %i.bl to double, !dbg !120862
  %i.fw = fadd double %i.fu, %i.fv, !dbg !120875
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !120876
  %i.fy = uitofp i32 %i.bm to double, !dbg !120862
  %i.fz = fadd double %i.fx, %i.fy, !dbg !120875
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !120876
  %i.gb = uitofp i32 %i.bn to double, !dbg !120862
  %i.gc = fadd double %i.ga, %i.gb, !dbg !120875
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !120876
  %i.ge = uitofp i32 %i.bo to double, !dbg !120862
  %i.gf = fadd double %i.gd, %i.ge, !dbg !120875
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !120876
  %i.gh = uitofp i32 %i.bp to double, !dbg !120862
  %i.gi = fadd double %i.gg, %i.gh, !dbg !120875
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !120876
  %i.gk = uitofp i32 %i.bq to double, !dbg !120862
  %i.gl = fadd double %i.gj, %i.gk, !dbg !120875
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !120876
  %i.gn = uitofp i32 %i.br to double, !dbg !120862
  %i.go = fadd double %i.gm, %i.gn, !dbg !120875
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !120876
  %i.gq = uitofp i32 %i.bs to double, !dbg !120862
  %i.gr = fadd double %i.gp, %i.gq, !dbg !120875
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !120876
  %i.gt = uitofp i32 %i.bt to double, !dbg !120862
  %i.gu = fadd double %i.gs, %i.gt, !dbg !120875
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !120876
  %i.gw = uitofp i32 %i.bu to double, !dbg !120862
  %i.gx = fadd double %i.gv, %i.gw, !dbg !120875
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !120876
  %i.gz = uitofp i32 %i.bv to double, !dbg !120862
  %i.ha = fadd double %i.gy, %i.gz, !dbg !120875
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !120876
  %i.hc = uitofp i32 %i.bw to double, !dbg !120862
  %i.hd = fadd double %i.hb, %i.hc, !dbg !120875
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !120876
  %i.hf = uitofp i32 %i.bx to double, !dbg !120862
  %i.hg = fadd double %i.he, %i.hf, !dbg !120875
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !120876
  %i.hi = uitofp i32 %i.by to double, !dbg !120862
  %i.hj = fadd double %i.hh, %i.hi, !dbg !120875
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !120876
  %i.hl = uitofp i32 %i.bz to double, !dbg !120862
  %i.hm = fadd double %i.hk, %i.hl, !dbg !120875
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !120876
  %i.ho = uitofp i32 %i.ca to double, !dbg !120862
  %i.hp = fadd double %i.hn, %i.ho, !dbg !120875
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !120876
  %i.hr = uitofp i32 %i.cb to double, !dbg !120862
  %i.hs = fadd double %i.hq, %i.hr, !dbg !120875
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !120876
  %i.hu = uitofp i32 %i.cc to double, !dbg !120862
  %i.hv = fadd double %i.ht, %i.hu, !dbg !120875
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !120876
  %i.hx = uitofp i32 %i.cd to double, !dbg !120862
  %i.hy = fadd double %i.hw, %i.hx, !dbg !120875
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !120876
  %i.ia = uitofp i32 %i.ce to double, !dbg !120862
  %i.ib = fadd double %i.hz, %i.ia, !dbg !120875
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !120876
  %i.id = uitofp i32 %i.cf to double, !dbg !120862
  %i.ie = fadd double %i.ic, %i.id, !dbg !120875
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !120876
  %i.ig = uitofp i32 %i.cg to double, !dbg !120862
  %i.ih = fadd double %i.if, %i.ig, !dbg !120875
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !120876
  %i.ij = uitofp i32 %i.ch to double, !dbg !120862
  %i.ik = fadd double %i.ii, %i.ij, !dbg !120875
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !120876
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !120877
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !120878
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !120879
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !120878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120880
  ret i64 %i.ip, !dbg !120881
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionnEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120882 !guid !120889 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionnEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1), !dbg !120892 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !120893
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !120894
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !120895
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !120895
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !120894
  %i.g = and i64 %i.a, 16383, !dbg !120896
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !120897 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !120897, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !120898
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !120899
  ret void, !dbg !120900
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionnEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !120901 !guid !120947 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120955
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120948), !dbg !120956
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !120957, !alias.scope !120948
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !120958 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120958, !noalias !120949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !120959, !noalias !120948
  br label %bb.b, !dbg !120960

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120961
  %i.e = load i8, ptr %i.d, align 2, !dbg !120962, !alias.scope !120951, !noalias !120949, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !120963        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !120964
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !120964

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !120964 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !120964, !alias.scope !120948, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !120964
  store i32 %i.j, ptr %i.h, align 4, !dbg !120964, !alias.scope !120948
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !120961
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !120961
  %i.m = load i8, ptr %i.l, align 1, !dbg !120962, !alias.scope !120951, !noalias !120949, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !120963        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !120964
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !120964

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !120965    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !120964 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !120964, !alias.scope !120948, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !120964
  store i32 %i.s, ptr %i.q, align 4, !dbg !120964, !alias.scope !120948
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !120960
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionnEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !120960

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !120963
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !120964, !noalias !120949
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionnEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120966, !noalias !120949
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !120967
  %i.u = load i32, ptr %i.t, align 4, !dbg !120967, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !120967
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !120968
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !120968 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !120969
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !120969
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !120969

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionnEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !120970
  br label %bb.g, !dbg !120971

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !120972 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !120973
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !120974 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !120975 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !120976 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !120977
  %i.af = fmul double %i.ac, %i.ae, !dbg !120976
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !120978 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !120979
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !120979

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !120980
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !120981
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !120982

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionnEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionnEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120973
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !120983
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !120983, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !120983
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !120983, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !120983
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !120983, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !120983
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !120983, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !120983
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !120983, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !120983
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !120983, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !120983
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !120983, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !120983
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !120983, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !120983
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !120983, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !120983
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !120983, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !120983
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !120983, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !120983
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !120983, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !120983
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !120983, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !120983
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !120983, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !120983
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !120983, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !120983
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !120983, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !120983
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !120983, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !120983
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !120983, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !120983
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !120983, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !120983
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !120983, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !120983
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !120983, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !120983
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !120983, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !120983
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !120983, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !120983
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !120983, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !120983
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !120983, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !120983
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !120983, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !120983
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !120983, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !120983
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !120983, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !120983
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !120983, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !120983
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !120983, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !120983
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !120983, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !120983
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !120983, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !120983
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !120983, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !120983
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !120983, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !120983
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !120983, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !120983
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !120983, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !120983
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !120983, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !120983
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !120983, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !120983
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !120983, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !120983
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !120983, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !120983
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !120983, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !120983
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !120983, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !120983
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !120983, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !120983
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !120983, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !120983
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !120983, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !120983
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !120983, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !120983
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !120983, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !120983
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !120983, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120983
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !120983, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !120983
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !120983, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !120984, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !120984
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !120984 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !120985
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !120985

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120986 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120987 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120988 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !120989 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !120990
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !120991 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !120992
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !120993
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !120993

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !120994
  br label %bb.j, !dbg !120995

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !120986
  %i.cs = uitofp i32 %i.ak to double, !dbg !120983
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !120996
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !120997
  %i.cv = uitofp i32 %i.al to double, !dbg !120983
  %i.cw = fadd double %i.cu, %i.cv, !dbg !120996
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !120997
  %i.cy = uitofp i32 %i.am to double, !dbg !120983
  %i.cz = fadd double %i.cx, %i.cy, !dbg !120996
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !120997
  %i.db = uitofp i32 %i.an to double, !dbg !120983
  %i.dc = fadd double %i.da, %i.db, !dbg !120996
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !120997
  %i.de = uitofp i32 %i.ao to double, !dbg !120983
  %i.df = fadd double %i.dd, %i.de, !dbg !120996
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !120997
  %i.dh = uitofp i32 %i.ap to double, !dbg !120983
  %i.di = fadd double %i.dg, %i.dh, !dbg !120996
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !120997
  %i.dk = uitofp i32 %i.aq to double, !dbg !120983
  %i.dl = fadd double %i.dj, %i.dk, !dbg !120996
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !120997
  %i.dn = uitofp i32 %i.ar to double, !dbg !120983
  %i.do = fadd double %i.dm, %i.dn, !dbg !120996
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !120997
  %i.dq = uitofp i32 %i.as to double, !dbg !120983
  %i.dr = fadd double %i.dp, %i.dq, !dbg !120996
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !120997
  %i.dt = uitofp i32 %i.at to double, !dbg !120983
  %i.du = fadd double %i.ds, %i.dt, !dbg !120996
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !120997
  %i.dw = uitofp i32 %i.au to double, !dbg !120983
  %i.dx = fadd double %i.dv, %i.dw, !dbg !120996
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !120997
  %i.dz = uitofp i32 %i.av to double, !dbg !120983
  %i.ea = fadd double %i.dy, %i.dz, !dbg !120996
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !120997
  %i.ec = uitofp i32 %i.aw to double, !dbg !120983
  %i.ed = fadd double %i.eb, %i.ec, !dbg !120996
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !120997
  %i.ef = uitofp i32 %i.ax to double, !dbg !120983
  %i.eg = fadd double %i.ee, %i.ef, !dbg !120996
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !120997
  %i.ei = uitofp i32 %i.ay to double, !dbg !120983
  %i.ej = fadd double %i.eh, %i.ei, !dbg !120996
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !120997
  %i.el = uitofp i32 %i.az to double, !dbg !120983
  %i.em = fadd double %i.ek, %i.el, !dbg !120996
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !120997
  %i.eo = uitofp i32 %i.ba to double, !dbg !120983
  %i.ep = fadd double %i.en, %i.eo, !dbg !120996
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !120997
  %i.er = uitofp i32 %i.bb to double, !dbg !120983
  %i.es = fadd double %i.eq, %i.er, !dbg !120996
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !120997
  %i.eu = uitofp i32 %i.bc to double, !dbg !120983
  %i.ev = fadd double %i.et, %i.eu, !dbg !120996
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !120997
  %i.ex = uitofp i32 %i.bd to double, !dbg !120983
  %i.ey = fadd double %i.ew, %i.ex, !dbg !120996
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !120997
  %i.fa = uitofp i32 %i.be to double, !dbg !120983
  %i.fb = fadd double %i.ez, %i.fa, !dbg !120996
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !120997
  %i.fd = uitofp i32 %i.bf to double, !dbg !120983
  %i.fe = fadd double %i.fc, %i.fd, !dbg !120996
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !120997
  %i.fg = uitofp i32 %i.bg to double, !dbg !120983
  %i.fh = fadd double %i.ff, %i.fg, !dbg !120996
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !120997
  %i.fj = uitofp i32 %i.bh to double, !dbg !120983
  %i.fk = fadd double %i.fi, %i.fj, !dbg !120996
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !120997
  %i.fm = uitofp i32 %i.bi to double, !dbg !120983
  %i.fn = fadd double %i.fl, %i.fm, !dbg !120996
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !120997
  %i.fp = uitofp i32 %i.bj to double, !dbg !120983
  %i.fq = fadd double %i.fo, %i.fp, !dbg !120996
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !120997
  %i.fs = uitofp i32 %i.bk to double, !dbg !120983
  %i.ft = fadd double %i.fr, %i.fs, !dbg !120996
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !120997
  %i.fv = uitofp i32 %i.bl to double, !dbg !120983
  %i.fw = fadd double %i.fu, %i.fv, !dbg !120996
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !120997
  %i.fy = uitofp i32 %i.bm to double, !dbg !120983
  %i.fz = fadd double %i.fx, %i.fy, !dbg !120996
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !120997
  %i.gb = uitofp i32 %i.bn to double, !dbg !120983
  %i.gc = fadd double %i.ga, %i.gb, !dbg !120996
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !120997
  %i.ge = uitofp i32 %i.bo to double, !dbg !120983
  %i.gf = fadd double %i.gd, %i.ge, !dbg !120996
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !120997
  %i.gh = uitofp i32 %i.bp to double, !dbg !120983
  %i.gi = fadd double %i.gg, %i.gh, !dbg !120996
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !120997
  %i.gk = uitofp i32 %i.bq to double, !dbg !120983
  %i.gl = fadd double %i.gj, %i.gk, !dbg !120996
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !120997
  %i.gn = uitofp i32 %i.br to double, !dbg !120983
  %i.go = fadd double %i.gm, %i.gn, !dbg !120996
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !120997
  %i.gq = uitofp i32 %i.bs to double, !dbg !120983
  %i.gr = fadd double %i.gp, %i.gq, !dbg !120996
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !120997
  %i.gt = uitofp i32 %i.bt to double, !dbg !120983
  %i.gu = fadd double %i.gs, %i.gt, !dbg !120996
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !120997
  %i.gw = uitofp i32 %i.bu to double, !dbg !120983
  %i.gx = fadd double %i.gv, %i.gw, !dbg !120996
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !120997
  %i.gz = uitofp i32 %i.bv to double, !dbg !120983
  %i.ha = fadd double %i.gy, %i.gz, !dbg !120996
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !120997
  %i.hc = uitofp i32 %i.bw to double, !dbg !120983
  %i.hd = fadd double %i.hb, %i.hc, !dbg !120996
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !120997
  %i.hf = uitofp i32 %i.bx to double, !dbg !120983
  %i.hg = fadd double %i.he, %i.hf, !dbg !120996
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !120997
  %i.hi = uitofp i32 %i.by to double, !dbg !120983
  %i.hj = fadd double %i.hh, %i.hi, !dbg !120996
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !120997
  %i.hl = uitofp i32 %i.bz to double, !dbg !120983
  %i.hm = fadd double %i.hk, %i.hl, !dbg !120996
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !120997
  %i.ho = uitofp i32 %i.ca to double, !dbg !120983
  %i.hp = fadd double %i.hn, %i.ho, !dbg !120996
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !120997
  %i.hr = uitofp i32 %i.cb to double, !dbg !120983
  %i.hs = fadd double %i.hq, %i.hr, !dbg !120996
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !120997
  %i.hu = uitofp i32 %i.cc to double, !dbg !120983
  %i.hv = fadd double %i.ht, %i.hu, !dbg !120996
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !120997
  %i.hx = uitofp i32 %i.cd to double, !dbg !120983
  %i.hy = fadd double %i.hw, %i.hx, !dbg !120996
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !120997
  %i.ia = uitofp i32 %i.ce to double, !dbg !120983
  %i.ib = fadd double %i.hz, %i.ia, !dbg !120996
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !120997
  %i.id = uitofp i32 %i.cf to double, !dbg !120983
  %i.ie = fadd double %i.ic, %i.id, !dbg !120996
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !120997
  %i.ig = uitofp i32 %i.cg to double, !dbg !120983
  %i.ih = fadd double %i.if, %i.ig, !dbg !120996
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !120997
  %i.ij = uitofp i32 %i.ch to double, !dbg !120983
  %i.ik = fadd double %i.ii, %i.ij, !dbg !120996
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !120997
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !120998
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !120999
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !121000
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !120999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !121001
  ret i64 %i.ip, !dbg !121002
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionoEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121003 !guid !121010 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionoEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1), !dbg !121013 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !121014
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !121015
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !121016
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !121016
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !121015
  %i.g = and i64 %i.a, 16383, !dbg !121017
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !121018 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !121018, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !121019
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !121020
  ret void, !dbg !121021
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionoEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121022 !guid !121068 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !121076
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121069), !dbg !121077
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !121078, !alias.scope !121069
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !121079 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !121079, !noalias !121070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !121080, !noalias !121069
  br label %bb.b, !dbg !121081

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121082
  %i.e = load i8, ptr %i.d, align 2, !dbg !121083, !alias.scope !121072, !noalias !121070, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !121084        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !121085
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !121085

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !121085 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !121085, !alias.scope !121069, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !121085
  store i32 %i.j, ptr %i.h, align 4, !dbg !121085, !alias.scope !121069
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121082
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !121082
  %i.m = load i8, ptr %i.l, align 1, !dbg !121083, !alias.scope !121072, !noalias !121070, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !121084        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !121085
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !121085

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !121086    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !121085 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !121085, !alias.scope !121069, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !121085
  store i32 %i.s, ptr %i.q, align 4, !dbg !121085, !alias.scope !121069
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !121081
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionoEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !121081

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !121084
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !121085, !noalias !121070
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionoEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !121087, !noalias !121070
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !121088
  %i.u = load i32, ptr %i.t, align 4, !dbg !121088, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !121088
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !121089
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !121089 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !121090
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !121090
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !121090

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionoEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !121091
  br label %bb.g, !dbg !121092

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !121093 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !121094
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !121095 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !121096 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !121097 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !121098
  %i.af = fmul double %i.ac, %i.ae, !dbg !121097
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !121099 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !121100
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !121100

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !121101
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !121102
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !121103

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionoEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionoEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121094
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !121104
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !121104, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !121104
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !121104, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !121104
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !121104, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !121104
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !121104, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !121104
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !121104, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !121104
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !121104, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !121104
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !121104, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !121104
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !121104, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !121104
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !121104, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !121104
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !121104, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !121104
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !121104, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !121104
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !121104, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !121104
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !121104, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !121104
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !121104, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !121104
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !121104, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !121104
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !121104, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !121104
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !121104, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !121104
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !121104, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !121104
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !121104, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !121104
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !121104, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !121104
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !121104, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !121104
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !121104, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !121104
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !121104, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !121104
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !121104, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !121104
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !121104, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !121104
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !121104, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !121104
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !121104, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !121104
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !121104, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !121104
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !121104, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !121104
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !121104, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !121104
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !121104, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !121104
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !121104, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !121104
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !121104, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !121104
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !121104, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !121104
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !121104, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !121104
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !121104, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !121104
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !121104, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !121104
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !121104, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !121104
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !121104, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !121104
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !121104, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !121104
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !121104, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !121104
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !121104, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !121104
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !121104, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !121104
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !121104, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !121104
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !121104, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !121104
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !121104, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !121104
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !121104, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !121104
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !121104, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !121104
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !121104, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !121104
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !121104, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !121105, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !121105
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !121105 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !121106
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !121106

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121107 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121108 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121109 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !121110 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !121111
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !121112 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !121113
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !121114
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !121114

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !121115
  br label %bb.j, !dbg !121116

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121107
  %i.cs = uitofp i32 %i.ak to double, !dbg !121104
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !121117
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !121118
  %i.cv = uitofp i32 %i.al to double, !dbg !121104
  %i.cw = fadd double %i.cu, %i.cv, !dbg !121117
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !121118
  %i.cy = uitofp i32 %i.am to double, !dbg !121104
  %i.cz = fadd double %i.cx, %i.cy, !dbg !121117
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !121118
  %i.db = uitofp i32 %i.an to double, !dbg !121104
  %i.dc = fadd double %i.da, %i.db, !dbg !121117
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !121118
  %i.de = uitofp i32 %i.ao to double, !dbg !121104
  %i.df = fadd double %i.dd, %i.de, !dbg !121117
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !121118
  %i.dh = uitofp i32 %i.ap to double, !dbg !121104
  %i.di = fadd double %i.dg, %i.dh, !dbg !121117
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !121118
  %i.dk = uitofp i32 %i.aq to double, !dbg !121104
  %i.dl = fadd double %i.dj, %i.dk, !dbg !121117
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !121118
  %i.dn = uitofp i32 %i.ar to double, !dbg !121104
  %i.do = fadd double %i.dm, %i.dn, !dbg !121117
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !121118
  %i.dq = uitofp i32 %i.as to double, !dbg !121104
  %i.dr = fadd double %i.dp, %i.dq, !dbg !121117
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !121118
  %i.dt = uitofp i32 %i.at to double, !dbg !121104
  %i.du = fadd double %i.ds, %i.dt, !dbg !121117
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !121118
  %i.dw = uitofp i32 %i.au to double, !dbg !121104
  %i.dx = fadd double %i.dv, %i.dw, !dbg !121117
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !121118
  %i.dz = uitofp i32 %i.av to double, !dbg !121104
  %i.ea = fadd double %i.dy, %i.dz, !dbg !121117
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !121118
  %i.ec = uitofp i32 %i.aw to double, !dbg !121104
  %i.ed = fadd double %i.eb, %i.ec, !dbg !121117
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !121118
  %i.ef = uitofp i32 %i.ax to double, !dbg !121104
  %i.eg = fadd double %i.ee, %i.ef, !dbg !121117
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !121118
  %i.ei = uitofp i32 %i.ay to double, !dbg !121104
  %i.ej = fadd double %i.eh, %i.ei, !dbg !121117
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !121118
  %i.el = uitofp i32 %i.az to double, !dbg !121104
  %i.em = fadd double %i.ek, %i.el, !dbg !121117
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !121118
  %i.eo = uitofp i32 %i.ba to double, !dbg !121104
  %i.ep = fadd double %i.en, %i.eo, !dbg !121117
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !121118
  %i.er = uitofp i32 %i.bb to double, !dbg !121104
  %i.es = fadd double %i.eq, %i.er, !dbg !121117
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !121118
  %i.eu = uitofp i32 %i.bc to double, !dbg !121104
  %i.ev = fadd double %i.et, %i.eu, !dbg !121117
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !121118
  %i.ex = uitofp i32 %i.bd to double, !dbg !121104
  %i.ey = fadd double %i.ew, %i.ex, !dbg !121117
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !121118
  %i.fa = uitofp i32 %i.be to double, !dbg !121104
  %i.fb = fadd double %i.ez, %i.fa, !dbg !121117
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !121118
  %i.fd = uitofp i32 %i.bf to double, !dbg !121104
  %i.fe = fadd double %i.fc, %i.fd, !dbg !121117
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !121118
  %i.fg = uitofp i32 %i.bg to double, !dbg !121104
  %i.fh = fadd double %i.ff, %i.fg, !dbg !121117
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !121118
  %i.fj = uitofp i32 %i.bh to double, !dbg !121104
  %i.fk = fadd double %i.fi, %i.fj, !dbg !121117
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !121118
  %i.fm = uitofp i32 %i.bi to double, !dbg !121104
  %i.fn = fadd double %i.fl, %i.fm, !dbg !121117
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !121118
  %i.fp = uitofp i32 %i.bj to double, !dbg !121104
  %i.fq = fadd double %i.fo, %i.fp, !dbg !121117
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !121118
  %i.fs = uitofp i32 %i.bk to double, !dbg !121104
  %i.ft = fadd double %i.fr, %i.fs, !dbg !121117
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !121118
  %i.fv = uitofp i32 %i.bl to double, !dbg !121104
  %i.fw = fadd double %i.fu, %i.fv, !dbg !121117
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !121118
  %i.fy = uitofp i32 %i.bm to double, !dbg !121104
  %i.fz = fadd double %i.fx, %i.fy, !dbg !121117
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !121118
  %i.gb = uitofp i32 %i.bn to double, !dbg !121104
  %i.gc = fadd double %i.ga, %i.gb, !dbg !121117
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !121118
  %i.ge = uitofp i32 %i.bo to double, !dbg !121104
  %i.gf = fadd double %i.gd, %i.ge, !dbg !121117
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !121118
  %i.gh = uitofp i32 %i.bp to double, !dbg !121104
  %i.gi = fadd double %i.gg, %i.gh, !dbg !121117
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !121118
  %i.gk = uitofp i32 %i.bq to double, !dbg !121104
  %i.gl = fadd double %i.gj, %i.gk, !dbg !121117
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !121118
  %i.gn = uitofp i32 %i.br to double, !dbg !121104
  %i.go = fadd double %i.gm, %i.gn, !dbg !121117
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !121118
  %i.gq = uitofp i32 %i.bs to double, !dbg !121104
  %i.gr = fadd double %i.gp, %i.gq, !dbg !121117
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !121118
  %i.gt = uitofp i32 %i.bt to double, !dbg !121104
  %i.gu = fadd double %i.gs, %i.gt, !dbg !121117
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !121118
  %i.gw = uitofp i32 %i.bu to double, !dbg !121104
  %i.gx = fadd double %i.gv, %i.gw, !dbg !121117
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !121118
  %i.gz = uitofp i32 %i.bv to double, !dbg !121104
  %i.ha = fadd double %i.gy, %i.gz, !dbg !121117
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !121118
  %i.hc = uitofp i32 %i.bw to double, !dbg !121104
  %i.hd = fadd double %i.hb, %i.hc, !dbg !121117
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !121118
  %i.hf = uitofp i32 %i.bx to double, !dbg !121104
  %i.hg = fadd double %i.he, %i.hf, !dbg !121117
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !121118
  %i.hi = uitofp i32 %i.by to double, !dbg !121104
  %i.hj = fadd double %i.hh, %i.hi, !dbg !121117
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !121118
  %i.hl = uitofp i32 %i.bz to double, !dbg !121104
  %i.hm = fadd double %i.hk, %i.hl, !dbg !121117
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !121118
  %i.ho = uitofp i32 %i.ca to double, !dbg !121104
  %i.hp = fadd double %i.hn, %i.ho, !dbg !121117
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !121118
  %i.hr = uitofp i32 %i.cb to double, !dbg !121104
  %i.hs = fadd double %i.hq, %i.hr, !dbg !121117
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !121118
  %i.hu = uitofp i32 %i.cc to double, !dbg !121104
  %i.hv = fadd double %i.ht, %i.hu, !dbg !121117
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !121118
  %i.hx = uitofp i32 %i.cd to double, !dbg !121104
  %i.hy = fadd double %i.hw, %i.hx, !dbg !121117
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !121118
  %i.ia = uitofp i32 %i.ce to double, !dbg !121104
  %i.ib = fadd double %i.hz, %i.ia, !dbg !121117
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !121118
  %i.id = uitofp i32 %i.cf to double, !dbg !121104
  %i.ie = fadd double %i.ic, %i.id, !dbg !121117
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !121118
  %i.ig = uitofp i32 %i.cg to double, !dbg !121104
  %i.ih = fadd double %i.if, %i.ig, !dbg !121117
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !121118
  %i.ij = uitofp i32 %i.ch to double, !dbg !121104
  %i.ik = fadd double %i.ii, %i.ij, !dbg !121117
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !121118
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !121119
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !121120
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !121121
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !121120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !121122
  ret i64 %i.ip, !dbg !121123
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionsEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121124 !guid !121131 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionsEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %1), !dbg !121134 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !121135
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !121136
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !121137
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !121137
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !121136
  %i.g = and i64 %i.a, 16383, !dbg !121138
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !121139 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !121139, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !121140
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !121141
  ret void, !dbg !121142
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionsEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121143 !guid !121189 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !121197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121190), !dbg !121198
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !121199, !alias.scope !121190
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !121200 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !121200, !noalias !121191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !121201, !noalias !121190
  br label %bb.b, !dbg !121202

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121203
  %i.e = load i8, ptr %i.d, align 2, !dbg !121204, !alias.scope !121193, !noalias !121191, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !121205        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !121206
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !121206

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !121206 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !121206, !alias.scope !121190, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !121206
  store i32 %i.j, ptr %i.h, align 4, !dbg !121206, !alias.scope !121190
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121203
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !121203
  %i.m = load i8, ptr %i.l, align 1, !dbg !121204, !alias.scope !121193, !noalias !121191, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !121205        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !121206
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !121206

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !121207    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !121206 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !121206, !alias.scope !121190, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !121206
  store i32 %i.s, ptr %i.q, align 4, !dbg !121206, !alias.scope !121190
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !121202
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionsEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !121202

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !121205
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !121206, !noalias !121191
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionsEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !121208, !noalias !121191
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !121209
  %i.u = load i32, ptr %i.t, align 4, !dbg !121209, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !121209
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !121210
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !121210 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !121211
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !121211
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !121211

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionsEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !121212
  br label %bb.g, !dbg !121213

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !121214 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !121215
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !121216 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !121217 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !121218 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !121219
  %i.af = fmul double %i.ac, %i.ae, !dbg !121218
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !121220 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !121221
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !121221

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !121222
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !121223
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !121224

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionsEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionsEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121215
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !121225
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !121225, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !121225
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !121225, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !121225
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !121225, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !121225
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !121225, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !121225
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !121225, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !121225
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !121225, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !121225
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !121225, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !121225
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !121225, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !121225
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !121225, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !121225
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !121225, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !121225
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !121225, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !121225
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !121225, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !121225
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !121225, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !121225
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !121225, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !121225
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !121225, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !121225
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !121225, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !121225
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !121225, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !121225
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !121225, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !121225
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !121225, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !121225
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !121225, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !121225
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !121225, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !121225
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !121225, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !121225
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !121225, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !121225
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !121225, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !121225
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !121225, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !121225
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !121225, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !121225
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !121225, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !121225
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !121225, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !121225
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !121225, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !121225
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !121225, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !121225
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !121225, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !121225
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !121225, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !121225
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !121225, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !121225
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !121225, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !121225
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !121225, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !121225
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !121225, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !121225
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !121225, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !121225
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !121225, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !121225
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !121225, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !121225
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !121225, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !121225
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !121225, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !121225
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !121225, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !121225
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !121225, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !121225
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !121225, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !121225
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !121225, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !121225
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !121225, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !121225
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !121225, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !121225
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !121225, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !121225
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !121225, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !121225
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !121225, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !121226, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !121226
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !121226 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !121227
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !121227

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121228 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121229 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121230 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !121231 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !121232
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !121233 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !121234
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !121235
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !121235

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !121236
  br label %bb.j, !dbg !121237

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121228
  %i.cs = uitofp i32 %i.ak to double, !dbg !121225
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !121238
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !121239
  %i.cv = uitofp i32 %i.al to double, !dbg !121225
  %i.cw = fadd double %i.cu, %i.cv, !dbg !121238
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !121239
  %i.cy = uitofp i32 %i.am to double, !dbg !121225
  %i.cz = fadd double %i.cx, %i.cy, !dbg !121238
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !121239
  %i.db = uitofp i32 %i.an to double, !dbg !121225
  %i.dc = fadd double %i.da, %i.db, !dbg !121238
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !121239
  %i.de = uitofp i32 %i.ao to double, !dbg !121225
  %i.df = fadd double %i.dd, %i.de, !dbg !121238
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !121239
  %i.dh = uitofp i32 %i.ap to double, !dbg !121225
  %i.di = fadd double %i.dg, %i.dh, !dbg !121238
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !121239
  %i.dk = uitofp i32 %i.aq to double, !dbg !121225
  %i.dl = fadd double %i.dj, %i.dk, !dbg !121238
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !121239
  %i.dn = uitofp i32 %i.ar to double, !dbg !121225
  %i.do = fadd double %i.dm, %i.dn, !dbg !121238
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !121239
  %i.dq = uitofp i32 %i.as to double, !dbg !121225
  %i.dr = fadd double %i.dp, %i.dq, !dbg !121238
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !121239
  %i.dt = uitofp i32 %i.at to double, !dbg !121225
  %i.du = fadd double %i.ds, %i.dt, !dbg !121238
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !121239
  %i.dw = uitofp i32 %i.au to double, !dbg !121225
  %i.dx = fadd double %i.dv, %i.dw, !dbg !121238
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !121239
  %i.dz = uitofp i32 %i.av to double, !dbg !121225
  %i.ea = fadd double %i.dy, %i.dz, !dbg !121238
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !121239
  %i.ec = uitofp i32 %i.aw to double, !dbg !121225
  %i.ed = fadd double %i.eb, %i.ec, !dbg !121238
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !121239
  %i.ef = uitofp i32 %i.ax to double, !dbg !121225
  %i.eg = fadd double %i.ee, %i.ef, !dbg !121238
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !121239
  %i.ei = uitofp i32 %i.ay to double, !dbg !121225
  %i.ej = fadd double %i.eh, %i.ei, !dbg !121238
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !121239
  %i.el = uitofp i32 %i.az to double, !dbg !121225
  %i.em = fadd double %i.ek, %i.el, !dbg !121238
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !121239
  %i.eo = uitofp i32 %i.ba to double, !dbg !121225
  %i.ep = fadd double %i.en, %i.eo, !dbg !121238
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !121239
  %i.er = uitofp i32 %i.bb to double, !dbg !121225
  %i.es = fadd double %i.eq, %i.er, !dbg !121238
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !121239
  %i.eu = uitofp i32 %i.bc to double, !dbg !121225
  %i.ev = fadd double %i.et, %i.eu, !dbg !121238
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !121239
  %i.ex = uitofp i32 %i.bd to double, !dbg !121225
  %i.ey = fadd double %i.ew, %i.ex, !dbg !121238
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !121239
  %i.fa = uitofp i32 %i.be to double, !dbg !121225
  %i.fb = fadd double %i.ez, %i.fa, !dbg !121238
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !121239
  %i.fd = uitofp i32 %i.bf to double, !dbg !121225
  %i.fe = fadd double %i.fc, %i.fd, !dbg !121238
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !121239
  %i.fg = uitofp i32 %i.bg to double, !dbg !121225
  %i.fh = fadd double %i.ff, %i.fg, !dbg !121238
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !121239
  %i.fj = uitofp i32 %i.bh to double, !dbg !121225
  %i.fk = fadd double %i.fi, %i.fj, !dbg !121238
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !121239
  %i.fm = uitofp i32 %i.bi to double, !dbg !121225
  %i.fn = fadd double %i.fl, %i.fm, !dbg !121238
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !121239
  %i.fp = uitofp i32 %i.bj to double, !dbg !121225
  %i.fq = fadd double %i.fo, %i.fp, !dbg !121238
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !121239
  %i.fs = uitofp i32 %i.bk to double, !dbg !121225
  %i.ft = fadd double %i.fr, %i.fs, !dbg !121238
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !121239
  %i.fv = uitofp i32 %i.bl to double, !dbg !121225
  %i.fw = fadd double %i.fu, %i.fv, !dbg !121238
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !121239
  %i.fy = uitofp i32 %i.bm to double, !dbg !121225
  %i.fz = fadd double %i.fx, %i.fy, !dbg !121238
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !121239
  %i.gb = uitofp i32 %i.bn to double, !dbg !121225
  %i.gc = fadd double %i.ga, %i.gb, !dbg !121238
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !121239
  %i.ge = uitofp i32 %i.bo to double, !dbg !121225
  %i.gf = fadd double %i.gd, %i.ge, !dbg !121238
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !121239
  %i.gh = uitofp i32 %i.bp to double, !dbg !121225
  %i.gi = fadd double %i.gg, %i.gh, !dbg !121238
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !121239
  %i.gk = uitofp i32 %i.bq to double, !dbg !121225
  %i.gl = fadd double %i.gj, %i.gk, !dbg !121238
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !121239
  %i.gn = uitofp i32 %i.br to double, !dbg !121225
  %i.go = fadd double %i.gm, %i.gn, !dbg !121238
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !121239
  %i.gq = uitofp i32 %i.bs to double, !dbg !121225
  %i.gr = fadd double %i.gp, %i.gq, !dbg !121238
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !121239
  %i.gt = uitofp i32 %i.bt to double, !dbg !121225
  %i.gu = fadd double %i.gs, %i.gt, !dbg !121238
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !121239
  %i.gw = uitofp i32 %i.bu to double, !dbg !121225
  %i.gx = fadd double %i.gv, %i.gw, !dbg !121238
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !121239
  %i.gz = uitofp i32 %i.bv to double, !dbg !121225
  %i.ha = fadd double %i.gy, %i.gz, !dbg !121238
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !121239
  %i.hc = uitofp i32 %i.bw to double, !dbg !121225
  %i.hd = fadd double %i.hb, %i.hc, !dbg !121238
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !121239
  %i.hf = uitofp i32 %i.bx to double, !dbg !121225
  %i.hg = fadd double %i.he, %i.hf, !dbg !121238
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !121239
  %i.hi = uitofp i32 %i.by to double, !dbg !121225
  %i.hj = fadd double %i.hh, %i.hi, !dbg !121238
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !121239
  %i.hl = uitofp i32 %i.bz to double, !dbg !121225
  %i.hm = fadd double %i.hk, %i.hl, !dbg !121238
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !121239
  %i.ho = uitofp i32 %i.ca to double, !dbg !121225
  %i.hp = fadd double %i.hn, %i.ho, !dbg !121238
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !121239
  %i.hr = uitofp i32 %i.cb to double, !dbg !121225
  %i.hs = fadd double %i.hq, %i.hr, !dbg !121238
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !121239
  %i.hu = uitofp i32 %i.cc to double, !dbg !121225
  %i.hv = fadd double %i.ht, %i.hu, !dbg !121238
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !121239
  %i.hx = uitofp i32 %i.cd to double, !dbg !121225
  %i.hy = fadd double %i.hw, %i.hx, !dbg !121238
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !121239
  %i.ia = uitofp i32 %i.ce to double, !dbg !121225
  %i.ib = fadd double %i.hz, %i.ia, !dbg !121238
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !121239
  %i.id = uitofp i32 %i.cf to double, !dbg !121225
  %i.ie = fadd double %i.ic, %i.id, !dbg !121238
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !121239
  %i.ig = uitofp i32 %i.cg to double, !dbg !121225
  %i.ih = fadd double %i.if, %i.ig, !dbg !121238
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !121239
  %i.ij = uitofp i32 %i.ch to double, !dbg !121225
  %i.ik = fadd double %i.ii, %i.ij, !dbg !121238
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !121239
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !121240
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !121241
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !121242
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !121241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !121243
  ret i64 %i.ip, !dbg !121244
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiontEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121245 !guid !121252 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptiontEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %1), !dbg !121255 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !121256
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !121257
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !121258
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !121258
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !121257
  %i.g = and i64 %i.a, 16383, !dbg !121259
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !121260 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !121260, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !121261
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !121262
  ret void, !dbg !121263
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiontEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121264 !guid !121310 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !121318
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121311), !dbg !121319
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !121320, !alias.scope !121311
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !121321 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !121321, !noalias !121312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !121322, !noalias !121311
  br label %bb.b, !dbg !121323

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121324
  %i.e = load i8, ptr %i.d, align 2, !dbg !121325, !alias.scope !121314, !noalias !121312, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !121326        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !121327
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !121327

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !121327 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !121327, !alias.scope !121311, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !121327
  store i32 %i.j, ptr %i.h, align 4, !dbg !121327, !alias.scope !121311
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121324
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !121324
  %i.m = load i8, ptr %i.l, align 1, !dbg !121325, !alias.scope !121314, !noalias !121312, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !121326        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !121327
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !121327

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !121328    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !121327 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !121327, !alias.scope !121311, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !121327
  store i32 %i.s, ptr %i.q, align 4, !dbg !121327, !alias.scope !121311
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !121323
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiontEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !121323

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !121326
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !121327, !noalias !121312
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiontEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !121329, !noalias !121312
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !121330
  %i.u = load i32, ptr %i.t, align 4, !dbg !121330, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !121330
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !121331
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !121331 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !121332
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !121332
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !121332

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiontEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !121333
  br label %bb.g, !dbg !121334

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !121335 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !121336
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !121337 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !121338 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !121339 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !121340
  %i.af = fmul double %i.ac, %i.ae, !dbg !121339
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !121341 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !121342
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !121342

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !121343
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !121344
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !121345

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiontEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptiontEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121336
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !121346
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !121346, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !121346
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !121346, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !121346
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !121346, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !121346
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !121346, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !121346
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !121346, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !121346
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !121346, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !121346
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !121346, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !121346
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !121346, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !121346
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !121346, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !121346
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !121346, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !121346
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !121346, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !121346
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !121346, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !121346
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !121346, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !121346
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !121346, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !121346
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !121346, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !121346
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !121346, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !121346
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !121346, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !121346
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !121346, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !121346
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !121346, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !121346
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !121346, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !121346
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !121346, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !121346
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !121346, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !121346
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !121346, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !121346
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !121346, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !121346
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !121346, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !121346
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !121346, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !121346
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !121346, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !121346
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !121346, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !121346
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !121346, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !121346
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !121346, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !121346
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !121346, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !121346
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !121346, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !121346
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !121346, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !121346
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !121346, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !121346
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !121346, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !121346
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !121346, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !121346
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !121346, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !121346
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !121346, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !121346
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !121346, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !121346
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !121346, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !121346
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !121346, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !121346
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !121346, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !121346
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !121346, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !121346
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !121346, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !121346
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !121346, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !121346
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !121346, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !121346
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !121346, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !121346
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !121346, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !121346
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !121346, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !121346
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !121346, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !121347, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !121347
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !121347 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !121348
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !121348

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121349 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121350 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121351 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !121352 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !121353
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !121354 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !121355
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !121356
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !121356

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !121357
  br label %bb.j, !dbg !121358

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121349
  %i.cs = uitofp i32 %i.ak to double, !dbg !121346
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !121359
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !121360
  %i.cv = uitofp i32 %i.al to double, !dbg !121346
  %i.cw = fadd double %i.cu, %i.cv, !dbg !121359
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !121360
  %i.cy = uitofp i32 %i.am to double, !dbg !121346
  %i.cz = fadd double %i.cx, %i.cy, !dbg !121359
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !121360
  %i.db = uitofp i32 %i.an to double, !dbg !121346
  %i.dc = fadd double %i.da, %i.db, !dbg !121359
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !121360
  %i.de = uitofp i32 %i.ao to double, !dbg !121346
  %i.df = fadd double %i.dd, %i.de, !dbg !121359
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !121360
  %i.dh = uitofp i32 %i.ap to double, !dbg !121346
  %i.di = fadd double %i.dg, %i.dh, !dbg !121359
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !121360
  %i.dk = uitofp i32 %i.aq to double, !dbg !121346
  %i.dl = fadd double %i.dj, %i.dk, !dbg !121359
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !121360
  %i.dn = uitofp i32 %i.ar to double, !dbg !121346
  %i.do = fadd double %i.dm, %i.dn, !dbg !121359
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !121360
  %i.dq = uitofp i32 %i.as to double, !dbg !121346
  %i.dr = fadd double %i.dp, %i.dq, !dbg !121359
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !121360
  %i.dt = uitofp i32 %i.at to double, !dbg !121346
  %i.du = fadd double %i.ds, %i.dt, !dbg !121359
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !121360
  %i.dw = uitofp i32 %i.au to double, !dbg !121346
  %i.dx = fadd double %i.dv, %i.dw, !dbg !121359
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !121360
  %i.dz = uitofp i32 %i.av to double, !dbg !121346
  %i.ea = fadd double %i.dy, %i.dz, !dbg !121359
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !121360
  %i.ec = uitofp i32 %i.aw to double, !dbg !121346
  %i.ed = fadd double %i.eb, %i.ec, !dbg !121359
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !121360
  %i.ef = uitofp i32 %i.ax to double, !dbg !121346
  %i.eg = fadd double %i.ee, %i.ef, !dbg !121359
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !121360
  %i.ei = uitofp i32 %i.ay to double, !dbg !121346
  %i.ej = fadd double %i.eh, %i.ei, !dbg !121359
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !121360
  %i.el = uitofp i32 %i.az to double, !dbg !121346
  %i.em = fadd double %i.ek, %i.el, !dbg !121359
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !121360
  %i.eo = uitofp i32 %i.ba to double, !dbg !121346
  %i.ep = fadd double %i.en, %i.eo, !dbg !121359
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !121360
  %i.er = uitofp i32 %i.bb to double, !dbg !121346
  %i.es = fadd double %i.eq, %i.er, !dbg !121359
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !121360
  %i.eu = uitofp i32 %i.bc to double, !dbg !121346
  %i.ev = fadd double %i.et, %i.eu, !dbg !121359
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !121360
  %i.ex = uitofp i32 %i.bd to double, !dbg !121346
  %i.ey = fadd double %i.ew, %i.ex, !dbg !121359
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !121360
  %i.fa = uitofp i32 %i.be to double, !dbg !121346
  %i.fb = fadd double %i.ez, %i.fa, !dbg !121359
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !121360
  %i.fd = uitofp i32 %i.bf to double, !dbg !121346
  %i.fe = fadd double %i.fc, %i.fd, !dbg !121359
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !121360
  %i.fg = uitofp i32 %i.bg to double, !dbg !121346
  %i.fh = fadd double %i.ff, %i.fg, !dbg !121359
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !121360
  %i.fj = uitofp i32 %i.bh to double, !dbg !121346
  %i.fk = fadd double %i.fi, %i.fj, !dbg !121359
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !121360
  %i.fm = uitofp i32 %i.bi to double, !dbg !121346
  %i.fn = fadd double %i.fl, %i.fm, !dbg !121359
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !121360
  %i.fp = uitofp i32 %i.bj to double, !dbg !121346
  %i.fq = fadd double %i.fo, %i.fp, !dbg !121359
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !121360
  %i.fs = uitofp i32 %i.bk to double, !dbg !121346
  %i.ft = fadd double %i.fr, %i.fs, !dbg !121359
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !121360
  %i.fv = uitofp i32 %i.bl to double, !dbg !121346
  %i.fw = fadd double %i.fu, %i.fv, !dbg !121359
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !121360
  %i.fy = uitofp i32 %i.bm to double, !dbg !121346
  %i.fz = fadd double %i.fx, %i.fy, !dbg !121359
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !121360
  %i.gb = uitofp i32 %i.bn to double, !dbg !121346
  %i.gc = fadd double %i.ga, %i.gb, !dbg !121359
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !121360
  %i.ge = uitofp i32 %i.bo to double, !dbg !121346
  %i.gf = fadd double %i.gd, %i.ge, !dbg !121359
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !121360
  %i.gh = uitofp i32 %i.bp to double, !dbg !121346
  %i.gi = fadd double %i.gg, %i.gh, !dbg !121359
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !121360
  %i.gk = uitofp i32 %i.bq to double, !dbg !121346
  %i.gl = fadd double %i.gj, %i.gk, !dbg !121359
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !121360
  %i.gn = uitofp i32 %i.br to double, !dbg !121346
  %i.go = fadd double %i.gm, %i.gn, !dbg !121359
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !121360
  %i.gq = uitofp i32 %i.bs to double, !dbg !121346
  %i.gr = fadd double %i.gp, %i.gq, !dbg !121359
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !121360
  %i.gt = uitofp i32 %i.bt to double, !dbg !121346
  %i.gu = fadd double %i.gs, %i.gt, !dbg !121359
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !121360
  %i.gw = uitofp i32 %i.bu to double, !dbg !121346
  %i.gx = fadd double %i.gv, %i.gw, !dbg !121359
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !121360
  %i.gz = uitofp i32 %i.bv to double, !dbg !121346
  %i.ha = fadd double %i.gy, %i.gz, !dbg !121359
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !121360
  %i.hc = uitofp i32 %i.bw to double, !dbg !121346
  %i.hd = fadd double %i.hb, %i.hc, !dbg !121359
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !121360
  %i.hf = uitofp i32 %i.bx to double, !dbg !121346
  %i.hg = fadd double %i.he, %i.hf, !dbg !121359
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !121360
  %i.hi = uitofp i32 %i.by to double, !dbg !121346
  %i.hj = fadd double %i.hh, %i.hi, !dbg !121359
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !121360
  %i.hl = uitofp i32 %i.bz to double, !dbg !121346
  %i.hm = fadd double %i.hk, %i.hl, !dbg !121359
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !121360
  %i.ho = uitofp i32 %i.ca to double, !dbg !121346
  %i.hp = fadd double %i.hn, %i.ho, !dbg !121359
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !121360
  %i.hr = uitofp i32 %i.cb to double, !dbg !121346
  %i.hs = fadd double %i.hq, %i.hr, !dbg !121359
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !121360
  %i.hu = uitofp i32 %i.cc to double, !dbg !121346
  %i.hv = fadd double %i.ht, %i.hu, !dbg !121359
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !121360
  %i.hx = uitofp i32 %i.cd to double, !dbg !121346
  %i.hy = fadd double %i.hw, %i.hx, !dbg !121359
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !121360
  %i.ia = uitofp i32 %i.ce to double, !dbg !121346
  %i.ib = fadd double %i.hz, %i.ia, !dbg !121359
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !121360
  %i.id = uitofp i32 %i.cf to double, !dbg !121346
  %i.ie = fadd double %i.ic, %i.id, !dbg !121359
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !121360
  %i.ig = uitofp i32 %i.cg to double, !dbg !121346
  %i.ih = fadd double %i.if, %i.ig, !dbg !121359
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !121360
  %i.ij = uitofp i32 %i.ch to double, !dbg !121346
  %i.ik = fadd double %i.ii, %i.ij, !dbg !121359
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !121360
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !121361
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !121362
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !121363
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !121362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !121364
  ret i64 %i.ip, !dbg !121365
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionxEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121366 !guid !121373 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionxEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !121376 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !121377
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !121378
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !121379
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !121379
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !121378
  %i.g = and i64 %i.a, 16383, !dbg !121380
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !121381 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !121381, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !121382
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !121383
  ret void, !dbg !121384
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionxEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121385 !guid !121431 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !121439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121432), !dbg !121440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !121441, !alias.scope !121432
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !121442 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !121442, !noalias !121433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !121443, !noalias !121432
  br label %bb.b, !dbg !121444

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121445
  %i.e = load i8, ptr %i.d, align 2, !dbg !121446, !alias.scope !121435, !noalias !121433, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !121447        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !121448
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !121448

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !121448 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !121448, !alias.scope !121432, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !121448
  store i32 %i.j, ptr %i.h, align 4, !dbg !121448, !alias.scope !121432
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121445
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !121445
  %i.m = load i8, ptr %i.l, align 1, !dbg !121446, !alias.scope !121435, !noalias !121433, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !121447        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !121448
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !121448

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !121449    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !121448 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !121448, !alias.scope !121432, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !121448
  store i32 %i.s, ptr %i.q, align 4, !dbg !121448, !alias.scope !121432
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !121444
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionxEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !121444

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !121447
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !121448, !noalias !121433
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionxEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !121450, !noalias !121433
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !121451
  %i.u = load i32, ptr %i.t, align 4, !dbg !121451, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !121451
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !121452
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !121452 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !121453
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !121453
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !121453

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionxEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !121454
  br label %bb.g, !dbg !121455

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !121456 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !121457
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !121458 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !121459 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !121460 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !121461
  %i.af = fmul double %i.ac, %i.ae, !dbg !121460
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !121462 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !121463
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !121463

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !121464
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !121465
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !121466

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionxEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionxEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121457
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !121467
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !121467, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !121467
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !121467, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !121467
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !121467, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !121467
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !121467, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !121467
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !121467, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !121467
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !121467, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !121467
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !121467, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !121467
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !121467, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !121467
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !121467, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !121467
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !121467, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !121467
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !121467, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !121467
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !121467, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !121467
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !121467, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !121467
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !121467, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !121467
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !121467, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !121467
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !121467, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !121467
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !121467, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !121467
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !121467, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !121467
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !121467, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !121467
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !121467, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !121467
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !121467, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !121467
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !121467, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !121467
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !121467, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !121467
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !121467, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !121467
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !121467, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !121467
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !121467, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !121467
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !121467, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !121467
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !121467, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !121467
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !121467, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !121467
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !121467, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !121467
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !121467, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !121467
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !121467, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !121467
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !121467, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !121467
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !121467, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !121467
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !121467, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !121467
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !121467, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !121467
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !121467, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !121467
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !121467, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !121467
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !121467, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !121467
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !121467, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !121467
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !121467, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !121467
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !121467, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !121467
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !121467, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !121467
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !121467, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !121467
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !121467, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !121467
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !121467, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !121467
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !121467, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !121467
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !121467, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !121467
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !121467, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !121467
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !121467, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !121468, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !121468
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !121468 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !121469
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !121469

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121470 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121471 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121472 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !121473 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !121474
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !121475 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !121476
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !121477
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !121477

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !121478
  br label %bb.j, !dbg !121479

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121470
  %i.cs = uitofp i32 %i.ak to double, !dbg !121467
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !121480
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !121481
  %i.cv = uitofp i32 %i.al to double, !dbg !121467
  %i.cw = fadd double %i.cu, %i.cv, !dbg !121480
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !121481
  %i.cy = uitofp i32 %i.am to double, !dbg !121467
  %i.cz = fadd double %i.cx, %i.cy, !dbg !121480
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !121481
  %i.db = uitofp i32 %i.an to double, !dbg !121467
  %i.dc = fadd double %i.da, %i.db, !dbg !121480
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !121481
  %i.de = uitofp i32 %i.ao to double, !dbg !121467
  %i.df = fadd double %i.dd, %i.de, !dbg !121480
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !121481
  %i.dh = uitofp i32 %i.ap to double, !dbg !121467
  %i.di = fadd double %i.dg, %i.dh, !dbg !121480
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !121481
  %i.dk = uitofp i32 %i.aq to double, !dbg !121467
  %i.dl = fadd double %i.dj, %i.dk, !dbg !121480
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !121481
  %i.dn = uitofp i32 %i.ar to double, !dbg !121467
  %i.do = fadd double %i.dm, %i.dn, !dbg !121480
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !121481
  %i.dq = uitofp i32 %i.as to double, !dbg !121467
  %i.dr = fadd double %i.dp, %i.dq, !dbg !121480
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !121481
  %i.dt = uitofp i32 %i.at to double, !dbg !121467
  %i.du = fadd double %i.ds, %i.dt, !dbg !121480
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !121481
  %i.dw = uitofp i32 %i.au to double, !dbg !121467
  %i.dx = fadd double %i.dv, %i.dw, !dbg !121480
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !121481
  %i.dz = uitofp i32 %i.av to double, !dbg !121467
  %i.ea = fadd double %i.dy, %i.dz, !dbg !121480
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !121481
  %i.ec = uitofp i32 %i.aw to double, !dbg !121467
  %i.ed = fadd double %i.eb, %i.ec, !dbg !121480
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !121481
  %i.ef = uitofp i32 %i.ax to double, !dbg !121467
  %i.eg = fadd double %i.ee, %i.ef, !dbg !121480
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !121481
  %i.ei = uitofp i32 %i.ay to double, !dbg !121467
  %i.ej = fadd double %i.eh, %i.ei, !dbg !121480
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !121481
  %i.el = uitofp i32 %i.az to double, !dbg !121467
  %i.em = fadd double %i.ek, %i.el, !dbg !121480
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !121481
  %i.eo = uitofp i32 %i.ba to double, !dbg !121467
  %i.ep = fadd double %i.en, %i.eo, !dbg !121480
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !121481
  %i.er = uitofp i32 %i.bb to double, !dbg !121467
  %i.es = fadd double %i.eq, %i.er, !dbg !121480
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !121481
  %i.eu = uitofp i32 %i.bc to double, !dbg !121467
  %i.ev = fadd double %i.et, %i.eu, !dbg !121480
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !121481
  %i.ex = uitofp i32 %i.bd to double, !dbg !121467
  %i.ey = fadd double %i.ew, %i.ex, !dbg !121480
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !121481
  %i.fa = uitofp i32 %i.be to double, !dbg !121467
  %i.fb = fadd double %i.ez, %i.fa, !dbg !121480
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !121481
  %i.fd = uitofp i32 %i.bf to double, !dbg !121467
  %i.fe = fadd double %i.fc, %i.fd, !dbg !121480
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !121481
  %i.fg = uitofp i32 %i.bg to double, !dbg !121467
  %i.fh = fadd double %i.ff, %i.fg, !dbg !121480
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !121481
  %i.fj = uitofp i32 %i.bh to double, !dbg !121467
  %i.fk = fadd double %i.fi, %i.fj, !dbg !121480
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !121481
  %i.fm = uitofp i32 %i.bi to double, !dbg !121467
  %i.fn = fadd double %i.fl, %i.fm, !dbg !121480
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !121481
  %i.fp = uitofp i32 %i.bj to double, !dbg !121467
  %i.fq = fadd double %i.fo, %i.fp, !dbg !121480
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !121481
  %i.fs = uitofp i32 %i.bk to double, !dbg !121467
  %i.ft = fadd double %i.fr, %i.fs, !dbg !121480
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !121481
  %i.fv = uitofp i32 %i.bl to double, !dbg !121467
  %i.fw = fadd double %i.fu, %i.fv, !dbg !121480
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !121481
  %i.fy = uitofp i32 %i.bm to double, !dbg !121467
  %i.fz = fadd double %i.fx, %i.fy, !dbg !121480
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !121481
  %i.gb = uitofp i32 %i.bn to double, !dbg !121467
  %i.gc = fadd double %i.ga, %i.gb, !dbg !121480
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !121481
  %i.ge = uitofp i32 %i.bo to double, !dbg !121467
  %i.gf = fadd double %i.gd, %i.ge, !dbg !121480
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !121481
  %i.gh = uitofp i32 %i.bp to double, !dbg !121467
  %i.gi = fadd double %i.gg, %i.gh, !dbg !121480
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !121481
  %i.gk = uitofp i32 %i.bq to double, !dbg !121467
  %i.gl = fadd double %i.gj, %i.gk, !dbg !121480
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !121481
  %i.gn = uitofp i32 %i.br to double, !dbg !121467
  %i.go = fadd double %i.gm, %i.gn, !dbg !121480
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !121481
  %i.gq = uitofp i32 %i.bs to double, !dbg !121467
  %i.gr = fadd double %i.gp, %i.gq, !dbg !121480
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !121481
  %i.gt = uitofp i32 %i.bt to double, !dbg !121467
  %i.gu = fadd double %i.gs, %i.gt, !dbg !121480
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !121481
  %i.gw = uitofp i32 %i.bu to double, !dbg !121467
  %i.gx = fadd double %i.gv, %i.gw, !dbg !121480
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !121481
  %i.gz = uitofp i32 %i.bv to double, !dbg !121467
  %i.ha = fadd double %i.gy, %i.gz, !dbg !121480
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !121481
  %i.hc = uitofp i32 %i.bw to double, !dbg !121467
  %i.hd = fadd double %i.hb, %i.hc, !dbg !121480
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !121481
  %i.hf = uitofp i32 %i.bx to double, !dbg !121467
  %i.hg = fadd double %i.he, %i.hf, !dbg !121480
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !121481
  %i.hi = uitofp i32 %i.by to double, !dbg !121467
  %i.hj = fadd double %i.hh, %i.hi, !dbg !121480
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !121481
  %i.hl = uitofp i32 %i.bz to double, !dbg !121467
  %i.hm = fadd double %i.hk, %i.hl, !dbg !121480
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !121481
  %i.ho = uitofp i32 %i.ca to double, !dbg !121467
  %i.hp = fadd double %i.hn, %i.ho, !dbg !121480
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !121481
  %i.hr = uitofp i32 %i.cb to double, !dbg !121467
  %i.hs = fadd double %i.hq, %i.hr, !dbg !121480
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !121481
  %i.hu = uitofp i32 %i.cc to double, !dbg !121467
  %i.hv = fadd double %i.ht, %i.hu, !dbg !121480
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !121481
  %i.hx = uitofp i32 %i.cd to double, !dbg !121467
  %i.hy = fadd double %i.hw, %i.hx, !dbg !121480
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !121481
  %i.ia = uitofp i32 %i.ce to double, !dbg !121467
  %i.ib = fadd double %i.hz, %i.ia, !dbg !121480
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !121481
  %i.id = uitofp i32 %i.cf to double, !dbg !121467
  %i.ie = fadd double %i.ic, %i.id, !dbg !121480
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !121481
  %i.ig = uitofp i32 %i.cg to double, !dbg !121467
  %i.ih = fadd double %i.if, %i.ig, !dbg !121480
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !121481
  %i.ij = uitofp i32 %i.ch to double, !dbg !121467
  %i.ik = fadd double %i.ii, %i.ij, !dbg !121480
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !121481
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !121482
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !121483
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !121484
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !121483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !121485
  ret i64 %i.ip, !dbg !121486
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionyEEE3addCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121487 !guid !121494 {
bb.a:
  %i.a = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtBS_6option6OptionyEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @297, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !121497 ; 2 uses
  %i.b = lshr i64 %i.a, 14, !dbg !121498
  %i.c = or disjoint i64 %i.b, 1125899906842624, !dbg !121499
  %i.d = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.c, i1 true), !dbg !121500
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !121500
  %i.f = add nuw nsw i8 %i.e, 1, !dbg !121499
  %i.g = and i64 %i.a, 16383, !dbg !121501
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g, !dbg !121502 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !121502, !noundef !5453
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.f, i8 %i.i), !dbg !121503
  store i8 %.sroa.0.0.i, ptr %i.h, align 1, !dbg !121504
  ret void, !dbg !121505
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionyEEE5countCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !121506 !guid !121552 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !121560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121553), !dbg !121561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !121562, !alias.scope !121553
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !121563 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !121563, !noalias !121554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !121564, !noalias !121553
  br label %bb.b, !dbg !121565

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121566
  %i.e = load i8, ptr %i.d, align 2, !dbg !121567, !alias.scope !121556, !noalias !121554, !noundef !5453 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !121568        ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !121569
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !121569

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !121569 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !121569, !alias.scope !121553, !noundef !5453
  %i.j = add i32 %i.i, 1, !dbg !121569
  store i32 %i.j, ptr %i.h, align 4, !dbg !121569, !alias.scope !121553
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !121566
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !121566
  %i.m = load i8, ptr %i.l, align 1, !dbg !121567, !alias.scope !121556, !noalias !121554, !noundef !5453 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !121568        ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !121569
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !121569

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !121570    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !121569 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !121569, !alias.scope !121553, !noundef !5453
  %i.s = add i32 %i.r, 1, !dbg !121569
  store i32 %i.s, ptr %i.q, align 4, !dbg !121569, !alias.scope !121553
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !121565
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionyEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !121565

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !121568
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #55, !dbg !121569, !noalias !121554
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionyEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !121571, !noalias !121554
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !121572
  %i.u = load i32, ptr %i.t, align 4, !dbg !121572, !noundef !5453
  %i.v = uitofp i32 %i.u to double, !dbg !121572
  %i.w = fsub nnan ninf double 1.638400e+04, %i.v, !dbg !121573
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !121573 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !121574
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !121574
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !121574

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionyEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !121575
  br label %bb.g, !dbg !121576

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !121577 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !121578
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !121579 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !121580 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !121581 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !121582
  %i.af = fmul double %i.ac, %i.ae, !dbg !121581
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !121583 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !121584
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !121584

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !121585
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !121586
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, !dbg !121587

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionyEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionyEEE13get_histogramCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121578
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !121588
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !121588, !noundef !5453
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !121588
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !121588, !noundef !5453
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !121588
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !121588, !noundef !5453
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !121588
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !121588, !noundef !5453
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !121588
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !121588, !noundef !5453
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !121588
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !121588, !noundef !5453
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !121588
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !121588, !noundef !5453
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !121588
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !121588, !noundef !5453
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !121588
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !121588, !noundef !5453
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !121588
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !121588, !noundef !5453
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !121588
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !121588, !noundef !5453
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !121588
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !121588, !noundef !5453
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !121588
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !121588, !noundef !5453
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !121588
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !121588, !noundef !5453
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !121588
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !121588, !noundef !5453
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !121588
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !121588, !noundef !5453
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !121588
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !121588, !noundef !5453
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !121588
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !121588, !noundef !5453
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !121588
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !121588, !noundef !5453
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !121588
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !121588, !noundef !5453
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !121588
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !121588, !noundef !5453
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !121588
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !121588, !noundef !5453
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !121588
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !121588, !noundef !5453
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !121588
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !121588, !noundef !5453
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !121588
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !121588, !noundef !5453
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !121588
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !121588, !noundef !5453
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !121588
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !121588, !noundef !5453
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !121588
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !121588, !noundef !5453
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !121588
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !121588, !noundef !5453
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !121588
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !121588, !noundef !5453
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !121588
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !121588, !noundef !5453
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !121588
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !121588, !noundef !5453
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !121588
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !121588, !noundef !5453
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !121588
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !121588, !noundef !5453
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !121588
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !121588, !noundef !5453
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !121588
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !121588, !noundef !5453
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !121588
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !121588, !noundef !5453
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !121588
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !121588, !noundef !5453
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !121588
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !121588, !noundef !5453
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !121588
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !121588, !noundef !5453
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !121588
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !121588, !noundef !5453
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !121588
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !121588, !noundef !5453
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !121588
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !121588, !noundef !5453
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !121588
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !121588, !noundef !5453
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !121588
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !121588, !noundef !5453
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !121588
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !121588, !noundef !5453
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !121588
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !121588, !noundef !5453
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !121588
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !121588, !noundef !5453
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !121588
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !121588, !noundef !5453
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !121588
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !121588, !noundef !5453
  %i.ci = load i32, ptr %i.b, align 4, !dbg !121589, !noundef !5453
  %i.cj = uitofp i32 %i.ci to double, !dbg !121589
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !121589 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !121590
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !121590

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121591 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121592 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121593 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !121594 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !121595
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !121596 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !121597
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !121598
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !121598

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !121599
  br label %bb.j, !dbg !121600

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !121591
  %i.cs = uitofp i32 %i.ak to double, !dbg !121588
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !121601
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !121602
  %i.cv = uitofp i32 %i.al to double, !dbg !121588
  %i.cw = fadd double %i.cu, %i.cv, !dbg !121601
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !121602
  %i.cy = uitofp i32 %i.am to double, !dbg !121588
  %i.cz = fadd double %i.cx, %i.cy, !dbg !121601
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !121602
  %i.db = uitofp i32 %i.an to double, !dbg !121588
  %i.dc = fadd double %i.da, %i.db, !dbg !121601
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !121602
  %i.de = uitofp i32 %i.ao to double, !dbg !121588
  %i.df = fadd double %i.dd, %i.de, !dbg !121601
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !121602
  %i.dh = uitofp i32 %i.ap to double, !dbg !121588
  %i.di = fadd double %i.dg, %i.dh, !dbg !121601
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !121602
  %i.dk = uitofp i32 %i.aq to double, !dbg !121588
  %i.dl = fadd double %i.dj, %i.dk, !dbg !121601
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !121602
  %i.dn = uitofp i32 %i.ar to double, !dbg !121588
  %i.do = fadd double %i.dm, %i.dn, !dbg !121601
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !121602
  %i.dq = uitofp i32 %i.as to double, !dbg !121588
  %i.dr = fadd double %i.dp, %i.dq, !dbg !121601
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !121602
  %i.dt = uitofp i32 %i.at to double, !dbg !121588
  %i.du = fadd double %i.ds, %i.dt, !dbg !121601
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !121602
  %i.dw = uitofp i32 %i.au to double, !dbg !121588
  %i.dx = fadd double %i.dv, %i.dw, !dbg !121601
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !121602
  %i.dz = uitofp i32 %i.av to double, !dbg !121588
  %i.ea = fadd double %i.dy, %i.dz, !dbg !121601
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !121602
  %i.ec = uitofp i32 %i.aw to double, !dbg !121588
  %i.ed = fadd double %i.eb, %i.ec, !dbg !121601
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !121602
  %i.ef = uitofp i32 %i.ax to double, !dbg !121588
  %i.eg = fadd double %i.ee, %i.ef, !dbg !121601
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !121602
  %i.ei = uitofp i32 %i.ay to double, !dbg !121588
  %i.ej = fadd double %i.eh, %i.ei, !dbg !121601
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !121602
  %i.el = uitofp i32 %i.az to double, !dbg !121588
  %i.em = fadd double %i.ek, %i.el, !dbg !121601
end_hunk_0
