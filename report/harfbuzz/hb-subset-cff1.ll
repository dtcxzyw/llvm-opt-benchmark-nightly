Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff1?download=true
inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE:bb.a
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv ; 2 uses
  %i.ez = tail call i16 @llvm.bswap.i16(i16 %i.ex)
  store i16 %i.ez, ptr %i.ey, align 1, !tbaa !97
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !175
  %i.fb = trunc i32 %i.fa to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fd = tail call i16 @llvm.bswap.i16(i16 %i.fb)
  store i16 %i.fd, ptr %i.fc, align 1, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fe = load i32, ptr %i.ec, align 4, !tbaa !172
  %i.ff = zext i32 %i.fe to i64
  %i.fg = icmp samesign ult i64 %indvars.iv.next, %i.ff
  br i1 %i.fg, label %bb.q, label %._crit_edge, !llvm.loop !493

.loopexit:                                        ; preds = %._crit_edge124, %.preheader111, %.preheader110, %.preheader, %._crit_edge, %._crit_edge117, %_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit
  br label %select.unfold

select.unfold:                                    ; preds = %._crit_edge, %bb.n, %.critedge.i84, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit, %._crit_edge117, %bb.j, %.critedge.i80, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EhLj1EEEEEEEPT_mb.exit, %bb.f, %.critedge.i, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF8Charset0EEEPT_mb.exit, %_ZL9hb_memsetPvij.exit.i.i.i, %.critedge.i.i.i, %bb.a, %.loopexit
  %.5 = phi i1 [ false, %._crit_edge117 ], [ true, %.loopexit ], [ false, %._crit_edge ], [ false, %bb.f ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF8Charset0EEEPT_mb.exit ], [ false, %.critedge.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EhLj1EEEEEEEPT_mb.exit ], [ false, %.critedge.i80 ], [ false, %bb.j ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit ], [ false, %.critedge.i84 ], [ false, %bb.n ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF8EncodingEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !81
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !86

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154
  store ptr %i.f, ptr %i.d, align 8, !tbaa !153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !155
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !82

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #10 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !157
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !86

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !154
  store ptr %i.p, ptr %i.d, align 8, !tbaa !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !81
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !81
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !158
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !158
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !159
  store ptr %i.r, ptr %i.u, align 8, !tbaa !88
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !85
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF8Encoding9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EES7_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !81
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %select.unfold.sink.split, label %bb.c, !prof !86

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %select.unfold.sink.split, label %bb.d, !prof !86

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !132

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %i.d, align 8, !tbaa !85
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN3CFF8EncodingEEEPT_S4_.exit, !prof !86

_ZN22hb_serialize_context_t10extend_minIN3CFF8EncodingEEEPT_S4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 6 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !172
  %.not89 = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not89, i8 0, i8 -128
  %i.u = or i8 %i.t, %2
  store i8 %i.u, ptr %0, align 1, !tbaa !97
  switch i8 %2, label %.critedge [
    i8 0, label %bb.f
    i8 1, label %bb.o
  ]

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN3CFF8EncodingEEEPT_S4_.exit
  %i.v = add i32 %3, 1                            ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !81
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.g, label %select.unfold, !prof !82

bb.g:                                             ; preds = %bb.f
  %i.y = icmp slt i32 %i.v, 0
  br i1 %i.y, label %select.unfold.sink.split, label %bb.h, !prof !86

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp slt i64 %i.ad, %i.w
  br i1 %i.ae, label %select.unfold.sink.split, label %bb.i, !prof !86

bb.i:                                             ; preds = %bb.h
  %.not.i.i.not = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.not, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF9Encoding0EEEPT_mb.exit, label %bb.j, !prof !132

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 0, i64 %i.w, i1 false)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF9Encoding0EEEPT_mb.exit

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF9Encoding0EEEPT_mb.exit: ; preds = %bb.i, %bb.j
  %i.af = phi ptr [ %.pre.i, %bb.j ], [ %i.aa, %bb.i ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !85
  %.not92 = icmp eq ptr %i.af, null
  br i1 %.not92, label %select.unfold, label %bb.k, !prof !94

bb.k:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF9Encoding0EEEPT_mb.exit
  %i.ah = trunc i32 %3 to i8
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !172
  %.not98.not178.not = icmp eq i32 %i.aj, 0
  br i1 %.not98.not178.not, label %.critedge, label %.lr.ph182

.lr.ph182:                                        ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !172
  %i.an = zext i32 %i.am to i64
  %.not98.not = icmp samesign ult i64 %indvars.iv.next192, %i.an
  br i1 %.not98.not, label %bb.m, label %.critedge, !llvm.loop !496

bb.m:                                             ; preds = %.lr.ph182, %bb.l
  %indvars.iv191 = phi i64 [ 0, %.lr.ph182 ], [ %indvars.iv.next192, %bb.l ] ; 2 uses
  %.079179 = phi i32 [ 0, %.lr.ph182 ], [ %.1.lcssa, %bb.l ] ; 3 uses
  %i.ao = load ptr, ptr %i.ak, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv191 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !176 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !175 ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %.lr.ph176.preheader, label %._crit_edge

.lr.ph176.preheader:                              ; preds = %bb.m
  %i.au = add nuw nsw i32 %.079179, 1
  %i.av = add nuw i32 %i.au, %i.as                ; 2 uses
  br label %.lr.ph176

._crit_edge:                                      ; preds = %_ZN2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit, %bb.m
  %.1.lcssa = phi i32 [ %.079179, %bb.m ], [ %i.av, %_ZN2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit ] ; 2 uses
  %.077.lcssa = phi i32 [ %i.aq, %bb.m ], [ %i.ay, %_ZN2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit ]
  %i.aw = icmp ult i32 %.1.lcssa, 257
  %i.ax = icmp ult i32 %.077.lcssa, 257
  %.not95.not = select i1 %i.aw, i1 %i.ax, i1 false, !prof !82
  br i1 %.not95.not, label %bb.l, label %select.unfold, !prof !82

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %_ZN2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit
  %.077174 = phi i32 [ %i.ay, %_ZN2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit ], [ %i.aq, %.lr.ph176.preheader ] ; 2 uses
  %.1173 = phi i32 [ %i.ba, %_ZN2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit ], [ %.079179, %.lr.ph176.preheader ] ; 3 uses
  %i.ay = add i32 %.077174, 1                     ; 2 uses
  %i.az = trunc i32 %.077174 to i8
  %i.ba = add i32 %.1173, 1                       ; 2 uses
  %i.bb = load i8, ptr %i.af, align 1, !tbaa !180
  %i.bc = zext i8 %i.bb to i32
  %.not.i105 = icmp ult i32 %.1173, %i.bc
  br i1 %.not.i105, label %bb.n, label %_ZN2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit, !prof !82

bb.n:                                             ; preds = %.lr.ph176
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.bd = zext nneg i32 %.1173 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bd
  br label %_ZN2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit

_ZN2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit: ; preds = %.lr.ph176, %bb.n
  %.0.i106 = phi ptr [ %i.be, %bb.n ], [ @_hb_CrapPool, %.lr.ph176 ]
  store i8 %i.az, ptr %.0.i106, align 1, !tbaa !97
  %exitcond.not = icmp eq i32 %i.ba, %i.av
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph176, !llvm.loop !497

bb.o:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN3CFF8EncodingEEEPT_S4_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !172
  %i.bh = shl i32 %i.bg, 1                        ; 2 uses
  %i.bi = or disjoint i32 %i.bh, 1
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !81
  %.not.i107 = icmp eq i32 %i.bk, 0
  br i1 %.not.i107, label %bb.p, label %select.unfold, !prof !82

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp slt i32 %i.bh, 0
  br i1 %i.bl, label %select.unfold.sink.split, label %bb.q, !prof !86

bb.q:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp slt i64 %i.bq, %i.bj
  br i1 %i.br, label %select.unfold.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF9Encoding1EEEPT_mb.exit, !prof !86

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF9Encoding1EEEPT_mb.exit: ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i8 0, i64 %i.bj, i1 false)
  %.pre.i111 = load ptr, ptr %i.d, align 8, !tbaa !85 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i111, i64 %i.bj
  store ptr %i.bs, ptr %i.d, align 8, !tbaa !85
  %.not90 = icmp eq ptr %.pre.i111, null
  br i1 %.not90, label %select.unfold, label %bb.r, !prof !94

bb.r:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF9Encoding1EEEPT_mb.exit
  %i.bt = load i32, ptr %i.bf, align 4, !tbaa !172
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %.pre.i111, align 1, !tbaa !97
  %i.bv = load i32, ptr %i.bf, align 4, !tbaa !172
  %.not91.not171.not = icmp eq i32 %i.bv, 0
  br i1 %.not91.not171.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bx = load i16, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i111, i64 1 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit125
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit125 ] ; 8 uses
  %i.bz = load ptr, ptr %i.bw, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !176 ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 256
  br i1 %i.cc, label %bb.t, label %select.unfold, !prof !82

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !175
  %i.cf = icmp ugt i32 %i.ce, 255
  br i1 %i.cf, label %select.unfold, label %bb.u, !prof !86

bb.u:                                             ; preds = %bb.t
  %i.cg = trunc nuw i32 %i.cb to i8
  %i.ch = load i8, ptr %.pre.i111, align 1, !tbaa !180
  %i.ci = zext i8 %i.ch to i64
  %.not.i119 = icmp samesign ult i64 %indvars.iv, %i.ci
  br i1 %.not.i119, label %bb.w, label %bb.v, !prof !82

bb.v:                                             ; preds = %bb.u
  store i16 %i.bx, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit

bb.w:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv
  br label %_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit

_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit: ; preds = %bb.v, %bb.w
  %.0.i120 = phi ptr [ @_hb_CrapPool, %bb.v ], [ %i.cj, %bb.w ]
  store i8 %i.cg, ptr %.0.i120, align 1, !tbaa !97
  %i.ck = load i32, ptr %i.bf, align 4, !tbaa !172
  %i.cl = zext i32 %i.ck to i64
  %.not.i121 = icmp samesign ult i64 %indvars.iv, %i.cl
  %i.cm = load ptr, ptr %i.bw, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv
  %.0.i122 = select i1 %.not.i121, ptr %i.cn, ptr @_hb_NullPool, !prof !82
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i122, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !175
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = load i8, ptr %.pre.i111, align 1, !tbaa !180
  %i.cs = zext i8 %i.cr to i64
  %.not.i123 = icmp samesign ult i64 %indvars.iv, %i.cs
  br i1 %.not.i123, label %bb.y, label %bb.x, !prof !82

bb.x:                                             ; preds = %_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit
  store i16 %i.bx, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit125

bb.y:                                             ; preds = %_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv
  br label %_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit125

_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit125: ; preds = %bb.x, %bb.y
  %.0.i124 = phi ptr [ @_hb_CrapPool, %bb.x ], [ %i.ct, %bb.y ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i124, i64 1
  store i8 %i.cq, ptr %i.cu, align 1, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = load i32, ptr %i.bf, align 4, !tbaa !172
  %i.cw = zext i32 %i.cv to i64
  %.not91.not = icmp samesign ult i64 %indvars.iv.next, %i.cw
  br i1 %.not91.not, label %bb.s, label %.critedge, !llvm.loop !498

.critedge:                                        ; preds = %_ZN2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit125, %bb.l, %bb.r, %bb.k, %_ZN22hb_serialize_context_t10extend_minIN3CFF8EncodingEEEPT_S4_.exit
  %i.cx = load i32, ptr %i.r, align 4, !tbaa !172 ; 2 uses
  %.not99 = icmp eq i32 %i.cx, 0
  br i1 %.not99, label %select.unfold, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.cy = mul i32 %i.cx, 3
  %i.cz = add i32 %i.cy, 1                        ; 3 uses
  %i.da = zext i32 %i.cz to i64                   ; 3 uses
  %i.db = load i32, ptr %i.a, align 4, !tbaa !81
  %.not.i126 = icmp eq i32 %i.db, 0
  br i1 %.not.i126, label %bb.aa, label %select.unfold, !prof !82

bb.aa:                                            ; preds = %bb.z
  %i.dc = icmp slt i32 %i.cz, 0
  br i1 %i.dc, label %select.unfold.sink.split, label %bb.ab, !prof !86

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp slt i64 %i.dh, %i.da
  br i1 %i.di, label %select.unfold.sink.split, label %bb.ac, !prof !86

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i128.not = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i128.not, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF15CFF1SuppEncDataEEEPT_mb.exit, label %bb.ad, !prof !132

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.de, i8 0, i64 %i.da, i1 false)
  %.pre.i130 = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF15CFF1SuppEncDataEEEPT_mb.exit

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF15CFF1SuppEncDataEEEPT_mb.exit: ; preds = %bb.ac, %bb.ad
  %i.dj = phi ptr [ %.pre.i130, %bb.ad ], [ %i.de, %bb.ac ] ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.da
  store ptr %i.dk, ptr %i.d, align 8, !tbaa !85
  %.not100.not = icmp eq ptr %i.dj, null
  br i1 %.not100.not, label %select.unfold, label %bb.ae, !prof !94

bb.ae:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF15CFF1SuppEncDataEEEPT_mb.exit
  %i.dl = load i32, ptr %i.r, align 4, !tbaa !172
  %i.dm = trunc i32 %i.dl to i8
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !97
  %i.dn = load i32, ptr %i.r, align 4, !tbaa !172
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %select.unfold, label %.lr.ph185

.lr.ph185:                                        ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph185, %_ZN2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit140
  %indvars.iv194 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next195, %_ZN2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit140 ] ; 8 uses
  %i.dq = load ptr, ptr %i.do, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv194
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !176
  %i.dt = trunc i32 %i.ds to i8
  %i.du = load i8, ptr %i.dj, align 1, !tbaa !180
  %i.dv = zext i8 %i.du to i64
  %.not.i134 = icmp samesign ult i64 %indvars.iv194, %i.dv
  br i1 %.not.i134, label %bb.ah, label %bb.ag, !prof !82

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(3) @_hb_NullPool, i64 3, i1 false)
  br label %_ZN2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit

bb.ah:                                            ; preds = %bb.af
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.dw = getelementptr inbounds nuw [3 x i8], ptr %i.dp, i64 %indvars.iv194
  br label %_ZN2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit

_ZN2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit: ; preds = %bb.ag, %bb.ah
  %.0.i135 = phi ptr [ @_hb_CrapPool, %bb.ag ], [ %i.dw, %bb.ah ]
  store i8 %i.dt, ptr %.0.i135, align 1, !tbaa !97
  %i.dx = load i32, ptr %i.r, align 4, !tbaa !172
  %i.dy = zext i32 %i.dx to i64
  %.not.i136 = icmp samesign ult i64 %indvars.iv194, %i.dy
  %i.dz = load ptr, ptr %i.do, align 8
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv194
  %.0.i137 = select i1 %.not.i136, ptr %i.ea, ptr @_hb_NullPool, !prof !82
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i137, i64 4
end_hunk_0
begin_hunk_1_@_ZN2OT16cff1_subset_plan6createERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t:bb.a
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = and i32 %i.x, 2
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.c, !llvm.loop !0

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i:        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.b, %bb.a
  %.0.i.i = phi ptr [ @minus_1, %bb.a ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.b ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.z = load i32, ptr %.0.i.i, align 4, !tbaa !116
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.bh

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !253
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !198
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !254 ; 2 uses
  %i.aj = trunc i32 %i.ai to i8                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.al = and i8 %i.aj, 1
  store i8 %i.al, ptr %i.ak, align 8, !tbaa !125
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.an = lshr i8 %i.aj, 2
  %i.ao = and i8 %i.an, 1
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !128
  %i.ap = and i32 %i.ai, 32768
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !116
  %i.as = icmp ne i32 %i.ar, -1
  %i.at = zext i1 %i.as to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = phi i8 [ 0, %bb.d ], [ %i.at, %bb.e ]   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 509
  store i8 %i.au, ptr %i.av, align 1, !tbaa !201
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 0, ptr %i.aw, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !255
  %i.az = icmp slt i32 %i.ay, 3
  br i1 %i.az, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  store i8 1, ptr %i.ba, align 8, !tbaa !144
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bb = trunc nuw i8 %i.au to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 6 uses
  store i8 %i.au, ptr %i.bc, align 8, !tbaa !144
  br i1 %i.bb, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !256 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !257 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.idx = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx
  %.not67190 = icmp eq i32 %i.bg, 0
  br i1 %.not67190, label %.loopexit, label %.critedge

bb.i:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %.060191, i64 8 ; 2 uses
  %.not67 = icmp eq ptr %i.bj, %i.bi
  br i1 %.not67, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.i
  %.060191 = phi ptr [ %i.bj, %bb.i ], [ %i.be, %bb.h ] ; 3 uses
  %i.bk = load i32, ptr %.060191, align 4, !tbaa !259
  %i.bl = getelementptr inbounds nuw i8, ptr %.060191, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !547
  %.not68 = icmp eq i32 %i.bk, %i.bm
  br i1 %.not68, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.critedge
  store i8 1, ptr %i.bc, align 8, !tbaa !144
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.h, %.thread, %bb.j, %bb.g
  %i.bn = phi i1 [ true, %.thread ], [ true, %bb.j ], [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  %i.bo = phi ptr [ %i.ba, %.thread ], [ %i.bc, %bb.j ], [ %i.bc, %bb.g ], [ %i.bc, %bb.h ], [ %i.bc, %bb.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !116
  %.not158 = icmp eq i32 %i.bq, -1
  br i1 %.not158, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !260
  %i.bt = icmp sgt i32 %i.bs, 1
  %i.bu = zext i1 %i.bt to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bv = phi i8 [ 0, %.loopexit ], [ %i.bu, %bb.k ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 322 ; 2 uses
  store i8 %i.bv, ptr %i.bw, align 2, !tbaa !146
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 0, ptr %0, align 8, !tbaa !548
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.bz, i8 -1, i64 44, i1 false), !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.ca, align 8, !tbaa !549
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 8720, ptr %i.cb, align 4, !tbaa !550
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bx, ptr %i.cd, align 8, !tbaa !197
  %i.ce = trunc nuw i8 %i.bv to i1
  br i1 %i.ce, label %bb.m, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !261 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !262 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %.idx.i = mul nuw nsw i64 %i.cj, 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i
  %.not16.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not16.not.i, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.01117.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %i.cg, %bb.m ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01117.i, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !130
  %.not14.i.not = icmp ne i32 %i.cm, 16           ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01117.i, i64 24 ; 2 uses
  %.not.not.i = icmp ne ptr %i.cn, %i.ck
  %or.cond.not = select i1 %.not14.i.not, i1 %.not.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit

_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit: ; preds = %.lr.ph.i, %bb.m, %bb.l
  %i.co = phi i1 [ false, %bb.l ], [ true, %bb.m ], [ %.not14.i.not, %.lr.ph.i ] ; 2 uses
  br i1 %i.bn, label %bb.n, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90

bb.n:                                             ; preds = %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !261 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !262 ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %.idx.i83 = mul nuw nsw i64 %i.ct, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i83
  %.not16.not.i84 = icmp eq i32 %i.cs, 0
  br i1 %.not16.not.i84, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread, label %.lr.ph.i85

bb.o:                                             ; preds = %.lr.ph.i85
  %i.cv = getelementptr inbounds nuw i8, ptr %.01117.i86, i64 24 ; 2 uses
  %.not.not.i88 = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.not.i88, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.n, %bb.o
  %.01117.i86 = phi ptr [ %i.cv, %bb.o ], [ %i.cq, %bb.n ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01117.i86, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !130
  %.not14.i87.not = icmp eq i32 %i.cx, 15
  br i1 %.not14.i87.not, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90, label %bb.o

_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90: ; preds = %.lr.ph.i85, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit
  br i1 %i.co, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread, label %bb.v

_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread: ; preds = %bb.o, %bb.n, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90
  %i.cy = phi i1 [ false, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90 ], [ true, %bb.n ], [ true, %bb.o ]
  br i1 %i.co, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread
  %i.cz = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i32 noundef 1, i1 noundef zeroext false)
  br i1 %i.cz, label %.critedge.i.i, label %bb.q, !prof !82

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit

.critedge.i.i:                                    ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !261
  %.pre.i.i = load i32, ptr %i.da, align 4, !tbaa !262 ; 2 uses
  %i.db = add i32 %.pre.i.i, 1
  store i32 %i.db, ptr %i.da, align 4, !tbaa !262
  %i.dc = zext i32 %.pre.i.i to i64
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dc ; 3 uses
  store ptr null, ptr %i.dd, align 8
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6151.0..sroa_idx, i8 0, i64 12, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit

_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit: ; preds = %bb.q, %.critedge.i.i
  %.0.i.i92 = phi ptr [ @_hb_CrapPool, %bb.q ], [ %i.dd, %.critedge.i.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i92, i64 8
  store i32 16, ptr %i.de, align 8, !tbaa !130
  %i.df = load i32, ptr %0, align 8, !tbaa !548
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr null, i64 %i.dg
  store ptr %i.dh, ptr %.0.i.i92, align 8, !tbaa !133
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i92, i64 12
  store i8 0, ptr %i.di, align 4, !tbaa !131
  store i32 0, ptr %0, align 8, !tbaa !548
  br label %bb.r

bb.r:                                             ; preds = %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread
  br i1 %i.cy, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !262 ; 3 uses
  %i.dl = load i32, ptr %i.by, align 8, !tbaa !263
  %.not.i.i93 = icmp slt i32 %i.dk, %i.dl
  br i1 %.not.i.i93, label %.critedge.i.i99, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = add i32 %i.dk, 1
  %i.dn = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i32 noundef %i.dm, i1 noundef zeroext false)
  br i1 %i.dn, label %..critedge_crit_edge.i.i97, label %bb.u, !prof !82

..critedge_crit_edge.i.i97:                       ; preds = %bb.t
  %.pre.i.i98 = load i32, ptr %i.dj, align 4, !tbaa !262
  br label %.critedge.i.i99

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100

.critedge.i.i99:                                  ; preds = %..critedge_crit_edge.i.i97, %bb.s
  %i.do = phi i32 [ %.pre.i.i98, %..critedge_crit_edge.i.i97 ], [ %i.dk, %bb.s ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !261
  %i.dr = add i32 %i.do, 1
  store i32 %i.dr, ptr %i.dj, align 4, !tbaa !262
  %i.ds = zext i32 %i.do to i64
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.ds ; 3 uses
  store ptr null, ptr %i.dt, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6144.0..sroa_idx, i8 0, i64 12, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100

_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100: ; preds = %bb.u, %.critedge.i.i99
  %.0.i.i94 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.dt, %.critedge.i.i99 ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i94, i64 8
  store i32 15, ptr %i.du, align 8, !tbaa !130
  %i.dv = load i32, ptr %0, align 8, !tbaa !548
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr null, i64 %i.dw
  store ptr %i.dx, ptr %.0.i.i94, align 8, !tbaa !133
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i94, i64 12
  store i8 0, ptr %i.dy, align 4, !tbaa !131
  store i32 0, ptr %0, align 8, !tbaa !548
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !140 ; 2 uses
  %.not69 = icmp eq ptr %i.ea, @_hb_NullPool
  br i1 %.not69, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.eh = tail call noundef zeroext i1 @_Z27hb_plan_subset_cff_fdselectPK16hb_subset_plan_tjRKN3CFF8FDSelectERjS6_S6_R11hb_vector_tINS2_11code_pair_tELb0EER14hb_inc_bimap_t(ptr noundef nonnull %2, i32 noundef %i.eb, ptr noundef nonnull align 1 dereferenceable(6) %i.ea, ptr noundef nonnull align 4 dereferenceable(4) %i.ec, ptr noundef nonnull align 4 dereferenceable(4) %i.ed, ptr noundef nonnull align 4 dereferenceable(4) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(64) %i.eg) #10
  br i1 %i.eh, label %_ZN14hb_inc_bimap_t8identityEj.exit, label %bb.bh, !prof !82

bb.x:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !264
  %.not.i.i.i = icmp eq i32 %i.ek, 0
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8
  %.not8.i.i.i = icmp eq i32 %i.em, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not8.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN14hb_inc_bimap_t5clearEv.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !265
  %.fr15.i.i.i = freeze i32 %i.eo
  %i.ep = add i32 %.fr15.i.i.i, 1                 ; 2 uses
  %.not912.i.i.i = icmp ult i32 %i.ep, 2
  br i1 %.not912.i.i.i, label %._crit_edge.i.i.i101, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.y
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.ep to i64
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 12 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !114
  %i.es = add nsw i64 %.idx.i.i.i, -12
  %i.et = urem i64 %i.es, 12
  %i.eu = sub nuw nsw i64 %.idx.i.i.i, %i.et
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.er, i8 0, i64 %i.eu, i1 false)
  br label %._crit_edge.i.i.i101

._crit_edge.i.i.i101:                             ; preds = %.lr.ph.preheader.i.i.i, %bb.y
  store i32 0, ptr %i.el, align 8, !tbaa !266
  store i32 0, ptr %i.ej, align 4, !tbaa !264
  br label %_ZN14hb_inc_bimap_t5clearEv.exit.i

_ZN14hb_inc_bimap_t5clearEv.exit.i:               ; preds = %._crit_edge.i.i.i101, %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 0, ptr %i.ev, align 4, !tbaa !184
  %i.ew = tail call noundef i32 @_ZN14hb_inc_bimap_t3addEj(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, i32 noundef 0) ; 0 uses
  br label %_ZN14hb_inc_bimap_t8identityEj.exit

_ZN14hb_inc_bimap_t8identityEj.exit:              ; preds = %_ZN14hb_inc_bimap_t5clearEv.exit.i, %bb.w
  %i.ex = tail call noundef zeroext i1 @_ZN2OT16cff1_subset_plan21collect_sids_in_dictsERKNS_4cff120accelerator_subset_tE(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1)
  br i1 %i.ex, label %bb.z, label %bb.bh, !prof !82

bb.z:                                             ; preds = %_ZN14hb_inc_bimap_t8identityEj.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !551
  %i.fb = icmp ugt i32 %i.fa, 32768
  br i1 %i.fb, label %bb.bh, label %bb.aa, !prof !86

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i8, ptr %i.bo, align 8, !tbaa !144, !range !126, !noundef !127
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fe = tail call noundef zeroext i1 @_ZN2OT16cff1_subset_plan19plan_subset_charsetERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull %2)
  br i1 %i.fe, label %bb.ac, label %bb.bh

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void @_ZN26cff1_top_dict_values_mod_t12reassignSIDsERK11remap_sid_t(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ey)
  %i.ff = load i8, ptr %i.am, align 4, !tbaa !128, !range !126, !noundef !127
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !268
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.fh, align 8, !tbaa !270
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fj = call noundef zeroext i1 @_ZN3CFF16subr_flattener_tIKN2OT4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE23cff1_cs_opset_flatten_tLj14EE7flattenER11hb_vector_tIS8_IhLb0EELb0EEPS8_IS8_INS_12cs_command_tELb0EELb0EE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br i1 %i.fj, label %bb.aq, label %bb.bh

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EEC2ERS9_PK16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(272) %4, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull %2)
  %i.fk = call noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE6subsetEv(ptr noundef nonnull align 8 dereferenceable(272) %4)
  br i1 %i.fk, label %bb.af, label %.critedge72

bb.af:                                            ; preds = %bb.ae
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fm = call noundef zeroext i1 @_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE18encode_charstringsER11hb_vector_tISD_IhLb0EELb0EEb(ptr noundef nonnull align 8 dereferenceable(272) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i1 noundef zeroext true)
  br i1 %i.fm, label %bb.ag, label %.critedge72

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !287
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fr = call noundef zeroext i1 @_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE12encode_subrsERKNS_19parsed_cs_str_vec_tERKNS_12subr_remap_tEjR11hb_vector_tISJ_IhLb0EELb0EE(ptr noundef nonnull align 8 dereferenceable(272) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(68) %i.fq, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.fn)
  br i1 %i.fr, label %bb.ah, label %.critedge72

bb.ah:                                            ; preds = %bb.ag
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ft = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.fu = call noundef zeroext i1 @_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i32 noundef %i.ft, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.fu, label %.preheader, label %.critedge72

.preheader:                                       ; preds = %bb.ah
  %i.fv = load i32, ptr %i.ag, align 4, !tbaa !198
  %.not70.not192.not = icmp eq i32 %i.fv, 0
  br i1 %.not70.not192.not, label %.critedge74, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 216
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %_ZNK14hb_inc_bimap_t3hasEj.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK14hb_inc_bimap_t3hasEj.exit.thread ] ; 12 uses
  %i.ge = load i32, ptr %i.fw, align 4, !tbaa !118
  %i.gf = zext i32 %i.ge to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.gf
  br i1 %.not.i, label %bb.aj, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit, !prof !82

bb.aj:                                            ; preds = %bb.ai
  %i.gg = load ptr, ptr %i.fx, align 8, !tbaa !119
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit: ; preds = %bb.ai, %bb.aj
  %.0.i = phi ptr [ %i.gh, %bb.aj ], [ @_hb_CrapPool, %bb.ai ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  %i.gi = load ptr, ptr %i.fy, align 8, !tbaa !114 ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i103, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %i.gj = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.gk = mul i32 %i.gj, 506952113
  %i.gl = and i32 %i.gk, 1073741823
  %i.gm = load i32, ptr %i.fz, align 8, !tbaa !115
  %i.gn = urem i32 %i.gl, %i.gm                   ; 2 uses
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4            ; 2 uses
  %i.gs = and i32 %i.gr, 2
  %.not15.i.i.i.i104 = icmp eq i32 %i.gs, 0
  br i1 %.not15.i.i.i.i104, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i105

.lr.ph.i.i.i.i105:                                ; preds = %bb.ak
  %i.gt = load i32, ptr %i.ga, align 4
  %i.gu = load i32, ptr %i.gp, align 4, !tbaa !116
  %i.gv = zext i32 %i.gu to i64
  %i.gw = icmp eq i64 %indvars.iv, %i.gv
  br i1 %i.gw, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i106

bb.al:                                            ; preds = %.lr.ph.i.i.i106
  %i.gx = load i32, ptr %i.he, align 4, !tbaa !116
  %i.gy = zext i32 %i.gx to i64
  %i.gz = icmp eq i64 %indvars.iv, %i.gy
  br i1 %i.gz, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i106, !llvm.loop !0

.lr.ph.i.i.i106:                                  ; preds = %.lr.ph.i.i.i.i105, %bb.al
  %.01016.i20.i.i.i = phi i32 [ %i.hc, %bb.al ], [ %i.gn, %.lr.ph.i.i.i.i105 ]
  %.017.i19.i.i.i = phi i32 [ %i.ha, %bb.al ], [ 0, %.lr.ph.i.i.i.i105 ]
  %i.ha = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.hb = add i32 %i.ha, %.01016.i20.i.i.i
  %i.hc = and i32 %i.hb, %i.gt                    ; 2 uses
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = load i32, ptr %i.hf, align 4            ; 2 uses
  %i.hh = and i32 %i.hg, 2
  %.not.i.i.i.i107 = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i.i.i107, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.al, !llvm.loop !0

_ZNK14hb_inc_bimap_t3hasEj.exit:                  ; preds = %bb.al, %.lr.ph.i.i.i.i105
  %.lcssa17.i.i.i = phi i32 [ %i.gr, %.lr.ph.i.i.i.i105 ], [ %i.hg, %bb.al ]
  %i.hi = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.hi, label %bb.am, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

bb.am:                                            ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.hj = load i32, ptr %i.fw, align 4, !tbaa !118
  %i.hk = zext i32 %i.hj to i64
  %.not.i109 = icmp samesign ult i64 %indvars.iv, %i.hk
  br i1 %.not.i109, label %bb.ao, label %bb.an, !prof !82

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit111

bb.ao:                                            ; preds = %bb.am
  %i.hl = load ptr, ptr %i.fx, align 8, !tbaa !119
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit111

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit111: ; preds = %bb.an, %bb.ao
  %.0.i110 = phi ptr [ @_hb_CrapPool, %bb.an ], [ %i.hm, %bb.ao ]
  %i.hn = load ptr, ptr %i.gb, align 8, !tbaa !288 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !289
  %i.hq = zext i32 %i.hp to i64
  %.not.i.i112 = icmp samesign ult i64 %indvars.iv, %i.hq
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %indvars.iv
  %.0.i.i113 = select i1 %.not.i.i112, ptr %i.ht, ptr @_hb_NullPool, !prof !82
  %i.hu = load i32, ptr %i.gc, align 4, !tbaa !290
  %i.hv = zext i32 %i.hu to i64
  %.not.i4.i = icmp samesign ult i64 %indvars.iv, %i.hv
  %i.hw = load ptr, ptr %i.gd, align 8
  %i.hx = getelementptr inbounds nuw [72 x i8], ptr %i.hw, i64 %indvars.iv
  %.0.i5.i = select i1 %.not.i4.i, ptr %i.hx, ptr @_hb_NullPool, !prof !82
  %i.hy = call noundef zeroext i1 @_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE12encode_subrsERKNS_19parsed_cs_str_vec_tERKNS_12subr_remap_tEjR11hb_vector_tISJ_IhLb0EELb0EE(ptr noundef nonnull align 8 dereferenceable(272) %4, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i113, ptr noundef nonnull align 8 dereferenceable(68) %.0.i5.i, i32 noundef %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %.0.i110)
  br i1 %i.hy, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.ap

_ZNK14hb_inc_bimap_t3hasEj.exit.thread:           ; preds = %.lr.ph.i.i.i106, %bb.ak, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit, %_ZNK14hb_inc_bimap_t3hasEj.exit, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hz = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.ia = zext i32 %i.hz to i64
  %.not70.not = icmp samesign ult i64 %indvars.iv.next, %i.ia
  br i1 %.not70.not, label %bb.ai, label %.critedge74, !llvm.loop !525

bb.ap:                                            ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit111
  call void @_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.bh

.critedge74:                                      ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, %.preheader
  call void @_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge74, %bb.ad
  %i.ib = load i8, ptr %i.bw, align 2, !tbaa !146, !range !126, !noundef !127
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2OT16cff1_subset_plan20plan_subset_encodingERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull %2)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.id = load i32, ptr %i.bp, align 4, !tbaa !116
  %.not159 = icmp eq i32 %i.id, -1
  br i1 %.not159, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !134 ; 3 uses
  %i.ih = load i32, ptr %i.ie, align 8, !tbaa !291
  %.not.i114 = icmp slt i32 %i.ig, %i.ih
  br i1 %.not.i114, label %.critedge.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ii = add i32 %i.ig, 1
  %i.ij = call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i32 noundef %i.ii, i1 noundef zeroext false)
  br i1 %i.ij, label %..critedge_crit_edge.i, label %bb.av, !prof !82

..critedge_crit_edge.i:                           ; preds = %bb.au
  %.pre.i = load i32, ptr %i.if, align 4, !tbaa !134
  br label %.critedge.i

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.at
  %i.ik = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.ig, %bb.at ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !135
  %i.in = add i32 %i.ik, 1
  store i32 %i.in, ptr %i.if, align 4, !tbaa !134
  %i.io = zext i32 %i.ik to i64
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.im, i64 %i.io ; 2 uses
  store ptr @_hb_NullPool, ptr %i.ip, align 8, !tbaa !552
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store <4 x i32> <i32 0, i32 0, i32 0, i32 -1>, ptr %.sroa.4140.0..sroa_idx, align 8, !tbaa !116
  br label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

bb.aw:                                            ; preds = %bb.as
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 2 uses
  %.val = load i32, ptr %i.iq, align 4, !tbaa !292 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %.val75 = load ptr, ptr %i.ir, align 8, !tbaa !553 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.val, 0
  br i1 %.not11.i.i.i, label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %bb.aw
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !114, !noalias !554 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.it, null
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 220
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit, label %.lr.ph.split.split.i.preheader.i.i

.lr.ph.split.split.i.preheader.i.i:               ; preds = %.lr.ph.i.i.i118
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !115, !noalias !554
  %i.ix = ptrtoint ptr %.val75 to i64
  br label %.lr.ph.split.split.i.i.i

.lr.ph.split.split.i.i.i:                         ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff1_font_dict_values_tEERS3_EppEv.exit.i.i.i, %.lr.ph.split.split.i.preheader.i.i
  %.sroa.7.sroa.0.0 = phi i32 [ %.val, %.lr.ph.split.split.i.preheader.i.i ], [ %i.jy, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff1_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0133.0 = phi ptr [ %.val75, %.lr.ph.split.split.i.preheader.i.i ], [ %i.jz, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff1_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 3 uses
  %i.iy = ptrtoint ptr %.sroa.0133.0 to i64
  %i.iz = sub i64 %i.iy, %i.ix
  %i.ja = sdiv exact i64 %i.iz, 40
  %i.jb = trunc i64 %i.ja to i32                  ; 3 uses
  %i.jc = mul i32 %i.jb, 506952113
  %i.jd = and i32 %i.jc, 1073741823
  %i.je = urem i32 %i.jd, %i.iw                   ; 2 uses
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [12 x i8], ptr %i.it, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !noalias !554 ; 2 uses
  %i.jj = and i32 %i.ji, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff1_font_dict_values_tEERS3_EppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split.split.i.i.i
  %i.jk = load i32, ptr %i.iu, align 4, !noalias !554
  %i.jl = load i32, ptr %i.jg, align 4, !tbaa !116, !noalias !554
  %i.jm = icmp eq i32 %i.jl, %i.jb
  br i1 %i.jm, label %"_ZNK4$_22clIRZN2OT16cff1_subset_plan6createERKNS1_4cff120accelerator_subset_tEP16hb_subset_plan_tEUlRKN3CFF23cff1_font_dict_values_tEE_SC_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSG_OSH_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.jn = load i32, ptr %i.jt, align 4, !tbaa !116, !noalias !554
  %i.jo = icmp eq i32 %i.jn, %i.jb
  br i1 %i.jo, label %"_ZNK4$_22clIRZN2OT16cff1_subset_plan6createERKNS1_4cff120accelerator_subset_tEP16hb_subset_plan_tEUlRKN3CFF23cff1_font_dict_values_tEE_SC_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSG_OSH_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0
end_hunk_1
begin_hunk_2_@_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE6subsetEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !371
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !253  ; 5 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE12resize_exactEi.exit, label %bb.c, !prof !86

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = tail call noundef zeroext i1 @_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i32 noundef %i.g, i1 noundef zeroext true)
  br i1 %i.j, label %bb.d, label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE12resize_exactEi.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !372  ; 3 uses
  %i.m = icmp ugt i32 %i.g, %i.l
  br i1 %i.m, label %bb.e, label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = sub nuw nsw i32 %i.g, %i.l
  %i.o = shl i32 %i.n, 3                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.f, !prof !86

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !373
  %i.r = zext nneg i32 %i.l to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = zext i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.t, i1 false)
  br label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  store i32 %i.g, ptr %i.k, align 4, !tbaa !372
  br label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE12resize_exactEi.exit

_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE12resize_exactEi.exit: ; preds = %bb.b, %bb.c, %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE11grow_vectorIS3_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.u, ptr %i.v, align 8, !tbaa !287
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.054 = load i32, ptr %i.x, align 8, !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !253
  %i.ad = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i32 noundef %i.ac, i1 noundef zeroext true, i1 noundef zeroext true) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !127, !align !322
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !324
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !183
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %i.al = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i32 noundef %i.ak, i1 noundef zeroext true, i1 noundef zeroext true) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.an = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef %.054, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.an, label %.preheader, label %.critedge71, !prof !82

.preheader:                                       ; preds = %bb.g
  %i.ao = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !127, !align !322 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !142
  %.not63151.not = icmp eq i32 %i.aq, 0
  br i1 %.not63151.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.pre = load i32, ptr %i.ar, align 4, !tbaa !289
  br label %bb.i

bb.h:                                             ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !127, !align !322 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %i.av = load i32, ptr %i.au, align 8, !tbaa !142
  %i.aw = zext i32 %i.av to i64
  %.not63 = icmp samesign ult i64 %indvars.iv.next, %i.aw
  br i1 %.not63, label %bb.i, label %.critedge, !llvm.loop !615

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.ax = phi i32 [ %.pre, %.lr.ph ], [ %i.bo, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 7 uses
  %i.ay = phi ptr [ %i.ao, %.lr.ph ], [ %i.at, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 284
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !120
  %i.bb = zext i32 %i.ba to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %indvars.iv
  %.0.i = select i1 %.not.i, ptr %i.be, ptr @_hb_NullPool, !prof !82
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !326
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !183
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32
  %i.bk = zext i32 %i.ax to i64
  %.not.i74 = icmp samesign ult i64 %indvars.iv, %i.bk
  br i1 %.not.i74, label %bb.k, label %bb.j, !prof !82

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit

bb.k:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !374
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv
  br label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit

_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit: ; preds = %bb.j, %bb.k
  %.0.i75 = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.bm, %bb.k ]
  %i.bn = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %.0.i75, i32 noundef %i.bj, i1 noundef zeroext true, i1 noundef zeroext false) ; 0 uses
  %i.bo = load i32, ptr %i.ar, align 4, !tbaa !289 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %.not.i76 = icmp samesign ult i64 %indvars.iv, %i.bp
  br i1 %.not.i76, label %bb.m, label %bb.l, !prof !82

bb.l:                                             ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit78

bb.m:                                             ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit
  %i.bq = load ptr, ptr %i.as, align 8, !tbaa !374
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv
  br label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit78

_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit78: ; preds = %bb.l, %bb.m
  %.0.i77 = phi ptr [ @_hb_CrapPool, %bb.l ], [ %i.br, %bb.m ]
  %i.bs = load i32, ptr %.0.i77, align 8, !tbaa !375
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %.critedge71, label %bb.h

.critedge:                                        ; preds = %bb.h, %.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ae, ptr %i.bu, align 8, !tbaa !287
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE12resize_exactEi.exit
  %.sink = phi ptr [ %i.am, %.critedge ], [ %i.w, %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE12resize_exactEi.exit ]
  %i.bv = phi ptr [ %i.ae, %.critedge ], [ %i.u, %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EE12resize_exactEi.exit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sink, ptr %i.bw, align 8, !tbaa !288
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !376
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %.critedge71, label %bb.o, !prof !86

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !377
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.critedge71, label %bb.p, !prof !86

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !375
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.critedge71, label %bb.q, !prof !86

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ci = load i32, ptr %i.bv, align 8, !tbaa !375
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.critedge71, label %bb.r, !prof !86

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !378
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.critedge71, label %bb.s, !prof !86

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !371 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 200
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !256 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 196
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !257 ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %.idx = shl nuw nsw i64 %i.cu, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx
  %.not64153 = icmp eq i32 %i.ct, 0
  br i1 %.not64153, label %.critedge73, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4128
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4168 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 3 uses
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4200
  %.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4224
  %.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4248
  %.ptr.4.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4272
  %.ptr.5.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %.ptr.6.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4320
  %.ptr.7.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4344
  %.ptr.8.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4368
  %.ptr.9.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4392
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4448
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4136
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4144
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4148
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4153
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 4154
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 4160
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4164
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4416
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 4424
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4440
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 4472 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 4464
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 4465 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4468
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4480
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 4152 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph155, %.thread
  %.0154 = phi ptr [ %i.cr, %.lr.ph155 ], [ %i.nw, %.thread ] ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %.0154, align 4, !tbaa !116 ; 19 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0154, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !116 ; 6 uses
  %i.et = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !127, !align !322
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !323
  %i.ew = call { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %i.ev, i32 noundef %.sroa.4.0.copyload) ; 2 uses
  %i.ex = extractvalue { ptr, i64 } %i.ew, 0      ; 2 uses
  %i.ey = extractvalue { ptr, i64 } %i.ew, 1      ; 3 uses
  %i.ez = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !127, !align !322
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 136
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !140 ; 5 uses
  %i.fc = icmp eq ptr %i.fb, @_hb_NullPool
  br i1 %i.fc, label %_ZNK3CFF8FDSelect6get_fdEj.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !180
  switch i8 %i.fd, label %_ZNK3CFF8FDSelect6get_fdEj.exit [
    i8 0, label %bb.v
    i8 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.ff = zext i32 %.sroa.4.0.copyload to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !180
  br label %_ZNK3CFF8FDSelect6get_fdEj.exit

bb.w:                                             ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 3 uses
  %i.fj = load i16, ptr %i.fi, align 1, !tbaa !183
  %.not.i.not.i.i = icmp eq i16 %i.fj, 0
  br i1 %.not.i.not.i.i, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i, label %bb.x, !prof !86

bb.x:                                             ; preds = %bb.w
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 3
  %.sroa.0.0.copyload.i.pre.i.i = load i16, ptr %i.fi, align 1, !tbaa !97
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.copyload.i.i.i = phi i16 [ %.sroa.0.0.copyload.i.pre.i.i, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.fk, %bb.x ], [ @_hb_NullPool, %bb.w ]
  %i.fl = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i) ; 3 uses
  %.not3.i.i.i.i = icmp ugt i16 %i.fl, 1
  br i1 %.not3.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add nsw i32 %i.fm, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %.lr.ph.preheader.i.i.i.i
  %.0205.i.i.i.i = phi i32 [ %.2.i.i.i.i, %bb.z ], [ %i.fn, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0214.i.i.i.i = phi i32 [ %.223.i.i.i.i, %bb.z ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.fo = add i32 %.0214.i.i.i.i, %.0205.i.i.i.i
  %i.fp = lshr i32 %i.fo, 1                       ; 3 uses
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = mul nuw nsw i64 %i.fq, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.fr ; 3 uses
  %i.ft = load i16, ptr %i.fs, align 1, !tbaa !183
  %i.fu = call noundef i16 @llvm.bswap.i16(i16 %i.ft)
  %i.fv = zext i16 %i.fu to i32
  %i.fw = icmp ult i32 %.sroa.4.0.copyload, %i.fv
  br i1 %i.fw, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  %i.fy = load i16, ptr %i.fx, align 1, !tbaa !183
  %i.fz = call noundef i16 @llvm.bswap.i16(i16 %i.fy)
  %i.ga = zext i16 %i.fz to i32
  %.not2.i.i.i.i = icmp ult i32 %.sroa.4.0.copyload, %i.ga
  br i1 %.not2.i.i.i.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i, label %bb.y

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gb = add nsw i32 %i.fp, -1
  br label %bb.z

bb.y:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i
  %i.gc = add nuw nsw i32 %i.fp, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i
  %.223.i.i.i.i = phi i32 [ %i.gc, %bb.y ], [ %.0214.i.i.i.i, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i = phi i32 [ %.0205.i.i.i.i, %bb.y ], [ %i.gb, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %bb.z, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i
  %.not.i4.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i4.not.i.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i, label %bb.aa, !prof !86

bb.aa:                                            ; preds = %.loopexit.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.gd = zext i16 %i.fl to i64
  %i.ge = getelementptr [3 x i8], ptr %i.fi, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -1
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i: ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i, %bb.aa, %.loopexit.i.i
  %.pn.i.i = phi ptr [ @_hb_NullPool, %.loopexit.i.i ], [ %i.gf, %bb.aa ], [ %i.fs, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !180
  br label %_ZNK3CFF8FDSelect6get_fdEj.exit

_ZNK3CFF8FDSelect6get_fdEj.exit:                  ; preds = %bb.t, %bb.u, %bb.v, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i
  %.0.shrunk.i = phi i8 [ %i.gh, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i ], [ 0, %bb.t ], [ %i.fh, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.0.i79 = zext i8 %.0.shrunk.i to i32           ; 6 uses
  %i.gi = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !127, !align !322 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 144
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !142
  %.not65 = icmp ugt i32 %i.gk, %.0.i79
  br i1 %.not65, label %bb.ab, label %.critedge71, !prof !82

bb.ab:                                            ; preds = %_ZNK3CFF8FDSelect6get_fdEj.exit
  br i1 %.not, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gl = load i32, ptr %i.cw, align 4, !tbaa !372 ; 2 uses
  %.not145 = icmp eq i32 %i.gl, 0
  %i.gm = load i32, ptr %i.cx, align 4, !tbaa !379
  %.not.i84 = icmp ult i32 %.sroa.4.0.copyload, %i.gm
  %i.gn = load ptr, ptr %i.cy, align 8
  %i.go = zext i32 %.sroa.4.0.copyload to i64
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %i.gn, i64 %i.go
  %.0.i85 = select i1 %.not.i84, ptr %i.gp, ptr @_hb_NullPool, !prof !82 ; 5 uses
  br i1 %.not145, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i82 = icmp ult i32 %.sroa.0.0.copyload, %i.gl
  br i1 %.not.i82, label %bb.ae, label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EEixEi.exit, !prof !82

bb.ae:                                            ; preds = %bb.ad
  %i.gq = load ptr, ptr %i.cz, align 8, !tbaa !373
  %i.gr = zext i32 %.sroa.0.0.copyload to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gr
  br label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EEixEi.exit

_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EEixEi.exit: ; preds = %bb.ad, %bb.ae
  %.0.i83 = phi ptr [ %i.gs, %bb.ae ], [ @_hb_CrapPool, %bb.ad ]
  store ptr %.0.i85, ptr %.0.i83, align 8, !tbaa !380
  br label %.thread

bb.af:                                            ; preds = %bb.ac
  %i.gt = load i32, ptr %i.da, align 4, !tbaa !379
  %.not.i86 = icmp ult i32 %.sroa.0.0.copyload, %i.gt
  br i1 %.not.i86, label %bb.ah, label %bb.ag, !prof !82

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit

bb.ah:                                            ; preds = %bb.af
  %i.gu = load ptr, ptr %i.db, align 8, !tbaa !381
  %i.gv = zext i32 %.sroa.0.0.copyload to i64
  %i.gw = getelementptr inbounds nuw [40 x i8], ptr %i.gu, i64 %i.gv
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit: ; preds = %bb.ag, %bb.ah
  %.0.i87 = phi ptr [ @_hb_CrapPool, %bb.ag ], [ %i.gw, %bb.ah ] ; 5 uses
  %i.gx = load i32, ptr %.0.i85, align 8, !tbaa !385
  store i32 %i.gx, ptr %.0.i87, align 8, !tbaa !385
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i87, i64 8 ; 4 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !386 ; 2 uses
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %bb.ai, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5resetEv.exit.i.i.i, !prof !86

bb.ai:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit
  %i.hb = xor i32 %i.gz, -1
  store i32 %i.hb, ptr %i.gy, align 8, !tbaa !386
  br label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5resetEv.exit.i.i.i

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5resetEv.exit.i.i.i: ; preds = %bb.ai, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i87, i64 12 ; 4 uses
  store i32 0, ptr %i.hc, align 4, !tbaa !387
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i85, i64 12 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !387
  %i.hf = call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i32 noundef %i.he, i1 noundef zeroext true) ; 0 uses
  %i.hg = load i32, ptr %i.gy, align 8, !tbaa !386
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %_ZN3CFF15parsed_cs_str_taSERKS0_.exit, label %bb.aj, !prof !86

bb.aj:                                            ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5resetEv.exit.i.i.i
  store i32 0, ptr %i.hc, align 4, !tbaa !387
  %i.hi = load i32, ptr %i.hd, align 4, !tbaa !387 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i32 %i.hi to i64
  %i.hj = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i, 4
  %i.hk = and i64 %i.hj, 4294967280               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i, label %bb.ak, !prof !86

bb.ak:                                            ; preds = %bb.aj
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i85, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !388
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i87, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !388
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ho, ptr readonly align 1 %i.hm, i64 %i.hk, i1 false), !alias.scope !622
  %.pre.i.i.i = load i32, ptr %i.hc, align 4, !tbaa !387
  br label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.hp = phi i32 [ 0, %bb.aj ], [ %.pre.i.i.i, %bb.ak ]
  %i.hq = add i32 %i.hp, %i.hi
  store i32 %i.hq, ptr %i.hc, align 4, !tbaa !387
  br label %_ZN3CFF15parsed_cs_str_taSERKS0_.exit

_ZN3CFF15parsed_cs_str_taSERKS0_.exit:            ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5resetEv.exit.i.i.i, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i87, i64 24
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i85, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false)
  br label %.thread

bb.al:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gi, i64 112
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !324 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gi, i64 284
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !120
  %.not.i.i = icmp ugt i32 %i.hw, %.0.i79
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gi, i64 288
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = zext i8 %.0.shrunk.i to i64             ; 5 uses
  %i.ia = getelementptr inbounds nuw [40 x i8], ptr %i.hy, i64 %i.hz
  %.0.i.i = select i1 %.not.i.i, ptr %i.ia, ptr @_hb_NullPool, !prof !82
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !326 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4108) %i.dc, i8 0, i64 4108, i1 false)
  store i8 0, ptr %i.es, align 8
  store ptr %i.ex, ptr %1, align 8
  store i64 %i.ey, ptr %.sroa.5.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.gep, align 4, !tbaa !328
  store i8 0, ptr %i.de, align 8, !tbaa !330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.2.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.3.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.4.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.5.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.6.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.7.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.8.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.9.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.df, i8 0, i64 20, i1 false)
  %.sroa.2.12.insert.mask.i.i = and i64 %i.ey, 4294967295
  store ptr %i.ex, ptr %i.dd, align 8
  store i64 %.sroa.2.12.insert.mask.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  store i32 0, ptr %i.dh, align 8, !tbaa !333
  store i32 0, ptr %i.di, align 4, !tbaa !334
  store i8 1, ptr %i.dj, align 1, !tbaa !344
  store i8 0, ptr %i.dk, align 2, !tbaa !345
  store i32 0, ptr %i.dl, align 4, !tbaa !346
  store i32 0, ptr %i.dm, align 8, !tbaa !347
  store i32 0, ptr %i.dn, align 4, !tbaa !348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  store ptr %i.hu, ptr %i.dp, align 8, !tbaa !349
  %.not.i.i.i.i88 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i88, label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i: ; preds = %bb.al
  %i.id = load i16, ptr %i.hu, align 1, !tbaa !183
  %i.ie = call noundef i16 @llvm.bswap.i16(i16 %i.id) ; 2 uses
  %i.if = icmp ult i16 %i.ie, 1240
  br i1 %i.if, label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i
  %i.ig = icmp ult i16 %i.ie, -31636
  %..i.i.i = select i1 %i.ig, i32 1131, i32 32768
  br label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i

_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i: ; preds = %bb.am, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i, %bb.al
  %.sink.i.i.i = phi i32 [ %..i.i.i, %bb.am ], [ 107, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i ], [ 107, %bb.al ]
  store i32 %.sink.i.i.i, ptr %i.do, align 8, !tbaa !350
  store ptr %i.ic, ptr %i.dq, align 8, !tbaa !349
  %.not.i.i5.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i5.i.i, label %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i: ; preds = %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i
  %i.ih = load i16, ptr %i.ic, align 1, !tbaa !183
  %i.ii = call noundef i16 @llvm.bswap.i16(i16 %i.ih) ; 2 uses
  %i.ij = icmp ult i16 %i.ii, 1240
  br i1 %i.ij, label %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit, label %bb.an

bb.an:                                            ; preds = %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i
  %i.ik = icmp ult i16 %i.ii, -31636
  %..i7.i.i = select i1 %i.ik, i32 1131, i32 32768
  br label %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit

_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit: ; preds = %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i, %bb.an
  %.sink.i8.i.i = phi i32 [ %..i7.i.i, %bb.an ], [ 107, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i ], [ 107, %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i ]
  store i32 %.sink.i8.i.i, ptr %i.dr, align 8, !tbaa !350
  store double 0.000000e+00, ptr %i.ds, align 8, !tbaa !351
  store i8 0, ptr %i.dt, align 8, !tbaa !353
  store i8 0, ptr %i.du, align 1, !tbaa !354
  store i32 0, ptr %i.dv, align 4, !tbaa !355
  store i8 0, ptr %i.dw, align 8, !tbaa !356
  %i.il = load i32, ptr %i.da, align 4, !tbaa !379
  %.not.i89 = icmp ult i32 %.sroa.0.0.copyload, %i.il
  br i1 %.not.i89, label %bb.ap, label %bb.ao, !prof !82

bb.ao:                                            ; preds = %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit91

bb.ap:                                            ; preds = %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit
  %i.im = load ptr, ptr %i.db, align 8, !tbaa !381
  %i.in = zext i32 %.sroa.0.0.copyload to i64
  %i.io = getelementptr inbounds nuw [40 x i8], ptr %i.im, i64 %i.in
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit91

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit91: ; preds = %bb.ao, %bb.ap
  %.0.i90 = phi ptr [ @_hb_CrapPool, %bb.ao ], [ %i.io, %bb.ap ]
  %.sroa.5.8.extract.trunc = trunc i64 %i.ey to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.i90, i64 8
  %i.iq = call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i32 noundef %.sroa.5.8.extract.trunc, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.ir = load i32, ptr %i.da, align 4, !tbaa !379
  %.not.i92 = icmp ult i32 %.sroa.0.0.copyload, %i.ir
  br i1 %.not.i92, label %bb.ar, label %bb.aq, !prof !82

bb.aq:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit94

bb.ar:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit91
  %i.is = load ptr, ptr %i.db, align 8, !tbaa !381
  %i.it = zext i32 %.sroa.0.0.copyload to i64
  %i.iu = getelementptr inbounds nuw [40 x i8], ptr %i.is, i64 %i.it
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit94

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit94: ; preds = %bb.aq, %bb.ar
  %.0.i93 = phi ptr [ @_hb_CrapPool, %bb.aq ], [ %i.iu, %bb.ar ] ; 2 uses
  %i.iv = load i32, ptr %i.dy, align 4, !tbaa !289
  %.not.i95 = icmp ugt i32 %i.iv, %.0.i79
  br i1 %.not.i95, label %bb.at, label %bb.as, !prof !82

bb.as:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit97

bb.at:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit94
  %i.iw = load ptr, ptr %i.dz, align 8, !tbaa !374
end_hunk_2
begin_hunk_3_@_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE10process_opEjRS3_RS4_:bb.a
  br i1 %i.s, label %bb.c, label %bb.d, !prof !86

bb.c:                                             ; preds = %bb.b
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !328
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !401  ; 2 uses
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !86

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.x = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.x, ptr %i.u, align 4, !tbaa !401
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.aa, align 8, !tbaa !330
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.z, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !353, !range !126, !noundef !127
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !364
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i, !prof !314

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !365
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !365
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.al, align 1, !tbaa !354
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 1, ptr %i.am, align 4, !tbaa !355
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, %bb.h
  store i8 1, ptr %i.ac, align 8, !tbaa !353
  br label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit

_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit: ; preds = %bb.g, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.an, align 8, !tbaa !362
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4468 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !355
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %_ZN23cff1_cs_opset_flatten_t17flush_args_and_opEjRN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #10
  %i.aq = load ptr, ptr %2, align 8, !tbaa !366, !nonnull !127, !align !322
  store ptr %i.aq, ptr %36, align 8, !tbaa !358
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4472
  call void @_ZN3CFF13str_encoder_t13encode_num_csERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #10
  %.pre333 = load i32, ptr %i.ao, align 4, !tbaa !355
  br label %_ZN23cff1_cs_opset_flatten_t17flush_args_and_opEjRN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit

_ZN23cff1_cs_opset_flatten_t17flush_args_and_opEjRN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit: ; preds = %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit, %bb.i
  %i.as = phi i32 [ 0, %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit ], [ %.pre333, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.at = load ptr, ptr %2, align 8, !tbaa !366, !nonnull !127, !align !322 ; 2 uses
  store ptr %i.at, ptr %16, align 8, !tbaa !358
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !364 ; 2 uses
  %i.ax = icmp ult i32 %i.as, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN23cff1_cs_opset_flatten_t17flush_args_and_opEjRN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit
  %i.ay = load i64, ptr @_hb_NullPool, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = zext i32 %i.as to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i.i, %.lr.ph.i.i
  %i.bb = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %i.be, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i.i ]
  %indvars.iv.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i.i ] ; 3 uses
  %i.bc = zext i32 %i.bb to i64
  %.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.bc
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !82

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.au, align 8, !tbaa !367
  store i64 %i.ay, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i.i
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i.i

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.bd, %bb.l ]
  call void @_ZN3CFF13str_encoder_t13encode_num_csERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.be = load i32, ptr %i.av, align 4, !tbaa !364 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next.i.i, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.loopexit.i, !llvm.loop !7

_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.loopexit.i: ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i.i
  %.pre.i190 = load ptr, ptr %2, align 8, !tbaa !366
  br label %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.i

_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.i: ; preds = %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.loopexit.i, %_ZN23cff1_cs_opset_flatten_t17flush_args_and_opEjRN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit
  %i.bh = phi ptr [ %.pre.i190, %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.loopexit.i ], [ %i.at, %_ZN23cff1_cs_opset_flatten_t17flush_args_and_opEjRN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit ] ; 4 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !355
  store i32 0, ptr %i.av, align 4, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 14, ptr %i.n, align 1, !tbaa !97
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !68 ; 3 uses
  %i.bk = load i32, ptr %i.bh, align 8, !tbaa !300
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %bb.n, !prof !82

bb.m:                                             ; preds = %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !96
  %i.bo = add nsw i32 %i.bj, 1
  store i32 %i.bo, ptr %i.bi, align 4, !tbaa !68
  %i.bp = zext i32 %i.bj to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  store i8 14, ptr %i.bq, align 1, !tbaa !97
  br label %_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE17flush_args_and_opEjRS3_RS4_.exit

bb.n:                                             ; preds = %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.i
  %i.br = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.n) ; 0 uses
  br label %_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE17flush_args_and_opEjRS3_RS4_.exit

_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE17flush_args_and_opEjRS3_RS4_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.o:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !328 ; 4 uses
  %i.bv = add i32 %i.bu, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !368 ; 3 uses
  %.not = icmp ugt i32 %i.bv, %i.bx
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.p, !prof !86

bb.p:                                             ; preds = %bb.o
  %.not.i.i128 = icmp ult i32 %i.bu, %i.bx
  br i1 %.not.i.i128, label %bb.r, label %bb.q, !prof !82

bb.q:                                             ; preds = %bb.p
  %i.by = add i32 %i.bx, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %1, align 8, !tbaa !363
  %i.ca = zext i32 %i.bu to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.r, %bb.q
  %i.cc = phi i32 [ %i.by, %bb.q ], [ %i.bu, %bb.r ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.q ], [ %i.cb, %bb.r ]
  %i.cd = load i32, ptr %.0.i.i129, align 1, !tbaa !196
  %i.ce = tail call noundef i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !364 ; 3 uses
  %i.ch = icmp ult i32 %i.cg, 513
  br i1 %i.ch, label %bb.s, label %bb.t, !prof !82

bb.s:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = add nuw nsw i32 %i.cg, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !364
  %i.ck = zext nneg i32 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ck
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.t:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.bs, align 8, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i = phi ptr [ %i.cl, %bb.s ], [ @_hb_CrapPool, %bb.t ]
  %i.cm = sitofp i32 %i.ce to double
  %i.cn = fmul nnan double %i.cm, f0x3EF0000000000000
  store double %i.cn, ptr %.0.i.i.i, align 8, !tbaa !351
  %i.co = add i32 %i.cc, 4
  store i32 %i.co, ptr %i.bt, align 4, !tbaa !328
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.u:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 4432
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i32 noundef 2)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.v:                                             ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4416
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i32 noundef 1)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.w:                                             ; preds = %bb.a, %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !353, !range !126, !noundef !127
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132, label %bb.x

bb.x:                                             ; preds = %bb.w
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132 [
    i32 14, label %bb.y
    i32 1, label %bb.y
    i32 18, label %bb.y
    i32 3, label %bb.y
    i32 4, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !364 ; 2 uses
  %i.cw = trunc i32 %i.cv to i1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !364 ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.da = phi i32 [ %i.cv, %bb.y ], [ %i.cy, %bb.z ]
  %.0.i = phi i1 [ %i.cw, %bb.y ], [ %i.cz, %bb.z ]
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = and i1 %.0.i, %i.db
  br i1 %i.dc, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130, !prof !314

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131: ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !365
  store i64 %i.df, ptr %i.de, align 8, !tbaa !365
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.dg, align 1, !tbaa !354
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 1, ptr %i.dh, align 4, !tbaa !355
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, %bb.aa
  store i8 1, ptr %i.cr, align 8, !tbaa !353
  br label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132

_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132: ; preds = %bb.w, %bb.x, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !364
  %i.dk = lshr i32 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4156 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !346
  %i.dn = add i32 %i.dm, %i.dk
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !346
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4468 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !355
  %.not.i.i133 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i133, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #10
  %i.dq = load ptr, ptr %2, align 8, !tbaa !366, !nonnull !127, !align !322
  store ptr %i.dq, ptr %35, align 8, !tbaa !358
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4472
  call void @_ZN3CFF13str_encoder_t13encode_num_csERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132
  switch i32 %0, label %bb.af [
    i32 1, label %bb.ad
    i32 18, label %bb.ad
    i32 3, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !361, !range !126, !noundef !127
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.do, align 4, !tbaa !355
  store i32 0, ptr %i.di, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac
  call void @_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE17flush_args_and_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(41) %2)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ag:                                            ; preds = %bb.a, %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !353, !range !126, !noundef !127
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit137, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit137 [
    i32 14, label %bb.ai
    i32 21, label %bb.ak
    i32 18, label %bb.ai
    i32 3, label %bb.ai
    i32 23, label %bb.ai
    i32 19, label %bb.ai
    i32 20, label %bb.ai
    i32 22, label %bb.aj
    i32 4, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !364 ; 2 uses
  %i.ea = trunc i32 %i.dz to i1
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah, %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !364 ; 2 uses
  %i.ed = icmp ugt i32 %i.ec, 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !364 ; 2 uses
  %i.eg = icmp ugt i32 %i.ef, 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.eh = phi i32 [ %i.dz, %bb.ai ], [ %i.ec, %bb.aj ], [ %i.ef, %bb.ak ]
  %.0.i134 = phi i1 [ %i.ea, %bb.ai ], [ %i.ed, %bb.aj ], [ %i.eg, %bb.ak ]
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = and i1 %.0.i134, %i.ei
  br i1 %i.ej, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i136, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i135, !prof !314

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i136: ; preds = %bb.al
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !365
  store i64 %i.em, ptr %i.el, align 8, !tbaa !365
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.en, align 1, !tbaa !354
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 1, ptr %i.eo, align 4, !tbaa !355
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i135

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i135: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i136, %bb.al
  store i8 1, ptr %i.dv, align 8, !tbaa !353
  br label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit137

_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit137: ; preds = %bb.ag, %bb.ah, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i135
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !364
  %i.er = lshr i32 %i.eq, 1
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !347
  %i.eu = add i32 %i.et, %i.er
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !347
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 4468 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !355
  %.not.i.i138 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i138, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit137
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #10
  %i.ex = load ptr, ptr %2, align 8, !tbaa !366, !nonnull !127, !align !322
  store ptr %i.ex, ptr %34, align 8, !tbaa !358
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 4472
  call void @_ZN3CFF13str_encoder_t13encode_num_csERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_flatten_tNS_15flatten_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit137
  switch i32 %0, label %bb.aq [
    i32 20, label %bb.ao
    i32 18, label %bb.ao
    i32 3, label %bb.ao
end_hunk_3
begin_hunk_4_@_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_:bb.a
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !97
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread5
  %.0 = phi ptr [ @_hb_CrapPool, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread5 ], [ %i.ab, %.critedge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !364  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !364
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre.i.i = load double, ptr %i.g, align 8, !tbaa !351
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !367
  %i.h = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.h, ptr @_hb_CrapPool, align 16
  %i.i = bitcast i64 %i.h to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.j = phi double [ %.pre.i.i, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = fcmp oge double %i.j, f0xC1E0000000000000
  %i.l = fcmp ole double %i.j, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.i = and i1 %i.k, %i.l
  %i.m = fptosi double %i.j to i32
  br i1 %spec.select.not.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i, label %bb.d, !prof !82

bb.d:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i: ; preds = %bb.d, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i
  %storemerge.i.i.i = phi i32 [ 0, %bb.d ], [ %i.m, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i ]
  %i.n = load i32, ptr %1, align 8, !tbaa !350
  %i.o = add i32 %i.n, %storemerge.i.i.i          ; 5 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.critedge, label %bb.e, !prof !86

bb.e:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.critedge, label %bb.f, !prof !676

bb.f:                                             ; preds = %bb.e
  %i.s = load i16, ptr %i.r, align 1, !tbaa !183
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i = icmp samesign ult i32 %i.o, %i.u
  br i1 %.not.i, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit, label %.critedge, !prof !150

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4172 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !401  ; 3 uses
  %i.x = icmp ugt i32 %i.w, 9
  br i1 %i.x, label %.critedge, label %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit, !prof !86

.critedge:                                        ; preds = %bb.e, %bb.f, %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !368
  %i.aa = add i32 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !328
  br label %bb.i

_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit: ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.ae = add nuw nsw i32 %i.w, 1
  store i32 %i.ae, ptr %i.v, align 4, !tbaa !401
  %i.af = zext nneg i32 %i.w to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !349 ; 3 uses
  %.not.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i3, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEixEj.exit, label %bb.g, !prof !86

bb.g:                                             ; preds = %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !183
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %.not2.i = icmp samesign ult i32 %i.o, %i.ak
  br i1 %.not2.i, label %bb.h, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEixEj.exit, !prof !82

bb.h:                                             ; preds = %bb.g
  %i.al = tail call { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %i.ah, i32 noundef %i.o) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = and i64 %i.an, 4294967295
  br label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEixEj.exit

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEixEj.exit: ; preds = %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit, %bb.g, %bb.h
  %.sroa.0.0.i = phi ptr [ %i.am, %bb.h ], [ null, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit ], [ null, %bb.g ]
  %.sroa.4.0.i = phi i64 [ %i.ao, %bb.h ], [ 0, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit ], [ 0, %bb.g ]
  store ptr %.sroa.0.0.i, ptr %i.ac, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4136
  store i64 %.sroa.4.0.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4144
  store i32 %2, ptr %i.ap, align 8, !tbaa !333
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4148
  store i32 %i.o, ptr %i.aq, align 4, !tbaa !334
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEixEj.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF7opset_tINS_8number_tEE10process_opEjRNS_12interp_env_tIS1_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4128) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.s [
    i32 28, label %bb.b
    i32 247, label %bb.i
    i32 248, label %bb.i
    i32 249, label %bb.i
    i32 250, label %bb.i
    i32 251, label %bb.n
    i32 252, label %bb.n
    i32 253, label %bb.n
    i32 254, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !328  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !368  ; 4 uses
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !328
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !363
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.i, %bb.d ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !97
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = add i32 %i.j, 1                          ; 2 uses
  %.not.i18 = icmp ult i32 %i.n, %i.e
  br i1 %.not.i18, label %bb.f, label %bb.e, !prof !82

bb.e:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.o = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !328
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

bb.f:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !363
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

_ZN3CFF14byte_str_ref_tixEi.exit20:               ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.f ]
  %.0.i19 = phi ptr [ @_hb_NullPool, %bb.e ], [ %i.r, %bb.f ]
  %i.t = load i8, ptr %.0.i19, align 1, !tbaa !97
  %i.u = zext i8 %i.t to i16
  %i.v = or disjoint i16 %i.m, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !364  ; 3 uses
  %i.y = icmp ult i32 %i.x, 513
  br i1 %i.y, label %bb.g, label %bb.h, !prof !82

bb.g:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = add nuw nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !364
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

bb.h:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  store i8 1, ptr %i.a, align 8, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ @_hb_CrapPool, %bb.h ]
  %i.ad = sitofp i16 %i.v to double
  store double %i.ad, ptr %.0.i.i, align 8, !tbaa !351
  %i.ae = add i32 %i.s, 2
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !328
  br label %bb.x

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = shl nuw nsw i32 %0, 8
  %i.ah = add nuw nsw i32 %i.ag, 2304
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !328 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !368 ; 2 uses
  %.not.i21 = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !82

bb.j:                                             ; preds = %bb.i
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !328
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %1, align 8, !tbaa !363
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

_ZN3CFF14byte_str_ref_tixEi.exit23:               ; preds = %bb.j, %bb.k
  %i.aq = phi i32 [ %i.am, %bb.j ], [ %i.aj, %bb.k ]
  %.0.i22 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.ap, %bb.k ]
  %i.ar = load i8, ptr %.0.i22, align 1, !tbaa !97
  %i.as = zext i8 %i.ar to i32
  %.masked = and i32 %i.ah, 65280
  %i.at = or disjoint i32 %.masked, 108
  %sext17 = add nuw nsw i32 %i.at, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !364 ; 3 uses
  %i.aw = icmp ult i32 %i.av, 513
  br i1 %i.aw, label %bb.l, label %bb.m, !prof !82

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = add nuw nsw i32 %i.av, 1
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !364
  %i.az = zext nneg i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.az
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  store i8 1, ptr %i.af, align 8, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25: ; preds = %bb.l, %bb.m
  %.0.i.i24 = phi ptr [ %i.ba, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.bb = uitofp nneg i32 %sext17 to double
  store double %i.bb, ptr %.0.i.i24, align 8, !tbaa !351
  %i.bc = add i32 %i.aq, 1
  store i32 %i.bc, ptr %i.ai, align 4, !tbaa !328
  br label %bb.x

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = shl nuw nsw i32 %0, 16
  %sext = add nsw i32 %i.be, -16449536
  %i.bf = lshr exact i32 %sext, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !328 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !368 ; 2 uses
  %.not.i26 = icmp ult i32 %i.bh, %i.bj
  br i1 %.not.i26, label %bb.p, label %bb.o, !prof !82

bb.o:                                             ; preds = %bb.n
  %i.bk = add i32 %i.bj, 1                        ; 2 uses
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !328
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

bb.p:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %1, align 8, !tbaa !363
  %i.bm = zext i32 %i.bh to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

_ZN3CFF14byte_str_ref_tixEi.exit28:               ; preds = %bb.o, %bb.p
  %i.bo = phi i32 [ %i.bk, %bb.o ], [ %i.bh, %bb.p ]
  %.0.i27 = phi ptr [ @_hb_NullPool, %bb.o ], [ %i.bn, %bb.p ]
  %i.bp = load i8, ptr %.0.i27, align 1, !tbaa !97
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bf, %i.bq
  %i.bs = sub nuw nsw i32 -108, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !364 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 513
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !82

bb.q:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = add nuw nsw i32 %i.bu, 1
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !364
  %i.by = zext nneg i32 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

bb.r:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  store i8 1, ptr %i.bd, align 8, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30: ; preds = %bb.q, %bb.r
  %.0.i.i29 = phi ptr [ %i.bz, %bb.q ], [ @_hb_CrapPool, %bb.r ]
  %i.ca = sitofp i32 %i.bs to double
  store double %i.ca, ptr %.0.i.i29, align 8, !tbaa !351
  %i.cb = add i32 %i.bo, 1
  store i32 %i.cb, ptr %i.bg, align 4, !tbaa !328
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.cc = add i32 %0, -32
  %i.cd = icmp ult i32 %i.cc, 215
  br i1 %i.cd, label %bb.t, label %bb.w, !prof !82

bb.t:                                             ; preds = %bb.s
  %i.ce = add nsw i32 %0, -139
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !364 ; 3 uses
  %i.ch = icmp ult i32 %i.cg, 513
  br i1 %i.ch, label %bb.u, label %bb.v, !prof !82

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = add nuw nsw i32 %i.cg, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !364
  %i.ck = zext nneg i32 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ck
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

bb.v:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.cm, align 8, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32: ; preds = %bb.u, %bb.v
  %.0.i.i31 = phi ptr [ %i.cl, %bb.u ], [ @_hb_CrapPool, %bb.v ]
  %i.cn = sitofp i32 %i.ce to double
  store double %i.cn, ptr %.0.i.i31, align 8, !tbaa !351
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.co, align 4, !tbaa !364
  br label %bb.x

bb.x:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32, %bb.w, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23cff1_cs_opset_flatten_t14flush_hintmaskEjRN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"struct.CFF::str_encoder_t", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4468 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !355
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.d = load ptr, ptr %2, align 8, !tbaa !366, !nonnull !127, !align !322
  store ptr %i.d, ptr %3, align 8, !tbaa !358
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4472
  call void @_ZN3CFF13str_encoder_t13encode_num_csERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i32 %0, label %_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE14flush_hintmaskEjRS3_RS4_.exit [
    i32 1, label %bb.d
    i32 18, label %bb.d
    i32 3, label %bb.d
    i32 23, label %bb.d
    i32 19, label %bb.d
    i32 20, label %bb.d
    i32 256, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !361, !range !126, !noundef !127
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE14flush_hintmaskEjRS3_RS4_.exit.thread, label %_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE14flush_hintmaskEjRS3_RS4_.exit

_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE14flush_hintmaskEjRS3_RS4_.exit.thread: ; preds = %bb.d
  store i32 0, ptr %i.b, align 4, !tbaa !355
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !364
  br label %.loopexit

_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE14flush_hintmaskEjRS3_RS4_.exit: ; preds = %bb.c, %bb.d
  call void @_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE17flush_args_and_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(41) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !361, !range !126
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE14flush_hintmaskEjRS3_RS4_.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !366, !nonnull !127, !align !322 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4164 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !348
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN3CFF13str_encoder_t11encode_byteEh.exit
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %_ZN3CFF13str_encoder_t11encode_byteEh.exit ] ; 2 uses
  %i.r = load i32, ptr %i.n, align 4, !tbaa !328
  %i.s = add i32 %i.r, %.09                       ; 2 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !368  ; 2 uses
  %.not.i = icmp ult i32 %i.s, %i.t
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !82

bb.g:                                             ; preds = %bb.f
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.n, align 4, !tbaa !328
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %1, align 8, !tbaa !363
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ @_hb_NullPool, %bb.g ], [ %i.x, %bb.h ]
  %i.y = load i8, ptr %.0.i, align 1, !tbaa !97   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.y, ptr %i.a, align 1, !tbaa !97
  %i.z = load i32, ptr %i.p, align 4, !tbaa !68   ; 3 uses
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !300
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j, !prof !82

bb.i:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !96
  %i.ad = add nsw i32 %i.z, 1
  store i32 %i.ad, ptr %i.p, align 4, !tbaa !68
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  store i8 %i.y, ptr %i.af, align 1, !tbaa !97
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit

bb.j:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.ag = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit

_ZN3CFF13str_encoder_t11encode_byteEh.exit:       ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = add nuw i32 %.09, 1                     ; 2 uses
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !348
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !677

.loopexit:                                        ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit, %_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE14flush_hintmaskEjRS3_RS4_.exit.thread, %bb.e, %_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE14flush_hintmaskEjRS3_RS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EEC2ERS9_PK16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !371
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !142  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i32 1, ptr %i.b monotonic, align 8
  store atomic i8 1, ptr %i.e monotonic, align 4
  store atomic ptr null, ptr %i.f monotonic, align 8
  store i8 1, ptr %i.g, align 8, !tbaa !414
  store i32 0, ptr %i.h, align 4, !tbaa !415
  store atomic i32 0, ptr %i.i monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.j, i8 0, i64 33, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = icmp slt i32 %i.d, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.l, label %_ZN3CFF15subr_closures_tC2Ej.exit, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN11hb_vector_tI8hb_set_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i32 noundef %i.d, i1 noundef zeroext true)
  br i1 %i.m, label %bb.c, label %_ZN3CFF15subr_closures_tC2Ej.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !389  ; 5 uses
  %i.p = icmp ugt i32 %i.d, %i.o
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.r = phi i32 [ %i.o, %bb.d ], [ %i.ac, %bb.e ]
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !390
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.s, i64 %i.t ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store atomic i32 1, ptr %i.u monotonic, align 4
  store atomic i8 1, ptr %i.v monotonic, align 4
  store atomic ptr null, ptr %i.w monotonic, align 8
  store i8 1, ptr %i.x, align 8, !tbaa !414
  store i32 0, ptr %i.y, align 4, !tbaa !415
  store atomic i32 0, ptr %i.z monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aa, i8 0, i64 33, i1 false)
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !389
  %i.ac = add i32 %i.ab, 1                        ; 3 uses
  store i32 %i.ac, ptr %i.n, align 4, !tbaa !389
  %i.ad = icmp ult i32 %i.ac, %i.d
  br i1 %i.ad, label %bb.e, label %_ZN11hb_vector_tI8hb_set_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i, !llvm.loop !678

bb.f:                                             ; preds = %bb.c
  %i.ae = icmp ult i32 %i.d, %i.o
end_hunk_4
begin_hunk_5_@_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE5allocEjb:bb.a
  br label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread

_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53, label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, !prof !304

_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !405   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !374
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !405
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !386    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !116
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !86

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !730

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 268435455
  br i1 %i.j, label %.critedge, label %bb.e, !prof !86

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !388
  tail call void @hb_free(ptr noundef %i.m) #10
  br label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !388  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 4
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #10 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !86

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !387  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !86

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !388
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !734
  br label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !304

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !386   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !388
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !386
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN27cff1_cs_opset_subr_subset_t10process_opEjRN3CFF20cff1_cs_interp_env_tERNS0_19subr_subset_param_tE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.x [
    i32 11, label %bb.b
    i32 14, label %bb.p
    i32 10, label %bb.u
    i32 29, label %bb.v
    i32 256, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !392    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !387  ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !386
  %.not.i.i.i = icmp slt i32 %i.g, %i.h
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.g, 1
  %i.j = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.i, i1 noundef zeroext false)
  br i1 %i.j, label %..critedge_crit_edge.i.i.i, label %bb.e, !prof !82

..critedge_crit_edge.i.i.i:                       ; preds = %bb.d
  %.pre.i.i.i = load i32, ptr %i.f, align 4, !tbaa !387
  br label %.critedge.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %bb.c
  %i.k = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !388
  %i.n = add i32 %i.k, 1
  store i32 %i.n, ptr %i.f, align 4, !tbaa !387
  %i.o = zext i32 %i.k to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o ; 5 uses
  store ptr null, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 14
  store i16 0, ptr %.sroa.7.0..sroa_idx.i, align 2
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i

_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i: ; preds = %.critedge.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.p, %.critedge.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 11, ptr %i.q, align 8, !tbaa !130
  %i.r = load i32, ptr %i.a, align 8, !tbaa !385  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !328  ; 2 uses
  %i.u = sub i32 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !193
  %storemerge.i.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.w, i32 %i.r)
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i.i, i32 %i.u)
  %i.x = load ptr, ptr %1, align 8, !tbaa !194
  %i.y = zext i32 %i.r to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store ptr %i.z, ptr %.0.i.i.i, align 8, !tbaa !133
  %i.aa = trunc i32 %.sroa.speculated.i.i.i.i.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i8 %i.aa, ptr %i.ab, align 4, !tbaa !131
  store i32 %i.t, ptr %i.a, align 8, !tbaa !385
  %.pre61.a = load ptr, ptr %2, align 8, !tbaa !392 ; 2 uses
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %.pre61.a, i64 24
  %.pre63 = load i8, ptr %.phi.trans.insert62, align 8
  br label %_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit

_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit: ; preds = %bb.b, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i
  %i.ac = phi i8 [ %i.c, %bb.b ], [ %.pre63, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i ]
  %i.ad = phi ptr [ %i.a, %bb.b ], [ %.pre61.a, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = or i8 %i.ac, 1
  store i8 %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !328
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !368 ; 2 uses
  %i.ak = icmp ugt i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit
  %i.al = add nuw i32 %i.aj, 1
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !328
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !401 ; 2 uses
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !86

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.ap = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !401
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.aq
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

bb.i:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.as, align 8, !tbaa !330
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.ar, %bb.h ], [ @_hb_CrapPool, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4144
  %i.av = load i32, ptr %i.au, align 8, !tbaa !333
  switch i32 %i.av, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i [
    i32 0, label %bb.j
    i32 2, label %bb.k
    i32 1, label %bb.l
  ]

bb.j:                                             ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !393
  br label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i

bb.k:                                             ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4148
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !334 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !395 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !379
  %i.be = icmp ult i32 %i.az, %i.bd
  br i1 %i.be, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, !prof !82

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !381
  %i.bh = zext i32 %i.az to i64
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bh
  br label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i

bb.l:                                             ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4148
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !334 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !394 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !379
  %i.bp = icmp ult i32 %i.bk, %i.bo
  br i1 %i.bp, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, !prof !82

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i: ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !381
  %i.bs = zext i32 %i.bk to i64
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.br, i64 %i.bs
  br label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i

_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i: ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i, %bb.j
  %.0.i.i30 = phi ptr [ %i.bt, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i ], [ %i.ax, %bb.j ], [ %i.bi, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i ] ; 4 uses
  %.not.i = icmp eq ptr %.0.i.i30, null
  br i1 %.not.i, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, label %bb.m, !prof !94

_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i: ; preds = %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i, %bb.l, %bb.k, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit
  %i.bu = load i32, ptr %i.ai, align 8, !tbaa !368
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ag, align 4, !tbaa !328
  br label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit

bb.m:                                             ; preds = %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i30, i64 24
  %i.bx = load i8, ptr %i.bw, align 8
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load i32, ptr %i.ai, align 8, !tbaa !368
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i30, i64 8
  %i.cb = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i32 noundef %i.bz, i1 noundef zeroext true) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %.0.i.i30, ptr %2, align 8, !tbaa !392
  br label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit

bb.p:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %2, align 8, !tbaa !392   ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i8, ptr %i.cd, align 8             ; 2 uses
  %i.cf = trunc i8 %i.ce to i1
  br i1 %i.cf, label %_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit43, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !387 ; 3 uses
  %i.cj = load i32, ptr %i.cg, align 8, !tbaa !386
  %.not.i.i.i31 = icmp slt i32 %i.ci, %i.cj
  br i1 %.not.i.i.i31, label %.critedge.i.i.i38, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = add i32 %i.ci, 1
  %i.cl = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i32 noundef %i.ck, i1 noundef zeroext false)
  br i1 %i.cl, label %..critedge_crit_edge.i.i.i36, label %bb.s, !prof !82

..critedge_crit_edge.i.i.i36:                     ; preds = %bb.r
  %.pre.i.i.i37 = load i32, ptr %i.ch, align 4, !tbaa !387
  br label %.critedge.i.i.i38

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i32

.critedge.i.i.i38:                                ; preds = %..critedge_crit_edge.i.i.i36, %bb.q
  %i.cm = phi i32 [ %.pre.i.i.i37, %..critedge_crit_edge.i.i.i36 ], [ %i.ci, %bb.q ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !388
  %i.cp = add i32 %i.cm, 1
  store i32 %i.cp, ptr %i.ch, align 4, !tbaa !387
  %i.cq = zext i32 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cq ; 5 uses
  store ptr null, ptr %i.cr, align 8
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i8 0, ptr %.sroa.5.0..sroa_idx.i40, align 4
  %.sroa.6.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.cr, i64 13
  store i8 0, ptr %.sroa.6.0..sroa_idx.i41, align 1
  %.sroa.7.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.cr, i64 14
  store i16 0, ptr %.sroa.7.0..sroa_idx.i42, align 2
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i32

_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i32: ; preds = %.critedge.i.i.i38, %bb.s
  %.0.i.i.i33 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.cr, %.critedge.i.i.i38 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i33, i64 8
  store i32 14, ptr %i.cs, align 8, !tbaa !130
  %i.ct = load i32, ptr %i.cc, align 8, !tbaa !385 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !328 ; 2 uses
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !193
  %storemerge.i.i.i.i.i34 = tail call i32 @llvm.usub.sat.i32(i32 %i.cy, i32 %i.ct)
  %.sroa.speculated.i.i.i.i.i35 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i.i34, i32 %i.cw)
  %i.cz = load ptr, ptr %1, align 8, !tbaa !194
  %i.da = zext i32 %i.ct to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da
  store ptr %i.db, ptr %.0.i.i.i33, align 8, !tbaa !133
  %i.dc = trunc i32 %.sroa.speculated.i.i.i.i.i35 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i33, i64 12
  store i8 %i.dc, ptr %i.dd, align 4, !tbaa !131
  store i32 %i.cv, ptr %i.cc, align 8, !tbaa !385
  %.pre = load ptr, ptr %2, align 8, !tbaa !392   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre60 = load i8, ptr %.phi.trans.insert, align 8
  br label %_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit43

_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit43: ; preds = %bb.p, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i32
  %i.de = phi i8 [ %i.ce, %bb.p ], [ %.pre60, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i32 ]
  %i.df = phi ptr [ %i.cc, %bb.p ], [ %.pre, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i32 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = or i8 %i.de, 1
  store i8 %i.dh, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !353, !range !126, !noundef !127
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit43
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !364
  %i.dn = trunc i32 %i.dm to i1
  br i1 %i.dn, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i, !prof !314

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i: ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !365
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !365
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.dr, align 1, !tbaa !354
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i, %bb.t
  store i8 1, ptr %i.di, align 8, !tbaa !353
  br label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit

_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit: ; preds = %_ZN3CFF15parsed_cs_str_t6add_opEjRKNS_14byte_str_ref_tE.exit43, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.dt, align 4, !tbaa !355
  store i32 0, ptr %i.ds, align 4, !tbaa !364
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.du, align 8, !tbaa !362
  br label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit

bb.u:                                             ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !397
  tail call void @_ZN27cff1_cs_opset_subr_subset_t17process_call_subrEjN3CFF9cs_type_tERNS0_20cff1_cs_interp_env_tERNS0_19subr_subset_param_tERNS0_14biased_subrs_tINS0_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEP8hb_set_t(i32 noundef 10, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef %i.dx)
  br label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit

bb.v:                                             ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 4416
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !396
  tail call void @_ZN27cff1_cs_opset_subr_subset_t17process_call_subrEjN3CFF9cs_type_tERNS0_20cff1_cs_interp_env_tERNS0_19subr_subset_param_tERNS0_14biased_subrs_tINS0_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEP8hb_set_t(i32 noundef 29, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef %i.ea)
  br label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit

bb.w:                                             ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ec, align 4, !tbaa !355
  store i32 0, ptr %i.eb, align 4, !tbaa !364
  br label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit46

bb.x:                                             ; preds = %bb.a
  tail call void @_ZN3CFF10cs_opset_tINS_8number_tE27cff1_cs_opset_subr_subset_tNS_20cff1_cs_interp_env_tENS_19subr_subset_param_tENS_17path_procs_null_tIS3_S4_EEE10process_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit46

_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit46: ; preds = %bb.w, %bb.x
  %i.ed = load ptr, ptr %2, align 8, !tbaa !392   ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load i8, ptr %i.ee, align 8
  %i.eg = trunc i8 %i.ef to i1
  br i1 %i.eg, label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit, label %bb.y

bb.y:                                             ; preds = %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit46
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 12 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !387 ; 3 uses
  %i.ek = load i32, ptr %i.eh, align 8, !tbaa !386
  %.not.i.i.i47 = icmp slt i32 %i.ej, %i.ek
  br i1 %.not.i.i.i47, label %.critedge.i.i.i54, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = add i32 %i.ej, 1
  %i.em = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i32 noundef %i.el, i1 noundef zeroext false)
  br i1 %i.em, label %..critedge_crit_edge.i.i.i52, label %bb.aa, !prof !82

..critedge_crit_edge.i.i.i52:                     ; preds = %bb.z
  %.pre.i.i.i53 = load i32, ptr %i.ei, align 4, !tbaa !387
  br label %.critedge.i.i.i54

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i48

.critedge.i.i.i54:                                ; preds = %..critedge_crit_edge.i.i.i52, %bb.y
  %i.en = phi i32 [ %.pre.i.i.i53, %..critedge_crit_edge.i.i.i52 ], [ %i.ej, %bb.y ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !388
  %i.eq = add i32 %i.en, 1
  store i32 %i.eq, ptr %i.ei, align 4, !tbaa !387
  %i.er = zext i32 %i.en to i64
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.er ; 5 uses
  store ptr null, ptr %i.es, align 8
  %.sroa.5.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i8 0, ptr %.sroa.5.0..sroa_idx.i56, align 4
  %.sroa.6.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.es, i64 13
  store i8 0, ptr %.sroa.6.0..sroa_idx.i57, align 1
  %.sroa.7.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.es, i64 14
  store i16 0, ptr %.sroa.7.0..sroa_idx.i58, align 2
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i48

_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i48: ; preds = %.critedge.i.i.i54, %bb.aa
  %.0.i.i.i49 = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.es, %.critedge.i.i.i54 ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.i49, i64 8
  store i32 %0, ptr %i.et, align 8, !tbaa !130
  %i.eu = load i32, ptr %i.ed, align 8, !tbaa !385 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !328 ; 2 uses
  %i.ex = sub i32 %i.ew, %i.eu
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !193
  %storemerge.i.i.i.i.i50 = tail call i32 @llvm.usub.sat.i32(i32 %i.ez, i32 %i.eu)
  %.sroa.speculated.i.i.i.i.i51 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i.i50, i32 %i.ex)
  %i.fa = load ptr, ptr %1, align 8, !tbaa !194
  %i.fb = zext i32 %i.eu to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  store ptr %i.fc, ptr %.0.i.i.i49, align 8, !tbaa !133
  %i.fd = trunc i32 %.sroa.speculated.i.i.i.i.i51 to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i49, i64 12
  store i8 %i.fd, ptr %i.fe, align 4, !tbaa !131
  store i32 %i.ew, ptr %i.ed, align 8, !tbaa !385
  br label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit

_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit: ; preds = %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i48, %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit46, %bb.o, %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, %bb.v, %bb.u, %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN27cff1_cs_opset_subr_subset_t17process_call_subrEjN3CFF9cs_type_tERNS0_20cff1_cs_interp_env_tERNS0_19subr_subset_param_tERNS0_14biased_subrs_tINS0_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEP8hb_set_t(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(4481) %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %1)
  %i.a = load ptr, ptr %3, align 8, !tbaa !392    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4148 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !735  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %_ZN3CFF15parsed_cs_str_t11add_call_opEjRKNS_14byte_str_ref_tEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = or i8 %i.e, 16
  store i8 %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !387  ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE3popEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 4, !tbaa !387
  br label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE3popEv.exit.i

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE3popEv.exit.i: ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ 0, %bb.b ], [ %i.k, %bb.c ]    ; 3 uses
  %i.m = trunc i32 %i.c to i16
  %i.n = load i32, ptr %i.h, align 8, !tbaa !386
  %.not.i.i.i = icmp slt i32 %i.l, %i.n
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE3popEv.exit.i
  %i.o = add nuw i32 %i.l, 1
  %i.p = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i32 noundef %i.o, i1 noundef zeroext false)
  br i1 %i.p, label %..critedge_crit_edge.i.i.i, label %bb.e, !prof !82

..critedge_crit_edge.i.i.i:                       ; preds = %bb.d
  %.pre.i.i.i = load i32, ptr %i.i, align 4, !tbaa !387
  br label %.critedge.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE3popEv.exit.i
  %i.q = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.l, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE3popEv.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !388
  %i.t = add i32 %i.q, 1
  store i32 %i.t, ptr %i.i, align 4, !tbaa !387
  %i.u = zext i32 %i.q to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.u ; 5 uses
  store ptr null, ptr %i.v, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 13
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  store i16 %i.m, ptr %.sroa.7.0..sroa_idx.i, align 2
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i

_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i: ; preds = %.critedge.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.v, %.critedge.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %0, ptr %i.w, align 8, !tbaa !130
  %i.x = load i32, ptr %i.a, align 8, !tbaa !385  ; 3 uses
  %i.y = sub i32 %.sroa.5.0.copyload, %i.x
  %storemerge.i.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.4.0.copyload, i32 %i.x)
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i.i, i32 %i.y)
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.z
  store ptr %i.aa, ptr %.0.i.i.i, align 8, !tbaa !133
  %i.ab = trunc i32 %.sroa.speculated.i.i.i.i.i to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !131
  store i32 %.sroa.5.0.copyload, ptr %i.a, align 8, !tbaa !385
  %.pre = load i32, ptr %i.b, align 4, !tbaa !735
  br label %_ZN3CFF15parsed_cs_str_t11add_call_opEjRKNS_14byte_str_ref_tEj.exit

_ZN3CFF15parsed_cs_str_t11add_call_opEjRKNS_14byte_str_ref_tEj.exit: ; preds = %bb.a, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i
  %i.ad = phi i32 [ %i.c, %bb.a ], [ %.pre, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !431, !range !126, !noundef !127
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %_ZN3CFF15parsed_cs_str_t11add_call_opEjRKNS_14byte_str_ref_tEj.exit
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ae, i32 noundef %i.ad)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.g:                                             ; preds = %_ZN3CFF15parsed_cs_str_t11add_call_opEjRKNS_14byte_str_ref_tEj.exit
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ae, i32 noundef %i.ad)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.f, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4144
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !333
  switch i32 %i.aj, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i [
    i32 0, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !393
  br label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i

bb.i:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.am = load i32, ptr %i.b, align 4, !tbaa !334 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !395 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !379
  %i.ar = icmp ult i32 %i.am, %i.aq
  br i1 %i.ar, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, !prof !82

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i: ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !381
  %i.au = zext i32 %i.am to i64
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.au
  br label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i

bb.j:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !334 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !394 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !379
  %i.bb = icmp ult i32 %i.aw, %i.ba
  br i1 %i.bb, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, !prof !82

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i: ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !381
  %i.be = zext i32 %i.aw to i64
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.be
  br label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i

_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i: ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i, %bb.h
  %.0.i.i = phi ptr [ %i.bf, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i ], [ %i.al, %bb.h ], [ %i.av, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i ] ; 5 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, label %bb.k, !prof !94

_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i: ; preds = %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i, %bb.j, %bb.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.bg = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !368
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !328
  br label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit

bb.k:                                             ; preds = %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.bj = load i8, ptr %i.bi, align 8
  %i.bk = trunc i8 %i.bj to i1
  br i1 %i.bk, label %.critedge.i.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !423
  %.not13.i = icmp eq i32 %i.bm, 0
  %i.bn = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !368 ; 2 uses
  br i1 %.not13.i, label %.critedge.i, label %bb.m, !prof !82

bb.m:                                             ; preds = %bb.l
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !328
  br label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit

.critedge.i:                                      ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bq = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i32 noundef %i.bn, i1 noundef zeroext true) ; 0 uses
  br label %.critedge.i.thread

.critedge.i.thread:                               ; preds = %bb.k, %.critedge.i
  store ptr %.0.i.i, ptr %3, align 8, !tbaa !392
  br label %_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit

_ZN3CFF19subr_subset_param_t15set_current_strINS_20cff1_cs_interp_env_tEEEvRT_b.exit: ; preds = %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, %bb.m, %.critedge.i.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE27cff1_cs_opset_subr_subset_tNS_20cff1_cs_interp_env_tENS_19subr_subset_param_tENS_17path_procs_null_tIS3_S4_EEE10process_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bf [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.i
    i32 10, label %bb.o
    i32 29, label %bb.p
    i32 1, label %bb.q
    i32 18, label %bb.q
    i32 3, label %bb.v
    i32 23, label %bb.v
    i32 19, label %bb.ab
    i32 20, label %bb.ab
    i32 21, label %bb.af
    i32 22, label %bb.aj
    i32 4, label %bb.an
    i32 5, label %bb.ar
    i32 6, label %bb.as
    i32 7, label %bb.at
    i32 8, label %bb.au
    i32 24, label %bb.av
    i32 25, label %bb.aw
    i32 26, label %bb.ax
    i32 27, label %bb.ay
    i32 30, label %bb.az
    i32 31, label %bb.ba
    i32 290, label %bb.bb
    i32 291, label %bb.bc
    i32 292, label %bb.bd
    i32 293, label %bb.be
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !328
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !368  ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d, !prof !86

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !328
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !401  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !86

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !401
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.m, align 8, !tbaa !330
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !353, !range !126, !noundef !127
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !364
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i, !prof !314

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.w = load i64, ptr %i.u, align 8, !tbaa !365
  store i64 %i.w, ptr %i.v, align 8, !tbaa !365
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.x, align 1, !tbaa !354
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, %bb.h
  store i8 1, ptr %i.o, align 8, !tbaa !353
  br label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit

_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit: ; preds = %bb.g, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.y, align 8, !tbaa !362
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.aa, align 4, !tbaa !355
  store i32 0, ptr %i.z, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !328 ; 4 uses
  %i.ae = add i32 %i.ad, 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !368 ; 3 uses
  %.not = icmp ugt i32 %i.ae, %i.ag
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.j, !prof !86

bb.j:                                             ; preds = %bb.i
  %.not.i.i128 = icmp ult i32 %i.ad, %i.ag
  br i1 %.not.i.i128, label %bb.l, label %bb.k, !prof !82

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %i.ag, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %1, align 8, !tbaa !363
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.l, %bb.k
  %i.al = phi i32 [ %i.ah, %bb.k ], [ %i.ad, %bb.l ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.k ], [ %i.ak, %bb.l ]
  %i.am = load i32, ptr %.0.i.i129, align 1, !tbaa !196
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !364 ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 513
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !82

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = add nuw nsw i32 %i.ap, 1
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !364
  %i.at = zext nneg i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.n:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.ab, align 8, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.au, %bb.m ], [ @_hb_CrapPool, %bb.n ]
  %i.av = sitofp i32 %i.an to double
  %i.aw = fmul nnan double %i.av, f0x3EF0000000000000
  store double %i.aw, ptr %.0.i.i.i, align 8, !tbaa !351
  %i.ax = add i32 %i.al, 4
  store i32 %i.ax, ptr %i.ac, align 4, !tbaa !328
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4432
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i32 noundef 2)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.p:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4416
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i32 noundef 1)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.q:                                             ; preds = %bb.a, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !353, !range !126, !noundef !127
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132 [
    i32 14, label %bb.s
    i32 1, label %bb.s
    i32 18, label %bb.s
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !364 ; 2 uses
  %i.bf = trunc i32 %i.be to i1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !364 ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bj = phi i32 [ %i.be, %bb.s ], [ %i.bh, %bb.t ]
  %.0.i = phi i1 [ %i.bf, %bb.s ], [ %i.bi, %bb.t ]
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = and i1 %.0.i, %i.bk
  br i1 %i.bl, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130, !prof !314

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !365
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !365
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.bp, align 1, !tbaa !354
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, %bb.u
  store i8 1, ptr %i.ba, align 8, !tbaa !353
  br label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132

_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132: ; preds = %bb.q, %bb.r, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !364
  %i.bs = lshr i32 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4156 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !346
  %i.bv = add i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !346
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.bw, align 4, !tbaa !355
  store i32 0, ptr %i.bq, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.v:                                             ; preds = %bb.a, %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !353, !range !126, !noundef !127
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit136, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit136 [
    i32 14, label %bb.x
    i32 21, label %bb.z
    i32 18, label %bb.x
    i32 3, label %bb.x
    i32 23, label %bb.x
    i32 19, label %bb.x
    i32 20, label %bb.x
    i32 22, label %bb.y
    i32 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !364 ; 2 uses
  %i.cc = trunc i32 %i.cb to i1
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !364 ; 2 uses
  %i.cf = icmp ugt i32 %i.ce, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !364 ; 2 uses
  %i.ci = icmp ugt i32 %i.ch, 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cj = phi i32 [ %i.cb, %bb.x ], [ %i.ce, %bb.y ], [ %i.ch, %bb.z ]
  %.0.i133 = phi i1 [ %i.cc, %bb.x ], [ %i.cf, %bb.y ], [ %i.ci, %bb.z ]
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = and i1 %.0.i133, %i.ck
  br i1 %i.cl, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134, !prof !314

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135: ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !365
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !365
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.cp, align 1, !tbaa !354
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135, %bb.aa
  store i8 1, ptr %i.bx, align 8, !tbaa !353
  br label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit136

_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit136: ; preds = %bb.v, %bb.w, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !364
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !347
  %i.cv = add i32 %i.cu, %i.cs
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !347
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.cw, align 4, !tbaa !355
  store i32 0, ptr %i.cq, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ab:                                            ; preds = %bb.a, %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !353, !range !126, !noundef !127
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !364
  %i.dc = trunc i32 %i.db to i1
  br i1 %i.dc, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138, !prof !314

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139: ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !365
  store i64 %i.df, ptr %i.de, align 8, !tbaa !365
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.dg, align 1, !tbaa !354
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 1, ptr %i.dh, align 4, !tbaa !355
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139, %bb.ac
  store i8 1, ptr %i.cx, align 8, !tbaa !353
  br label %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140

_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140: ; preds = %bb.ab, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4154 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !345, !range !126, !noundef !127
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %._ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit_crit_edge.i, label %bb.ad

._ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit_crit_edge.i: ; preds = %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 4164
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !348
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit.i

bb.ad:                                            ; preds = %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !364
  %i.dn = lshr i32 %i.dm, 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !347
  %i.dq = add i32 %i.dp, %i.dn                    ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !347
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !346
  %i.dt = add i32 %i.dq, 7
end_hunk_5
