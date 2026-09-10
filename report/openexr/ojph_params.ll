Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_params?download=true
inline.NumInlined: 308
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ojph9param_cod7get_cocEj:bb.a
  br i1 %.not.i, label %bb.c, label %.preheader, !llvm.loop !1

bb.c:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65   ; 8 uses
  %.not12.i = icmp eq ptr %i.q, null
  br i1 %.not12.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.o, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  store ptr %i.s, ptr %i.p, align 8, !tbaa !65
  %i.t = trunc i32 %1 to i16
  store i8 2, ptr %i.q, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i16 0, ptr %i.u, align 2, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i8 0, ptr %i.v, align 4, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %i.w, align 8, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i16 %i.t, ptr %i.x, align 8, !tbaa !63
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !64
  br label %_ZN4ojph5local9param_cod14add_coc_objectEj.exit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #20 ; 14 uses
  %i.z = trunc i32 %1 to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  store i8 2, ptr %i.aa, align 2, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i16 1, ptr %i.ab, align 2, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  store i8 0, ptr %i.ac, align 2, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store <4 x i8> <i8 5, i8 4, i8 4, i8 64>, ptr %i.ad, align 2, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.ae, i8 0, i64 34, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store ptr null, ptr %i.af, align 8, !tbaa !65
  store i8 2, ptr %i.y, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i16 0, ptr %i.ag, align 2, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i8 0, ptr %i.ah, align 4, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %i.aj, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store i16 %i.z, ptr %i.ak, align 8, !tbaa !63
  store ptr %i.y, ptr %i.o, align 8, !tbaa !64
  br label %_ZN4ojph5local9param_cod14add_coc_objectEj.exit

_ZN4ojph5local9param_cod14add_coc_objectEj.exit:  ; preds = %bb.e, %bb.d, %_ZN4ojph5local9param_cod7get_cocEj.exit
  %.0 = phi ptr [ %i.k, %_ZN4ojph5local9param_cod7get_cocEj.exit ], [ %i.y, %bb.e ], [ %.pre.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN4ojph5local9param_cod7get_cocEj(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !62
  %i.b = icmp eq i8 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %.0.i = select i1 %i.b, ptr %0, ptr %i.d        ; 3 uses
  %.not9.i = icmp eq ptr %.0.i, null
  br i1 %.not9.i, label %_ZNK4ojph5local9param_cod7get_cocEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.110.i = phi ptr [ %i.i, %bb.b ], [ %.0.i, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.110.i, i64 80
  %i.f = load i16, ptr %i.e, align 8, !tbaa !63
  %i.g = zext i16 %i.f to i32
  %.not8.i = icmp eq i32 %1, %i.g
  br i1 %.not8.i, label %_ZNK4ojph5local9param_cod7get_cocEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.110.i, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNK4ojph5local9param_cod7get_cocEj.exit, label %.lr.ph.i, !llvm.loop !0

_ZNK4ojph5local9param_cod7get_cocEj.exit:         ; preds = %.lr.ph.i, %bb.b, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %.110.i, %.lr.ph.i ], [ %.0.i, %bb.b ]
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ojph5local9param_cod14add_coc_objectEj(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 56 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 8 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %i.c, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  store ptr %i.g, ptr %i.d, align 8, !tbaa !65
  %i.h = trunc i32 %1 to i16
  store i8 2, ptr %i.e, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 0, ptr %i.i, align 2, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i8 0, ptr %i.j, align 4, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.k, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i16 %i.h, ptr %i.l, align 8, !tbaa !63
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #20 ; 14 uses
  %i.n = trunc i32 %1 to i16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store i8 2, ptr %i.o, align 2, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i16 1, ptr %i.p, align 2, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  store i8 0, ptr %i.q, align 2, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store <4 x i8> <i8 5, i8 4, i8 4, i8 64>, ptr %i.r, align 2, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.s, i8 0, i64 34, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr null, ptr %i.t, align 8, !tbaa !65
  store i8 2, ptr %i.m, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 0, ptr %i.u, align 2, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i8 0, ptr %i.v, align 4, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.x, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i16 %i.n, ptr %i.y, align 8, !tbaa !63
  store ptr %i.m, ptr %i.c, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi ptr [ %i.m, %bb.e ], [ %.pre, %bb.d ]
  ret ptr %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 256) i32 @_ZNK4ojph9param_cod22get_num_decompositionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.d, %bb.a
  %.tr.i.in = phi ptr [ %0, %bb.a ], [ %i.g, %bb.d ]
  %.tr.i = load ptr, ptr %.tr.i.in, align 8, !tbaa !71 ; 4 uses
  %i.a = load i8, ptr %.tr.i, align 8, !tbaa !62
  switch i8 %i.a, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit [
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.b = getelementptr inbounds nuw i8, ptr %.tr.i, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !51
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.c:                                             ; preds = %tailrecurse.i
  %i.d = getelementptr inbounds nuw i8, ptr %.tr.i, i64 12
  %i.e = load i8, ptr %i.d, align 4, !tbaa !51    ; 2 uses
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.tr.i, i64 72
  br label %tailrecurse.i

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit: ; preds = %tailrecurse.i, %bb.c, %bb.b
  %.0.i = phi i8 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ 0, %tailrecurse.i ]
  %i.h = zext i8 %.0.i to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 17179869184, -9223372032559808512) i64 @_ZNK4ojph9param_cod14get_block_dimsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !72
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.f = load i8, ptr %i.e, align 1, !tbaa !73
  %i.g = zext i8 %i.f to i64
  %.sroa.2.0.insert.ext.i.i.i = shl nuw nsw i64 %i.g, 32
  %.sroa.0.0.insert.ext.i.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i.i, %i.d
  %.sroa.0.0.insert.insert.i.i.i = add nuw nsw i64 %.sroa.0.0.insert.ext.i.i.i, 8589934594 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.insert.insert.i.i.i to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.h = shl nuw i32 1, %.sroa.0.0.extract.trunc.i.i
  %i.i = shl nuw i32 1, %.sroa.4.0.extract.trunc.i.i
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.i to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  ret i64 %.sroa.0.0.insert.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 8589934594, 1103806595330) i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !72
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.f = load i8, ptr %i.e, align 1, !tbaa !73
  %i.g = zext i8 %i.f to i64
  %.sroa.2.0.insert.ext.i.i = shl nuw nsw i64 %i.g, 32
  %.sroa.0.0.insert.ext.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i, %i.d
  %.sroa.0.0.insert.insert.i.i = add nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 8589934594
  ret i64 %.sroa.0.0.insert.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4ojph9param_cod13is_reversibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 4, !tbaa !61    ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.c, 1
  br label %_ZNK4ojph5local9param_cod13is_reversibleEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !78
  %i.j = and i16 %i.i, 4096
  %i.k = icmp ne i16 %i.j, 0
  br label %_ZNK4ojph5local9param_cod13is_reversibleEv.exit

_ZNK4ojph5local9param_cod13is_reversibleEv.exit:  ; preds = %bb.b, %bb.c
  %.0.i = phi i1 [ %i.e, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4ojph5local9param_cod13is_reversibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !61    ; 2 uses
  %i.c = icmp ult i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.b, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !78
  %i.i = and i16 %i.h, 4096
  %i.j = icmp ne i16 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ %i.j, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 4294967296, 140741783322624) i64 @_ZNK4ojph9param_cod17get_precinct_sizeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !54
  %i.d = and i8 %i.c, 1
  %.not.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i, label %_ZNK4ojph5local9param_cod17get_precinct_sizeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !56
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 15
  %i.k = lshr i32 %i.i, 4
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 32
  %i.n = zext nneg i32 %i.j to i64
  %i.o = or disjoint i64 %i.m, %i.n
  br label %_ZNK4ojph5local9param_cod17get_precinct_sizeEj.exit

_ZNK4ojph5local9param_cod17get_precinct_sizeEj.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.o, %bb.b ], [ 64424509455, %bb.a ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.insert.insert.i.i to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.4.0.extract.shift.i to i32
  %i.p = shl nuw i32 1, %.sroa.0.0.extract.trunc.i
  %i.q = shl nuw nsw i32 1, %.sroa.4.0.extract.trunc.i
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.q to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 64424509456) i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !54
  %i.d = and i8 %i.c, 1
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !56
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 15
  %i.k = lshr i32 %i.i, 4
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 32
  %i.n = zext nneg i32 %i.j to i64
  %i.o = or disjoint i64 %i.m, %i.n
  br label %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit

_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.o, %bb.b ], [ 64424509455, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 256) i32 @_ZNK4ojph9param_cod21get_progression_orderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.c = load i8, ptr %i.b, align 2, !tbaa !59
  %i.d = zext i8 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_ZNK4ojph9param_cod31get_progression_order_as_stringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.c = load i8, ptr %i.b, align 2, !tbaa !59    ; 2 uses
  %i.d = icmp ult i8 %i.c, 5
  br i1 %i.d, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4ojph9param_cod31get_progression_order_as_stringEv, i64 %i.e
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.9, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 65536) i32 @_ZNK4ojph9param_cod14get_num_layersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i16, ptr %i.b, align 2, !tbaa !79
  %i.d = zext i16 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4ojph9param_cod24is_using_color_transformEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.b, %bb.a
  %.tr.i.in = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]
  %.tr.i = load ptr, ptr %.tr.i.in, align 8, !tbaa !71 ; 3 uses
  %i.a = load i8, ptr %.tr.i, align 8, !tbaa !62
  switch i8 %i.a, label %bb.b [
    i8 1, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
    i8 3, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.b = getelementptr inbounds nuw i8, ptr %.tr.i, i64 72
  br label %tailrecurse.i

_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit: ; preds = %tailrecurse.i, %tailrecurse.i
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 10
  %i.d = load i8, ptr %i.c, align 2, !tbaa !60
  %i.e = icmp eq i8 %i.d, 1
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4ojph9param_cod19packets_may_use_sopEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !62
  switch i8 %i.b, label %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit [
    i8 1, label %bb.b
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !54
  %i.e = and i8 %i.d, 2
  %i.f = icmp ne i8 %i.e, 0
  br label %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit

_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4ojph9param_cod15packets_use_ephEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !62
  switch i8 %i.b, label %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit [
    i8 1, label %bb.b
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !54
  %i.e = and i8 %i.d, 4
  %i.f = icmp ne i8 %i.e, 0
  br label %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit

_ZNK4ojph5local9param_cod15packets_use_ephEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4ojph9param_cod28get_block_vertical_causalityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !tbaa !80
  %i.d = and i8 %i.c, 8
  %i.e = icmp ne i8 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph9param_coc21set_num_decompositionEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82
  %i.b = icmp ugt i32 %1, 32
  br i1 %i.b, label %bb.b, label %_ZN4ojph9param_cod21set_num_decompositionEj.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = load ptr, ptr %i.d, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef 327681, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 172, ptr noundef nonnull @.str.1), !inline_history !159
  br label %_ZN4ojph9param_cod21set_num_decompositionEj.exit

_ZN4ojph9param_cod21set_num_decompositionEj.exit: ; preds = %bb.a, %bb.b
  %i.f = trunc i32 %1 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.f, ptr %i.g, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph9param_coc14set_block_dimsEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.b = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1, i1 true) ; 3 uses
  %i.c = xor i32 %i.b, 31                         ; 2 uses
  %i.d = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 3 uses
  %i.e = xor i32 %i.d, 31                         ; 2 uses
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = lshr exact i32 -2147483648, %i.b
  %i.h = icmp ne i32 %1, %i.g
  %i.i = icmp eq i32 %2, 0
  %or.cond.i = or i1 %i.i, %i.h
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr exact i32 -2147483648, %i.d
  %i.k = icmp ne i32 %2, %i.j
  %i.l = icmp samesign ult i32 %i.c, 2
  %or.cond3.i = select i1 %i.k, i1 true, i1 %i.l
  %i.m = icmp samesign ult i32 %i.e, 2
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.m
  %i.n = add nuw nsw i32 %i.e, %i.c
  %i.o = icmp samesign ugt i32 %i.n, 12
  %or.cond24.i = select i1 %or.cond5.i, i1 true, i1 %i.o
  br i1 %or.cond24.i, label %bb.d, label %_ZN4ojph9param_cod14set_block_dimsEjj.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = load ptr, ptr %i.q, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef 327697, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 185, ptr noundef nonnull @.str.2), !inline_history !160
  br label %_ZN4ojph9param_cod14set_block_dimsEjj.exit

_ZN4ojph9param_cod14set_block_dimsEjj.exit:       ; preds = %bb.c, %bb.d
  %i.s = trunc nuw nsw i32 %i.b to i8
  %i.t = sub nsw i8 29, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.t, ptr %i.u, align 1, !tbaa !52
  %i.v = trunc nuw nsw i32 %i.d to i8
  %i.w = sub nsw i8 29, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.w, ptr %i.x, align 2, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph9param_coc17set_precinct_sizeEiPNS_4sizeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.ojph::param_cod", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = load ptr, ptr %0, align 8, !tbaa !82
  store ptr %i.a, ptr %3, align 8, !tbaa !45
  call void @_ZN4ojph9param_cod17set_precinct_sizeEiPNS_4sizeE(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph9param_coc14set_reversibleEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82
  %i.b = zext i1 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.b, ptr %i.c, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 256) i32 @_ZNK4ojph9param_coc22get_num_decompositionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.d, %bb.a
  %.tr.i.in.i.sroa.speculated.in = phi ptr [ %0, %bb.a ], [ %i.g, %bb.d ]
  %.tr.i.in.i.sroa.speculated = load ptr, ptr %.tr.i.in.i.sroa.speculated.in, align 8, !tbaa !71 ; 4 uses
  %i.a = load i8, ptr %.tr.i.in.i.sroa.speculated, align 8, !tbaa !62
  switch i8 %i.a, label %_ZNK4ojph9param_cod22get_num_decompositionsEv.exit [
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse.i.i
  %i.b = getelementptr inbounds nuw i8, ptr %.tr.i.in.i.sroa.speculated, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !51
  br label %_ZNK4ojph9param_cod22get_num_decompositionsEv.exit

bb.c:                                             ; preds = %tailrecurse.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.tr.i.in.i.sroa.speculated, i64 12
  %i.e = load i8, ptr %i.d, align 4, !tbaa !51    ; 2 uses
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZNK4ojph9param_cod22get_num_decompositionsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.tr.i.in.i.sroa.speculated, i64 72
  br label %tailrecurse.i.i

_ZNK4ojph9param_cod22get_num_decompositionsEv.exit: ; preds = %tailrecurse.i.i, %bb.c, %bb.b
  %.0.i.i = phi i8 [ %i.c, %bb.b ], [ 0, %tailrecurse.i.i ], [ %i.e, %bb.c ]
  %i.h = zext i8 %.0.i.i to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 17179869184, -9223372032559808512) i64 @_ZNK4ojph9param_coc14get_block_dimsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !72
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.f = load i8, ptr %i.e, align 1, !tbaa !73
  %i.g = zext i8 %i.f to i64
  %.sroa.2.0.insert.ext.i.i.i.i = shl nuw nsw i64 %i.g, 32
  %.sroa.0.0.insert.ext.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i.i.i, %i.d
  %.sroa.0.0.insert.insert.i.i.i.i = add nuw nsw i64 %.sroa.0.0.insert.ext.i.i.i.i, 8589934594 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i to i32
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i to i32
  %i.h = shl nuw i32 1, %.sroa.0.0.extract.trunc.i.i.i
  %i.i = shl nuw i32 1, %.sroa.4.0.extract.trunc.i.i.i
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.i to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  ret i64 %.sroa.0.0.insert.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 8589934594, 1103806595330) i64 @_ZNK4ojph9param_coc18get_log_block_dimsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !72
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.f = load i8, ptr %i.e, align 1, !tbaa !73
  %i.g = zext i8 %i.f to i64
  %.sroa.2.0.insert.ext.i.i.i = shl nuw nsw i64 %i.g, 32
  %.sroa.0.0.insert.ext.i.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i.i, %i.d
  %.sroa.0.0.insert.insert.i.i.i = add nuw nsw i64 %.sroa.0.0.insert.ext.i.i.i, 8589934594
  ret i64 %.sroa.0.0.insert.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4ojph9param_coc13is_reversibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 4, !tbaa !61    ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.c, 1
  br label %_ZNK4ojph9param_cod13is_reversibleEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !78
  %i.j = and i16 %i.i, 4096
  %i.k = icmp ne i16 %i.j, 0
  br label %_ZNK4ojph9param_cod13is_reversibleEv.exit

_ZNK4ojph9param_cod13is_reversibleEv.exit:        ; preds = %bb.b, %bb.c
  %.0.i.i = phi i1 [ %i.e, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 4294967296, 140741783322624) i64 @_ZNK4ojph9param_coc17get_precinct_sizeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !54
  %i.d = and i8 %i.c, 1
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK4ojph9param_cod17get_precinct_sizeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !56
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 15
  %i.k = lshr i32 %i.i, 4
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 32
  %i.n = zext nneg i32 %i.j to i64
  %i.o = or disjoint i64 %i.m, %i.n
  br label %_ZNK4ojph9param_cod17get_precinct_sizeEj.exit

_ZNK4ojph9param_cod17get_precinct_sizeEj.exit:    ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i.i.i = phi i64 [ %i.o, %bb.b ], [ 64424509455, %bb.a ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.insert.insert.i.i.i to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.p = shl nuw i32 1, %.sroa.0.0.extract.trunc.i.i
  %i.q = shl nuw nsw i32 1, %.sroa.4.0.extract.trunc.i.i
  %.sroa.2.0.insert.ext.i.i = zext nneg i32 %i.q to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  ret i64 %.sroa.0.0.insert.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 64424509456) i64 @_ZNK4ojph9param_coc21get_log_precinct_sizeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !54
  %i.d = and i8 %i.c, 1
  %.not.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i, label %_ZNK4ojph9param_cod21get_log_precinct_sizeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !56
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 15
  %i.k = lshr i32 %i.i, 4
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 32
  %i.n = zext nneg i32 %i.j to i64
  %i.o = or disjoint i64 %i.m, %i.n
  br label %_ZNK4ojph9param_cod21get_log_precinct_sizeEj.exit

_ZNK4ojph9param_cod21get_log_precinct_sizeEj.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.o, %bb.b ], [ 64424509455, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4ojph9param_coc28get_block_vertical_causalityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !tbaa !80
  %i.d = and i8 %i.c, 8
  %i.e = icmp ne i8 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph9param_qcd15set_irrev_quantEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store float %1, ptr %i.b, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph9param_qcd15set_irrev_quantEjf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 7 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !89
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  %.0.i.i.i = select i1 %i.c, ptr %i.a, ptr %i.e  ; 3 uses
  %.not9.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not9.i.i.i, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.110.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.0.i.i.i, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.110.i.i.i, i64 232
  %i.g = load i16, ptr %i.f, align 8, !tbaa !90
  %i.h = zext i16 %i.g to i32
  %.not8.i.i.i = icmp eq i32 %1, %i.h
  br i1 %.not8.i.i.i, label %_ZN4ojph5local9param_qcd9set_deltaEjf.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.110.i.i.i, i64 216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN4ojph5local9param_qcd9set_deltaEjf.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN4ojph5local9param_qcd7get_qccEj.exit.thread.i: ; preds = %bb.a, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread.i
  %.0.i.i = phi ptr [ %i.l, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.c, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread.i, !llvm.loop !3

bb.c:                                             ; preds = %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 216 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92   ; 11 uses
  %.not10.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.m, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 216 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !91
  store ptr %i.q, ptr %i.n, align 8, !tbaa !92
  %i.r = trunc i32 %1 to i16
  store i8 2, ptr %i.o, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 0, ptr %i.s, align 2, !tbaa !93
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i8 0, ptr %i.t, align 4, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(198) %i.u, i8 0, i64 198, i1 false)
  store float -1.000000e+00, ptr %i.v, align 4, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  store i8 1, ptr %i.w, align 8, !tbaa !95
  store ptr null, ptr %i.p, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  store ptr %i.a, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store i16 %i.r, ptr %i.y, align 8, !tbaa !90
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !91
  br label %_ZN4ojph5local9param_qcd9set_deltaEjf.exit

bb.e:                                             ; preds = %bb.c
  %i.z = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20 ; 12 uses
  %i.aa = trunc i32 %1 to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  store ptr null, ptr %i.ab, align 8, !tbaa !92
  store i8 2, ptr %i.z, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i16 0, ptr %i.ac, align 2, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i8 0, ptr %i.ad, align 4, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(198) %i.ae, i8 0, i64 198, i1 false)
  store float -1.000000e+00, ptr %i.af, align 4, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  store i8 1, ptr %i.ag, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  store ptr null, ptr %i.ah, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  store ptr %i.a, ptr %i.ai, align 8, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  store i16 %i.aa, ptr %i.aj, align 8, !tbaa !90
  store ptr %i.z, ptr %i.m, align 8, !tbaa !91
  br label %_ZN4ojph5local9param_qcd9set_deltaEjf.exit

_ZN4ojph5local9param_qcd9set_deltaEjf.exit:       ; preds = %.lr.ph.i.i.i, %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %.pre.i.i, %bb.d ], [ %i.z, %bb.e ], [ %.110.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 204
  store float %2, ptr %i.ak, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9param_qcd9set_deltaEjf(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !89
  %i.b = icmp eq i8 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8
  %.0.i.i = select i1 %i.b, ptr %0, ptr %i.d      ; 3 uses
  %.not9.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not9.i.i, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.110.i.i = phi ptr [ %i.i, %bb.b ], [ %.0.i.i, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.110.i.i, i64 232
  %i.f = load i16, ptr %i.e, align 8, !tbaa !90
  %i.g = zext i16 %i.f to i32
  %.not8.i.i = icmp eq i32 %1, %i.g
  br i1 %.not8.i.i, label %_ZN4ojph5local9param_qcd14add_qcc_objectEj.exit, label %bb.b
end_hunk_0
