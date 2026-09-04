Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff-common?download=true
inline.NumInlined: 405
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z27hb_plan_subset_cff_fdselectPK16hb_subset_plan_tjRKN3CFF8FDSelectERjS6_S6_R11hb_vector_tINS2_11code_pair_tELb0EER14hb_inc_bimap_t:bb.a
._crit_edge.i.i.i.i:                              ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %.lcssa10.i.i.i.i = phi i32 [ %i.dl, %.lr.ph.i.i.i.i.i ], [ %i.ec, %bb.z ]
  %i.ds = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i ], [ %i.dz, %bb.z ]
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.cs, i64 %i.ds
  %i.du = trunc i32 %.lcssa10.i.i.i.i to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %spec.select.i.i.i.i = select i1 %i.du, ptr %i.dv, ptr @minus_1
  br label %_ZNK14hb_inc_bimap_tixEj.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i, %bb.z
  %.01016.i13.i.i.i.i = phi i32 [ %i.dy, %bb.z ], [ %i.dh, %.lr.ph.i.i.i.i.i ]
  %.017.i12.i.i.i.i = phi i32 [ %i.dw, %bb.z ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.dw = add i32 %.017.i12.i.i.i.i, 1            ; 2 uses
  %i.dx = add i32 %i.dw, %.01016.i13.i.i.i.i
  %i.dy = and i32 %i.dx, %i.dn                    ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %i.cs, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ed = and i32 %i.ec, 2
  %.not.i.i.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.z, !llvm.loop !0

_ZNK14hb_inc_bimap_tixEj.exit:                    ; preds = %.lr.ph.i.i.i.i, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit, %._crit_edge.i.i.i.i
  %.0.i.i.i = phi ptr [ @minus_1, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit ], [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i ], [ @minus_1, %.lr.ph.i.i.i.i ]
  %i.ee = load i32, ptr %.0.i.i.i, align 4, !tbaa !11
  %i.ef = zext i32 %i.dc to i64                   ; 2 uses
  %.not.i89 = icmp samesign ult i64 %indvars.iv, %i.ef
  br i1 %.not.i89, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit91, label %bb.aa, !prof !43

bb.aa:                                            ; preds = %_ZNK14hb_inc_bimap_tixEj.exit
  store i64 %i.q, ptr @_hb_CrapPool, align 16
  %.pre127 = load i32, ptr %i.p, align 4, !tbaa !41 ; 2 uses
  %.pre132 = zext i32 %.pre127 to i64
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit91

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit91: ; preds = %_ZNK14hb_inc_bimap_tixEj.exit, %bb.aa
  %.pre-phi133 = phi i64 [ %.pre132, %bb.aa ], [ %i.ef, %_ZNK14hb_inc_bimap_tixEj.exit ]
  %i.eg = phi i32 [ %.pre127, %bb.aa ], [ %i.dc, %_ZNK14hb_inc_bimap_tixEj.exit ]
  %.0.i90 = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.dd, %_ZNK14hb_inc_bimap_tixEj.exit ]
  store i32 %i.ee, ptr %.0.i90, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = icmp samesign ult i64 %indvars.iv.next, %.pre-phi133
  br i1 %i.eh, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit91, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit91.us, %_ZN14hb_inc_bimap_t8identityEj.exit
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.ei = load i32, ptr %3, align 4, !tbaa !11
  %i.ej = icmp ugt i32 %i.ei, 255
  br i1 %i.ej, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %._crit_edge
  %i.ek = load i8, ptr %2, align 1, !tbaa !57
  %.not68 = icmp eq i8 %i.ek, 4
  br i1 %.not68, label %bb.ac, label %bb.af, !prof !43

bb.ac:                                            ; preds = %bb.ab
  store i32 4, ptr %5, align 4, !tbaa !11
  %i.el = mul i32 %.166, 6
  %i.em = add i32 %i.el, 9
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge
  %i.en = mul i32 %.166, 3
  %i.eo = add i32 %i.en, 5
  store i32 3, ptr %5, align 4, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %storemerge = phi i32 [ %i.eo, %bb.ad ], [ %i.em, %bb.ac ]
  store i32 %storemerge, ptr %4, align 4, !tbaa !11
  br label %bb.af

.critedge:                                        ; preds = %.loopexit
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %.critedge, %bb.a, %bb.ae
  %.3 = phi i1 [ false, %.critedge ], [ true, %bb.a ], [ true, %bb.ae ], [ false, %bb.ab ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK3CFF8FDSelect12get_fd_rangeEj(ptr noundef nonnull align 1 dereferenceable(6) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, @_hb_NullPool
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !57
  switch i8 %i.b, label %bb.k [
    i8 0, label %bb.c
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !57
  %i.g = add i32 %1, 1
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.i = load i16, ptr %i.h, align 1, !tbaa !60
  %.not.i.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.not.i, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i, label %bb.e, !prof !35

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.0.0.copyload.i.pre.i = load i16, ptr %i.h, align 1, !tbaa !61
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.copyload.i.i = phi i16 [ %.sroa.0.0.copyload.i.pre.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.j, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i) ; 3 uses
  %.not3.i.i.i = icmp ugt i16 %i.k, 1
  br i1 %.not3.i.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i
  %i.l = zext i16 %i.k to i32
  %i.m = add nsw i32 %i.l, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i.i
  %.0205.i.i.i = phi i32 [ %.2.i.i.i, %bb.g ], [ %i.m, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.0214.i.i.i = phi i32 [ %.223.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.n = add i32 %.0214.i.i.i, %.0205.i.i.i
  %i.o = lshr i32 %i.n, 1                         ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.q ; 4 uses
  %i.s = load i16, ptr %i.r, align 1, !tbaa !60
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %i.v = icmp ult i32 %1, %i.u
  br i1 %i.v, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.x = load i16, ptr %i.w, align 1, !tbaa !60
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  %.not2.i.i.i = icmp ult i32 %1, %i.z
  br i1 %.not2.i.i.i, label %bb.h, label %bb.f

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = add nsw i32 %i.o, -1
  br label %bb.g

bb.f:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i
  %i.ab = add nuw nsw i32 %i.o, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i
  %.223.i.i.i = phi i32 [ %i.ab, %bb.f ], [ %.0214.i.i.i, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0205.i.i.i, %bb.f ], [ %i.aa, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !136

.loopexit.i:                                      ; preds = %bb.g, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i
  %.not.i7.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i7.not.i, label %.thread.i, label %bb.i, !prof !35

.thread.i:                                        ; preds = %.loopexit.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 2), align 2, !tbaa !57
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE12get_fd_rangeEj.exit

bb.h:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !57
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE12get_fd_rangeEj.exit

bb.i:                                             ; preds = %.loopexit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.ag = zext i16 %i.k to i64
  %i.ah = getelementptr [3 x i8], ptr %i.h, i64 %i.ag
  %.sroa.0.0.copyload.i10.pre.i = load i16, ptr %i.h, align 1, !tbaa !61 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !57  ; 2 uses
  %.not.i11.not.i = icmp eq i16 %.sroa.0.0.copyload.i10.pre.i, 0
  br i1 %.not.i11.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE12get_fd_rangeEj.exit, label %bb.j, !prof !62

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i10.pre.i)
  %i.al = zext i16 %i.ak to i64
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.am = getelementptr [3 x i8], ptr %0, i64 %i.al
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE12get_fd_rangeEj.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE12get_fd_rangeEj.exit: ; preds = %.thread.i, %bb.h, %bb.i, %bb.j
  %.in.i = phi i8 [ %i.af, %bb.h ], [ %i.aj, %bb.i ], [ %i.aj, %bb.j ], [ %i.ac, %.thread.i ]
  %i.an = phi ptr [ %i.ad, %bb.h ], [ @_hb_NullPool, %bb.i ], [ %i.am, %bb.j ], [ @_hb_NullPool, %.thread.i ]
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !60
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %.sroa.5.0.extract.trunc6 = zext i16 %i.ap to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE12get_fd_rangeEj.exit, %bb.c
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.extract.trunc6, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE12get_fd_rangeEj.exit ], [ 1, %bb.a ], [ %i.g, %bb.c ], [ 1, %bb.b ]
  %.sroa.0.0.shrunk = phi i8 [ %.in.i, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE12get_fd_rangeEj.exit ], [ 0, %bb.a ], [ %i.f, %bb.c ], [ 0, %bb.b ]
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.0 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0.shrunk to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN14hb_inc_bimap_t3addEj(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = mul i32 %1, 506952113
  %i.f = and i32 %i.e, 1073741823
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !55
  %i.i = urem i32 %i.f, %i.h                      ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = and i32 %i.m, 2
  %.not15.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load i32, ptr %i.k, align 4, !tbaa !11
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.lcssa10.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.c ]
  %i.u = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.c ]
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.u
  %i.w = trunc i32 %.lcssa10.i.i.i to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %spec.select.i.i.i = select i1 %i.w, ptr %i.x, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.01016.i13.i.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.i, %.lr.ph.i.i.i.i ]
  %.017.i12.i.i.i = phi i32 [ %i.y, %bb.c ], [ 0, %.lr.ph.i.i.i.i ]
  %i.y = add i32 %.017.i12.i.i.i, 1               ; 2 uses
  %i.z = add i32 %i.y, %.01016.i13.i.i.i
  %i.aa = and i32 %i.z, %i.p                      ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i32 %i.ae, 2
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit, label %bb.c, !llvm.loop !0

_ZNK12hb_hashmap_tIjjLb1EEixEj.exit:              ; preds = %.lr.ph.i.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i
  %.0.i.i = phi ptr [ @minus_1, %bb.a ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.b ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.ag = load i32, ptr %.0.i.i, align 4, !tbaa !11 ; 2 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !11
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.d, label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !138
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !11
  %i.al = mul i32 %1, -1640531535
  %i.am = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !50 ; 3 uses
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !52
  %.not.i = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = add i32 %i.an, 1
  %i.aq = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i32 noundef %i.ap, i1 noundef zeroext false)
  br i1 %i.aq, label %..critedge_crit_edge.i, label %bb.f, !prof !43

..critedge_crit_edge.i:                           ; preds = %bb.e
  %.pre.i = load i32, ptr %i.aj, align 4, !tbaa !50
  br label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.ar, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.d
  %i.as = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.an, %bb.d ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.av = add i32 %i.as, 1
  store i32 %i.av, ptr %i.aj, align 4, !tbaa !50
  %i.aw = zext i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !11
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !11
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %.critedge.i, %bb.f, %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit
  %i.az = load i32, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #7 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #7
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i

_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !64
  %i.g = add i32 %i.f, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.g, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.c, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

bb.c:                                             ; preds = %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.j) #7
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i: ; preds = %bb.c, %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !67
  %i.m = add i32 %i.l, -1
  %spec.select.i.i1.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i1.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69
  tail call void @hb_free(ptr noundef %i.p) #7
  %.pre = load i32, ptr %i.e, align 8, !tbaa !64
  %i.q = add i32 %.pre, -1
  %i.r = icmp ult i32 %i.q, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.u) #7
  br label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN23hb_bit_set_invertible_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z25hb_serialize_cff_fdselectP22hb_serialize_context_tjRKN3CFF8FDSelectEjjjRK11hb_vector_tINS1_11code_pair_tELb0EE(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(6) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !153
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %.critedge.i.i, label %_ZN22hb_serialize_context_t12allocate_minIN3CFF8FDSelectEEEPT_v.exit, !prof !35

.critedge.i.i:                                    ; preds = %bb.b
  store i32 4, ptr %i.a, align 4, !tbaa !153
  br label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit

_ZN22hb_serialize_context_t12allocate_minIN3CFF8FDSelectEEEPT_v.exit: ; preds = %bb.b
  store i8 0, ptr %i.f, align 1
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !155 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 1
  store ptr %i.k, ptr %i.e, align 8, !tbaa !155
  %.not = icmp eq ptr %.pre.i.i, null
  br i1 %.not, label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit, label %bb.c, !prof !62

bb.c:                                             ; preds = %_ZN22hb_serialize_context_t12allocate_minIN3CFF8FDSelectEEEPT_v.exit
  %i.l = trunc i32 %4 to i8
  store i8 %i.l, ptr %.pre.i.i, align 1, !tbaa !61
  %i.m = add i32 %5, -1                           ; 6 uses
  switch i32 %4, label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit [
    i32 3, label %bb.d
    i32 4, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !153
  %.not.i.i16 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i16, label %bb.e, label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit, !prof !43

bb.e:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %i.m, 0
  br i1 %i.p, label %.critedge.i.i18, label %bb.f, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !155  ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp slt i64 %i.u, %i.n
  br i1 %i.v, label %.critedge.i.i18, label %bb.g, !prof !35

.critedge.i.i18:                                  ; preds = %bb.f, %bb.e
  store i32 4, ptr %i.a, align 4, !tbaa !153
  br label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.not.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i, label %bb.h, !prof !156

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.n, i1 false)
  %.pre.i.i17 = load ptr, ptr %i.e, align 8, !tbaa !155
  br label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i: ; preds = %bb.h, %bb.g
  %i.w = phi ptr [ %.pre.i.i17, %bb.h ], [ %i.r, %bb.g ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n
  store ptr %i.x, ptr %i.e, align 8, !tbaa !155
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit, label %bb.i, !prof !62

bb.i:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !41
  %i.aa = trunc i32 %i.z to i16
  %i.ab = tail call i16 @llvm.bswap.i16(i16 %i.aa) ; 2 uses
  store i16 %i.ab, ptr %i.w, align 1, !tbaa !61
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !41
  %.not5.i = icmp eq i32 %i.ac, 0
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  br label %bb.l

._crit_edge.loopexit.i:                           ; preds = %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit27.i
  %.pre.i = load i16, ptr %i.w, align 1, !tbaa !60
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.i
  %i.af = phi i16 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ag = trunc i32 %1 to i16
  %.not.i.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i, label %bb.j, label %bb.k, !prof !35

bb.j:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(3) @_hb_NullPool, i64 3, i1 false)
  br label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ai = zext i16 %i.ah to i64
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.aj = getelementptr i8, ptr %i.w, i64 -1
  %i.ak = getelementptr [3 x i8], ptr %i.aj, i64 %i.ai
  br label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 3
  %i.am = tail call i16 @llvm.bswap.i16(i16 %i.ag)
  store i16 %i.am, ptr %i.al, align 1, !tbaa !61
  br label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit

bb.l:                                             ; preds = %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit27.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit27.i ] ; 8 uses
  %i.an = load ptr, ptr %i.ad, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !157
  %i.ar = trunc i32 %i.aq to i16
  %i.as = load i16, ptr %i.w, align 1, !tbaa !60
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i64
  %.not.i21.i = icmp samesign ult i64 %indvars.iv.i, %i.au
  br i1 %.not.i21.i, label %bb.n, label %bb.m, !prof !43

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(3) @_hb_NullPool, i64 3, i1 false)
  br label %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.av = getelementptr inbounds nuw [3 x i8], ptr %i.ae, i64 %indvars.iv.i
  br label %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i

_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i: ; preds = %bb.n, %bb.m
  %.0.i22.i = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.av, %bb.n ]
  %i.aw = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  store i16 %i.aw, ptr %.0.i22.i, align 1, !tbaa !61
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !41
  %i.ay = zext i32 %i.ax to i64
  %.not.i23.i = icmp samesign ult i64 %indvars.iv.i, %i.ay
  %i.az = load ptr, ptr %i.ad, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  %.0.i24.i = select i1 %.not.i23.i, ptr %i.ba, ptr @_hb_NullPool, !prof !43
  %i.bb = load i32, ptr %.0.i24.i, align 4, !tbaa !54
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = load i16, ptr %i.w, align 1, !tbaa !60
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i64
  %.not.i25.i = icmp samesign ult i64 %indvars.iv.i, %i.bf
  br i1 %.not.i25.i, label %bb.p, label %bb.o, !prof !43

bb.o:                                             ; preds = %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(3) @_hb_NullPool, i64 3, i1 false)
  br label %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit27.i

bb.p:                                             ; preds = %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.bg = getelementptr inbounds nuw [3 x i8], ptr %i.ae, i64 %indvars.iv.i
  br label %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit27.i

_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit27.i: ; preds = %bb.p, %bb.o
  %.0.i26.i = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.bg, %bb.p ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i26.i, i64 2
  store i8 %i.bc, ptr %i.bh, align 1, !tbaa !61
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bi = load i32, ptr %i.y, align 4, !tbaa !41
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next.i, %i.bj
  br i1 %i.bk, label %bb.l, label %._crit_edge.loopexit.i, !llvm.loop !139

bb.q:                                             ; preds = %bb.c
  %i.bl = zext i32 %i.m to i64                    ; 3 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !153
  %.not.i.i19 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i19, label %bb.r, label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit, !prof !43

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp slt i32 %i.m, 0
  br i1 %i.bn, label %.critedge.i.i39, label %bb.s, !prof !35

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !155 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp slt i64 %i.bs, %i.bl
  br i1 %i.bt, label %.critedge.i.i39, label %bb.t, !prof !35

.critedge.i.i39:                                  ; preds = %bb.s, %bb.r
  store i32 4, ptr %i.a, align 4, !tbaa !153
  br label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit

bb.t:                                             ; preds = %bb.s
  %.not.i.i.not.i21 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.not.i21, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEEEPT_mb.exit.i, label %bb.u, !prof !156

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bp, i8 0, i64 %i.bl, i1 false)
  %.pre.i.i22 = load ptr, ptr %i.e, align 8, !tbaa !155
  br label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEEEPT_mb.exit.i

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEEEPT_mb.exit.i: ; preds = %bb.u, %bb.t
  %i.bu = phi ptr [ %.pre.i.i22, %bb.u ], [ %i.bp, %bb.t ] ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bl
  store ptr %i.bv, ptr %i.e, align 8, !tbaa !155
  %.not.i23 = icmp eq ptr %i.bu, null
  br i1 %.not.i23, label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit, label %bb.v, !prof !62

bb.v:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEEEPT_mb.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !41
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bx) ; 2 uses
  store i32 %i.by, ptr %i.bu, align 1, !tbaa !61
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !41
  %.not5.i24 = icmp eq i32 %i.bz, 0
  br i1 %.not5.i24, label %._crit_edge.i36, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  br label %bb.y

._crit_edge.loopexit.i34:                         ; preds = %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit27.i
  %.pre.i35 = load i32, ptr %i.bu, align 1, !tbaa !159
  br label %._crit_edge.i36

._crit_edge.i36:                                  ; preds = %._crit_edge.loopexit.i34, %bb.v
  %i.cc = phi i32 [ %.pre.i35, %._crit_edge.loopexit.i34 ], [ %i.by, %bb.v ] ; 2 uses
  %.not.i.not.i.i37 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.not.i.i37, label %bb.w, label %bb.x, !prof !35

bb.w:                                             ; preds = %._crit_edge.i36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(6) @_hb_NullPool, i64 6, i1 false)
  br label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit.i

bb.x:                                             ; preds = %._crit_edge.i36
  %i.cd = tail call noundef i32 @llvm.bswap.i32(i32 %i.cc)
  %i.ce = add i32 %i.cd, -1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cg = zext i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.cg
  br label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i38 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.ch, %bb.x ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i38, i64 6
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.cj, ptr %i.ci, align 1, !tbaa !61
  br label %_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit

bb.y:                                             ; preds = %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit27.i, %.lr.ph.i25
  %indvars.iv.i26 = phi i64 [ 0, %.lr.ph.i25 ], [ %indvars.iv.next.i33, %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit27.i ] ; 8 uses
  %i.ck = load ptr, ptr %i.ca, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i26
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !157
  %i.co = load i32, ptr %i.bu, align 1, !tbaa !159
  %i.cp = tail call noundef i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = zext i32 %i.cp to i64
  %.not.i21.i27 = icmp samesign ult i64 %indvars.iv.i26, %i.cq
  br i1 %.not.i21.i27, label %bb.aa, label %bb.z, !prof !43

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(6) @_hb_NullPool, i64 6, i1 false)
  br label %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i

bb.aa:                                            ; preds = %bb.y
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.cr = getelementptr inbounds nuw [6 x i8], ptr %i.cb, i64 %indvars.iv.i26
  br label %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i

_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i: ; preds = %bb.aa, %bb.z
  %.0.i22.i28 = phi ptr [ @_hb_CrapPool, %bb.z ], [ %i.cr, %bb.aa ]
  %i.cs = tail call i32 @llvm.bswap.i32(i32 %i.cn)
  store i32 %i.cs, ptr %.0.i22.i28, align 1, !tbaa !61
  %i.ct = load i32, ptr %i.bw, align 4, !tbaa !41
  %i.cu = zext i32 %i.ct to i64
  %.not.i23.i29 = icmp samesign ult i64 %indvars.iv.i26, %i.cu
  %i.cv = load ptr, ptr %i.ca, align 8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i26
  %.0.i24.i30 = select i1 %.not.i23.i29, ptr %i.cw, ptr @_hb_NullPool, !prof !43
  %i.cx = load i32, ptr %.0.i24.i30, align 4, !tbaa !54
  %i.cy = trunc i32 %i.cx to i16
  %i.cz = load i32, ptr %i.bu, align 1, !tbaa !159
  %i.da = tail call noundef i32 @llvm.bswap.i32(i32 %i.cz)
  %i.db = zext i32 %i.da to i64
  %.not.i25.i31 = icmp samesign ult i64 %indvars.iv.i26, %i.db
  br i1 %.not.i25.i31, label %bb.ac, label %bb.ab, !prof !43

bb.ab:                                            ; preds = %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(6) @_hb_NullPool, i64 6, i1 false)
  br label %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit27.i

bb.ac:                                            ; preds = %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  %i.dc = getelementptr inbounds nuw [6 x i8], ptr %i.cb, i64 %indvars.iv.i26
  br label %_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit27.i

_ZN2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit27.i: ; preds = %bb.ac, %bb.ab
  %.0.i26.i32 = phi ptr [ @_hb_CrapPool, %bb.ab ], [ %i.dc, %bb.ac ]
end_hunk_0
