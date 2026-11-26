Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldChainedFixupsCreator?download=true
inline.NumInlined: 4364
inline.NumDeleted: 1662
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4LIEF5MachO24DyldChainedFixupsCreator19process_relocationsERNS0_6BinaryENS0_23DYLD_CHAINED_PTR_FORMATE:bb.a
  %bound0 = icmp ult ptr %i.ck, %i.cu
  %bound1 = icmp ult ptr %i.bz, %i.ct
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, 4611686018427387900     ; 3 uses
  %i.cv = shl i64 %n.vec, 3                       ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bz, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cy ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.bz, i64 %i.cy ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.cz = getelementptr i8, ptr %next.gep54, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !391, !alias.scope !395
  %wide.load55 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !391, !alias.scope !395
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !391, !alias.scope !396, !noalias !397
  store <2 x i64> %wide.load55, ptr %i.da, align 8, !tbaa !391, !alias.scope !396, !noalias !397
  store <2 x ptr> splat (ptr null), ptr %next.gep54, align 8, !tbaa !391, !alias.scope !395
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !391, !alias.scope !395
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !377

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader57

.lr.ph.i.i.i.i.preheader57:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader57, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader57 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.dc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !391, !alias.scope !394
  store i64 %i.dc, ptr %.012.i.i.i.i, align 8, !tbaa !391, !alias.scope !393
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !391, !alias.scope !394
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dd, %i.bu
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !378

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ck, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.cw, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dg = load ptr, ptr %i.bv, align 8, !tbaa !389
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.di) #24
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.o
  store ptr %i.ck, ptr %i.bs, align 8, !tbaa !392
  store ptr %i.df, ptr %i.bt, align 8, !tbaa !388
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.dj, ptr %i.bv, align 8, !tbaa !389
  br label %_ZNSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4LIEF5MachO15RelocationFixupEEclEPS2_.exit.i: ; preds = %bb.b
  %i.dk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.126) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.dl = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef i64 %i.dn(ptr noundef nonnull align 8 dereferenceable(88) %i.q) #23
  store i64 %i.do, ptr %i.b, align 8, !tbaa !56
  %i.dp = load ptr, ptr %i.dk, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull @.str.3, i64 44, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.dq = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(88) %i.q) #23, !inline_history !379
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNKSt14default_deleteIN4LIEF5MachO15RelocationFixupEEclEPS2_.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.026.037, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.dt, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare hidden void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details30dyld_chained_ptr_arm64e_rebaseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare hidden void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details26dyld_chained_ptr_64_rebaseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef ptr @_ZN4LIEF5MachO9to_stringENS0_23DYLD_CHAINED_PTR_FORMATE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF5MachO24DyldChainedFixupsCreator16process_bindingsERNS0_6BinaryERNS0_12strong_map_tERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashISC_ESt8equal_toISC_ESaISt4pairIKSC_mEEEPNS0_17DyldChainedFixupsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.233") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(552) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"struct.LIEF::MachO::strong_symbol_t", align 8 ; 12 uses
  %9 = alloca %"struct.std::pair.174", align 8    ; 11 uses
  %10 = alloca %"class.std::unique_ptr.286", align 8 ; 9 uses
  %11 = alloca %"struct.std::pair.269", align 8   ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !114  ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 88                  ; 3 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.not184 = icmp eq ptr %i.g, %i.h
  br i1 %.not184, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.c
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %0, align 8, !tbaa !117
  store ptr %i.p, ptr %i.q, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l ; 2 uses
  store ptr %i.r, ptr %i.n, align 8, !tbaa !119
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !426
  %.pre144 = load ptr, ptr %i.f, align 8, !tbaa !426
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %.promoted114 = phi ptr [ null, %bb.c ], [ %i.p, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %bb.c ], [ %.pre144, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.t = phi ptr [ %i.h, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not102121 = icmp eq ptr %i.t, %i.s
  br i1 %.not102121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.as, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %.lcssa115 = phi ptr [ %.promoted114, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ], [ %i.lq, %bb.as ]
  %.lcssa108 = phi ptr [ %.promoted, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ], [ %i.lr, %bb.as ]
  store ptr %.lcssa108, ptr %i.n, align 8
  store ptr %.lcssa115, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.as
  %i.ao = phi ptr [ %.promoted114, %.lr.ph ], [ %i.lp, %bb.as ] ; 9 uses
  %.sroa.098.0122 = phi ptr [ %i.t, %.lr.ph ], [ %i.ls, %bb.as ] ; 9 uses
  %i.ap = phi ptr [ %.promoted, %.lr.ph ], [ %i.lr, %bb.as ] ; 11 uses
  %i.aq = phi ptr [ %.promoted114, %.lr.ph ], [ %i.lq, %bb.as ] ; 19 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.098.0122, i64 40 ; 3 uses
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !85, !noalias !427 ; 3 uses
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !85, !noalias !428 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %.not20.i = icmp eq ptr %i.at, %i.as
  br i1 %.not20.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.098.0122, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i, %.lr.ph.i
  %.sroa.411.022.i = phi ptr [ %i.as, %.lr.ph.i ], [ %i.bm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i ] ; 2 uses
  %.sroa.8.021.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i ]
  %i.az = load ptr, ptr %.sroa.411.022.i, align 8, !tbaa !87 ; 6 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23, !inline_history !429 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !74 ; 3 uses
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !74
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i

bb.f:                                             ; preds = %bb.e
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !79
  %bcmp.i.i = call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %i.bf)
  %i.bl = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bl, label %_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.411.022.i, i64 8
  %i.bn = add nuw nsw i64 %.sroa.8.021.i, 1       ; 2 uses
  %.not.i = icmp eq i64 %i.bn, %i.ax
  br i1 %.not.i, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i, %bb.d
  %i.bo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.126) #23
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.5, i64 30, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.as

_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.098.0122, i64 8
  %i.br = call { i64, i8 } @_ZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS0_6BinaryERKNS0_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(552) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.bq) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.br, 0 ; 5 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.br, 1
  %i.bs = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.bs, label %bb.g, label %bb.as

bb.g:                                             ; preds = %_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.bt = load i64, ptr %.sroa.098.0122, align 8, !tbaa !90
  %i.bu = call noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %2, i64 noundef %i.bt) #23 ; 2 uses
  store ptr %i.bu, ptr %i.d, align 8, !tbaa !98
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.126) #23
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.6, i64 38, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.098.0122)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ar

bb.i:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.098.0122, i64 72
  %i.bz = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25, !noalias !430 ; 16 uses
  %i.ca = load i32, ptr %i.w, align 4, !tbaa !431, !noalias !430
  %i.cb = load i8, ptr %i.by, align 8, !tbaa !121, !range !122, !noalias !430, !noundef !123
  %i.cc = trunc nuw i8 %i.cb to i1
  call void @_ZN4LIEF5MachO18ChainedBindingInfoC1ENS0_19DYLD_CHAINED_FORMATEb(ptr noundef nonnull align 8 dereferenceable(88) %i.bz, i32 noundef %i.ca, i1 noundef zeroext %i.cc) #23, !noalias !430
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.az, ptr %i.cd, align 8, !tbaa !125
  %i.ce = trunc i64 %.fca.0.extract to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !432
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.098.0122, i64 80
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !91
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !433
  %i.cj = load i64, ptr %.sroa.098.0122, align 8, !tbaa !90
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !434
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !435
  %i.cn = load ptr, ptr %i.x, align 8, !tbaa !77, !noalias !436 ; 2 uses
  %.not = icmp eq i64 %.fca.0.extract, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !438
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3
  %i.ct = icmp ult i64 %.fca.0.extract, %i.cs
  br i1 %i.ct, label %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, label %bb.k

_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit: ; preds = %bb.j
  %i.cu = getelementptr [8 x i8], ptr %i.cn, i64 %.fca.0.extract
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !439
  br label %bb.k

bb.k:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, %bb.j, %bb.i
  %i.cy = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIPN4LIEF5MachO14SegmentCommandESt4pairIKS4_St6vectorINS2_24DyldChainedFixupsCreator16binding_rebase_tESaIS9_EEESaISC_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !102 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !103
  %.not.i37 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.bz, ptr %i.da, align 8, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 2, ptr %i.dd, align 8, !tbaa !106
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !102
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.df, ptr %i.cz, align 8, !tbaa !102
  br label %_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE12emplace_backIJRNS1_18ChainedBindingInfoEEEERS3_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !107 ; 5 uses
  %i.dh = ptrtoint ptr %i.da to i64
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775792
  br i1 %i.dk, label %bb.n, label %_ZNKSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  store ptr %i.ap, ptr %i.n, align 8
  store ptr %i.aq, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #26
  unreachable

_ZNKSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.dl = ashr exact i64 %i.dj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 576460752303423487)
  %i.dp = select i1 %i.dn, i64 576460752303423487, i64 %i.do ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dq = shl nuw nsw i64 %i.dp, 4
  %i.dr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #25 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store ptr %i.bz, ptr %i.ds, align 8, !tbaa !52
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 2, ptr %i.dt, align 8, !tbaa !106
  %.not10.i.i.i.i.i = icmp eq ptr %i.dg, %i.da
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i ], [ %i.dr, %_ZNKSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i ], [ %i.dg, %_ZNKSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !109, !alias.scope !440
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.du, %i.da
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dr, %_ZNKSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dv, %.lr.ph.i.i.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE17_M_realloc_insertIJRNS1_18ChainedBindingInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.dx = load ptr, ptr %i.db, align 8, !tbaa !103
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = sub i64 %i.dy, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dz) #24
  br label %_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE17_M_realloc_insertIJRNS1_18ChainedBindingInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE17_M_realloc_insertIJRNS1_18ChainedBindingInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.dr, ptr %i.cy, align 8, !tbaa !107
  store ptr %i.dw, ptr %i.cz, align 8, !tbaa !102
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.ea, ptr %i.db, align 8, !tbaa !103
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO24DyldChainedFixupsCreator16process_bindingsERNS0_6BinaryERNS0_12strong_map_tERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashISC_ESt8equal_toISC_ESaISt4pairIKSC_mEEEPNS0_17DyldChainedFixupsE:bb.a
  store ptr %i.hr, ptr %11, align 8, !tbaa !79
  %i.hs = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.hs, ptr %i.ai, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ah, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit46
  %i.ht = phi ptr [ %i.hr, %bb.ah ], [ %i.ai, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit46 ] ; 2 uses
  switch i64 %i.hp, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEEC2IRS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hu = load i8, ptr %i.ho, align 1, !tbaa !52
  store i8 %i.hu, ptr %i.ht, align 1, !tbaa !52
  br label %_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEEC2IRS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ht, ptr align 1 %i.ho, i64 %i.hp, i1 false)
  br label %_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEEC2IRS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEEC2IRS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.ai, %bb.aj
  %i.hv = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  store i64 %i.hv, ptr %i.aj, align 8, !tbaa !74
  %i.hw = load ptr, ptr %11, align 8, !tbaa !79
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hv
  store i8 0, ptr %i.hx, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.hy = load i64, ptr %i.ac, align 8, !tbaa !127
  store i64 %i.hy, ptr %i.ak, align 8, !tbaa !127
  store ptr %i.hn, ptr %i.al, align 8, !tbaa !130
  %i.hz = call { ptr, i8 } @_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS7_EEES3_INS9_14_Node_iteratorIS7_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(48) %11) ; 0 uses
  %i.ia = load ptr, ptr %11, align 8, !tbaa !79   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.ai
  br i1 %i.ib, label %_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEEC2IRS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.ic = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #24
  br label %_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEED2Ev.exit

_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEED2Ev.exit: ; preds = %_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEEC2IRS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ie = load ptr, ptr %i.ae, align 8, !tbaa !135 ; 6 uses
  %i.if = load ptr, ptr %i.am, align 8, !tbaa !447
  %.not.i.i47 = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i.i47, label %bb.ak, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEED2Ev.exit
  %i.ig = load i64, ptr %10, align 8, !tbaa !446
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !446
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.ih, ptr %i.ae, align 8, !tbaa !135
  br label %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit

bb.ak:                                            ; preds = %_ZNSt4pairIKN4LIEF5MachO15strong_symbol_tEPNS1_22ChainedBindingInfoListEED2Ev.exit
  %i.ii = load ptr, ptr %i.ad, align 8, !tbaa !136 ; 10 uses
  %i.ij = ptrtoint ptr %i.ie to i64               ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64               ; 3 uses
  %i.il = sub i64 %i.ij, %i.ik                    ; 3 uses
  %i.im = icmp eq i64 %i.il, 9223372036854775800
  br i1 %i.im, label %bb.al, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ap, ptr %i.n, align 8
  store ptr %i.aq, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #26
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ak
  %i.in = ashr exact i64 %i.il, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.in, i64 1)
  %i.io = add nsw i64 %.sroa.speculated.i.i, %i.in ; 2 uses
  %i.ip = icmp ult i64 %i.io, %i.in
  %i.iq = call i64 @llvm.umin.i64(i64 %i.io, i64 1152921504606846975)
  %i.ir = select i1 %i.ip, i64 1152921504606846975, i64 %i.iq ; 3 uses
  %.not.i.i53 = icmp ne i64 %i.ir, 0
  call void @llvm.assume(i1 %.not.i.i53)
  %i.is = shl nuw nsw i64 %i.ir, 3
  %i.it = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #25 ; 10 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.il
  %i.iv = load i64, ptr %10, align 8, !tbaa !446
  store i64 %i.iv, ptr %i.iu, align 8, !tbaa !446
  store ptr null, ptr %10, align 8, !tbaa !446
  %.not10.i.i.i.i54 = icmp eq ptr %i.ii, %i.ie
  br i1 %.not10.i.i.i.i54, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i55.preheader

.lr.ph.i.i.i.i55.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.iw = add i64 %i.ij, -8
  %i.ix = sub i64 %i.iw, %i.ik                    ; 3 uses
  %i.iy = lshr i64 %i.ix, 3
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check235 = icmp ult i64 %i.ix, 56
  br i1 %min.iters.check235, label %.lr.ph.i.i.i.i55.preheader254, label %vector.memcheck236

vector.memcheck236:                               ; preds = %.lr.ph.i.i.i.i55.preheader
  %i.ja = and i64 %i.ix, -8
  %i.jb = add i64 %i.ja, 8                        ; 2 uses
  %i.jc = getelementptr i8, ptr %i.it, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.ii, i64 %i.jb
  %bound0237 = icmp ult ptr %i.it, %i.jd
  %bound1238 = icmp ult ptr %i.ii, %i.jc
  %found.conflict239 = and i1 %bound0237, %bound1238
  br i1 %found.conflict239, label %.lr.ph.i.i.i.i55.preheader254, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck236
  %n.vec241 = and i64 %i.iz, 4611686018427387900  ; 3 uses
  %i.je = shl i64 %n.vec241, 3                    ; 2 uses
  %i.jf = getelementptr i8, ptr %i.it, i64 %i.je  ; 2 uses
  %i.jg = getelementptr i8, ptr %i.ii, i64 %i.je
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next248, %vector.body242 ] ; 2 uses
  %i.jh = shl i64 %index243, 3                    ; 2 uses
  %next.gep244 = getelementptr i8, ptr %i.it, i64 %i.jh ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.ii, i64 %i.jh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.ji = getelementptr i8, ptr %next.gep245, i64 16 ; 2 uses
  %wide.load246 = load <2 x i64>, ptr %next.gep245, align 8, !tbaa !446, !alias.scope !450
  %wide.load247 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !446, !alias.scope !450
  %i.jj = getelementptr i8, ptr %next.gep244, i64 16
  store <2 x i64> %wide.load246, ptr %next.gep244, align 8, !tbaa !446, !alias.scope !451, !noalias !452
  store <2 x i64> %wide.load247, ptr %i.jj, align 8, !tbaa !446, !alias.scope !451, !noalias !452
  store <2 x ptr> splat (ptr null), ptr %next.gep245, align 8, !tbaa !446, !alias.scope !450
  store <2 x ptr> splat (ptr null), ptr %i.ji, align 8, !tbaa !446, !alias.scope !450
  %index.next248 = add nuw i64 %index243, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next248, %n.vec241
  br i1 %i.jk, label %middle.block249, label %vector.body242, !llvm.loop !415

middle.block249:                                  ; preds = %vector.body242
  %cmp.n250 = icmp eq i64 %i.iz, %n.vec241
  br i1 %cmp.n250, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i55.preheader254

.lr.ph.i.i.i.i55.preheader254:                    ; preds = %vector.memcheck236, %.lr.ph.i.i.i.i55.preheader, %middle.block249
  %.012.i.i.i.i56.ph = phi ptr [ %i.it, %vector.memcheck236 ], [ %i.it, %.lr.ph.i.i.i.i55.preheader ], [ %i.jf, %middle.block249 ]
  %.0911.i.i.i.i57.ph = phi ptr [ %i.ii, %vector.memcheck236 ], [ %i.ii, %.lr.ph.i.i.i.i55.preheader ], [ %i.jg, %middle.block249 ]
  br label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %.lr.ph.i.i.i.i55.preheader254, %.lr.ph.i.i.i.i55
  %.012.i.i.i.i56 = phi ptr [ %i.jn, %.lr.ph.i.i.i.i55 ], [ %.012.i.i.i.i56.ph, %.lr.ph.i.i.i.i55.preheader254 ] ; 2 uses
  %.0911.i.i.i.i57 = phi ptr [ %i.jm, %.lr.ph.i.i.i.i55 ], [ %.0911.i.i.i.i57.ph, %.lr.ph.i.i.i.i55.preheader254 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.jl = load i64, ptr %.0911.i.i.i.i57, align 8, !tbaa !446, !alias.scope !449
  store i64 %i.jl, ptr %.012.i.i.i.i56, align 8, !tbaa !446, !alias.scope !448
  store ptr null, ptr %.0911.i.i.i.i57, align 8, !tbaa !446, !alias.scope !449
  %i.jm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i57, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i56, i64 8 ; 2 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.jm, %i.ie
  br i1 %.not.i.i.i.i58, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i55, !llvm.loop !416

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i55, %middle.block249, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.it, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.jf, %middle.block249 ], [ %i.jn, %.lr.ph.i.i.i.i55 ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ii, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.jp = load ptr, ptr %i.am, align 8, !tbaa !447
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = sub i64 %i.jq, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.jr) #24
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.am, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.it, ptr %i.ad, align 8, !tbaa !136
  store ptr %i.jo, ptr %i.ae, align 8, !tbaa !135
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.ir
  store ptr %i.js, ptr %i.am, align 8, !tbaa !447
  %.pr = load ptr, ptr %10, align 8, !tbaa !446   ; 3 uses
  %.not.i48 = icmp eq ptr %.pr, null
  br i1 %.not.i48, label %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF5MachO22ChainedBindingInfoListEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF5MachO22ChainedBindingInfoListEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.jt = load ptr, ptr %.pr, align 8, !tbaa !54
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(112) %.pr) #23, !inline_history !417
  br label %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNKSt14default_deleteIN4LIEF5MachO22ChainedBindingInfoListEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.t, %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit
  %.not.i.i49 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i49, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit
  %i.jw = ptrtoint ptr %i.bz to i64
  store i64 %i.jw, ptr %i.ao, align 8, !tbaa !132
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.jx, ptr %i.an, align 8, !tbaa !118
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.ao:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit
  %i.jy = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.jz = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 3 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775800
  br i1 %i.kb, label %bb.ap, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.ap, ptr %i.n, align 8
  store ptr %i.aq, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #26
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ao
  %i.kc = ashr exact i64 %i.ka, 3                 ; 3 uses
  %.sroa.speculated.i.i59 = call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i59, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 3 uses
  %.not.i.i60 = icmp ne i64 %i.kg, 0
  call void @llvm.assume(i1 %.not.i.i60)
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #25 ; 10 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ka
  %i.kk = ptrtoint ptr %i.bz to i64
  store i64 %i.kk, ptr %i.kj, align 8, !tbaa !132
  %.not10.i.i.i.i61 = icmp eq ptr %i.aq, %i.ao
  br i1 %.not10.i.i.i.i61, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i62.preheader

.lr.ph.i.i.i.i62.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.kl = add i64 %i.jy, -8
  %i.km = sub i64 %i.kl, %i.jz                    ; 3 uses
  %i.kn = lshr i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.km, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i62.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i62.preheader
  %i.kp = and i64 %i.km, -8
  %i.kq = add i64 %i.kp, 8                        ; 2 uses
  %i.kr = getelementptr i8, ptr %i.ki, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.aq, i64 %i.kq
  %bound0 = icmp ult ptr %i.ki, %i.ks
  %bound1 = icmp ult ptr %i.aq, %i.kr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i62.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ko, 4611686018427387900     ; 3 uses
  %i.kt = shl i64 %n.vec, 3                       ; 2 uses
  %i.ku = getelementptr i8, ptr %i.ki, i64 %i.kt  ; 2 uses
  %i.kv = getelementptr i8, ptr %i.aq, i64 %i.kt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ki, i64 %i.kw ; 2 uses
  %next.gep224 = getelementptr i8, ptr %i.aq, i64 %i.kw ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.kx = getelementptr i8, ptr %next.gep224, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep224, align 8, !tbaa !132, !alias.scope !455
  %wide.load225 = load <2 x i64>, ptr %i.kx, align 8, !tbaa !132, !alias.scope !455
  %i.ky = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !132, !alias.scope !456, !noalias !457
  store <2 x i64> %wide.load225, ptr %i.ky, align 8, !tbaa !132, !alias.scope !456, !noalias !457
  store <2 x ptr> splat (ptr null), ptr %next.gep224, align 8, !tbaa !132, !alias.scope !455
  store <2 x ptr> splat (ptr null), ptr %i.kx, align 8, !tbaa !132, !alias.scope !455
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kz = icmp eq i64 %index.next, %n.vec
  br i1 %i.kz, label %middle.block, label %vector.body, !llvm.loop !424

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ko, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i62.preheader253

.lr.ph.i.i.i.i62.preheader253:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i62.preheader, %middle.block
  %.012.i.i.i.i63.ph = phi ptr [ %i.ki, %vector.memcheck ], [ %i.ki, %.lr.ph.i.i.i.i62.preheader ], [ %i.ku, %middle.block ]
  %.0911.i.i.i.i64.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i62.preheader ], [ %i.kv, %middle.block ]
  br label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph.i.i.i.i62.preheader253, %.lr.ph.i.i.i.i62
  %.012.i.i.i.i63 = phi ptr [ %i.lc, %.lr.ph.i.i.i.i62 ], [ %.012.i.i.i.i63.ph, %.lr.ph.i.i.i.i62.preheader253 ] ; 2 uses
  %.0911.i.i.i.i64 = phi ptr [ %i.lb, %.lr.ph.i.i.i.i62 ], [ %.0911.i.i.i.i64.ph, %.lr.ph.i.i.i.i62.preheader253 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.la = load i64, ptr %.0911.i.i.i.i64, align 8, !tbaa !132, !alias.scope !454
  store i64 %i.la, ptr %.012.i.i.i.i63, align 8, !tbaa !132, !alias.scope !453
  store ptr null, ptr %.0911.i.i.i.i64, align 8, !tbaa !132, !alias.scope !454
  %i.lb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i64, i64 8 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.lb, %i.ao
  br i1 %.not.i.i.i.i65, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i62, !llvm.loop !425

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i62, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ki, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ku, %middle.block ], [ %i.lc, %.lr.ph.i.i.i.i62 ]
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 8 ; 2 uses
  %.not.i23.i74 = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i74, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %12 = ptrtoint ptr %i.ap to i64
  %13 = sub i64 %12, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %13) #24
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.aq
  store ptr %i.ld, ptr %i.an, align 8, !tbaa !118
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kg
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.an, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.lf = phi ptr [ %i.jx, %bb.an ], [ %i.ld, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %i.lg = phi ptr [ %i.aq, %bb.an ], [ %i.ki, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %i.lh = phi ptr [ %i.ap, %bb.an ], [ %i.le, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %i.li = load ptr, ptr %8, align 8, !tbaa !79    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.aa
  br i1 %i.lj, label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.lk = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #24
  br label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit, %bb.h
  %i.lm = phi ptr [ %i.lf, %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit ], [ %i.ao, %bb.h ]
  %i.ln = phi ptr [ %i.lg, %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit ], [ %i.aq, %bb.h ]
  %i.lo = phi ptr [ %i.lh, %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.loopexit
  %i.lp = phi ptr [ %i.lm, %bb.ar ], [ %i.ao, %_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.ao, %.loopexit ]
  %i.lq = phi ptr [ %i.ln, %bb.ar ], [ %i.aq, %_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.aq, %.loopexit ] ; 2 uses
  %i.lr = phi ptr [ %i.lo, %bb.ar ], [ %i.ap, %_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.ap, %.loopexit ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.098.0122, i64 88 ; 2 uses
  %.not102 = icmp eq ptr %i.ls, %i.s
  br i1 %.not102, label %._crit_edge, label %bb.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @_ZN4LIEF5MachO22ChainedBindingInfoList6createERKNS0_18ChainedBindingInfoE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.286") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF5MachO24DyldChainedFixupsCreator6createERNS0_6BinaryE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(552) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %15 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %17 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %18 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %19 = alloca %"class.std::unordered_map.154", align 8 ; 13 uses
  %20 = alloca %"class.LIEF::MachO::strong_map_t", align 8 ; 11 uses
  %21 = alloca %"class.std::vector.233", align 16 ; 5 uses
  %22 = alloca %"struct.LIEF::MachO::DyldChainedFixups::chained_starts_in_segment", align 8 ; 16 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_arm64e_bind24", align 8 ; 4 uses
  %24 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_arm64e_bind", align 8 ; 4 uses
  %25 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_64_bind", align 8 ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %26 = alloca %"class.std::unique_ptr.317", align 8 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(552) %1) #23 ; 3 uses
  %i.u = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #25, !noalias !472 ; 17 uses
  tail call void @_ZN4LIEF5MachO17DyldChainedFixupsC1Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.u) #23, !noalias !472
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 2147483700, ptr %i.v, align 8, !tbaa !479
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 16, ptr %i.w, align 8, !tbaa !480
  %i.x = load i32, ptr %0, align 8, !tbaa !490
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i32 %i.x, ptr %i.y, align 8, !tbaa !503
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  store i32 0, ptr %i.z, align 4, !tbaa !504
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store i32 1, ptr %i.aa, align 8, !tbaa !505
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  store ptr %i.ab, ptr %19, align 8, !tbaa !147
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 1, ptr %i.ac, align 8, !tbaa !148
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ae, align 8, !tbaa !506
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store ptr %i.ag, ptr %20, align 8, !tbaa !150
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i64 1, ptr %i.ah, align 8, !tbaa !151
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8, !tbaa !506
  %i.ak = getelementptr inbounds nuw i8, ptr %20, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @_ZN4LIEF5MachO24DyldChainedFixupsCreator16process_bindingsERNS0_6BinaryERNS0_12strong_map_tERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashISC_ESt8equal_toISC_ESaISt4pairIKSC_mEEEPNS0_17DyldChainedFixupsE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.233") align 8 %21, ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(552) %1, ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull %i.u)
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !118 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 176 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !119
  %i.ar = load <2 x ptr>, ptr %21, align 16, !tbaa !507
  store <2 x ptr> %i.ar, ptr %i.al, align 8, !tbaa !507
  %i.as = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !119
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !119
  %.not4.i.i.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.am, %bb.a ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF5MachO18ChainedBindingInfoEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO18ChainedBindingInfoEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(88) %i.au) #23, !inline_history !460
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO18ChainedBindingInfoEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ao
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !461

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i
  %i.az = ptrtoint ptr %i.aq to i64
  %i.ba = ptrtoint ptr %i.am to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bb) #24
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EEEvT_S8_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !135
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !136
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !56
  %i.bk = icmp ugt i64 %i.bj, 16777215
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit
  %i.bl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.126) #23
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bm, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %18, i32 noundef 4, ptr nonnull @.str, i64 26, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %_ZN4LIEF5MachO24DyldChainedFixupsCreator14pointer_formatERKNS0_6BinaryEm.exit

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 108
end_hunk_1
