Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff2-table?download=true
inline.NumInlined: 1161
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_:bb.a

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bk = phi double [ %.pre9.i18, %bb.ab ], [ %i.bi, %bb.aa ] ; 2 uses
  %i.bl = load double, ptr %i.am, align 8, !tbaa !123
  %i.bm = fcmp ogt double %i.bk, %i.bl
  br i1 %i.bm, label %bb.ad, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit20

bb.ad:                                            ; preds = %bb.ac
  store double %i.bk, ptr %i.am, align 8, !tbaa !153
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit20

_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit20: ; preds = %bb.ac, %bb.ad
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE13process_blendEv(ptr noundef nonnull align 8 dereferenceable(4523) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4522 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !109, !range !129, !noundef !130
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4512 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.h = cmpxchg weak ptr %i.g, ptr %i.f, ptr null acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 16) #6 ; 3 uses
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4504
  store ptr null, ptr %i.k, align 8, !tbaa !106
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !131
  %i.n = add i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.n, ptr %i.o, align 4, !tbaa !78
  br label %bb.p

bb.g:                                             ; preds = %bb.c, %bb.e
  %.07.i.ph = phi ptr [ %i.j, %bb.e ], [ %i.f, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 3 uses
  store ptr %.07.i.ph, ptr %i.p, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4492 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !120  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load i16, ptr %i.v, align 1, !tbaa !116
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %.not.i.i = icmp ult i32 %i.u, %i.y
  br i1 %.not.i.i, label %bb.h, label %_ZNK2OT18ItemVariationStore22get_region_index_countEj.exit, !prof !69

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !143
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  br label %_ZNK2OT18ItemVariationStore22get_region_index_countEj.exit

_ZNK2OT18ItemVariationStore22get_region_index_countEj.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ab, %bb.h ], [ @_hb_NullPool, %bb.g ]
  %i.ac = load i32, ptr %.0.i.i, align 1, !tbaa !101 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.af
  %.0.i.i.i = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.ag, !prof !127
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !116
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4488 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !105
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4520
  %i.an = load i8, ptr %i.am, align 8, !tbaa !117, !range !129, !noundef !130
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %bb.p

bb.i:                                             ; preds = %_ZNK2OT18ItemVariationStore22get_region_index_countEj.exit
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !106 ; 3 uses
  %i.aq = tail call noundef zeroext i1 @_ZN11hb_vector_tIfLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i32 noundef %i.ak, i1 noundef zeroext true)
  br i1 %i.aq, label %bb.j, label %_ZN11hb_vector_tIfLb0EE12resize_exactEi.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !138 ; 3 uses
  %i.at = icmp ult i32 %i.as, %i.ak
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = sub nuw nsw i32 %i.ak, %i.as
  %i.av = shl nuw nsw i32 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !140
  %i.ay = zext nneg i32 %i.as to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = zext nneg i32 %i.av to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.ba, i1 false)
  br label %bb.l

_ZN11hb_vector_tIfLb0EE12resize_exactEi.exit:     ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !131
  %i.bd = add i32 %i.bc, 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !78
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %bb.k
  store i32 %i.ak, ptr %i.ar, align 4, !tbaa !138
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !113 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  %i.bh = load i32, ptr %i.t, align 4, !tbaa !120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !110
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !111
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !106 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !138
  %.not.i1.not = icmp eq i32 %i.bo, 0
  br i1 %.not.i1.not, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %bb.l
  %i.bp = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.bp, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit

bb.n:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !140
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit

_ZN11hb_vector_tIfLb0EEixEi.exit:                 ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.br, %bb.n ]
  %i.bs = load i32, ptr %i.al, align 8, !tbaa !105
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !116
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i32
  %.not.i.i2 = icmp ult i32 %i.bh, %i.bw
  br i1 %.not.i.i2, label %bb.o, label %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit, !prof !69

bb.o:                                             ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !143
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %i.by = zext nneg i32 %i.bh to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  br label %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit

_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit: ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit, %bb.o
  %.0.i.i3 = phi ptr [ %i.bz, %bb.o ], [ @_hb_NullPool, %_ZN11hb_vector_tIfLb0EEixEi.exit ]
  %i.ca = load i32, ptr %.0.i.i3, align 1, !tbaa !101 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cd
  %.0.i.i.i4 = select i1 %i.cb, ptr @_hb_NullPool, ptr %i.ce, !prof !127
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !101 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cj
  %.0.i.i5.i = select i1 %i.ch, ptr @_hb_NullPool, ptr %i.ck, !prof !127
  tail call void @_ZNK2OT7VarData18get_region_scalarsEPKijRKNS_13VarRegionListEPfj(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i4, ptr noundef %i.bj, i32 noundef %i.bl, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i5.i, ptr noundef nonnull %.0.i, i32 noundef %i.bs)
  br label %bb.p

bb.p:                                             ; preds = %_ZNK2OT18ItemVariationStore22get_region_index_countEj.exit, %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit, %_ZN11hb_vector_tIfLb0EE12resize_exactEi.exit, %bb.f
  store i8 1, ptr %i.a, align 2, !tbaa !109
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.a
  ret void
}

declare ptr @hb_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIfLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !139    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.m, label %bb.b, !prof !127

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !136
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.m

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.m, !prof !127

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !211

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !127

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !140
  tail call void @hb_free(ptr noundef %i.m) #6
  br label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !140  ; 2 uses
  br i1 %.not49, label %3, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit

3:                                                ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit, label %bb.i

bb.i:                                             ; preds = %3
  %4 = shl nuw i32 %.138, 2
  %5 = zext i32 %4 to i64
  %i.p = tail call ptr @hb_malloc(i64 noundef %5) #6 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53, label %bb.j, !prof !127

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !138  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread, label %bb.k, !prof !127

bb.k:                                             ; preds = %bb.j
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !140
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.u, i64 range(i64 0, 17179869181) %i.t, i1 false), !alias.scope !215
  br label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit: ; preds = %bb.h, %3
  %6 = phi ptr [ null, %3 ], [ %i.o, %bb.h ]
  %7 = shl nuw i32 %.138, 2
  %8 = zext i32 %7 to i64
  %i.v = tail call ptr @hb_realloc(ptr noundef %6, i64 noundef %8) #6 ; 2 uses
  %.not22 = icmp eq ptr %i.v, null
  br i1 %.not22, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread, !prof !216

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.i, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit
  %i.w = load i32, ptr %0, align 8, !tbaa !139    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.w
  br i1 %.not23, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53
  %i.x = xor i32 %i.w, -1
  br label %.sink.split

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread: ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.v, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.p, %bb.j ], [ %i.p, %bb.k ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.y, align 8, !tbaa !140
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread, %bb.l
  %.sink = phi i32 [ %i.x, %bb.l ], [ %.138, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.l ], [ true, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !139
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #4

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT7VarData18get_region_scalarsEPKijRKNS_13VarRegionListEPfj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val16 = load i16, ptr %i.a, align 1, !tbaa !116
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %.val16) ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %spec.select.i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %5, i32 %i.c) ; 4 uses
  %.not = icmp eq i32 %spec.select.i, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.f = load i16, ptr %i.e, align 1, !tbaa !116
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i16, ptr %3, align 1
  %.fr = freeze i16 %i.i                          ; 2 uses
  %i.j = tail call i16 @llvm.bswap.i16(i16 %.fr)
  %i.k = zext i16 %i.j to i64                     ; 2 uses
  %.not.i17 = icmp eq i16 %.fr, 0
  %i.l = zext i32 %2 to i64
  %wide.trip.count27 = zext nneg i32 %spec.select.i to i64 ; 4 uses
  br i1 %.not.i17, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check = icmp samesign ult i32 %spec.select.i, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %wide.trip.count27, 65528      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %wide.load = load <4 x i16>, ptr %i.m, align 1, !tbaa !116
  %wide.load41 = load <4 x i16>, ptr %i.n, align 1, !tbaa !116
  %i.o = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.p = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load41)
  %i.q = icmp ult <4 x i16> %i.o, %broadcast.splat
  %i.r = icmp ult <4 x i16> %i.p, %broadcast.splat
  %i.s = select <4 x i1> %i.q, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.t = select <4 x i1> %i.r, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %i.s, ptr %i.u, align 4, !tbaa !135
  store <4 x float> %i.t, ptr %i.v, align 4, !tbaa !135
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.us.preheader42

.lr.ph.split.us.preheader42:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv24.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader42, %.lr.ph.split.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.lr.ph.split.us ], [ %indvars.iv24.ph, %.lr.ph.split.us.preheader42 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv24
  %i.y = load i16, ptr %i.x, align 1, !tbaa !116
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %.not.i.us = icmp ult i16 %i.z, %i.g
  %.1.i.us = select i1 %.not.i.us, float 1.000000e+00, float 0.000000e+00, !prof !69
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv24
  store float %.1.i.us, ptr %i.aa, align 4, !tbaa !135
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %.preheader, label %.lr.ph.split.us, !llvm.loop !218

.preheader:                                       ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, %.lr.ph.split.us, %middle.block, %bb.a
  %i.ab = icmp ugt i32 %5, %i.c
  br i1 %i.ab, label %.lr.ph21.preheader, label %._crit_edge

.lr.ph21.preheader:                               ; preds = %.preheader
  %i.ac = zext i16 %i.b to i64
  %i.ad = zext i32 %5 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad)
  %i.ae = shl nuw nsw i64 %umin, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.ae
  %i.af = xor i32 %spec.select.i, -1
  %i.ag = add i32 %5, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.aj, i1 false), !tbaa !135
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !116
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al) ; 2 uses
  %.not.i = icmp ult i16 %i.am, %i.g
  br i1 %.not.i, label %.lr.ph.preheader.i, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, !prof !69

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split
  %i.an = zext i16 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.k, %i.an
  %i.ap = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.ao
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i ] ; 4 uses
  %.01726.i = phi float [ 1.000000e+00, %.lr.ph.preheader.i ], [ %.121.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i ] ; 4 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.i, %i.l
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !136
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.at = phi i32 [ %i.as, %bb.b ], [ 0, %.lr.ph.i ] ; 7 uses
  %i.au = getelementptr inbounds nuw [6 x i8], ptr %i.ap, i64 %indvars.iv.i ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !116 ; 2 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw) ; 3 uses
  %i.ay = sext i16 %i.ax to i32                   ; 4 uses
  %i.az = icmp eq i16 %i.aw, 0
  %i.ba = icmp eq i32 %i.at, %i.ay
  %or.cond.i.i = or i1 %i.az, %i.ba
  br i1 %or.cond.i.i, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = icmp eq i32 %i.at, 0
  br i1 %i.bb, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i16, ptr %i.au, align 1, !tbaa !116
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc) ; 3 uses
  %i.be = sext i16 %i.bd to i32                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !116
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg) ; 3 uses
  %i.bi = sext i16 %i.bh to i32                   ; 3 uses
  %i.bj = icmp sgt i16 %i.bd, %i.ax
  %i.bk = icmp sgt i16 %i.ax, %i.bh
  %i.bl = or i1 %i.bj, %i.bk
  br i1 %i.bl, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %bb.f, !prof !127

bb.f:                                             ; preds = %bb.e
  %i.bm = icmp slt i16 %i.bd, 0
  %i.bn = icmp sgt i16 %i.bh, 0
  %i.bo = and i1 %i.bm, %i.bn
  br i1 %i.bo, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %bb.g, !prof !127

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp sgt i32 %i.at, %i.be
  %.not29.i.i = icmp slt i32 %i.at, %i.bi
  %or.cond30.i.i = and i1 %.not.i.i, %.not29.i.i
  br i1 %or.cond30.i.i, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT13VarRegionAxis8evaluateEi.exit.i:         ; preds = %bb.g
  %i.bp = icmp slt i32 %i.at, %i.ay               ; 2 uses
  %i.bq = sub nsw i32 %i.at, %i.be
  %i.br = sub nsw i32 %i.ay, %i.be
  %i.bs = sub nsw i32 %i.bi, %i.at
  %i.bt = sub nsw i32 %i.bi, %i.ay
end_hunk_0
begin_hunk_1_@llvm.bswap.v4i16
!16 = !{!"_ZTS11hb_atomic_tIbE", !15, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"p1 _ZTS20hb_user_data_array_t", !17, i64 0}
!19 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !18, i64 0}
!20 = !{!"_ZTS18hb_object_header_t", !14, i64 0, !16, i64 4, !19, i64 8}
!21 = !{!"_ZTS11hb_atomic_tIjE", !10, i64 0}
!22 = !{!"p1 _ZTS9hb_font_t", !17, i64 0}
!23 = !{!"p1 _ZTS9hb_face_t", !17, i64 0}
!24 = !{!"float", !9, i64 0}
!25 = !{!"long", !9, i64 0}
!26 = !{!"p1 int", !17, i64 0}
!27 = !{!"p1 float", !17, i64 0}
!28 = !{!"p1 _ZTS15hb_font_funcs_t", !17, i64 0}
!29 = !{!"p1 _ZTS17hb_ot_font_data_t", !17, i64 0}
!30 = !{!"_ZTS11hb_atomic_tIP17hb_ot_font_data_tE", !29, i64 0}
!31 = !{!"_ZTS16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E", !30, i64 0}
!32 = !{!"_ZTS23hb_shaper_lazy_loader_tI9hb_font_tLj1E17hb_ot_font_data_tE", !31, i64 0}
!33 = !{!"p1 _ZTS23hb_fallback_font_data_t", !17, i64 0}
!34 = !{!"_ZTS11hb_atomic_tIP23hb_fallback_font_data_tE", !33, i64 0}
!35 = !{!"_ZTS16hb_lazy_loader_tI23hb_fallback_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj2ES0_ES2_Lj2ES0_E", !34, i64 0}
!36 = !{!"_ZTS23hb_shaper_lazy_loader_tI9hb_font_tLj2E23hb_fallback_font_data_tE", !35, i64 0}
!37 = !{!"_ZTS26hb_shaper_object_dataset_tI9hb_font_tE", !22, i64 0, !32, i64 8, !36, i64 16}
!38 = !{!"_ZTS9hb_font_t", !20, i64 0, !21, i64 16, !21, i64 20, !22, i64 24, !23, i64 32, !10, i64 40, !10, i64 44, !15, i64 48, !24, i64 52, !24, i64 56, !15, i64 60, !10, i64 64, !10, i64 68, !24, i64 72, !24, i64 76, !24, i64 80, !24, i64 84, !25, i64 88, !25, i64 96, !10, i64 104, !10, i64 108, !24, i64 112, !10, i64 116, !15, i64 120, !10, i64 124, !26, i64 128, !27, i64 136, !28, i64 144, !17, i64 152, !17, i64 160, !37, i64 168}
!39 = !{!38, !26, i64 128}
!40 = !{!38, !10, i64 124}
!41 = !{!"_ZTS21hb_dispatch_context_tI21hb_sanitize_context_tbLj0EE", !10, i64 0}
!42 = !{!"p1 omnipotent char", !17, i64 0}
!43 = !{!"p1 _ZTS9hb_blob_t", !17, i64 0}
!44 = !{!"_ZTS21hb_sanitize_context_t", !41, i64 0, !42, i64 8, !42, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !15, i64 40, !43, i64 48, !10, i64 56, !15, i64 60, !15, i64 61}
!45 = !{!"p1 _ZTSN3CFF8op_str_tE", !17, i64 0}
!46 = !{!"_ZTS11hb_vector_tIN3CFF8op_str_tELb0EE", !10, i64 0, !10, i64 4, !45, i64 8}
!47 = !{!"_ZTSN3CFF15parsed_values_tINS_8op_str_tEEE", !10, i64 0, !46, i64 8}
!48 = !{!"_ZTSN3CFF13dict_values_tINS_8op_str_tEEE", !47, i64 0}
!49 = !{!"_ZTSN3CFF17top_dict_values_tINS_8op_str_tEEE", !48, i64 0, !10, i64 24, !10, i64 28}
!50 = !{!"_ZTSN3CFF22cff2_top_dict_values_tE", !49, i64 0, !10, i64 32, !10, i64 36}
!51 = !{!"p1 _ZTSN3CFF5SubrsIN2OT7NumTypeILb1EjLj4EEEEE", !17, i64 0}
!52 = !{!"p1 _ZTSN3CFF22CFF2ItemVariationStoreE", !17, i64 0}
!53 = !{!"p1 _ZTSN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEEE", !17, i64 0}
!54 = !{!"p1 _ZTSN3CFF11CFF2FDArrayE", !17, i64 0}
!55 = !{!"p1 _ZTSN3CFF12CFF2FDSelectE", !17, i64 0}
!56 = !{!"p1 _ZTSN3CFF23cff2_font_dict_values_tE", !17, i64 0}
!57 = !{!"_ZTS11hb_vector_tIN3CFF23cff2_font_dict_values_tELb0EE", !10, i64 0, !10, i64 4, !56, i64 8}
!58 = !{!"p1 _ZTSN3CFF31cff2_private_dict_values_base_tINS_10dict_val_tEEE", !17, i64 0}
!59 = !{!"_ZTS11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_10dict_val_tEEELb0EE", !10, i64 0, !10, i64 4, !58, i64 8}
!60 = !{!"p1 _ZTS11hb_vector_tIfLb0EE", !17, i64 0}
!61 = !{!"_ZTS11hb_atomic_tIP11hb_vector_tIfLb0EEE", !60, i64 0}
!62 = !{!"_ZTSN2OT4cff219accelerator_templ_tIN3CFF25cff2_private_dict_opset_tENS2_31cff2_private_dict_values_base_tINS2_10dict_val_tEEEEE", !44, i64 0, !43, i64 64, !50, i64 72, !51, i64 112, !52, i64 120, !53, i64 128, !54, i64 136, !55, i64 144, !10, i64 152, !57, i64 160, !59, i64 176, !61, i64 192, !10, i64 200}
!63 = !{!62, !43, i64 64}
!64 = !{!"branch_weights", i32 4001, i32 4000000}
!65 = !{!62, !55, i64 144}
!66 = !{!62, !53, i64 128}
!67 = !{!62, !51, i64 112}
!68 = !{!59, !10, i64 4}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!"p1 _ZTSN3CFF10dict_val_tE", !17, i64 0}
!71 = !{!"_ZTS11hb_vector_tIN3CFF10dict_val_tELb0EE", !10, i64 0, !10, i64 4, !70, i64 8}
!72 = !{!"_ZTSN3CFF15parsed_values_tINS_10dict_val_tEEE", !10, i64 0, !71, i64 8}
!73 = !{!"_ZTSN3CFF13dict_values_tINS_10dict_val_tEEE", !72, i64 0}
!74 = !{!"_ZTSN3CFF31cff2_private_dict_values_base_tINS_10dict_val_tEEE", !73, i64 0, !10, i64 24, !51, i64 32, !10, i64 40}
!75 = !{!74, !51, i64 32}
!76 = !{!"_ZTS10hb_array_tIKhE", !42, i64 0, !10, i64 8, !10, i64 12}
!77 = !{!"_ZTSN3CFF14byte_str_ref_tE", !76, i64 0}
!78 = !{!77, !10, i64 12}
!79 = !{!"_ZTSN3CFF11cff_stack_tINS_14call_context_tELi10EEE", !15, i64 0, !10, i64 4, !9, i64 8}
!80 = !{!79, !15, i64 0}
!81 = !{!"_ZTSN3CFF9cs_type_tE", !9, i64 0}
!82 = !{!"_ZTSN3CFF14call_context_tE", !77, i64 0, !81, i64 16, !10, i64 20}
!83 = !{!82, !81, i64 16}
!84 = !{!82, !10, i64 20}
!85 = !{!"_ZTSN3CFF11cff_stack_tINS_8number_tELi513EEE", !15, i64 0, !10, i64 4, !9, i64 8}
!86 = !{!"_ZTSN3CFF11arg_stack_tINS_8number_tEEE", !85, i64 0}
!87 = !{!"_ZTSN3CFF12interp_env_tINS_8number_tEEE", !77, i64 0, !86, i64 16}
!88 = !{!"_ZTSN3CFF12call_stack_tE", !79, i64 0}
!89 = !{!"_ZTSN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEE", !10, i64 0, !51, i64 8}
!90 = !{!"double", !9, i64 0}
!91 = !{!"_ZTSN3CFF8number_tE", !90, i64 0}
!92 = !{!"_ZTSN3CFF7point_tE", !91, i64 0, !91, i64 8}
!93 = !{!"_ZTSN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEE", !87, i64 0, !82, i64 4128, !15, i64 4152, !15, i64 4153, !15, i64 4154, !10, i64 4156, !10, i64 4160, !10, i64 4164, !88, i64 4168, !89, i64 4416, !89, i64 4432, !92, i64 4448}
!94 = !{!93, !15, i64 4153}
!95 = !{!93, !15, i64 4154}
!96 = !{!93, !10, i64 4156}
!97 = !{!93, !10, i64 4160}
!98 = !{!93, !10, i64 4164}
!99 = !{!89, !51, i64 8}
!100 = !{!"_ZTS11hb_packed_tIjE", !10, i64 0}
!101 = !{!100, !10, i64 0}
!102 = !{!89, !10, i64 0}
!103 = !{!"p1 _ZTS11hb_atomic_tIP11hb_vector_tIfLb0EEE", !17, i64 0}
!104 = !{!"_ZTSN3CFF20cff2_cs_interp_env_tINS_8number_tEEE", !93, i64 0, !26, i64 4464, !10, i64 4472, !52, i64 4480, !10, i64 4488, !10, i64 4492, !10, i64 4496, !60, i64 4504, !103, i64 4512, !15, i64 4520, !15, i64 4521, !15, i64 4522}
!105 = !{!104, !10, i64 4488}
!106 = !{!104, !60, i64 4504}
!107 = !{!104, !103, i64 4512}
!108 = !{!104, !15, i64 4521}
!109 = !{!104, !15, i64 4522}
!110 = !{!104, !26, i64 4464}
!111 = !{!104, !10, i64 4472}
!112 = !{!62, !52, i64 120}
!113 = !{!104, !52, i64 4480}
!114 = !{!"short", !9, i64 0}
!115 = !{!"_ZTS11hb_packed_tItE", !114, i64 0}
!116 = !{!115, !114, i64 0}
!117 = !{!104, !15, i64 4520}
!118 = !{!74, !10, i64 40}
!119 = !{!104, !10, i64 4496}
!120 = !{!104, !10, i64 4492}
!121 = !{!"_ZTS20cff2_extents_param_t", !15, i64 0, !91, i64 8, !91, i64 16, !91, i64 24, !91, i64 32}
!122 = !{!121, !15, i64 0}
!123 = !{!91, !90, i64 0}
!124 = !{!93, !15, i64 4152}
!125 = !{!77, !42, i64 0}
!126 = !{!9, !9, i64 0}
!127 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!128 = !{!79, !10, i64 4}
!129 = !{i8 0, i8 2}
!130 = !{}
!131 = !{!77, !10, i64 8}
!132 = !{!"branch_weights", i32 0, i32 -2147483648}
!133 = !{!"llvm.loop.mustprogress"}
!134 = !{!25, !25, i64 0}
!135 = !{!24, !24, i64 0}
!136 = !{!10, !10, i64 0}
!137 = !{!"_ZTS11hb_vector_tIfLb0EE", !10, i64 0, !10, i64 4, !27, i64 8}
!138 = !{!137, !10, i64 4}
!139 = !{!137, !10, i64 0}
!140 = !{!137, !27, i64 8}
!141 = !{!"_ZTS5HBIntILb1EhLi1EE", !9, i64 0}
!142 = !{!141, !9, i64 0}
!143 = !{i64 3991431}
!144 = !{!"p1 _ZTS17hb_draw_session_t", !17, i64 0}
!145 = !{!"_ZTS17cff2_path_param_t", !144, i64 0, !22, i64 8}
!146 = !{!145, !144, i64 0}
!147 = !{!145, !22, i64 8}
!148 = !{!85, !10, i64 4}
!149 = !{!85, !15, i64 0}
!150 = !{!"branch_weights", i32 4194304, i32 -102760449}
!151 = !{!"branch_weights", i32 1073205, i32 2146410443}
!152 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!153 = !{!90, !90, i64 0}
!154 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!155 = !{!"llvm.loop.isvectorized", i32 1}
!156 = !{!"llvm.loop.unroll.runtime.disable"}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !{!"branch_weights", i32 2000, i32 2002}
!159 = !{i64 0, i64 8, !153, i64 8, i64 8, !153}
!160 = !{!"p1 _ZTS15hb_draw_funcs_t", !17, i64 0}
!161 = !{!"_ZTS15hb_draw_state_t", !10, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!162 = !{!"_ZTS17hb_draw_session_t", !160, i64 0, !17, i64 8, !161, i64 16}
!163 = !{!162, !160, i64 0}
!164 = !{!162, !17, i64 8}
!165 = !{!161, !10, i64 0}
!166 = !{!161, !24, i64 4}
!167 = !{!161, !24, i64 12}
!168 = !{!161, !24, i64 8}
!169 = !{!161, !24, i64 16}
!170 = !{!"_ZTSN15hb_draw_funcs_tUt_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!171 = !{!"_ZTS15hb_draw_funcs_t", !20, i64 0, !170, i64 16, !17, i64 56, !17, i64 64}
!172 = !{!171, !17, i64 24}
!173 = !{!171, !17, i64 56}
!174 = !{!"_ZTSN15hb_draw_funcs_tUt0_E", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!175 = !{!174, !17, i64 8}
!176 = !{!171, !17, i64 48}
!177 = !{!174, !17, i64 32}
!178 = !{!171, !17, i64 40}
!179 = !{!174, !17, i64 24}
!180 = !{!38, !24, i64 80}
!181 = !{!38, !24, i64 84}
!182 = distinct !{!182, !133}
!183 = distinct !{!183, !133}
!184 = distinct !{!184, !133}
!185 = !{!"branch_weights", !"expected", i32 1117922, i32 2146365726}
!186 = !{!38, !15, i64 120}
!187 = distinct !{!187, !133}
!188 = distinct !{!188, !133, !155, !156}
!189 = distinct !{!189, !157}
!190 = distinct !{!190, !133, !155, !156}
!191 = distinct !{!191, !157}
!192 = distinct !{!192, !133, !155}
!193 = distinct !{!193, !133, !155, !156}
!194 = distinct !{!194, !157}
!195 = distinct !{!195, !133, !155}
!196 = distinct !{!196, !157}
!197 = distinct !{!197, !133}
!198 = distinct !{!198, !133, !155}
!199 = distinct !{!199, !133}
!200 = distinct !{!200, !133}
!201 = distinct !{!201, !133}
!202 = distinct !{!202, !133}
!203 = distinct !{!203, !133}
!204 = distinct !{!204, !133}
!205 = distinct !{!205, !133}
!206 = distinct !{!206, !133}
!207 = distinct !{!207, !133}
!208 = distinct !{!208, !133}
!209 = distinct !{!209, !133}
!210 = distinct !{!210, !133}
!211 = distinct !{!211, !133}
!212 = distinct !{!212, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!213 = distinct !{!213, !212, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!214 = distinct !{!214, !212, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!215 = !{!214, !213}
!216 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!217 = distinct !{!217, !133, !155, !156}
!218 = distinct !{!218, !133, !156, !155}
!219 = distinct !{!219, !133}
!220 = distinct !{!220, !133}
!221 = distinct !{!221, !133, !155, !156}
!222 = distinct !{!222, !157}
!223 = distinct !{!223, !133, !155, !156}
!224 = distinct !{!224, !157}
!225 = distinct !{!225, !133, !155}
!226 = distinct !{!226, !133, !155, !156}
!227 = distinct !{!227, !157}
!228 = distinct !{!228, !133, !155}
!229 = distinct !{!229, !157}
!230 = distinct !{!230, !133}
!231 = distinct !{!231, !133, !155}
!232 = distinct !{!232, !133}
!233 = distinct !{!233, !133}
!234 = distinct !{!234, !133}
!235 = distinct !{!235, !133}
!236 = distinct !{!236, !133}
!237 = distinct !{!237, !133}
!238 = distinct !{!238, !133}
!239 = distinct !{!239, !133}
!240 = distinct !{!240, !133}
!241 = distinct !{!241, !133}
!242 = distinct !{!242, !133}
!243 = distinct !{!243, !133}
!244 = distinct !{null}
!245 = !{!171, !17, i64 16}
!246 = !{!174, !17, i64 0}
end_hunk_1
