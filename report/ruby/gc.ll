inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@rb_gc_impl_stat:bb.a
  %.010.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.i.i.i ], [ %i.ed, %bb.e ]
  %i.ee = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ee, i64 %.010.i.i.i) ; 2 uses
  %i.ef = sub i64 %i.ee, %spec.select.i.i.i
  %i.eg = cmpxchg volatile ptr %0, i64 %i.ee, i64 %i.ef seq_cst seq_cst, align 8
  %i.eh = extractvalue { i64, i1 } %i.eg, 1
  br i1 %i.eh, label %atomic_sub_nounderflow.exit.i.i, label %.preheader.i.i.i
end_hunk_0
begin_hunk_1_@rb_gc_impl_stat:bb.a
  %.010.i16.i.i = phi i64 [ %spec.select.i17.i.i, %.preheader.i15.i.i ], [ %i.ed, %atomic_sub_nounderflow.exit.i.i ]
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !59 ; 3 uses
  %spec.select.i17.i.i = tail call i64 @llvm.umin.i64(i64 %i.ej, i64 %.010.i16.i.i) ; 2 uses
  %i.ek = sub i64 %i.ej, %spec.select.i17.i.i
  %i.el = cmpxchg volatile ptr %i.ei, i64 %i.ej, i64 %i.ek seq_cst seq_cst, align 8
  %i.em = extractvalue { i64, i1 } %i.el, 1
  br i1 %i.em, label %malloc_increase_local_flush.exit, label %.preheader.i15.i.i
end_hunk_1
begin_hunk_2_@rb_gc_impl_free:bb.a
  %.010.i.i.i15.us = phi i64 [ %spec.select.i.i.i16.us, %.preheader.i.i.i14.us ], [ %i.j, %bb.d ]
  %i.k = load i64, ptr %0, align 8, !tbaa !59     ; 3 uses
  %spec.select.i.i.i16.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %.010.i.i.i15.us) ; 2 uses
  %i.l = sub i64 %i.k, %spec.select.i.i.i16.us
  %i.m = cmpxchg volatile ptr %0, i64 %i.k, i64 %i.l seq_cst seq_cst, align 8
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %.preheader.i15.i.i18.us, label %.preheader.i.i.i14.us
end_hunk_2
begin_hunk_3_@rb_gc_impl_free:bb.a
  %.010.i16.i.i19.us = phi i64 [ %spec.select.i17.i.i20.us, %.preheader.i15.i.i18.us ], [ %i.j, %.preheader.i.i.i14.us ]
  %i.o = load i64, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %spec.select.i17.i.i20.us = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.010.i16.i.i19.us) ; 2 uses
  %i.p = sub i64 %i.o, %spec.select.i17.i.i20.us
  %i.q = cmpxchg volatile ptr %i.c, i64 %i.o, i64 %i.p seq_cst seq_cst, align 8
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.split.us, label %.preheader.i15.i.i18.us
end_hunk_3
begin_hunk_4_@rb_gc_impl_free:bb.a
  %.010.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.i.i.i ], [ %i.ac, %bb.f ]
  %i.ad = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %.010.i.i.i) ; 2 uses
  %i.ae = sub i64 %i.ad, %spec.select.i.i.i
  %i.af = cmpxchg volatile ptr %0, i64 %i.ad, i64 %i.ae seq_cst seq_cst, align 8
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %.preheader.i15.i.i, label %.preheader.i.i.i
end_hunk_4
begin_hunk_5_@rb_gc_impl_free:bb.a
  %.010.i16.i.i = phi i64 [ %spec.select.i17.i.i, %.preheader.i15.i.i ], [ %i.ac, %.preheader.i.i.i ]
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !59  ; 3 uses
  %spec.select.i17.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %.010.i16.i.i) ; 2 uses
  %i.ai = sub i64 %i.ah, %spec.select.i17.i.i
  %i.aj = cmpxchg volatile ptr %i.c, i64 %i.ah, i64 %i.ai seq_cst seq_cst, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %.preheader.i.i.preheader, label %.preheader.i15.i.i
end_hunk_5
begin_hunk_6_@rb_gc_impl_free:bb.a
  %.010.i.i = phi i64 [ %spec.select.i.i, %.preheader.i.i ], [ %.0.i, %.preheader.i.i.preheader ]
  %i.al = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %.010.i.i) ; 2 uses
  %i.am = sub i64 %i.al, %spec.select.i.i
  %i.an = cmpxchg volatile ptr %0, i64 %i.al, i64 %i.am seq_cst seq_cst, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %.preheader.i15.i, label %.preheader.i.i
end_hunk_6
begin_hunk_7_@rb_gc_impl_free:bb.a
  %.010.i16.i = phi i64 [ %spec.select.i17.i, %.preheader.i15.i ], [ %.0.i, %.preheader.i.i ]
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !59  ; 3 uses
  %spec.select.i17.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %.010.i16.i) ; 2 uses
  %i.aq = sub i64 %i.ap, %spec.select.i17.i
  %i.ar = cmpxchg volatile ptr %i.c, i64 %i.ap, i64 %i.aq seq_cst seq_cst, align 8
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %.split.us, label %.preheader.i15.i
end_hunk_7
begin_hunk_8_@objspace_malloc_increase_body:bb.a
  %.010.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.i.i.i ], [ %i.n, %bb.d ]
  %i.o = load i64, ptr %0, align 8, !tbaa !59     ; 3 uses
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.010.i.i.i) ; 2 uses
  %i.p = sub i64 %i.o, %spec.select.i.i.i
  %i.q = cmpxchg volatile ptr %0, i64 %i.o, i64 %i.p seq_cst seq_cst, align 8
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %atomic_sub_nounderflow.exit.i.i, label %.preheader.i.i.i
end_hunk_8
begin_hunk_9_@objspace_malloc_increase_body:bb.a
  %.010.i16.i.i = phi i64 [ %spec.select.i17.i.i, %.preheader.i15.i.i ], [ %i.n, %atomic_sub_nounderflow.exit.i.i ]
  %i.t = load i64, ptr %i.s, align 8, !tbaa !59   ; 3 uses
  %spec.select.i17.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %.010.i16.i.i) ; 2 uses
  %i.u = sub i64 %i.t, %spec.select.i17.i.i
  %i.v = cmpxchg volatile ptr %i.s, i64 %i.t, i64 %i.u seq_cst seq_cst, align 8
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %malloc_increase_local_flush.exit, label %.preheader.i15.i.i
end_hunk_9
begin_hunk_10_@objspace_malloc_increase_body:bb.a
  %.010.i.i.i26 = phi i64 [ %spec.select.i.i.i27, %.preheader.i.i.i25 ], [ %i.ag, %bb.g ]
  %i.ah = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i.i27 = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %.010.i.i.i26) ; 2 uses
  %i.ai = sub i64 %i.ah, %spec.select.i.i.i27
  %i.aj = cmpxchg volatile ptr %0, i64 %i.ah, i64 %i.ai seq_cst seq_cst, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %atomic_sub_nounderflow.exit.i.i28, label %.preheader.i.i.i25
end_hunk_10
begin_hunk_11_@objspace_malloc_increase_body:bb.a
  %.010.i16.i.i30 = phi i64 [ %spec.select.i17.i.i31, %.preheader.i15.i.i29 ], [ %i.ag, %atomic_sub_nounderflow.exit.i.i28 ]
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59 ; 3 uses
  %spec.select.i17.i.i31 = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %.010.i16.i.i30) ; 2 uses
  %i.an = sub i64 %i.am, %spec.select.i17.i.i31
  %i.ao = cmpxchg volatile ptr %i.al, i64 %i.am, i64 %i.an seq_cst seq_cst, align 8
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %malloc_increase_local_flush.exit33, label %.preheader.i15.i.i29
end_hunk_11
begin_hunk_12_@objspace_malloc_increase_body:bb.a
  %.010.i.i = phi i64 [ %spec.select.i.i, %.preheader.i.i ], [ %i.as, %bb.i ]
  %i.au = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %.010.i.i) ; 2 uses
  %i.av = sub i64 %i.au, %spec.select.i.i
  %i.aw = cmpxchg volatile ptr %0, i64 %i.au, i64 %i.av seq_cst seq_cst, align 8
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %atomic_sub_nounderflow.exit.i, label %.preheader.i.i
end_hunk_12
begin_hunk_13_@objspace_malloc_increase_body:bb.a
  %.010.i16.i = phi i64 [ %spec.select.i17.i, %.preheader.i15.i ], [ %i.as, %atomic_sub_nounderflow.exit.i ]
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !59 ; 3 uses
  %spec.select.i17.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %.010.i16.i) ; 2 uses
  %i.ba = sub i64 %i.az, %spec.select.i17.i
  %i.bb = cmpxchg volatile ptr %i.ay, i64 %i.az, i64 %i.ba seq_cst seq_cst, align 8
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %malloc_increase_local_flush.exit, label %.preheader.i15.i
end_hunk_13
