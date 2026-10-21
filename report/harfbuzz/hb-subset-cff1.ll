Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff1?download=true
inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN22hb_serialize_context_t4pushIvEEPT_v:bb.a

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

declare hidden noundef zeroext i1 @_Z25hb_serialize_cff_fdselectP22hb_serialize_context_tjRKN3CFF8FDSelectEjjjRK11hb_vector_tINS1_11code_pair_tELb0EE(ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(6), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF7CharsetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
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
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !81
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %.critedge.i.i.i, label %bb.c, !prof !86

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %.critedge.i.i.i, label %bb.d, !prof !86

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.a, align 4, !tbaa !81
  br label %select.unfold

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
  br i1 %i.q, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit, !prof !86

_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  store i8 %2, ptr %0, align 1, !tbaa !97
  switch i8 %2, label %.loopexit [
    i8 0, label %bb.f
    i8 1, label %bb.j
    i8 2, label %bb.n
  ]

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit
  %i.r = add i32 %3, -1                           ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !81
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.g, label %select.unfold, !prof !82

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ugt i32 %i.r, 1073741823
  br i1 %i.v, label %.critedge.i, label %bb.h, !prof !86

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !85   ; 10 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp slt i64 %i.aa, %i.t
  br i1 %i.ab, label %.critedge.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF8Charset0EEEPT_mb.exit, !prof !86

.critedge.i:                                      ; preds = %bb.h, %bb.g
  store i32 4, ptr %i.a, align 4, !tbaa !81
  br label %select.unfold

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF8Charset0EEEPT_mb.exit: ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !85
  %.not76.not = icmp eq ptr %i.x, null
  br i1 %.not76.not, label %select.unfold, label %.preheader, !prof !94

.preheader:                                       ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF8Charset0EEEPT_mb.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !172 ; 2 uses
  %.not130 = icmp eq i32 %i.ae, 0
  br i1 %.not130, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.pre140 = load ptr, ptr %i.af, align 8, !tbaa !173
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph128, %._crit_edge124
  %i.ag = phi i32 [ %i.ae, %.lr.ph128 ], [ %i.bw, %._crit_edge124 ]
  %5 = phi ptr [ %.pre140, %.lr.ph128 ], [ %6, %._crit_edge124 ] ; 2 uses
  %indvars.iv137 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next138, %._crit_edge124 ] ; 2 uses
  %.067126 = phi i32 [ 0, %.lr.ph128 ], [ %.168.lcssa, %._crit_edge124 ] ; 10 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv137 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !175 ; 8 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %iter.check, label %._crit_edge124

iter.check:                                       ; preds = %bb.i
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !176 ; 5 uses
  %i.am = add i32 %.067126, 1
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = add nuw i32 %i.aj, 1                    ; 5 uses
  %min.iters.check = icmp ult i32 %i.aj, 3
  %i.ap = xor i32 %.067126, -1
  %i.aq = icmp ugt i32 %i.aj, %i.ap
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.aq
  br i1 %or.cond, label %.lr.ph123.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check156 = icmp ult i32 %i.aj, 15
  br i1 %min.iters.check156, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i32 %i.ao, 12
  %n.vec = and i32 %i.ao, -16                     ; 5 uses
  %i.as = add i32 %i.al, %n.vec                   ; 2 uses
  %i.at = add i32 %.067126, %n.vec
  %i.au = trunc i32 %i.al to i16
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.av = add i32 %.067126, %index
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %vec.ind)
  %i.az = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %step.add)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <8 x i16> %i.ay, ptr %i.ax, align 1, !tbaa !97
  store <8 x i16> %i.az, ptr %i.ba, align 1, !tbaa !97
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.bb = icmp eq i32 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge124.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph123.preheader, label %vec.epilog.ph, !prof !495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.as, %vec.epilog.iter.check ], [ %i.al, %vector.main.loop.iter.check ]
  %n.vec158 = and i32 %i.ao, -4                   ; 4 uses
  %i.bc = add i32 %i.al, %n.vec158
  %i.bd = add i32 %.067126, %n.vec158
  %i.be = trunc i32 %bc.resume.val to i16
  %broadcast.splatinsert159 = insertelement <4 x i16> poison, i16 %i.be, i64 0
  %broadcast.splat160 = shufflevector <4 x i16> %broadcast.splatinsert159, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction161 = add <4 x i16> %broadcast.splat160, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next164, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind163 = phi <4 x i16> [ %induction161, %vec.epilog.ph ], [ %vec.ind.next165, %vec.epilog.vector.body ] ; 2 uses
  %i.bf = add i32 %.067126, %index162
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.bg
  %i.bi = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %vec.ind163)
  store <4 x i16> %i.bi, ptr %i.bh, align 1, !tbaa !97
  %index.next164 = add nuw i32 %index162, 4       ; 2 uses
  %vec.ind.next165 = add <4 x i16> %vec.ind163, splat (i16 4)
  %i.bj = icmp eq i32 %index.next164, %n.vec158
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !489

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n166 = icmp eq i32 %i.ao, %n.vec158
  br i1 %cmp.n166, label %._crit_edge124.loopexit, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.065120.ph = phi i32 [ %i.al, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 2 uses
  %.168119.ph = phi i32 [ %.067126, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ] ; 4 uses
  %i.bk = add i32 %.067126, 1
  %i.bl = add i32 %i.bk, %i.aj
  %i.bm = sub i32 %i.bl, %.168119.ph
  %i.bn = add i32 %.067126, %i.aj
  %i.bo = sub i32 %i.bn, %.168119.ph
  %xtraiter = and i32 %i.bm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol

.lr.ph123.prol:                                   ; preds = %.lr.ph123.preheader, %.lr.ph123.prol
  %.065120.prol = phi i32 [ %i.bp, %.lr.ph123.prol ], [ %.065120.ph, %.lr.ph123.preheader ] ; 2 uses
  %.168119.prol = phi i32 [ %i.br, %.lr.ph123.prol ], [ %.168119.ph, %.lr.ph123.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph123.prol ], [ 0, %.lr.ph123.preheader ]
  %i.bp = add i32 %.065120.prol, 1                ; 2 uses
  %i.bq = trunc i32 %.065120.prol to i16
  %i.br = add i32 %.168119.prol, 1                ; 2 uses
  %i.bs = zext i32 %.168119.prol to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.bs
  %i.bu = tail call i16 @llvm.bswap.i16(i16 %i.bq)
  store i16 %i.bu, ptr %i.bt, align 1, !tbaa !97
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol, !llvm.loop !490

.lr.ph123.prol.loopexit:                          ; preds = %.lr.ph123.prol, %.lr.ph123.preheader
  %.065120.unr = phi i32 [ %.065120.ph, %.lr.ph123.preheader ], [ %i.bp, %.lr.ph123.prol ]
  %.168119.unr = phi i32 [ %.168119.ph, %.lr.ph123.preheader ], [ %i.br, %.lr.ph123.prol ]
  %i.bv = icmp ult i32 %i.bo, 3
  br i1 %i.bv, label %._crit_edge124.loopexit, label %.lr.ph123

._crit_edge124.loopexit:                          ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !173
  %.pre.a = load i32, ptr %i.ad, align 4, !tbaa !172
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %._crit_edge124.loopexit, %bb.i
  %i.bw = phi i32 [ %i.ag, %bb.i ], [ %.pre.a, %._crit_edge124.loopexit ] ; 2 uses
  %6 = phi ptr [ %5, %bb.i ], [ %.pre, %._crit_edge124.loopexit ]
  %.168.lcssa = phi i32 [ %.067126, %bb.i ], [ %i.an, %._crit_edge124.loopexit ]
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next138, %i.bx
  br i1 %i.by, label %bb.i, label %.loopexit, !llvm.loop !491

.lr.ph123:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123
  %.065120 = phi i32 [ %i.cq, %.lr.ph123 ], [ %.065120.unr, %.lr.ph123.prol.loopexit ] ; 5 uses
  %.168119 = phi i32 [ %i.ct, %.lr.ph123 ], [ %.168119.unr, %.lr.ph123.prol.loopexit ] ; 5 uses
  %i.bz = trunc i32 %.065120 to i16
  %i.ca = add i32 %.168119, 1
  %i.cb = zext i32 %.168119 to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.cb
  %i.cd = tail call i16 @llvm.bswap.i16(i16 %i.bz)
  store i16 %i.cd, ptr %i.cc, align 1, !tbaa !97
  %i.ce = trunc i32 %.065120 to i16
  %i.cf = add i16 %i.ce, 1
  %i.cg = add i32 %.168119, 2
  %i.ch = zext i32 %i.ca to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ch
  %i.cj = tail call i16 @llvm.bswap.i16(i16 %i.cf)
  store i16 %i.cj, ptr %i.ci, align 1, !tbaa !97
  %i.ck = trunc i32 %.065120 to i16
  %i.cl = add i16 %i.ck, 2
  %i.cm = add i32 %.168119, 3
  %i.cn = zext i32 %i.cg to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.cn
  %i.cp = tail call i16 @llvm.bswap.i16(i16 %i.cl)
  store i16 %i.cp, ptr %i.co, align 1, !tbaa !97
  %i.cq = add i32 %.065120, 4
  %i.cr = trunc i32 %.065120 to i16
  %i.cs = add i16 %i.cr, 3
  %i.ct = add i32 %.168119, 4                     ; 2 uses
  %i.cu = zext i32 %i.cm to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.cu
  %i.cw = tail call i16 @llvm.bswap.i16(i16 %i.cs)
  store i16 %i.cw, ptr %i.cv, align 1, !tbaa !97
  %exitcond.not.3 = icmp eq i32 %i.ct, %i.an
  br i1 %exitcond.not.3, label %._crit_edge124.loopexit, label %.lr.ph123, !llvm.loop !492

bb.j:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !172 ; 3 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = mul nuw nsw i64 %i.cz, 3                ; 2 uses
  %i.db = load i32, ptr %i.a, align 4, !tbaa !81
  %.not.i77 = icmp eq i32 %i.db, 0
  br i1 %.not.i77, label %bb.k, label %select.unfold, !prof !82

bb.k:                                             ; preds = %bb.j
  %i.dc = icmp ugt i32 %i.cy, 715827882
  br i1 %i.dc, label %.critedge.i80, label %bb.l, !prof !86

bb.l:                                             ; preds = %bb.k
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !85  ; 4 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp slt i64 %i.dh, %i.da
  br i1 %i.di, label %.critedge.i80, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EhLj1EEEEEEEPT_mb.exit, !prof !86

.critedge.i80:                                    ; preds = %bb.l, %bb.k
  store i32 4, ptr %i.a, align 4, !tbaa !81
  br label %select.unfold

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EhLj1EEEEEEEPT_mb.exit: ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.da
  store ptr %i.dj, ptr %i.d, align 8, !tbaa !85
  %.not75 = icmp eq ptr %i.de, null
  br i1 %.not75, label %select.unfold, label %.preheader110, !prof !94

.preheader110:                                    ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EhLj1EEEEEEEPT_mb.exit
  %.not129 = icmp eq i32 %i.cy, 0
  br i1 %.not129, label %.loopexit, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader110
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.m

._crit_edge117:                                   ; preds = %bb.m
  %i.dl = icmp ult i32 %i.dq, 256
  br i1 %i.dl, label %.loopexit, label %select.unfold, !prof !496

bb.m:                                             ; preds = %.lr.ph116, %bb.m
  %indvars.iv134 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next135, %bb.m ] ; 3 uses
  %.063114 = phi i32 [ 0, %.lr.ph116 ], [ %i.dq, %bb.m ]
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !173
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv134 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !175
  %i.dq = or i32 %i.dp, %.063114                  ; 2 uses
  %i.dr = load i32, ptr %i.dn, align 4, !tbaa !176
  %i.ds = trunc i32 %i.dr to i16
  %i.dt = getelementptr inbounds nuw [3 x i8], ptr %i.de, i64 %indvars.iv134 ; 2 uses
  %i.du = tail call i16 @llvm.bswap.i16(i16 %i.ds)
  store i16 %i.du, ptr %i.dt, align 1, !tbaa !97
  %i.dv = load i32, ptr %i.do, align 4, !tbaa !175
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !97
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.dy = load i32, ptr %i.cx, align 4, !tbaa !172
  %i.dz = zext i32 %i.dy to i64
  %i.ea = icmp samesign ult i64 %indvars.iv.next135, %i.dz
  br i1 %i.ea, label %bb.m, label %._crit_edge117, !llvm.loop !493

bb.n:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !172 ; 3 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  %i.ef = load i32, ptr %i.a, align 4, !tbaa !81
  %.not.i81 = icmp eq i32 %i.ef, 0
  br i1 %.not.i81, label %bb.o, label %select.unfold, !prof !82

bb.o:                                             ; preds = %bb.n
  %i.eg = icmp ugt i32 %i.ec, 536870911
  br i1 %i.eg, label %.critedge.i84, label %bb.p, !prof !86

bb.p:                                             ; preds = %bb.o
  %i.eh = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !85  ; 4 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = icmp slt i64 %i.el, %i.ee
  br i1 %i.em, label %.critedge.i84, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit, !prof !86

.critedge.i84:                                    ; preds = %bb.p, %bb.o
  store i32 4, ptr %i.a, align 4, !tbaa !81
  br label %select.unfold

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit: ; preds = %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ee
  store ptr %i.en, ptr %i.d, align 8, !tbaa !85
  %.not74 = icmp eq ptr %i.ei, null
  br i1 %.not74, label %select.unfold, label %.preheader111, !prof !94

.preheader111:                                    ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit
  %.not = icmp eq i32 %i.ec, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader111
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q
  %i.ep = icmp ult i32 %i.eu, 65536
  br i1 %i.ep, label %.loopexit, label %select.unfold, !prof !496

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %.061112 = phi i32 [ 0, %.lr.ph ], [ %i.eu, %bb.q ]
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !173
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !175
  %i.eu = or i32 %i.et, %.061112                  ; 2 uses
  %i.ev = load i32, ptr %i.er, align 4, !tbaa !176
  %i.ew = trunc i32 %i.ev to i16
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv ; 2 uses
  %i.ey = tail call i16 @llvm.bswap.i16(i16 %i.ew)
  store i16 %i.ey, ptr %i.ex, align 1, !tbaa !97
  %i.ez = load i32, ptr %i.es, align 4, !tbaa !175
  %i.fa = trunc i32 %i.ez to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fc = tail call i16 @llvm.bswap.i16(i16 %i.fa)
  store i16 %i.fc, ptr %i.fb, align 1, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = load i32, ptr %i.eb, align 4, !tbaa !172
  %i.fe = zext i32 %i.fd to i64
  %i.ff = icmp samesign ult i64 %indvars.iv.next, %i.fe
  br i1 %i.ff, label %bb.q, label %._crit_edge, !llvm.loop !494

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
end_hunk_0
