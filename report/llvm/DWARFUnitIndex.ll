Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFUnitIndex?download=true
inline.NumInlined: 776
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm14DWARFUnitIndex4dumpERNS_11raw_ostreamE:bb.a
  %i.ds = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(33) %5) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.dt = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not53101 = icmp eq i32 %i.dt, 0
  br i1 %.not53101, label %._crit_edge105, label %.lr.ph104

._crit_edge105:                                   ; preds = %bb.al, %bb.ag
  %i.du = load ptr, ptr %i.s, align 8, !tbaa !146 ; 3 uses
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !145
  %.not.i69 = icmp ult ptr %i.du, %i.dv
  br i1 %.not.i69, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge105
  %i.dw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 10) #14 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit71

bb.ai:                                            ; preds = %._crit_edge105
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dx, ptr %i.s, align 8, !tbaa !146
  store i8 10, ptr %i.du, align 1, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEc.exit71

.lr.ph104:                                        ; preds = %bb.ag, %bb.al
  %.0102 = phi i32 [ %i.eq, %bb.al ], [ 0, %bb.ag ] ; 2 uses
  %i.dy = zext i32 %.0102 to i64                  ; 2 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dy ; 4 uses
  %i.ea = load ptr, ptr %i.cb, align 8, !tbaa !52
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dy
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !69
  %i.ed = add i32 %i.ec, -1
  %or.cond3 = icmp ult i32 %i.ed, 2
  br i1 %or.cond3, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ee = load i64, ptr %i.dz, align 8, !tbaa !72 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !73
  %i.eh = add i64 %i.eg, %i.ee
  store ptr @.str.17, ptr %6, align 8, !tbaa !13, !alias.scope !155
  store i64 19, ptr %.sroa.22.0..sroa_idx.i.i.i.i72, align 8, !tbaa !9, !alias.scope !155
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !15, !alias.scope !155
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i73, align 8, !tbaa !9, !alias.scope !155
  store i8 1, ptr %i.cl, align 8, !tbaa !20, !alias.scope !155
  store i64 %i.eh, ptr %i.cm, align 8, !tbaa !9, !alias.scope !155
  store i64 %i.ee, ptr %i.cn, align 8, !tbaa !9, !alias.scope !155
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %i.cj, align 8, !alias.scope !155
  store i64 %i.co, ptr %.sroa.4.0..sroa_idx.i.i.i75, align 8, !alias.scope !155
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i74, align 8, !alias.scope !155
  store i64 %i.cp, ptr %.sroa.6.0..sroa_idx.i.i.i76, align 8, !tbaa !23, !alias.scope !155
  %i.ei = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(33) %6) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ej = load i64, ptr %i.dz, align 8, !tbaa !72
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !73
  %i.en = trunc i64 %i.em to i32
  %i.eo = add i32 %i.en, %i.ek
  store ptr @.str.18, ptr %7, align 8, !tbaa !13, !alias.scope !156
  store i64 17, ptr %.sroa.22.0..sroa_idx.i.i.i.i77, align 8, !tbaa !9, !alias.scope !156
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !15, !alias.scope !156
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i78, align 8, !tbaa !9, !alias.scope !156
  store i8 1, ptr %i.ce, align 8, !tbaa !20, !alias.scope !156
  store i32 %i.eo, ptr %i.cf, align 4, !tbaa !68, !alias.scope !156
  store i32 %i.ek, ptr %i.cg, align 8, !tbaa !68, !alias.scope !156
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIjEEEEvlS2_S3_, ptr %i.cc, align 8, !alias.scope !156
  store i64 %i.ch, ptr %.sroa.4.0..sroa_idx.i.i.i80, align 8, !alias.scope !156
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIjEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i79, align 8, !alias.scope !156
  store i64 %i.ci, ptr %.sroa.6.0..sroa_idx.i.i.i81, align 8, !tbaa !23, !alias.scope !156
  %i.ep = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(33) %7) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eq = add i32 %.0102, 1                       ; 2 uses
  %i.er = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not53 = icmp eq i32 %i.eq, %i.er
  br i1 %.not53, label %._crit_edge105, label %.lr.ph104, !llvm.loop !139

_ZN4llvm11raw_ostreamlsEc.exit71:                 ; preds = %._ZN4llvm11raw_ostreamlsEc.exit71_crit_edge, %bb.ai, %bb.ah
  %.pre-phi = phi i32 [ %.pre, %._ZN4llvm11raw_ostreamlsEc.exit71_crit_edge ], [ %i.dp, %bb.ai ], [ %i.dp, %bb.ah ] ; 2 uses
  %i.es = load i32, ptr %i.a, align 4, !tbaa !51
  %.not51 = icmp eq i32 %.pre-phi, %i.es
  br i1 %.not51, label %.loopexit, label %bb.af, !llvm.loop !140

.loopexit:                                        ; preds = %_ZN4llvm11raw_ostreamlsEc.exit71, %_ZN4llvm11raw_ostreamlsEc.exit59, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm14DWARFUnitIndex5Entry15getContributionENS_16DWARFSectionKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56   ; 2 uses
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !157

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !69
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.06 = phi ptr [ %i.l, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm14DWARFUnitIndex5Entry15getContributionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %0, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK4llvm14DWARFUnitIndex5Entry15getContributionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %0, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm14DWARFUnitIndex13getFromOffsetEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.preheader, label %"_ZN4llvm4sortIRSt6vectorIPNS_14DWARFUnitIndex5EntryESaIS4_EEZNKS2_13getFromOffsetEmE3$_1EEvOT_T0_.exit"

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51   ; 2 uses
  %.not26 = icmp eq i32 %i.g, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.o

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit, %.preheader
  %.val12 = phi ptr [ %i.d, %.preheader ], [ %i.dp, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit ] ; 7 uses
  %.val = phi ptr [ %i.b, %.preheader ], [ %.val.pre, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit ] ; 18 uses
  %.not.i.i.i.i = icmp eq ptr %.val, %.val12
  br i1 %.not.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_14DWARFUnitIndex5EntryESaIS4_EEZNKS2_13getFromOffsetEmE3$_1EEvOT_T0_.exit", label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = ptrtoint ptr %.val12 to i64
  %i.k = ptrtoint ptr %.val to i64                ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_13getFromOffsetEmE3$_1EEEvT_SF_T0_T1_"(ptr %.val, ptr %.val12, i64 noundef %i.p, ptr nonnull readonly %0)
  %i.q = icmp sgt i64 %i.l, 128
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i, label %.preheader.i18.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.val.val.pre23.i.i.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !70
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.val.val.i.i.i.i.i.i = phi i32 [ %.val.val.pre23.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val.val.i.i.i.i.i.i.i.a, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.021.i.idx.i.i.i.i.i = phi i64 [ 8, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.021.i.add.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i ] ; 4 uses
  %.pn20.i.i.i.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.021.i.ptr.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.021.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.021.i.idx.i.i.i.i.i ; 4 uses
  %i.s = load ptr, ptr %.sroa.0.021.i.ptr.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !53  ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.w = sext i32 %.val.val.i.i.i.i.i.i to i64    ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i.i.i.i.i.i, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !72   ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.val2.i.i.i.i.i.i.i, i64 %i.w
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !72
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp samesign ugt i64 %.sroa.0.021.i.idx.i.i.i.i.i, 8
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !164

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %.sroa.0.021.i.idx.i.i.i.i.i, i1 false)
  %.val.val.pre.i.i.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !70
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 8
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !53
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %.pn20.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %.val3.i9.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.val3.i9.i.i.i.i.i.i.i, i64 %i.w
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !72
  %i.ai = icmp ult i64 %i.y, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.aj = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ae, %bb.g ]
  %.sroa.0.011.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.sroa.05.010.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.g ]
  store ptr %i.aj, ptr %.sroa.05.010.i.i.i.i.i.i.i, align 8, !tbaa !53
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ak = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.val3.i.i.i.i.i.i.i.i, i64 %i.w
  %i.an = load i64, ptr %i.am, align 8, !tbaa !72
  %i.ao = icmp ult i64 %i.y, %i.an
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i, !llvm.loop !158

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi ptr [ %.val, %bb.f ], [ %.val, %bb.e ], [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.g ], [ %.sroa.0.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val.val.i.i.i.i.i.i.i.a = phi i32 [ %.val.val.i.i.i.i.i.i, %bb.f ], [ %.val.val.pre.i.i.i.i.i.i, %bb.e ], [ %.val.val.i.i.i.i.i.i, %bb.g ], [ %.val.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %i.s, ptr %.sink.i.i.i.i.i.i, align 8, !tbaa !53
  %.sroa.0.021.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.021.i.idx.i.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.021.i.add.i.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_13getFromOffsetEmE3$_1EEEvT_SF_T0_.exit.i.i.i.i.i", label %bb.c, !llvm.loop !159

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_13getFromOffsetEmE3$_1EEEvT_SF_T0_.exit.i.i.i.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ap, %.val12
  br i1 %.not7.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_14DWARFUnitIndex5EntryESaIS4_EEZNKS2_13getFromOffsetEmE3$_1EEvOT_T0_.exit", label %.lr.ph.i10.i.i.i.i.i

.lr.ph.i10.i.i.i.i.i:                             ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_13getFromOffsetEmE3$_1EEEvT_SF_T0_.exit.i.i.i.i.i"
  %i.aq = sext i32 %.val.val.i.i.i.i.i.i.i.a to i64 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNKS3_13getFromOffsetEmE3$_1EEEvT_T0_.exit.i.i.i.i.i.i", %.lr.ph.i10.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i10.i.i.i.i.i ], [ %i.bg, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNKS3_13getFromOffsetEmE3$_1EEEvT_T0_.exit.i.i.i.i.i.i" ] ; 5 uses
  %i.ar = load ptr, ptr %.sroa.0.08.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %.val1.val.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.val1.val.i.i.i.i.i.i.i, i64 %i.aq
  %i.au = load i64, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %.sroa.0.08.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.av = load ptr, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %.val3.i9.i.i11.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.val3.i9.i.i11.i.i.i.i.i, i64 %i.aq
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !72
  %i.az = icmp ult i64 %i.au, %i.ay
  br i1 %i.az, label %.lr.ph.i.i13.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNKS3_13getFromOffsetEmE3$_1EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i13.i.i.i.i.i:                           ; preds = %bb.h, %.lr.ph.i.i13.i.i.i.i.i
  %i.ba = phi ptr [ %i.bb, %.lr.ph.i.i13.i.i.i.i.i ], [ %i.av, %bb.h ]
  %.sroa.0.011.i.i14.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i16.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.sroa.05.010.i.i15.i.i.i.i.i = phi ptr [ %.sroa.0.011.i.i14.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i.i, %bb.h ]
  store ptr %i.ba, ptr %.sroa.05.010.i.i15.i.i.i.i.i, align 8, !tbaa !53
  %.sroa.0.0.i.i16.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i14.i.i.i.i.i, i64 -8 ; 2 uses
  %i.bb = load ptr, ptr %.sroa.0.0.i.i16.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.val3.i.i.i17.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.val3.i.i.i17.i.i.i.i.i, i64 %i.aq
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72
  %i.bf = icmp ult i64 %i.au, %i.be
  br i1 %i.bf, label %.lr.ph.i.i13.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNKS3_13getFromOffsetEmE3$_1EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !158

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNKS3_13getFromOffsetEmE3$_1EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i13.i.i.i.i.i, %bb.h
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i.i.i, %bb.h ], [ %.sroa.0.011.i.i14.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i ]
  store ptr %i.ar, ptr %.sroa.05.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bg, %.val12
  br i1 %.not.i12.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_14DWARFUnitIndex5EntryESaIS4_EEZNKS2_13getFromOffsetEmE3$_1EEvOT_T0_.exit", label %bb.h, !llvm.loop !160

.preheader.i18.i.i.i.i.i:                         ; preds = %bb.b
  %.sroa.0.018.i19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not19.i20.i.i.i.i.i = icmp eq ptr %.sroa.0.018.i19.i.i.i.i.i, %.val12
  br i1 %.not19.i20.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_14DWARFUnitIndex5EntryESaIS4_EEZNKS2_13getFromOffsetEmE3$_1EEvOT_T0_.exit", label %.lr.ph.i21.i.i.i.i.i

.lr.ph.i21.i.i.i.i.i:                             ; preds = %.preheader.i18.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.val.val.pre23.i22.i.i.i.i.i = load i32, ptr %i.bh, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i, %.lr.ph.i21.i.i.i.i.i
  %.val.val.i23.i.i.i.i.i = phi i32 [ %.val.val.pre23.i22.i.i.i.i.i, %.lr.ph.i21.i.i.i.i.i ], [ %.val.val24.i31.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i ] ; 5 uses
  %.sroa.0.021.i24.i.i.i.i.i = phi ptr [ %.sroa.0.018.i19.i.i.i.i.i, %.lr.ph.i21.i.i.i.i.i ], [ %.sroa.0.0.i32.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i ] ; 6 uses
  %.pn20.i25.i.i.i.i.i = phi ptr [ %.val, %.lr.ph.i21.i.i.i.i.i ], [ %.sroa.0.021.i24.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i ] ; 4 uses
  %i.bi = load ptr, ptr %.sroa.0.021.i24.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.bj = load ptr, ptr %.val, align 8, !tbaa !53 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val1.i.i26.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !55
  %i.bl = getelementptr i8, ptr %i.bj, i64 16
  %.val2.i.i27.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !55
  %i.bm = sext i32 %.val.val.i23.i.i.i.i.i to i64 ; 4 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.val1.i.i26.i.i.i.i.i, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !72 ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.val2.i.i27.i.i.i.i.i, i64 %i.bm
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !72
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bs = ptrtoint ptr %.sroa.0.021.i24.i.i.i.i.i to i64
  %i.bt = sub i64 %i.bs, %i.k                     ; 3 uses
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 1
  br i1 %i.bv, label %bb.k, label %bb.l, !prof !164

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25.i.i.i.i.i, i64 16
  %i.bx = sub nsw i64 0, %i.bu
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %i.bt, i1 false)
  %.val.val.pre.i39.i.i.i.i.i = load i32, ptr %i.bh, align 4, !tbaa !70
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bz = icmp eq i64 %i.bt, 8
  br i1 %i.bz, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn20.i25.i.i.i.i.i, i64 8
  store ptr %i.bj, ptr %i.ca, align 8, !tbaa !53
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i

bb.n:                                             ; preds = %bb.i
  %i.cb = load ptr, ptr %.pn20.i25.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  %.val3.i9.i.i28.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !tbaa !55
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.val3.i9.i.i28.i.i.i.i.i, i64 %i.bm
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !72
  %i.cf = icmp ult i64 %i.bo, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i34.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i

.lr.ph.i.i34.i.i.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i34.i.i.i.i.i
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i.i34.i.i.i.i.i ], [ %i.cb, %bb.n ]
  %.sroa.0.011.i.i35.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i37.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i ], [ %.pn20.i25.i.i.i.i.i, %bb.n ] ; 3 uses
  %.sroa.05.010.i.i36.i.i.i.i.i = phi ptr [ %.sroa.0.011.i.i35.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i ], [ %.sroa.0.021.i24.i.i.i.i.i, %bb.n ]
  store ptr %i.cg, ptr %.sroa.05.010.i.i36.i.i.i.i.i, align 8, !tbaa !53
  %.sroa.0.0.i.i37.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i35.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ch = load ptr, ptr %.sroa.0.0.i.i37.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %.val3.i.i.i38.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !55
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %.val3.i.i.i38.i.i.i.i.i, i64 %i.bm
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !72
  %i.cl = icmp ult i64 %i.bo, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i34.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i, !llvm.loop !158

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm14DWARFUnitIndex5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i: ; preds = %.lr.ph.i.i34.i.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i30.i.i.i.i.i = phi ptr [ %.val, %bb.m ], [ %.val, %bb.k ], [ %.val, %bb.l ], [ %.sroa.0.021.i24.i.i.i.i.i, %bb.n ], [ %.sroa.0.011.i.i35.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i ]
  %.val.val24.i31.i.i.i.i.i = phi i32 [ %.val.val.i23.i.i.i.i.i, %bb.m ], [ %.val.val.pre.i39.i.i.i.i.i, %bb.k ], [ %.val.val.i23.i.i.i.i.i, %bb.l ], [ %.val.val.i23.i.i.i.i.i, %bb.n ], [ %.val.val.i23.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i ]
  store ptr %i.bi, ptr %.sink.i30.i.i.i.i.i, align 8, !tbaa !53
  %.sroa.0.0.i32.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i33.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i32.i.i.i.i.i, %.val12
  br i1 %.not.i33.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_14DWARFUnitIndex5EntryESaIS4_EEZNKS2_13getFromOffsetEmE3$_1EEvOT_T0_.exit", label %bb.i, !llvm.loop !159

bb.o:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit
  %i.cm = phi i32 [ %i.g, %.lr.ph ], [ %i.do, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.cn = phi ptr [ %i.b, %.lr.ph ], [ %.val.pre, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit ] ; 6 uses
  %i.co = phi ptr [ %i.d, %.lr.ph ], [ %i.dp, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %.01027 = phi i32 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.cp = zext i32 %.01027 to i64
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cp ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !55
  %.not24 = icmp eq ptr %i.ct, null
  br i1 %.not24, label %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = load ptr, ptr %i.i, align 8, !tbaa !165
  %.not.i.i = icmp eq ptr %i.co, %i.cu
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !53
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !166
  br label %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit

bb.r:                                             ; preds = %bb.p
  %i.cw = ptrtoint ptr %i.co to i64
  %i.cx = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 5 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.s, label %_ZNKSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #17
  unreachable

_ZNKSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i.i.i16 = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #16 ; 5 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store ptr %i.cr, ptr %i.dh, align 8, !tbaa !53
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.t, label %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %i.cn, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.t, %_ZNKSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.dk = load ptr, ptr %i.i, align 8, !tbaa !165
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.dm) #15
  br label %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.dg, ptr %i.a, align 8, !tbaa !167
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !166
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dn, ptr %i.i, align 8, !tbaa !165
  %.pre = load i32, ptr %i.f, align 4, !tbaa !51
  br label %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.q, %bb.o
  %i.do = phi i32 [ %.pre, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.cm, %bb.q ], [ %i.cm, %bb.o ] ; 2 uses
  %.val.pre = phi ptr [ %i.dg, %_ZNSt6vectorIPN4llvm14DWARFUnitIndex5EntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.cn, %bb.q ], [ %i.cn, %bb.o ] ; 2 uses
end_hunk_0
