Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_Hash_Blake2b?download=true
inline.NumInlined: 123
inline.NumDeleted: 15
begin_hunk_0_@_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key:bb.a
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 120
  store i64 6620516959819538809, ptr %i.o, align 8, !tbaa !12
  %i.p = xor i64 %.sroa.0.1.insert.insert, 7640891576939301128
  store i64 %i.p, ptr %.sroa.7130.0.copyload.i, align 8, !tbaa !12
  %i.q = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 8
  store i64 -4942790177534073029, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 16
  store i64 4354685564936845355, ptr %i.r, align 8, !tbaa !12
  %i.s = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 24
  store i64 -6534734903238641935, ptr %i.s, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.g, align 8, !tbaa !12
  %i.t = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 40
  store i64 -7276294671716946913, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 48
  store i64 2270897969802886507, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 56
  store i64 6620516959819538809, ptr %i.v, align 8, !tbaa !12
  %.sroa.9132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !14
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, i64 13, i1 false)
  store ptr %.sroa.7130.0.copyload.i, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !19
  store ptr %.sroa.8131.0.copyload.i, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !21
  store i64 %..i, ptr %.sroa.9132.0..sroa_idx.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8121.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset(ptr nofree noundef captures(none) initializes((32, 40)) %0) local_unnamed_addr #9 {
_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key.exit:
  %.sroa.8121.i.i = alloca [13 x i8], align 1     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i.i)
  %.sroa.6129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.4.0.copyload.i.i to i64
  %i.a = xor i64 %.sroa.0.0.insert.ext.i, 7640891576939301128
  %.sroa.9132.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load <2 x ptr>, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !24
  %.sroa.7130.0.copyload.i.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !19 ; 16 uses
  %i.c = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 32
  %i.d = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 64
  %i.e = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 96
  store i64 7640891576956012808, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 72
  store i64 -4942790177534073029, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 80
  store i64 4354685564936845355, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 88
  store i64 -6534734903238641935, ptr %i.h, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.e, align 8, !tbaa !12
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 104
  store i64 -7276294671716946913, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 112
  store i64 2270897969802886507, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 120
  store i64 6620516959819538809, ptr %i.k, align 8, !tbaa !12
  store i64 %i.a, ptr %.sroa.7130.0.copyload.i.i, align 8, !tbaa !12
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 8
  store i64 -4942790177534073029, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 16
  store i64 4354685564936845355, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 24
  store i64 -6534734903238641935, ptr %i.n, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.c, align 8, !tbaa !12
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 40
  store i64 -7276294671716946913, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 48
  store i64 2270897969802886507, ptr %i.p, align 8, !tbaa !12
  %i.q = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 56
  store i64 6620516959819538809, ptr %i.q, align 8, !tbaa !12
  store i8 0, ptr %0, align 8, !tbaa !14
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i.i, i64 13, i1 false)
  store <2 x ptr> %i.b, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !24
  store i64 0, ptr %.sroa.9132.0..sroa_idx.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8121.i.i)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_Blake2b_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.0130 = alloca %struct.Hacl_Hash_Blake2b_block_state_t_s, align 8 ; 2 uses
  %.sroa.053 = alloca %struct.Hacl_Hash_Blake2b_block_state_t_s, align 8 ; 2 uses
  %.sroa.3153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.3153.0.copyload = load i64, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !12 ; 8 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = xor i64 %.sroa.3153.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3153.0.copyload, 127      ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %.sroa.3153.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 3 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0185 = select i1 %or.cond, i32 128, i32 %i.g  ; 2 uses
  %i.h = sub nuw nsw i32 128, %.0185              ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0130, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.4143.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %. = select i1 %or.cond, i64 128, i64 %i.d
  %i.i = getelementptr i8, ptr %.sroa.4143.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.a, i1 false)
  %i.j = add i64 %.sroa.3153.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0130, i64 24, i1 false), !tbaa.struct !25
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %.0185, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0125.0.copyload = load i64, ptr %0, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4126.0.copyload = load ptr, ptr %.sroa.4126.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5127.0.copyload = load ptr, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %.sroa.6128.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.l = and i64 %i.a, 127                        ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = trunc nuw nsw i64 %i.l to i32
  %.0189 = select i1 %i.m, i32 128, i32 %i.n
  %i.o = sub i32 %2, %.0189                       ; 2 uses
  %i.p = lshr i32 %i.o, 7                         ; 2 uses
  %i.q = and i32 %i.o, -128                       ; 2 uses
  %i.r = sub i32 %2, %i.q
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %.lr.ph.i201, %.lr.ph.preheader.i
  %indvars.iv.i202 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i203, %.lr.ph.i201 ] ; 2 uses
  %indvars.iv.next.i203 = add nuw nsw i64 %indvars.iv.i202, 1 ; 3 uses
  %i.u = shl nuw nsw i64 %indvars.iv.next.i203, 7
  %i.v = add i64 %i.u, %.sroa.3153.0.copyload     ; 2 uses
  %i.w = xor i64 %i.v, -1
  %i.x = and i64 %.sroa.3153.0.copyload, %i.w
  %i.y = lshr i64 %i.x, 63
  %i.z = shl nuw nsw i64 %indvars.iv.i202, 7
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  tail call fastcc void @update_block(ptr noundef %.sroa.4126.0.copyload, ptr noundef %.sroa.5127.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.v, i64 %i.y, ptr noundef readonly %i.aa)
  %exitcond.not.i204 = icmp eq i64 %indvars.iv.next.i203, %wide.trip.count.i
  br i1 %exitcond.not.i204, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205, label %.lr.ph.i201, !llvm.loop !0

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205: ; preds = %.lr.ph.i201, %bb.e
  %i.ab = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6128.0.copyload, ptr align 1 %i.t, i64 %i.ab, i1 false)
  %i.ac = add i64 %.sroa.3153.0.copyload, %i.a
  store i64 %.sroa.0125.0.copyload, ptr %0, align 8
  store ptr %.sroa.4126.0.copyload, ptr %.sroa.4126.0..sroa_idx, align 8, !tbaa !19
  store ptr %.sroa.5127.0.copyload, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ad = zext nneg i32 %i.h to i64               ; 3 uses
  %i.ae = getelementptr i8, ptr %1, i64 %i.ad     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.053, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21 ; 5 uses
  %.197 = select i1 %or.cond, i64 128, i64 %i.d
  %i.af = getelementptr i8, ptr %.sroa.466.0.copyload, i64 %.197
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %1, i64 %i.ad, i1 false)
  %i.ag = add i64 %.sroa.3153.0.copyload, %i.ad   ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.053, i64 24, i1 false), !tbaa.struct !25
  store ptr %.sroa.466.0.copyload, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21
  store i64 %i.ag, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !12
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.ah = and i64 %i.ag, 127                      ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = icmp ne i64 %i.ag, 0
  %or.cond12 = and i1 %i.aj, %i.ai
  %i.ak = trunc nuw nsw i64 %i.ah to i32
  %.0190 = select i1 %or.cond12, i32 128, i32 %i.ak ; 2 uses
  %i.al = icmp eq i32 %.0190, 0
  br i1 %i.al, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %bb.f
  %i.am = zext nneg i32 %.0190 to i64
  %i.an = sub i64 %i.ag, %i.am                    ; 3 uses
  %i.ao = add i64 %i.an, 128
  %i.ap = sub i64 -129, %i.an
  %i.aq = and i64 %i.an, %i.ap
  %i.ar = lshr i64 %i.aq, 63
  tail call fastcc void @update_block(ptr noundef %.sroa.451.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.ao, i64 %i.ar, ptr noundef readonly %.sroa.466.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213: ; preds = %.lr.ph.i209, %bb.f
  %i.as = sub nuw i32 %2, %i.h                    ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = and i64 %i.at, 127                      ; 2 uses
  %.not224 = icmp eq i64 %i.au, 0
  %i.av = trunc nuw nsw i64 %i.au to i32
  %.0187 = select i1 %.not224, i32 128, i32 %i.av
  %i.aw = sub i32 %i.as, %.0187                   ; 2 uses
  %i.ax = lshr i32 %i.aw, 7                       ; 2 uses
  %i.ay = and i32 %i.aw, -128                     ; 2 uses
  %i.az = sub i32 %i.as, %i.ay
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr i8, ptr %i.ae, i64 %i.ba
  %.not.i216 = icmp eq i32 %i.ax, 0
  br i1 %.not.i216, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223, label %.lr.ph.preheader.i217

.lr.ph.preheader.i217:                            ; preds = %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213
  %wide.trip.count.i218 = zext nneg i32 %i.ax to i64
  br label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.lr.ph.i219, %.lr.ph.preheader.i217
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.preheader.i217 ], [ %indvars.iv.next.i221, %.lr.ph.i219 ] ; 2 uses
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i220, 1 ; 3 uses
  %i.bc = shl nuw nsw i64 %indvars.iv.next.i221, 7
  %i.bd = add i64 %i.bc, %i.ag                    ; 2 uses
  %i.be = xor i64 %i.bd, -1
  %i.bf = and i64 %i.ag, %i.be
  %i.bg = lshr i64 %i.bf, 63
  %i.bh = shl nuw nsw i64 %indvars.iv.i220, 7
  %i.bi = getelementptr i8, ptr %i.ae, i64 %i.bh
  tail call fastcc void @update_block(ptr noundef %.sroa.451.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.bd, i64 %i.bg, ptr noundef readonly %i.bi)
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i218
  br i1 %exitcond.not.i222, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223, label %.lr.ph.i219, !llvm.loop !0

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223: ; preds = %.lr.ph.i219, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213
  %i.bj = zext i32 %i.az to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.466.0.copyload, ptr align 1 %i.bb, i64 %i.bj, i1 false)
  %i.bk = add i64 %i.ag, %i.at
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store ptr %.sroa.451.0.copyload, ptr %.sroa.451.0..sroa_idx, align 8, !tbaa !19
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223, %bb.c
  %.sroa.4143.0.copyload.sink = phi ptr [ %.sroa.4143.0.copyload, %bb.c ], [ %.sroa.466.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223 ], [ %.sroa.6128.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205 ]
  %.sink = phi i64 [ %i.j, %bb.c ], [ %i.bk, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223 ], [ %i.ac, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205 ]
  store ptr %.sroa.4143.0.copyload.sink, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21
  store i64 %.sink, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_Blake2b_digest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [16 x i64], align 16              ; 3 uses
  %i.d = alloca [16 x i64], align 16              ; 8 uses
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.460.0.copyload = load i8, ptr %.sroa.460.0..sroa_idx, align 1, !tbaa !14
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.561.0.copyload = load i8, ptr %.sroa.561.0..sroa_idx, align 2, !tbaa !16
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.450.0.copyload = load ptr, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !19
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.551.0.copyload = load ptr, ptr %.sroa.551.0..sroa_idx, align 8, !tbaa !21
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.652.0.copyload = load i64, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !12 ; 5 uses
  %i.e = and i64 %.sroa.652.0.copyload, 127       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp ne i64 %.sroa.652.0.copyload, 0
  %or.cond = and i1 %i.g, %i.f
  %i.h = trunc nuw nsw i64 %i.e to i32
  %.0 = select i1 %or.cond, i32 128, i32 %i.h     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.450.0.copyload, i64 128, i1 false)
  %i.i = and i32 %.0, 127                         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.k, %i.j
  %i.l = zext nneg i32 %i.i to i64
  %.067 = select i1 %or.cond3, i64 128, i64 %i.l
  %i.m = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.n = sub i64 %.sroa.652.0.copyload, %i.m
  %i.o = trunc i8 %.sroa.561.0.copyload to i1
  %i.p = getelementptr i8, ptr %.sroa.551.0.copyload, i64 %i.m
  %i.q = sub nsw i64 0, %.067
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.r, i64 %i.m, i1 false)
  %i.s = xor i64 %.sroa.652.0.copyload, -1
  %i.t = and i64 %i.n, %i.s
  %i.u = lshr i64 %i.t, 63
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext %i.o, i64 %.sroa.652.0.copyload, i64 %i.u, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.x = load <2 x i64>, ptr %i.d, align 16, !tbaa !12
  store <2 x i64> %i.x, ptr %i.a, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 16, !tbaa !12
  store <2 x i64> %i.aa, ptr %i.y, align 16
  %i.ab = load <2 x i64>, ptr %i.w, align 16, !tbaa !12
  store <2 x i64> %i.ab, ptr %i.v, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ae = load <2 x i64>, ptr %i.ad, align 16, !tbaa !12
  store <2 x i64> %i.ae, ptr %i.ac, align 16
  %i.af = zext i8 %.sroa.460.0.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.af, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.sroa.4.0.copyload = load i8, ptr %.sroa.460.0..sroa_idx, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret i8 %.sroa.4.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i24 0, 131072) i24 @_Py_LibHacl_Hacl_Hash_Blake2b_info(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !16
  %i.a = and i8 %.sroa.5.0.copyload, 1
  %.sroa.3.0.insert.ext = zext nneg i8 %i.a to i24
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %.sroa.4.0.copyload to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.04.0.insert.ext = zext i8 %.sroa.0.0.copyload to i24
  %.sroa.04.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.04.0.insert.ext
  ret i24 %.sroa.04.0.insert.insert
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_free(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !21
  tail call void @free(ptr noundef %.sroa.44.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.068.0.copyload = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.469.0.copyload = load i8, ptr %.sroa.469.0..sroa_idx, align 1, !tbaa !14
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.570.0.copyload = load i8, ptr %.sroa.570.0..sroa_idx, align 2, !tbaa !16
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.772.0.copyload = load ptr, ptr %.sroa.772.0..sroa_idx, align 8, !tbaa !19
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.873.0.copyload = load ptr, ptr %.sroa.873.0..sroa_idx, align 8, !tbaa !21
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !12
  %i.a = and i8 %.sroa.570.0.copyload, 1
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.b, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.873.0.copyload, i64 128, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
end_hunk_0
