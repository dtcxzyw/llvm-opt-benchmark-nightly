Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4LIEF5MachO12BinaryParser17parse_export_trieERNS_12BinaryStreamEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjPb:bb.a
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  store i64 %i.ld, ptr %i.lt, align 8, !tbaa !17
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.lr, ptr noundef nonnull %i.ls, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.hu) #26
  %i.lu = load i64, ptr %i.hw, align 8, !tbaa !266
  %i.lv = add i64 %i.lu, 1
  store i64 %i.lv, ptr %i.hw, align 8, !tbaa !266
  %i.lw = load i32, ptr %i.c, align 4, !tbaa !18
  %i.lx = zext i32 %i.lw to i64
  %i.ly = load i64, ptr %i.h, align 8, !tbaa !365
  store i64 %i.lx, ptr %i.h, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @_ZN4LIEF5MachO12BinaryParser17parse_export_trieERNS_12BinaryStreamEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjPb(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.282") align 8 %21, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef %i.hx, ptr noundef %6)
  %i.lz = load i8, ptr %i.hy, align 8, !tbaa !447, !range !286, !noundef !287
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.bi, label %_ZN2tl6detail21expected_storage_baseISt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESaIS9_EE11lief_errorsLb0ELb1EED2Ev.exit

bb.bi:                                            ; preds = %bb.bh
  %i.mb = load ptr, ptr %i.hz, align 8, !tbaa !491
  %i.mc = load ptr, ptr %21, align 8, !tbaa !491  ; 6 uses
  %i.md = load ptr, ptr %i.ia, align 8, !tbaa !491 ; 3 uses
  %i.me = load ptr, ptr %11, align 16, !tbaa !491 ; 2 uses
  %i.mf = ptrtoint ptr %i.mb to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = getelementptr inbounds i8, ptr %i.me, i64 %i.mh
  call void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEEEvSE_T_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.mi, ptr %i.mc, ptr %i.md)
  %.not4.i.i.i.i = icmp eq ptr %i.mc, %i.md
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bi, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.mn, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.mc, %bb.bi ] ; 2 uses
  %i.mj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !460 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !15
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(64) %i.mj) #26, !inline_history !493
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.mn, %i.md
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !494

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, %bb.bi
  %.not.i.i1.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i.i1.i.i, label %_ZN2tl6detail21expected_storage_baseISt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESaIS9_EE11lief_errorsLb0ELb1EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i
  %i.mo = load ptr, ptr %i.ib, align 8, !tbaa !495
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mc to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mr) #29
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESaIS9_EE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseISt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESaIS9_EE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %bb.bh, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  store i64 %i.ly, ptr %i.h, align 8, !tbaa !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ms = load ptr, ptr %20, align 8, !tbaa !274  ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.hr
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZN2tl6detail21expected_storage_baseISt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESaIS9_EE11lief_errorsLb0ELb1EED2Ev.exit
  %i.mu = load i64, ptr %i.hr, align 8, !tbaa !278
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZN2tl6detail21expected_storage_baseISt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESaIS9_EE11lief_errorsLb0ELb1EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.mw = load i8, ptr %i.hp, align 8, !tbaa !478, !range !286, !noundef !287
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.bk, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit135

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.my = load ptr, ptr %19, align 8, !tbaa !274  ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.ic
  br i1 %i.mz, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133: ; preds = %bb.bk
  %i.na = load i64, ptr %i.ic, align 8, !tbaa !278
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #29
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit135

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit135: ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.nc = add nuw nsw i64 %.085237, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.nc, %i.ho
  br i1 %exitcond.not, label %.loopexit, label %bb.an, !llvm.loop !497

.loopexit214:                                     ; preds = %bb.bb, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.nd = load ptr, ptr %20, align 8, !tbaa !274  ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.hr
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %.loopexit214
  %i.nf = load i64, ptr %i.hr, align 8, !tbaa !278
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %.loopexit214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.nh = load i8, ptr %i.hp, align 8, !tbaa !478, !range !286, !noundef !287
  %i.ni = trunc nuw i8 %i.nh to i1
  %i.nj = load ptr, ptr %19, align 8              ; 2 uses
  %i.nk = icmp ne ptr %i.nj, %i.ic
  %or.cond321.not = select i1 %i.ni, i1 %i.nk, i1 false
  br i1 %or.cond321.not, label %.loopexit.sink.split.sink.split, label %.loopexit.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %.critedge93
  %.sink = phi ptr [ %i.kz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.ii, %.critedge93 ], [ %i.nj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  %i.nl = load i64, ptr %i.ic, align 8, !tbaa !278
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.nm) #29
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %.critedge93
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit135, %.loopexit.sink.split, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit118
  %i.nn = load <2 x ptr>, ptr %11, align 16, !tbaa !491
  store <2 x ptr> %i.nn, ptr %0, align 8, !tbaa !491
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.nq = load ptr, ptr %i.np, align 16, !tbaa !495
  store ptr %i.nq, ptr %i.no, align 8, !tbaa !495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.nr, align 8, !tbaa !447
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread, %.critedge91, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EED2Ev.exit112, %.loopexit, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit118.thread, %bb.d, %bb.b
  %i.ns = load ptr, ptr %11, align 16, !tbaa !498 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !499 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ns, %i.nu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i142

.lr.ph.i.i.i142:                                  ; preds = %bb.bl, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nz, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ns, %bb.bl ] ; 2 uses
  %i.nv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !460 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nv, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i142
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !15
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(64) %i.nv) #26, !inline_history !500
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i142
  %i.nz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.nz, %i.nu
  br i1 %.not.i.i.i143, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i142, !llvm.loop !494

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 16, !tbaa !498
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %bb.bl
  %i.oa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.ns, %bb.bl ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.oc = load ptr, ptr %i.ob, align 16, !tbaa !495
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.of) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  ret void
}

declare { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11make_uniqueIN4LIEF5MachO6SymbolEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.308") align 8 %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !390
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 16, !tbaa !391
  store i8 0, ptr %i.c, align 8, !tbaa !278
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.a, align 16, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.f, align 8, !tbaa !473
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 0, ptr %i.g, align 1, !tbaa !474
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 0, ptr %i.h, align 2, !tbaa !475
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !452
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !501  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !502
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !452
  store i64 %i.e, ptr %i.b, align 8, !tbaa !452
  store ptr null, ptr %1, align 8, !tbaa !452
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !501
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4LIEF5MachO10ExportInfo3hasENS1_5FLAGSE(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

declare void @_ZNK4LIEF12BinaryStream11peek_stringB5cxx11Em(ptr dead_on_unwind writable sret(%"class.LIEF::result.369") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !499  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !495
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !460
  store i64 %i.e, ptr %i.b, align 8, !tbaa !460
  store ptr null, ptr %1, align 8, !tbaa !460
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !499
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare void @_ZNK4LIEF12BinaryStream11read_stringB5cxx11Em(ptr dead_on_unwind writable sret(%"class.LIEF::result.369") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger5debugIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !68
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 1, ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 2, 4294967304) i64 @_ZN4LIEF5MachO12BinaryParser18parse_dyld_exportsEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.LIEF::SpanStream", align 8  ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.LIEF::result.282", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = tail call noundef ptr @_ZN4LIEF5MachO6Binary17dyld_exports_trieEv(ptr noundef nonnull align 8 dereferenceable(552) %i.c) #26 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.25, i64 43)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !503  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !510  ; 2 uses
  %i.l = icmp eq i32 %i.i, 0
  %i.m = icmp eq i32 %i.k, 0
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.o = zext i32 %i.i to i64                     ; 3 uses
  %i.p = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.n, i64 noundef %i.o) #26 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %._crit_edge.i.i, label %.thread

._crit_edge.i.i:                                  ; preds = %bb.d
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.s, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 10, ptr %i.t, align 8, !tbaa !391
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 0, ptr %i.u, align 2, !tbaa !278
  %i.v = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4) #26 ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !274    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.y = load i64, ptr %i.s, align 8, !tbaa !278
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aa = icmp eq ptr %i.v, null
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ab = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ac, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 3, ptr nonnull @.str.27, i64 40)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.j

.thread:                                          ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.047 = phi ptr [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.p, %bb.d ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.047, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !363 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.047, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !374
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.047, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !511
  %i.am = sub i64 %i.o, %i.al                     ; 3 uses
  %i.an = icmp ugt i64 %i.am, %i.aj
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ao = zext i32 %i.k to i64                    ; 3 uses
  %i.ap = add i64 %i.am, %i.ao
  %i.aq = icmp ugt i64 %i.ap, %i.aj
  br i1 %i.aq, label %bb.g, label %._crit_edge.i.i30

bb.g:                                             ; preds = %bb.f, %.thread
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.as = getelementptr inbounds nuw i8, ptr %.047, i64 56
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.at, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef 4, ptr nonnull @.str.28, i64 40, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.j

._crit_edge.i.i30:                                ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.am ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.au, ptr %i.av, align 8, !tbaa !293
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 %i.ao, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !365
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.ax, align 8, !tbaa !368
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 3, ptr %i.ay, align 4, !tbaa !377
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO12BinaryParser24parse_dyldinfo_lazy_bindINS0_7details7MachO64EEENS_10ok_error_tEv:bb.a

bb.ad:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.dl = trunc i8 %.061131 to i1
  %i.dm = call i64 @_ZN4LIEF5MachO12BinaryParser7do_bindINS0_7details7MachO64EEENS_10ok_error_tENS0_15DyldBindingInfo5CLASSEhhmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEilbbPvm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext %.076127, i64 noundef %.072128, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %.068129, i64 noundef %.064130, i1 noundef zeroext %i.dl, i1 noundef zeroext false, ptr noundef nonnull %8, i64 noundef %.060132) ; 0 uses
  %i.dn = load ptr, ptr %i.bn, align 8, !tbaa !281
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !365
  %.reass.reass = add i64 %i.dp, %invariant.op
  %i.dq = add i64 %.072128, 8
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.dr = and i8 %i.ce, -16
  %i.ds = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.dt = zext i8 %i.dr to i32
  store i32 %i.dt, ptr %i.b, align 4, !tbaa !18
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.du, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef 4, ptr nonnull @.str.284, i64 25, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.q, %bb.r, %bb.o, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %bb.ad, %bb.ae, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit, %bb.t, %bb.s
  %.379 = phi i8 [ %.076127, %bb.ac ], [ %.076127, %bb.ae ], [ %.076127, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.076127, %bb.o ], [ %i.cg, %bb.ab ], [ %.076127, %bb.ad ], [ %.076127, %bb.t ], [ %.076127, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.076127, %bb.q ], [ %.076127, %bb.aa ], [ %.076127, %bb.s ], [ %.076127, %bb.r ], [ %.076127, %bb.z ]
  %.375 = phi i64 [ %.072128, %bb.ac ], [ %.072128, %bb.ae ], [ %.072128, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.072128, %bb.o ], [ %.fca.0.extract, %bb.ab ], [ %i.dq, %bb.ad ], [ %.072128, %bb.t ], [ %.072128, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.072128, %bb.q ], [ %.072128, %bb.aa ], [ %.072128, %bb.s ], [ %.072128, %bb.r ], [ %.072128, %bb.z ]
  %.371 = phi i32 [ %.068129, %bb.ac ], [ %.068129, %bb.ae ], [ %.068129, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %i.cj, %bb.o ], [ %.068129, %bb.ab ], [ %.068129, %bb.ad ], [ %i.cr, %bb.t ], [ %.068129, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.068129, %bb.q ], [ %.068129, %bb.aa ], [ 0, %bb.s ], [ %i.co, %bb.r ], [ %.068129, %bb.z ]
  %.367 = phi i64 [ %.064130, %bb.ac ], [ %.064130, %bb.ae ], [ %.064130, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.064130, %bb.o ], [ %.064130, %bb.ab ], [ %.064130, %bb.ad ], [ %.064130, %bb.t ], [ %.064130, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.064130, %bb.q ], [ %.064130, %bb.aa ], [ %.064130, %bb.s ], [ %.064130, %bb.r ], [ %.fca.0.extract5, %bb.z ]
  %.4 = phi i8 [ %.061131, %bb.ac ], [ %.061131, %bb.ae ], [ %.061131, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.061131, %bb.o ], [ %.061131, %bb.ab ], [ %.061131, %bb.ad ], [ %.061131, %bb.t ], [ %.263, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.061131, %bb.q ], [ %.061131, %bb.aa ], [ %.061131, %bb.s ], [ %.061131, %bb.r ], [ %.061131, %bb.z ]
  %.2 = phi i64 [ %.060132, %bb.ac ], [ %.060132, %bb.ae ], [ %.060132, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.060132, %bb.o ], [ %.060132, %bb.ab ], [ %.reass.reass, %bb.ad ], [ %.060132, %bb.t ], [ %.060132, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.060132, %bb.q ], [ %.060132, %bb.aa ], [ %.060132, %bb.s ], [ %.060132, %bb.r ], [ %.060132, %bb.z ]
  %i.dv = load ptr, ptr %i.bn, align 8, !tbaa !281 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !365 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.bf
  br i1 %i.dy, label %bb.l, label %.thread119

.thread119:                                       ; preds = %bb.af, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.dz = load ptr, ptr %7, align 8, !tbaa !274   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bg
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %.thread119
  %i.eb = load i64, ptr %i.bg, align 8, !tbaa !278
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %.thread119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.c, %bb.e, %bb.h, %bb.b
  %.sroa.5.1 = phi i64 [ 2, %bb.b ], [ 4294967296, %bb.c ], [ 7, %bb.e ], [ 2, %bb.h ], [ 4294967303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ 7, %bb.k ]
  ret i64 %.sroa.5.1
}

declare { i64, i8 } @_ZNK4LIEF12BinaryStream12read_sleb128EPm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser7do_bindINS0_7details7MachO64EEENS_10ok_error_tENS0_15DyldBindingInfo5CLASSEhhmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEilbbPvm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %6, i64 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef %10, i64 noundef %11) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %15 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  store i8 %3, ptr %i.b, align 1, !tbaa !278
  %i.e = zext i8 %3 to i64                        ; 2 uses
  %i.f = load ptr, ptr %10, align 8, !tbaa !1760, !nonnull !287, !align !645 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1197
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !1198 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not = icmp ugt i64 %i.m, %i.e
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKhEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 4, ptr nonnull @.str.285, i64 17, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.y

_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.p, align 8, !tbaa !1756
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %i.r = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.s = sub i64 %i.r, %i.k
  store ptr %i.q, ptr %i.p, align 8, !tbaa !1761
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !1201 ; 4 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !1756
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s
  store ptr %i.v, ptr %i.p, align 8, !tbaa !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1202 ; 2 uses
  %i.y = add i64 %i.x, %4                         ; 3 uses
  store i64 %i.y, ptr %i.c, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !2052
  %i.ab = add i64 %i.aa, %i.x
  %i.ac = icmp ugt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 4, ptr nonnull @.str.286, i64 18, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit
  %i.af = zext i8 %2 to i64
  %i.ag = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2068 ; 11 uses
  tail call void @_ZN4LIEF5MachO15DyldBindingInfoC1ENS1_5CLASSENS1_4TYPEEmlibbm(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 noundef %1, i64 noundef %i.af, i64 noundef %i.y, i64 noundef %7, i32 noundef %6, i1 noundef zeroext %8, i1 noundef zeroext %9, i64 noundef %11) #26, !noalias !2068
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !75
  %i.ai = icmp sgt i32 %6, 0
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = zext nneg i32 %6 to i64                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !482
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !270 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %.not22 = icmp ult i64 %i.ar, %i.aj
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr [8 x i8], ptr %i.an, i64 %i.aj
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !483
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.au, ptr %i.av, align 8, !tbaa !113
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %.not79 = icmp eq ptr %i.ax, null
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !462
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bc = tail call noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.az, %bb.h ], [ %i.bc, %bb.i ] ; 3 uses
  %.not23 = icmp eq ptr %.0, null
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %.0, ptr %i.bd, align 8, !tbaa !121
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store ptr %i.ag, ptr %i.be, align 8, !tbaa !2071
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 2, ptr nonnull @.str.287, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bh = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2072 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bh, i8 0, i64 96, i1 false), !noalias !2072
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.bh) #26, !noalias !2072
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !390, !noalias !2072
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 0, ptr %i.bk, align 16, !tbaa !391, !noalias !2072
  store i8 0, ptr %i.bj, align 8, !tbaa !278, !noalias !2072
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !noalias !2072
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.bh, align 16, !tbaa !15, !noalias !2072
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false), !noalias !2072
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i32 2, ptr %i.bq, align 8, !tbaa !471
  store i8 0, ptr %i.bm, align 8, !tbaa !473
  store i8 0, ptr %i.bn, align 1, !tbaa !474
  store i16 0, ptr %i.bo, align 2, !tbaa !475
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.br, ptr %17, align 8, !tbaa !390
  %i.bs = load ptr, ptr %5, align 8, !tbaa !274   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !391 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !17
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %bb.m, label %._crit_edge.i.i

bb.m:                                             ; preds = %bb.l
  %i.bw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bw, ptr %17, align 8, !tbaa !274
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !278
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.l
  %i.by = phi ptr [ %i.bw, %bb.m ], [ %i.br, %bb.l ] ; 2 uses
  switch i64 %i.bu, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bz = load i8, ptr %i.bs, align 1, !tbaa !278
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !278
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bs, i64 %i.bu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.n, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !391
  %i.cc = load ptr, ptr %17, align 8, !tbaa !274
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ce = load ptr, ptr %i.bh, align 16, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 %17) #26
  %i.ch = load ptr, ptr %17, align 8, !tbaa !274  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.br
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cj = load i64, ptr %i.br, align 8, !tbaa !278
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.bh, ptr %i.cl, align 8, !tbaa !121
  store ptr %i.ag, ptr %i.bp, align 16, !tbaa !2071
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !12 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 160 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 168 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !501 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 176 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !502
  %.not.i.i = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = ptrtoint ptr %i.bh to i64
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !452
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !501
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !1710 ; 10 uses
  %i.cw = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64               ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i26 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i26)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #27 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  %i.di = ptrtoint ptr %i.bh to i64
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !452
  %.not10.i.i.i.i = icmp eq ptr %i.cv, %i.cq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dj = add i64 %i.cw, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dn = add i64 %i.cw, -8
  %i.do = sub i64 %i.dn, %i.cx
  %i.dp = and i64 %i.do, -8
  %i.dq = add i64 %i.dp, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dg, i64 %i.dq
  %scevgep100 = getelementptr i8, ptr %i.cv, i64 %i.dq
  %bound0 = icmp ult ptr %i.dg, %scevgep100
  %bound1 = icmp ult ptr %i.cv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dg, i64 %i.dr  ; 2 uses
  %i.dt = getelementptr i8, ptr %i.cv, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.du ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.cv, i64 %i.du ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  %i.dv = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep101, align 8, !tbaa !452, !alias.scope !2080, !noalias !2075
  %wide.load102 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !452, !alias.scope !2080, !noalias !2075
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !452, !alias.scope !2083, !noalias !2080
  store <2 x i64> %wide.load102, ptr %i.dw, align 8, !tbaa !452, !alias.scope !2083, !noalias !2080
  %i.dx = getelementptr i8, ptr %next.gep101, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep101, align 8, !tbaa !452, !alias.scope !2080, !noalias !2075
  store <2 x ptr> splat (ptr null), ptr %i.dx, align 8, !tbaa !452, !alias.scope !2080, !noalias !2075
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !2085

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader126

.lr.ph.i.i.i.i.preheader126:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader126, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader126 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader126 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  %i.dz = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !452, !alias.scope !2078, !noalias !2075
  store i64 %i.dz, ptr %.012.i.i.i.i, align 8, !tbaa !452, !alias.scope !2075, !noalias !2078
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !452, !alias.scope !2078, !noalias !2075
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, %i.cq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2086

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ds, %middle.block ], [ %i.eb, %.lr.ph.i.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.s
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !1710
  store ptr %i.ec, ptr %i.cp, align 8, !tbaa !501
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.ed, ptr %i.cr, align 8, !tbaa !502
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.p, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !12
  %i.eg = call noundef ptr @_ZN4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ef) #26 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 200 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 208 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !2087 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 216 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !2088
  %.not.i.i24 = icmp eq ptr %i.ek, %i.em
  br i1 %.not.i.i24, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.en = ptrtoint ptr %i.ag to i64
  store i64 %i.en, ptr %i.ek, align 8, !tbaa !2089
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.eo, ptr %i.ej, align 8, !tbaa !2087
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.ep = load ptr, ptr %i.ei, align 8, !tbaa !2091 ; 10 uses
  %i.eq = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.er = ptrtoint ptr %i.ep to i64               ; 3 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 4 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.w, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.v
  %i.eu = ashr exact i64 %i.es, 3                 ; 3 uses
  %.sroa.speculated.i.i27 = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i27, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975)
  %i.ey = select i1 %i.ew, i64 1152921504606846975, i64 %i.ex ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i28)
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #27 ; 10 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.es
  %i.fc = ptrtoint ptr %i.ag to i64
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !2089
  %.not10.i.i.i.i29 = icmp eq ptr %i.ep, %i.ek
  br i1 %.not10.i.i.i.i29, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i30.preheader

.lr.ph.i.i.i.i30.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.fd = add i64 %i.eq, -8
  %i.fe = sub i64 %i.fd, %i.er                    ; 2 uses
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check111 = icmp ult i64 %i.fe, 136
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i30.preheader125, label %vector.memcheck104

vector.memcheck104:                               ; preds = %.lr.ph.i.i.i.i30.preheader
  %i.fh = add i64 %i.eq, -8
  %i.fi = sub i64 %i.fh, %i.er
  %i.fj = and i64 %i.fi, -8
  %i.fk = add i64 %i.fj, 8                        ; 2 uses
  %scevgep105 = getelementptr i8, ptr %i.fa, i64 %i.fk
  %scevgep106 = getelementptr i8, ptr %i.ep, i64 %i.fk
  %bound0107 = icmp ult ptr %i.fa, %scevgep106
end_hunk_1
begin_hunk_2_@_ZN6spdlog6logger4log_IJRKjRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_:bb.a
  %i.bv = load i8, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.i, label %._crit_edge.i.i.i, !prof !1119

._crit_edge.i.i.i:                                ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %.pre.i.i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  %.pre.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !17
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

bb.i:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.bx = call noundef i64 (i64, ...) @syscall(i64 noundef 186) #26 ; 2 uses
  %i.by = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !17
  %i.bz = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6spdlog7details2os9thread_idEvE3tid) ; 0 uses
  store i8 1, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit: ; preds = %._crit_edge.i.i.i, %bb.i
  %i.ca = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i ], [ %i.bx, %bb.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !1120
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 80
  store ptr %i.bq, ptr %i.ce, align 8, !tbaa !293
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  br i1 %i.c, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit
  %i.cf = load ptr, ptr %0, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %11) #26, !inline_history !1121
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit
  br i1 %i.g, label %bb.l, label %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZN6spdlog7details10backtracer9push_backERKNS0_7log_msgE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %11)
  br label %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit

_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ci = load ptr, ptr %9, align 8, !tbaa !528   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ci, %i.k
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit
  call void @free(ptr noundef %i.ci) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser8do_fixupINS0_7details7MachO64EEENS_10ok_error_tENS0_19DYLD_CHAINED_FORMATEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElb(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !18
  %i.d = zext i1 %5 to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !289
  %i.e = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #27, !noalias !2175 ; 14 uses
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfoC2ENS0_19DYLD_CHAINED_FORMATEb(ptr noundef nonnull align 8 dereferenceable(112) %i.e, i32 noundef %1, i1 noundef zeroext %5) #26, !noalias !2175
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO22ChainedBindingInfoListE, i64 16), ptr %i.e, align 8, !tbaa !15, !noalias !2175
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !2175
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %4, ptr %i.g, align 8, !tbaa !1904
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %2, ptr %i.h, align 8, !tbaa !1906
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %2 to i64                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !482
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !270  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %.not = icmp ult i64 %i.r, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %i.j
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !483
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.u, ptr %i.v, align 8, !tbaa !113
  %i.w = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !270
  %i.y = zext nneg i32 %2 to i64
  %i.z = getelementptr [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !483
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ad, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str.346, i64 22, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 1, ptr nonnull @.str.347, i64 17, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKbEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 1, ptr nonnull @.str.348, i64 17, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 1, ptr nonnull @.str.349, i64 17, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %.not55 = icmp eq ptr %i.al, null
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !462
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12
  %i.aq = call noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.an, %bb.f ], [ %i.aq, %bb.g ] ; 5 uses
  %.not12 = icmp eq ptr %.0, null
  br i1 %.not12, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.0, ptr %i.ar, align 8, !tbaa !121
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store ptr %i.e, ptr %i.as, align 8, !tbaa !2071
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 58
  %i.au = load i16, ptr %i.at, align 2, !tbaa !475
  %i.av = lshr i16 %i.au, 8
  %i.aw = zext nneg i16 %i.av to i32
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !18
  %i.ay = icmp eq i32 %i.ax, %i.aw
  br i1 %i.ay, label %bb.j, label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 80
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !2178
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 2, ptr nonnull @.str.287, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.be = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2179 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.be, i8 0, i64 96, i1 false), !noalias !2179
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.be) #26, !noalias !2179
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !390, !noalias !2179
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.bh, align 16, !tbaa !391, !noalias !2179
  store i8 0, ptr %i.bg, align 8, !tbaa !278, !noalias !2179
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !noalias !2179
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.be, align 16, !tbaa !15, !noalias !2179
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false), !noalias !2179
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 0, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !113
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store ptr %i.bm, ptr %i.bn, align 16, !tbaa !2178
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.bo, ptr %11, align 8, !tbaa !390
  %i.bp = load ptr, ptr %3, align 8, !tbaa !274   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !391 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.br, ptr %i.a, align 8, !tbaa !17
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bt, ptr %11, align 8, !tbaa !274
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.bu, ptr %i.bo, align 8, !tbaa !278
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %i.bv = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %bb.k ] ; 2 uses
  switch i64 %i.br, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !278
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !278
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bp, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !391
  %i.bz = load ptr, ptr %11, align 8, !tbaa !274
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cb = load ptr, ptr %i.be, align 16, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 %11) #26
  %i.ce = load ptr, ptr %11, align 8, !tbaa !274  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bo
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cg = load i64, ptr %i.bo, align 8, !tbaa !278
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.be, ptr %i.ci, align 8, !tbaa !121
  store ptr %i.e, ptr %i.bk, align 16, !tbaa !2071
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !12 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 160 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 168 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !501 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 176 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !502
  %.not.i.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = ptrtoint ptr %i.be to i64
  store i64 %i.cq, ptr %i.cn, align 8, !tbaa !452
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !501
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !1710 ; 10 uses
  %i.ct = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cu = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %bb.q, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i15 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i15)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #27 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  %i.df = ptrtoint ptr %i.be to i64
  store i64 %i.df, ptr %i.de, align 8, !tbaa !452
  %.not10.i.i.i.i = icmp eq ptr %i.cs, %i.cn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dg = add i64 %i.ct, -8
  %i.dh = sub i64 %i.dg, %i.cu                    ; 2 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dh, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader99, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dk = add i64 %i.ct, -8
  %i.dl = sub i64 %i.dk, %i.cu
  %i.dm = and i64 %i.dl, -8
  %i.dn = add i64 %i.dm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dd, i64 %i.dn
  %scevgep73 = getelementptr i8, ptr %i.cs, i64 %i.dn
  %bound0 = icmp ult ptr %i.dd, %scevgep73
  %bound1 = icmp ult ptr %i.cs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader99, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dj, 4611686018427387900     ; 3 uses
  %i.do = shl i64 %n.vec, 3                       ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dd, i64 %i.do  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cs, i64 %i.do
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.dr ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.cs, i64 %i.dr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  %i.ds = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !452, !alias.scope !2187, !noalias !2182
  %wide.load75 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !452, !alias.scope !2187, !noalias !2182
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !452, !alias.scope !2190, !noalias !2187
  store <2 x i64> %wide.load75, ptr %i.dt, align 8, !tbaa !452, !alias.scope !2190, !noalias !2187
  %i.du = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !452, !alias.scope !2187, !noalias !2182
  store <2 x ptr> splat (ptr null), ptr %i.du, align 8, !tbaa !452, !alias.scope !2187, !noalias !2182
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !2192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader99

.lr.ph.i.i.i.i.preheader99:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cs, %vector.memcheck ], [ %i.cs, %.lr.ph.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader99, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader99 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader99 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  %i.dw = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !452, !alias.scope !2185, !noalias !2182
  store i64 %i.dw, ptr %.012.i.i.i.i, align 8, !tbaa !452, !alias.scope !2182, !noalias !2185
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !452, !alias.scope !2185, !noalias !2182
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dx, %i.cn
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2193

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dd, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dp, %middle.block ], [ %i.dy, %.lr.ph.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cs, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cv) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.r
  store ptr %i.dd, ptr %i.cl, align 8, !tbaa !1710
  store ptr %i.dz, ptr %i.cm, align 8, !tbaa !501
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.ea, ptr %i.co, align 8, !tbaa !502
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.i, %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !19 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 136 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 144 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !64 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 152 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !2194
  %.not.i.i13 = icmp eq ptr %i.ef, %i.eh
  br i1 %.not.i.i13, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.ei = ptrtoint ptr %i.e to i64
  store i64 %i.ei, ptr %i.ef, align 8, !tbaa !73
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.ej, ptr %i.ee, align 8, !tbaa !64
  br label %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.ek = load ptr, ptr %i.ed, align 8, !tbaa !67 ; 10 uses
  %i.el = ptrtoint ptr %i.ef to i64               ; 3 uses
  %i.em = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.en = sub i64 %i.el, %i.em                    ; 4 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %bb.u, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.ep = ashr exact i64 %i.en, 3                 ; 3 uses
  %.sroa.speculated.i.i16 = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i16, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 1152921504606846975)
  %i.et = select i1 %i.er, i64 1152921504606846975, i64 %i.es ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i17)
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #27 ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.en
  %i.ex = ptrtoint ptr %i.e to i64
  store i64 %i.ex, ptr %i.ew, align 8, !tbaa !73
  %.not10.i.i.i.i18 = icmp eq ptr %i.ek, %i.ef
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ey = add i64 %i.el, -8
  %i.ez = sub i64 %i.ey, %i.em                    ; 2 uses
  %i.fa = lshr i64 %i.ez, 3
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.ez, 136
  br i1 %min.iters.check84, label %.lr.ph.i.i.i.i19.preheader98, label %vector.memcheck77

vector.memcheck77:                                ; preds = %.lr.ph.i.i.i.i19.preheader
  %i.fc = add i64 %i.el, -8
  %i.fd = sub i64 %i.fc, %i.em
  %i.fe = and i64 %i.fd, -8
  %i.ff = add i64 %i.fe, 8                        ; 2 uses
  %scevgep78 = getelementptr i8, ptr %i.ev, i64 %i.ff
  %scevgep79 = getelementptr i8, ptr %i.ek, i64 %i.ff
  %bound080 = icmp ult ptr %i.ev, %scevgep79
  %bound181 = icmp ult ptr %i.ek, %scevgep78
  %found.conflict82 = and i1 %bound080, %bound181
  br i1 %found.conflict82, label %.lr.ph.i.i.i.i19.preheader98, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck77
end_hunk_2
begin_hunk_3_@_ZN4LIEF5MachO12BinaryParser24parse_dyldinfo_lazy_bindINS0_7details7MachO32EEENS_10ok_error_tEv:bb.a
  call void @_ZN4LIEF7logging6Logger3errIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull @.str.273)
  br label %bb.af

bb.ad:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.dl = trunc i8 %.061131 to i1
  %i.dm = call i64 @_ZN4LIEF5MachO12BinaryParser7do_bindINS0_7details7MachO32EEENS_10ok_error_tENS0_15DyldBindingInfo5CLASSEhhmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEilbbPvm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext %.076127, i64 noundef %.072128, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %.068129, i64 noundef %.064130, i1 noundef zeroext %i.dl, i1 noundef zeroext false, ptr noundef nonnull %8, i64 noundef %.060132) ; 0 uses
  %i.dn = load ptr, ptr %i.bn, align 8, !tbaa !281
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !365
  %.reass.reass = add i64 %i.dp, %invariant.op
  %i.dq = add i64 %.072128, 4
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.dr = and i8 %i.ce, -16
  %i.ds = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.dt = zext i8 %i.dr to i32
  store i32 %i.dt, ptr %i.b, align 4, !tbaa !18
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.du, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef 4, ptr nonnull @.str.284, i64 25, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.q, %bb.r, %bb.o, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %bb.ad, %bb.ae, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit, %bb.t, %bb.s
  %.379 = phi i8 [ %.076127, %bb.ac ], [ %.076127, %bb.ae ], [ %.076127, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.076127, %bb.o ], [ %i.cg, %bb.ab ], [ %.076127, %bb.ad ], [ %.076127, %bb.t ], [ %.076127, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.076127, %bb.q ], [ %.076127, %bb.aa ], [ %.076127, %bb.s ], [ %.076127, %bb.r ], [ %.076127, %bb.z ]
  %.375 = phi i64 [ %.072128, %bb.ac ], [ %.072128, %bb.ae ], [ %.072128, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.072128, %bb.o ], [ %.fca.0.extract, %bb.ab ], [ %i.dq, %bb.ad ], [ %.072128, %bb.t ], [ %.072128, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.072128, %bb.q ], [ %.072128, %bb.aa ], [ %.072128, %bb.s ], [ %.072128, %bb.r ], [ %.072128, %bb.z ]
  %.371 = phi i32 [ %.068129, %bb.ac ], [ %.068129, %bb.ae ], [ %.068129, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %i.cj, %bb.o ], [ %.068129, %bb.ab ], [ %.068129, %bb.ad ], [ %i.cr, %bb.t ], [ %.068129, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.068129, %bb.q ], [ %.068129, %bb.aa ], [ 0, %bb.s ], [ %i.co, %bb.r ], [ %.068129, %bb.z ]
  %.367 = phi i64 [ %.064130, %bb.ac ], [ %.064130, %bb.ae ], [ %.064130, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.064130, %bb.o ], [ %.064130, %bb.ab ], [ %.064130, %bb.ad ], [ %.064130, %bb.t ], [ %.064130, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.064130, %bb.q ], [ %.064130, %bb.aa ], [ %.064130, %bb.s ], [ %.064130, %bb.r ], [ %.fca.0.extract5, %bb.z ]
  %.4 = phi i8 [ %.061131, %bb.ac ], [ %.061131, %bb.ae ], [ %.061131, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.061131, %bb.o ], [ %.061131, %bb.ab ], [ %.061131, %bb.ad ], [ %.061131, %bb.t ], [ %.263, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.061131, %bb.q ], [ %.061131, %bb.aa ], [ %.061131, %bb.s ], [ %.061131, %bb.r ], [ %.061131, %bb.z ]
  %.2 = phi i64 [ %.060132, %bb.ac ], [ %.060132, %bb.ae ], [ %.060132, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.060132, %bb.o ], [ %.060132, %bb.ab ], [ %.reass.reass, %bb.ad ], [ %.060132, %bb.t ], [ %.060132, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.060132, %bb.q ], [ %.060132, %bb.aa ], [ %.060132, %bb.s ], [ %.060132, %bb.r ], [ %.060132, %bb.z ]
  %i.dv = load ptr, ptr %i.bn, align 8, !tbaa !281 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !365 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.bf
  br i1 %i.dy, label %bb.l, label %.thread119

.thread119:                                       ; preds = %bb.af, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.dz = load ptr, ptr %7, align 8, !tbaa !274   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bg
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %.thread119
  %i.eb = load i64, ptr %i.bg, align 8, !tbaa !278
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %.thread119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.c, %bb.e, %bb.h, %bb.b
  %.sroa.5.1 = phi i64 [ 2, %bb.b ], [ 4294967296, %bb.c ], [ 7, %bb.e ], [ 2, %bb.h ], [ 4294967303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ 7, %bb.k ]
  ret i64 %.sroa.5.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser7do_bindINS0_7details7MachO32EEENS_10ok_error_tENS0_15DyldBindingInfo5CLASSEhhmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEilbbPvm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %6, i64 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef %10, i64 noundef %11) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %15 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  store i8 %3, ptr %i.b, align 1, !tbaa !278
  %i.e = zext i8 %3 to i64                        ; 2 uses
  %i.f = load ptr, ptr %10, align 8, !tbaa !1760, !nonnull !287, !align !645 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1197
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !1198 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not = icmp ugt i64 %i.m, %i.e
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKhEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 4, ptr nonnull @.str.285, i64 17, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.y

_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.p, align 8, !tbaa !1756
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %i.r = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.s = sub i64 %i.r, %i.k
  store ptr %i.q, ptr %i.p, align 8, !tbaa !1761
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !1201 ; 4 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !1756
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s
  store ptr %i.v, ptr %i.p, align 8, !tbaa !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1202 ; 2 uses
  %i.y = add i64 %i.x, %4                         ; 3 uses
  store i64 %i.y, ptr %i.c, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !2052
  %i.ab = add i64 %i.aa, %i.x
  %i.ac = icmp ugt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 4, ptr nonnull @.str.286, i64 18, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit
  %i.af = zext i8 %2 to i64
  %i.ag = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2768 ; 11 uses
  tail call void @_ZN4LIEF5MachO15DyldBindingInfoC1ENS1_5CLASSENS1_4TYPEEmlibbm(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 noundef %1, i64 noundef %i.af, i64 noundef %i.y, i64 noundef %7, i32 noundef %6, i1 noundef zeroext %8, i1 noundef zeroext %9, i64 noundef %11) #26, !noalias !2768
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !75
  %i.ai = icmp sgt i32 %6, 0
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = zext nneg i32 %6 to i64                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !482
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !270 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %.not22 = icmp ult i64 %i.ar, %i.aj
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr [8 x i8], ptr %i.an, i64 %i.aj
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !483
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.au, ptr %i.av, align 8, !tbaa !113
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %.not79 = icmp eq ptr %i.ax, null
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !462
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bc = tail call noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.az, %bb.h ], [ %i.bc, %bb.i ] ; 3 uses
  %.not23 = icmp eq ptr %.0, null
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %.0, ptr %i.bd, align 8, !tbaa !121
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store ptr %i.ag, ptr %i.be, align 8, !tbaa !2071
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 2, ptr nonnull @.str.287, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bh = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2771 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bh, i8 0, i64 96, i1 false), !noalias !2771
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.bh) #26, !noalias !2771
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !390, !noalias !2771
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 0, ptr %i.bk, align 16, !tbaa !391, !noalias !2771
  store i8 0, ptr %i.bj, align 8, !tbaa !278, !noalias !2771
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !noalias !2771
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.bh, align 16, !tbaa !15, !noalias !2771
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false), !noalias !2771
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i32 2, ptr %i.bq, align 8, !tbaa !471
  store i8 0, ptr %i.bm, align 8, !tbaa !473
  store i8 0, ptr %i.bn, align 1, !tbaa !474
  store i16 0, ptr %i.bo, align 2, !tbaa !475
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.br, ptr %17, align 8, !tbaa !390
  %i.bs = load ptr, ptr %5, align 8, !tbaa !274   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !391 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !17
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %bb.m, label %._crit_edge.i.i

bb.m:                                             ; preds = %bb.l
  %i.bw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bw, ptr %17, align 8, !tbaa !274
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !278
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.l
  %i.by = phi ptr [ %i.bw, %bb.m ], [ %i.br, %bb.l ] ; 2 uses
  switch i64 %i.bu, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bz = load i8, ptr %i.bs, align 1, !tbaa !278
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !278
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bs, i64 %i.bu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.n, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !391
  %i.cc = load ptr, ptr %17, align 8, !tbaa !274
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ce = load ptr, ptr %i.bh, align 16, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 %17) #26
  %i.ch = load ptr, ptr %17, align 8, !tbaa !274  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.br
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cj = load i64, ptr %i.br, align 8, !tbaa !278
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.bh, ptr %i.cl, align 8, !tbaa !121
  store ptr %i.ag, ptr %i.bp, align 16, !tbaa !2071
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !12 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 160 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 168 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !501 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 176 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !502
  %.not.i.i = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = ptrtoint ptr %i.bh to i64
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !452
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !501
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !1710 ; 10 uses
  %i.cw = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64               ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i26 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i26)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #27 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  %i.di = ptrtoint ptr %i.bh to i64
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !452
  %.not10.i.i.i.i = icmp eq ptr %i.cv, %i.cq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dj = add i64 %i.cw, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dn = add i64 %i.cw, -8
  %i.do = sub i64 %i.dn, %i.cx
  %i.dp = and i64 %i.do, -8
  %i.dq = add i64 %i.dp, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dg, i64 %i.dq
  %scevgep100 = getelementptr i8, ptr %i.cv, i64 %i.dq
  %bound0 = icmp ult ptr %i.dg, %scevgep100
  %bound1 = icmp ult ptr %i.cv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dg, i64 %i.dr  ; 2 uses
  %i.dt = getelementptr i8, ptr %i.cv, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.du ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.cv, i64 %i.du ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  %i.dv = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep101, align 8, !tbaa !452, !alias.scope !2779, !noalias !2774
  %wide.load102 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !452, !alias.scope !2779, !noalias !2774
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !452, !alias.scope !2782, !noalias !2779
  store <2 x i64> %wide.load102, ptr %i.dw, align 8, !tbaa !452, !alias.scope !2782, !noalias !2779
  %i.dx = getelementptr i8, ptr %next.gep101, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep101, align 8, !tbaa !452, !alias.scope !2779, !noalias !2774
  store <2 x ptr> splat (ptr null), ptr %i.dx, align 8, !tbaa !452, !alias.scope !2779, !noalias !2774
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !2784

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader126

.lr.ph.i.i.i.i.preheader126:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader126, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader126 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader126 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  %i.dz = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !452, !alias.scope !2777, !noalias !2774
  store i64 %i.dz, ptr %.012.i.i.i.i, align 8, !tbaa !452, !alias.scope !2774, !noalias !2777
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !452, !alias.scope !2777, !noalias !2774
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, %i.cq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2785

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ds, %middle.block ], [ %i.eb, %.lr.ph.i.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.s
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !1710
  store ptr %i.ec, ptr %i.cp, align 8, !tbaa !501
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.ed, ptr %i.cr, align 8, !tbaa !502
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.p, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !12
  %i.eg = call noundef ptr @_ZN4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ef) #26 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 200 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 208 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !2087 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 216 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !2088
  %.not.i.i24 = icmp eq ptr %i.ek, %i.em
  br i1 %.not.i.i24, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.en = ptrtoint ptr %i.ag to i64
  store i64 %i.en, ptr %i.ek, align 8, !tbaa !2089
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.eo, ptr %i.ej, align 8, !tbaa !2087
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.ep = load ptr, ptr %i.ei, align 8, !tbaa !2091 ; 10 uses
  %i.eq = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.er = ptrtoint ptr %i.ep to i64               ; 3 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 4 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.w, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.v
  %i.eu = ashr exact i64 %i.es, 3                 ; 3 uses
  %.sroa.speculated.i.i27 = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i27, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975)
  %i.ey = select i1 %i.ew, i64 1152921504606846975, i64 %i.ex ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i28)
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #27 ; 10 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.es
  %i.fc = ptrtoint ptr %i.ag to i64
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !2089
  %.not10.i.i.i.i29 = icmp eq ptr %i.ep, %i.ek
  br i1 %.not10.i.i.i.i29, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i30.preheader

.lr.ph.i.i.i.i30.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.fd = add i64 %i.eq, -8
  %i.fe = sub i64 %i.fd, %i.er                    ; 2 uses
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check111 = icmp ult i64 %i.fe, 136
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i30.preheader125, label %vector.memcheck104

vector.memcheck104:                               ; preds = %.lr.ph.i.i.i.i30.preheader
  %i.fh = add i64 %i.eq, -8
  %i.fi = sub i64 %i.fh, %i.er
  %i.fj = and i64 %i.fi, -8
  %i.fk = add i64 %i.fj, 8                        ; 2 uses
  %scevgep105 = getelementptr i8, ptr %i.fa, i64 %i.fk
  %scevgep106 = getelementptr i8, ptr %i.ep, i64 %i.fk
  %bound0107 = icmp ult ptr %i.fa, %scevgep106
end_hunk_3
begin_hunk_4_@_ZN4LIEF5MachO12BinaryParser19parse_chained_fixupINS0_7details7MachO32EEENS_10ok_error_tERKNS3_26dyld_chained_fixups_headerERNS_10SpanStreamE:bb.a
  %i.du = load ptr, ptr %i.bk, align 8, !tbaa !2163
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #29
  br label %_ZN4LIEF5MachO17DyldChainedFixups25chained_starts_in_segmentD2Ev.exit

_ZN4LIEF5MachO17DyldChainedFixups25chained_starts_in_segmentD2Ev.exit: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.l

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.dy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dz, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 1, ptr nonnull @.str.356, i64 49, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ea = load i32, ptr %i.h, align 4, !tbaa !2155
  %i.eb = load i32, ptr %i.e, align 4, !tbaa !18  ; 2 uses
  %i.ec = add i32 %i.eb, %i.ea
  %i.ed = zext i32 %i.ec to i64
  %i.ee = load i32, ptr %i.d, align 4, !tbaa !18
  %i.ef = call i64 @_ZN4LIEF5MachO12BinaryParser15parse_fixup_segINS0_7details7MachO32EEENS_10ok_error_tERNS_10SpanStreamEjmj(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.eb, i64 noundef %i.ed, i32 noundef %i.ee)
  %i.eg = and i64 %i.ef, 4294967296
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ei = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 256
  %i.ek = load i32, ptr %i.d, align 4, !tbaa !18
  %i.el = zext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !1198
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1201
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.eq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 3, ptr nonnull @.str.357, i64 40, ptr noundef nonnull align 8 dereferenceable(32) %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF5MachO17DyldChainedFixups25chained_starts_in_segmentD2Ev.exit, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.er = load i32, ptr %i.d, align 4, !tbaa !18
  %i.es = add i32 %i.er, 1                        ; 2 uses
  store i32 %i.es, ptr %i.d, align 4, !tbaa !18
  %i.et = icmp ult i32 %i.es, %.0
  br i1 %i.et, label %bb.d, label %.loopexit, !llvm.loop !2822

.loopexit:                                        ; preds = %bb.l, %bb.c, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details28dyld_chained_starts_in_imageEEENS_6resultIT_EEv.exit.thread, %.loopexit
  %.sroa.2.1 = phi i64 [ 4294967297, %.loopexit ], [ 1, %_ZNK4LIEF12BinaryStream4readINS_5MachO7details28dyld_chained_starts_in_imageEEENS_6resultIT_EEv.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  ret i64 %.sroa.2.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser8do_fixupINS0_7details7MachO32EEENS_10ok_error_tENS0_19DYLD_CHAINED_FORMATEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElb(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !18
  %i.d = zext i1 %5 to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !289
  %i.e = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #27, !noalias !2823 ; 14 uses
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfoC2ENS0_19DYLD_CHAINED_FORMATEb(ptr noundef nonnull align 8 dereferenceable(112) %i.e, i32 noundef %1, i1 noundef zeroext %5) #26, !noalias !2823
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO22ChainedBindingInfoListE, i64 16), ptr %i.e, align 8, !tbaa !15, !noalias !2823
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !2823
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %4, ptr %i.g, align 8, !tbaa !1904
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %2, ptr %i.h, align 8, !tbaa !1906
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %2 to i64                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !482
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !270  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %.not = icmp ult i64 %i.r, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %i.j
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !483
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.u, ptr %i.v, align 8, !tbaa !113
  %i.w = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !270
  %i.y = zext nneg i32 %2 to i64
  %i.z = getelementptr [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !483
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ad, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str.346, i64 22, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 1, ptr nonnull @.str.347, i64 17, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKbEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 1, ptr nonnull @.str.348, i64 17, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 1, ptr nonnull @.str.349, i64 17, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %.not55 = icmp eq ptr %i.al, null
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !462
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12
  %i.aq = call noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.an, %bb.f ], [ %i.aq, %bb.g ] ; 5 uses
  %.not12 = icmp eq ptr %.0, null
  br i1 %.not12, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.0, ptr %i.ar, align 8, !tbaa !121
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store ptr %i.e, ptr %i.as, align 8, !tbaa !2071
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 58
  %i.au = load i16, ptr %i.at, align 2, !tbaa !475
  %i.av = lshr i16 %i.au, 8
  %i.aw = zext nneg i16 %i.av to i32
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !18
  %i.ay = icmp eq i32 %i.ax, %i.aw
  br i1 %i.ay, label %bb.j, label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 80
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !2178
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 2, ptr nonnull @.str.287, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.be = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2826 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.be, i8 0, i64 96, i1 false), !noalias !2826
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.be) #26, !noalias !2826
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !390, !noalias !2826
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.bh, align 16, !tbaa !391, !noalias !2826
  store i8 0, ptr %i.bg, align 8, !tbaa !278, !noalias !2826
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !noalias !2826
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.be, align 16, !tbaa !15, !noalias !2826
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false), !noalias !2826
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 0, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !113
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store ptr %i.bm, ptr %i.bn, align 16, !tbaa !2178
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.bo, ptr %11, align 8, !tbaa !390
  %i.bp = load ptr, ptr %3, align 8, !tbaa !274   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !391 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.br, ptr %i.a, align 8, !tbaa !17
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bt, ptr %11, align 8, !tbaa !274
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.bu, ptr %i.bo, align 8, !tbaa !278
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %i.bv = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %bb.k ] ; 2 uses
  switch i64 %i.br, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !278
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !278
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bp, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !391
  %i.bz = load ptr, ptr %11, align 8, !tbaa !274
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cb = load ptr, ptr %i.be, align 16, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 %11) #26
  %i.ce = load ptr, ptr %11, align 8, !tbaa !274  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bo
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cg = load i64, ptr %i.bo, align 8, !tbaa !278
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.be, ptr %i.ci, align 8, !tbaa !121
  store ptr %i.e, ptr %i.bk, align 16, !tbaa !2071
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !12 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 160 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 168 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !501 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 176 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !502
  %.not.i.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = ptrtoint ptr %i.be to i64
  store i64 %i.cq, ptr %i.cn, align 8, !tbaa !452
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !501
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !1710 ; 10 uses
  %i.ct = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cu = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %bb.q, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i15 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i15)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #27 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  %i.df = ptrtoint ptr %i.be to i64
  store i64 %i.df, ptr %i.de, align 8, !tbaa !452
  %.not10.i.i.i.i = icmp eq ptr %i.cs, %i.cn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dg = add i64 %i.ct, -8
  %i.dh = sub i64 %i.dg, %i.cu                    ; 2 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dh, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader99, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dk = add i64 %i.ct, -8
  %i.dl = sub i64 %i.dk, %i.cu
  %i.dm = and i64 %i.dl, -8
  %i.dn = add i64 %i.dm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dd, i64 %i.dn
  %scevgep73 = getelementptr i8, ptr %i.cs, i64 %i.dn
  %bound0 = icmp ult ptr %i.dd, %scevgep73
  %bound1 = icmp ult ptr %i.cs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader99, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dj, 4611686018427387900     ; 3 uses
  %i.do = shl i64 %n.vec, 3                       ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dd, i64 %i.do  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cs, i64 %i.do
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.dr ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.cs, i64 %i.dr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  call void @llvm.experimental.noalias.scope.decl(metadata !2832)
  %i.ds = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !452, !alias.scope !2834, !noalias !2829
  %wide.load75 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !452, !alias.scope !2834, !noalias !2829
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !452, !alias.scope !2837, !noalias !2834
  store <2 x i64> %wide.load75, ptr %i.dt, align 8, !tbaa !452, !alias.scope !2837, !noalias !2834
  %i.du = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !452, !alias.scope !2834, !noalias !2829
  store <2 x ptr> splat (ptr null), ptr %i.du, align 8, !tbaa !452, !alias.scope !2834, !noalias !2829
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !2839

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader99

.lr.ph.i.i.i.i.preheader99:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cs, %vector.memcheck ], [ %i.cs, %.lr.ph.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader99, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader99 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader99 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  call void @llvm.experimental.noalias.scope.decl(metadata !2832)
  %i.dw = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !452, !alias.scope !2832, !noalias !2829
  store i64 %i.dw, ptr %.012.i.i.i.i, align 8, !tbaa !452, !alias.scope !2829, !noalias !2832
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !452, !alias.scope !2832, !noalias !2829
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dx, %i.cn
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2840

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dd, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dp, %middle.block ], [ %i.dy, %.lr.ph.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cs, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cv) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.r
  store ptr %i.dd, ptr %i.cl, align 8, !tbaa !1710
  store ptr %i.dz, ptr %i.cm, align 8, !tbaa !501
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.ea, ptr %i.co, align 8, !tbaa !502
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.i, %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !19 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 136 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 144 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !64 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 152 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !2194
  %.not.i.i13 = icmp eq ptr %i.ef, %i.eh
  br i1 %.not.i.i13, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.ei = ptrtoint ptr %i.e to i64
  store i64 %i.ei, ptr %i.ef, align 8, !tbaa !73
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.ej, ptr %i.ee, align 8, !tbaa !64
  br label %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.ek = load ptr, ptr %i.ed, align 8, !tbaa !67 ; 10 uses
  %i.el = ptrtoint ptr %i.ef to i64               ; 3 uses
  %i.em = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.en = sub i64 %i.el, %i.em                    ; 4 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %bb.u, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.ep = ashr exact i64 %i.en, 3                 ; 3 uses
  %.sroa.speculated.i.i16 = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i16, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 1152921504606846975)
  %i.et = select i1 %i.er, i64 1152921504606846975, i64 %i.es ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i17)
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #27 ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.en
  %i.ex = ptrtoint ptr %i.e to i64
  store i64 %i.ex, ptr %i.ew, align 8, !tbaa !73
  %.not10.i.i.i.i18 = icmp eq ptr %i.ek, %i.ef
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ey = add i64 %i.el, -8
  %i.ez = sub i64 %i.ey, %i.em                    ; 2 uses
  %i.fa = lshr i64 %i.ez, 3
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.ez, 136
  br i1 %min.iters.check84, label %.lr.ph.i.i.i.i19.preheader98, label %vector.memcheck77

vector.memcheck77:                                ; preds = %.lr.ph.i.i.i.i19.preheader
  %i.fc = add i64 %i.el, -8
  %i.fd = sub i64 %i.fc, %i.em
  %i.fe = and i64 %i.fd, -8
  %i.ff = add i64 %i.fe, 8                        ; 2 uses
  %scevgep78 = getelementptr i8, ptr %i.ev, i64 %i.ff
  %scevgep79 = getelementptr i8, ptr %i.ek, i64 %i.ff
  %bound080 = icmp ult ptr %i.ev, %scevgep79
  %bound181 = icmp ult ptr %i.ek, %scevgep78
  %found.conflict82 = and i1 %bound080, %bound181
  br i1 %found.conflict82, label %.lr.ph.i.i.i.i19.preheader98, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck77
end_hunk_4
