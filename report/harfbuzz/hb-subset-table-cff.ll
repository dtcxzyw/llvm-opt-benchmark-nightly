Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-cff?download=true
inline.NumInlined: 7369
inline.NumDeleted: 3187
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE5allocEjb:bb.a
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !278
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !276
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare void @hb_free(ptr noundef) #2

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF7Charset8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !233
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.b, !prof !120

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.k = load i8, ptr %0, align 1, !tbaa !237
  switch i8 %i.k, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit [
    i8 0, label %bb.c
    i8 1, label %bb.h
    i8 2, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !224  ; 2 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.m, ptr %2, align 4, !tbaa !192
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = shl nuw i32 %i.n, 1                      ; 2 uses
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.f, !prof !244

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.d, %i.r
  %i.t = load i32, ptr %i.g, align 8, !tbaa !233
  %i.u = zext i32 %i.t to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.g, !prof !244

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.d
  %i.y = trunc i64 %i.x to i32
  %.not12.i.i.i.i.i = icmp ugt i32 %i.o, %i.y
  br i1 %.not12.i.i.i.i.i, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i, !prof !244

_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !234
  %i.ab = sub i32 %i.aa, %i.o                     ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !234
  %i.ac = icmp sgt i32 %i.ab, 0
  br label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit

bb.h:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !224
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  %.not23.i = icmp eq i32 %i.af, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %.025.i = phi i32 [ %i.at, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.01424.i = phi i32 [ %i.as, %bb.j ], [ %i.af, %bb.h ] ; 2 uses
  %i.ag = zext i32 %.025.i to i64
  %i.ah = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = load i32, ptr %i.g, align 8, !tbaa !233
  %i.ao = zext i32 %i.an to i64
  %.not18.i = icmp ugt i64 %i.am, %i.ao
  br i1 %.not18.i, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.i, !prof !120

bb.i:                                             ; preds = %.lr.ph.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !237
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %.not19.i = icmp ugt i32 %.01424.i, %i.ar
  br i1 %.not19.i, label %bb.j, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, !prof !121

bb.j:                                             ; preds = %bb.i
  %.neg.i = xor i32 %i.ar, -1
  %i.as = add i32 %.01424.i, %.neg.i              ; 2 uses
  %i.at = add i32 %.025.i, 1                      ; 2 uses
  %.not.i12 = icmp eq i32 %i.as, 0
  br i1 %.not.i12, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !726

._crit_edge.i:                                    ; preds = %bb.j, %bb.h
  %.0.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.at, %bb.j ]
  %.not16.i = icmp eq ptr %2, null
  br i1 %.not16.i, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  store i32 %.0.lcssa.i, ptr %2, align 4, !tbaa !192
  br label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit

bb.l:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !224
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  %.not23.i13 = icmp eq i32 %i.aw, 0
  br i1 %.not23.i13, label %._crit_edge.i22, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.l, %bb.n
  %.025.i15 = phi i32 [ %i.bl, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.01424.i16 = phi i32 [ %i.bk, %bb.n ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ax = zext i32 %.025.i15 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = load i32, ptr %i.g, align 8, !tbaa !233
  %i.bf = zext i32 %i.be to i64
  %.not18.i17 = icmp ugt i64 %i.bd, %i.bf
  br i1 %.not18.i17, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.m, !prof !120

bb.m:                                             ; preds = %.lr.ph.i14
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !240
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %.not19.i18 = icmp ugt i32 %.01424.i16, %i.bj
  br i1 %.not19.i18, label %bb.n, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, !prof !121

bb.n:                                             ; preds = %bb.m
  %.neg.i20 = xor i32 %i.bj, -1
  %i.bk = add i32 %.01424.i16, %.neg.i20          ; 2 uses
  %i.bl = add i32 %.025.i15, 1                    ; 2 uses
  %.not.i21 = icmp eq i32 %i.bk, 0
  br i1 %.not.i21, label %._crit_edge.i22, label %.lr.ph.i14, !llvm.loop !727

._crit_edge.i22:                                  ; preds = %bb.n, %bb.l
  %.0.lcssa.i23 = phi i32 [ 0, %bb.l ], [ %i.bl, %bb.n ]
  %.not16.i24 = icmp eq ptr %2, null
  br i1 %.not16.i24, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i22
  store i32 %.0.lcssa.i23, ptr %2, align 4, !tbaa !192
  br label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit

_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit: ; preds = %bb.m, %.lr.ph.i14, %bb.i, %.lr.ph.i, %bb.o, %._crit_edge.i22, %bb.k, %._crit_edge.i, %_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i, %bb.g, %bb.f, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ true, %._crit_edge.i22 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.f ], [ %i.ac, %_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i ], [ false, %bb.e ], [ true, %bb.k ], [ true, %._crit_edge.i ], [ false, %bb.i ], [ true, %bb.o ], [ false, %.lr.ph.i ], [ false, %.lr.ph.i14 ], [ false, %bb.m ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !233
  %i.i = zext i32 %i.h to i64
  %.not43 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not43, label %.critedge, label %bb.b, !prof !120

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.k = load i16, ptr %0, align 1, !tbaa !240
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i32
  %i.n = mul nuw nsw i32 %i.m, 3                  ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.d, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !233
  %i.s = zext i32 %i.r to i64
  %.not.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i.i, label %.critedge, label %bb.c, !prof !244

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.d
  %i.w = trunc i64 %i.v to i32
  %.not12.i.i.i = icmp ugt i32 %i.n, %i.w
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !244

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !234
  %i.z = sub i32 %i.y, %i.n                       ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !234
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %.critedge, !prof !189

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.ab = load i16, ptr %0, align 1, !tbaa !240   ; 2 uses
  %.not.i48.not = icmp eq i16 %i.ab, 0
  br i1 %.not.i48.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %wide.trip.count = zext i16 %i.ac to i64
  br label %bb.f

bb.e:                                             ; preds = %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.f, !llvm.loop !728

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !233
  %i.al = zext i32 %i.ak to i64
  %.not.i.i.i17 = icmp ugt i64 %i.aj, %i.al
  br i1 %.not.i.i.i17, label %.critedge, label %bb.g, !prof !244

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.am = load i16, ptr %i.ae, align 1, !tbaa !240
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i32
  %i.ap = load i32, ptr %i.ad, align 8, !tbaa !224
  %i.aq = icmp ugt i32 %i.ap, %i.ao
  br i1 %i.aq, label %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, label %.critedge, !prof !296

_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !237
  %i.at = zext i8 %i.as to i32
  %i.au = icmp ugt i32 %2, %i.at
  br i1 %i.au, label %bb.e, label %.critedge, !prof !189

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %.sroa.0.0.copyload.i = load i16, ptr %0, align 1, !tbaa !241
  %.not = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit, !prof !120

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.av = load i16, ptr %i.a, align 1, !tbaa !240
  %.not44 = icmp eq i16 %i.av, 0
  br i1 %.not44, label %.preheader, label %.critedge, !prof !121

.preheader:                                       ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit
  %.sroa.0.0.copyload.i2050 = load i16, ptr %0, align 1, !tbaa !241 ; 2 uses
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i2050)
  %.not1351 = icmp ugt i16 %i.aw, 1
  br i1 %.not1351, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, label %._crit_edge

bb.h:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %.sroa.0.0.copyload.i20 = load i16, ptr %0, align 1, !tbaa !241 ; 2 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i20)
  %i.ay = zext i16 %i.ax to i64
  %.not13 = icmp samesign ult i64 %indvars.iv.next56, %i.ay
  br i1 %.not13, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, label %._crit_edge, !llvm.loop !729

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23: ; preds = %.preheader, %bb.h
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.h ], [ 1, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.az = getelementptr [3 x i8], ptr %i.a, i64 %indvars.iv55 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -3
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !240
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = load i16, ptr %0, align 1, !tbaa !240
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i64
  %.not.i24 = icmp samesign ult i64 %indvars.iv55, %i.bf
  br i1 %.not.i24, label %bb.i, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26, !prof !121

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, %bb.i
  %.0.i25 = phi ptr [ %i.az, %bb.i ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23 ]
  %i.bg = load i16, ptr %.0.i25, align 1, !tbaa !240
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %.not12 = icmp ult i16 %i.bc, %i.bh
  br i1 %.not12, label %bb.h, label %.critedge, !prof !121

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.sroa.0.0.copyload.i.i = phi i16 [ %.sroa.0.0.copyload.i2050, %.preheader ], [ %.sroa.0.0.copyload.i20, %bb.h ] ; 2 uses
  %.not.i.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit, label %bb.j, !prof !120

bb.j:                                             ; preds = %._crit_edge
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i)
  %i.bj = zext i16 %i.bi to i64
  %3 = add nuw nsw i64 %i.bj, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %4 = and i64 %3, 4294967295
  %i.bk = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %4
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit: ; preds = %._crit_edge, %bb.j
  %.0.i.i = phi ptr [ %i.bk, %bb.j ], [ @_hb_NullPool, %._crit_edge ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 5
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = load i32, ptr %i.g, align 8, !tbaa !233
  %i.br = zext i32 %i.bq to i64
  %.not45 = icmp ugt i64 %i.bp, %i.br
  br i1 %.not45, label %.critedge, label %bb.k, !prof !120

bb.k:                                             ; preds = %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %.sroa.0.0.copyload.i.i27 = load i16, ptr %0, align 1, !tbaa !241 ; 2 uses
  %.not.i.not.i28 = icmp eq i16 %.sroa.0.0.copyload.i.i27, 0
  br i1 %.not.i.not.i28, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30, label %bb.l, !prof !120

bb.l:                                             ; preds = %bb.k
  %i.bs = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i27)
  %i.bt = zext i16 %i.bs to i64
  %5 = add nuw nsw i64 %i.bt, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %6 = and i64 %5, 4294967295
  %i.bu = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %6
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30: ; preds = %bb.k, %bb.l
  %.0.i.i29 = phi ptr [ %i.bu, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 3
  %i.bw = load i16, ptr %i.bv, align 1, !tbaa !240
  %i.bx = tail call noundef i16 @llvm.bswap.i16(i16 %i.bw)
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !224
  %.not46 = icmp eq i32 %i.ca, %i.by
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30, %bb.b, %bb.c, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit, %bb.a, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  %.1 = phi i1 [ false, %bb.b ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26 ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.a ], [ %.not46, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30 ], [ false, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.c ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF8Encoding8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !233
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.b, !prof !120

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.k = load i8, ptr %0, align 1, !tbaa !237
  %i.l = and i8 %i.k, 127
  switch i8 %i.l, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread [
    i8 0, label %bb.c
    i8 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !233
  %i.s = zext i32 %i.r to i64
  %.not.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.d, !prof !244

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.t = load i8, ptr %i.a, align 1, !tbaa !237
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.o, %i.w
  %i.y = load i32, ptr %i.g, align 8, !tbaa !233
  %i.z = zext i32 %i.y to i64
  %.not.i.i.i.i = icmp ugt i64 %i.x, %i.z
  br i1 %.not.i.i.i.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.e, !prof !244

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.o
  %i.ad = trunc i64 %i.ac to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.u, %i.ad
  br i1 %.not12.i.i.i.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit, !prof !244

_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !234
  %i.ag = sub i32 %i.af, %i.u                     ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !234
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, !prof !189

bb.f:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.ak = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = load i32, ptr %i.g, align 8, !tbaa !233
  %i.ao = zext i32 %i.an to i64
  %.not.i.i6 = icmp ugt i64 %i.am, %i.ao
  br i1 %.not.i.i6, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.g, !prof !244

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.ap = load i8, ptr %i.a, align 1, !tbaa !237
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.ak, %i.at
  %i.av = load i32, ptr %i.g, align 8, !tbaa !233
  %i.aw = zext i32 %i.av to i64
  %.not.i.i.i.i7 = icmp ugt i64 %i.au, %i.aw
  br i1 %.not.i.i.i.i7, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.h, !prof !244

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ak
  %i.ba = trunc i64 %i.az to i32
  %.not12.i.i.i.i8 = icmp ugt i32 %i.ar, %i.ba
  br i1 %.not12.i.i.i.i8, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %_ZNK3CFF9Encoding18sanitizeEP21hb_sanitize_context_t.exit, !prof !244

_ZNK3CFF9Encoding18sanitizeEP21hb_sanitize_context_t.exit: ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !234
  %i.bd = sub i32 %i.bc, %i.ar                    ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !234
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, !prof !189

bb.i:                                             ; preds = %_ZNK3CFF9Encoding18sanitizeEP21hb_sanitize_context_t.exit, %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit
  %i.bf = load i8, ptr %0, align 1, !tbaa !237    ; 2 uses
  %i.bg = icmp slt i8 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bh = and i8 %i.bf, 127
  switch i8 %i.bh, label %_ZNK3CFF8Encoding11suppEncDataEv.exit [
    i8 0, label %bb.k
    i8 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.a, align 1, !tbaa !241 ; 2 uses
  %.not.i.not.i = icmp eq i8 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i, label %bb.l, !prof !120

bb.l:                                             ; preds = %bb.k
  %i.bi = zext i8 %.sroa.0.0.copyload.i.i to i64
  %2 = add nuw nsw i64 %i.bi, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %4 = and i64 %2, 4294967295
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %4
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i

_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i10 = phi ptr [ %i.bj, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 1
  br label %_ZNK3CFF8Encoding11suppEncDataEv.exit

bb.m:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %.sroa.0.0.copyload.i2.i = load i8, ptr %i.a, align 1, !tbaa !241 ; 2 uses
  %.not.i3.not.i = icmp eq i8 %.sroa.0.0.copyload.i2.i, 0
  br i1 %.not.i3.not.i, label %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i, label %bb.n, !prof !120

bb.n:                                             ; preds = %bb.m
  %i.bl = zext i8 %.sroa.0.0.copyload.i2.i to i64
  %5 = add nuw nsw i64 %i.bl, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %7 = and i64 %5, 4294967295
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %7
  br label %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i

_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i: ; preds = %bb.n, %bb.m
  %.0.i4.i = phi ptr [ %i.bm, %bb.n ], [ @_hb_NullPool, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 2
  br label %_ZNK3CFF8Encoding11suppEncDataEv.exit

_ZNK3CFF8Encoding11suppEncDataEv.exit:            ; preds = %bb.j, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i
  %.0.i = phi ptr [ %i.bn, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i ], [ %i.bk, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i ], [ @_hb_NullPool, %bb.j ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.bq = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !233
  %i.bu = zext i32 %i.bt to i64
  %.not.i.i11 = icmp ugt i64 %i.bs, %i.bu
  br i1 %.not.i.i11, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.o, !prof !244

bb.o:                                             ; preds = %_ZNK3CFF8Encoding11suppEncDataEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.bv = load i8, ptr %.0.i, align 1, !tbaa !237
  %i.bw = zext i8 %i.bv to i32
  %i.bx = mul nuw nsw i32 %i.bw, 3                ; 2 uses
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bq, %i.bz
  %i.cb = load i32, ptr %i.g, align 8, !tbaa !233
  %i.cc = zext i32 %i.cb to i64
  %.not.i.i.i.i12 = icmp ugt i64 %i.ca, %i.cc
  br i1 %.not.i.i.i.i12, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.p, !prof !244

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bq
  %i.cg = trunc i64 %i.cf to i32
  %.not12.i.i.i.i13 = icmp ugt i32 %i.bx, %i.cg
  br i1 %.not12.i.i.i.i13, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, !prof !244

_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i: ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !234
  %i.cj = sub i32 %i.ci, %i.bx                    ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !234
  %i.ck = icmp sgt i32 %i.cj, 0
  br label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread

_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread: ; preds = %bb.i, %_ZNK3CFF8Encoding11suppEncDataEv.exit, %bb.o, %bb.p, %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, %bb.h, %bb.f, %bb.g, %bb.e, %bb.c, %bb.d, %bb.b, %_ZNK3CFF9Encoding18sanitizeEP21hb_sanitize_context_t.exit, %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit, %bb.a
  %.0 = phi i1 [ false, %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit ], [ false, %_ZNK3CFF9Encoding18sanitizeEP21hb_sanitize_context_t.exit ], [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.f ], [ true, %bb.i ], [ false, %bb.o ], [ %i.ck, %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i ], [ false, %_ZNK3CFF8Encoding11suppEncDataEv.exit ], [ false, %bb.p ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread19, label %bb.b, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !282    ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread19, label %bb.c, !prof !120

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread, !prof !120

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !730

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 107374182
  br i1 %i.k, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread22, label %bb.f, !prof !120

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit, !prof !120

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !282    ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread22, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread22: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !282
  br label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !259
  store i32 %.138.i, ptr %0, align 8, !tbaa !282
  br label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !258  ; 5 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.x, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !259
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  %i.w = load i32, ptr %i.o, align 4, !tbaa !258
  %i.x = add i32 %i.w, 1                          ; 3 uses
  store i32 %i.x, ptr %i.o, align 4, !tbaa !258
  %i.y = icmp ult i32 %i.x, %1
  br i1 %i.y, label %bb.i, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !731

bb.j:                                             ; preds = %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread
  %i.z = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.z
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.aa = sub nuw i32 %i.p, %1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !259
  %i.ad = zext i32 %i.p to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ad
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN3CFF15parsed_values_tINS_8op_str_tEED2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.ag, %_ZN3CFF15parsed_values_tINS_8op_str_tEED2Ev.exit.i ], [ %i.ae, %.lr.ph.preheader.i ] ; 4 uses
  %.046.i = phi i32 [ %i.af, %_ZN3CFF15parsed_values_tINS_8op_str_tEED2Ev.exit.i ], [ %i.aa, %.lr.ph.preheader.i ]
  %i.af = add i32 %.046.i, -1                     ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.07.i, i64 -40
  %i.ah = getelementptr inbounds i8, ptr %.07.i, i64 -32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !279
  %i.aj = add i32 %i.ai, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.aj, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.k, label %_ZN3CFF15parsed_values_tINS_8op_str_tEED2Ev.exit.i

bb.k:                                             ; preds = %.lr.ph.i15
  %i.ak = getelementptr inbounds i8, ptr %.07.i, i64 -28
  store i32 0, ptr %i.ak, align 4, !tbaa !280
  %i.al = getelementptr inbounds i8, ptr %.07.i, i64 -24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !281
  tail call void @hb_free(ptr noundef %i.am) #15
  br label %_ZN3CFF15parsed_values_tINS_8op_str_tEED2Ev.exit.i

_ZN3CFF15parsed_values_tINS_8op_str_tEED2Ev.exit.i: ; preds = %bb.k, %.lr.ph.i15
  %.not.i16 = icmp eq i32 %i.af, 0
  br i1 %.not.i16, label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, label %.lr.ph.i15, !llvm.loop !4

_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %_ZN3CFF15parsed_values_tINS_8op_str_tEED2Ev.exit.i, %bb.i, %bb.j, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !258
  br label %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread19: ; preds = %bb.b, %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread22, %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread22 ], [ true, %_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN3CFF31cff1_private_dict_values_base_tINS0_8op_str_tEEELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !282
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.f

end_hunk_0
