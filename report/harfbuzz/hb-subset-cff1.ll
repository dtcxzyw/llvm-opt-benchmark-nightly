Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff1?download=true
inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK2OT4cff120accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff1_subset_planE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 264
  %.val21.i.i = load ptr, ptr %i.f, align 8, !tbaa !48 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 1152921504606846975
  %i.h = and i64 %i.g, 1152921504606846975        ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %xtraiter = and i64 %i.i, 7                     ; 3 uses
  %i.j = icmp samesign ult i64 %i.h, 7
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.i, 2305843009213693944
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.01644.i.i = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i.new ], [ %i.aa, %.lr.ph.i.i ] ; 9 uses
  %.01743.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.z, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.k = getelementptr i8, ptr %.01644.i.i, i64 4
  %.016.val.i.i = load i32, ptr %i.k, align 4, !tbaa !49
  %i.l = add i32 %.016.val.i.i, %.01743.i.i
  %i.m = getelementptr i8, ptr %.01644.i.i, i64 20
  %.016.val.i.i.1 = load i32, ptr %i.m, align 4, !tbaa !49
  %i.n = add i32 %.016.val.i.i.1, %i.l
  %i.o = getelementptr i8, ptr %.01644.i.i, i64 36
  %.016.val.i.i.2 = load i32, ptr %i.o, align 4, !tbaa !49
  %i.p = add i32 %.016.val.i.i.2, %i.n
  %i.q = getelementptr i8, ptr %.01644.i.i, i64 52
  %.016.val.i.i.3 = load i32, ptr %i.q, align 4, !tbaa !49
  %i.r = add i32 %.016.val.i.i.3, %i.p
  %i.s = getelementptr i8, ptr %.01644.i.i, i64 68
  %.016.val.i.i.4 = load i32, ptr %i.s, align 4, !tbaa !49
  %i.t = add i32 %.016.val.i.i.4, %i.r
  %i.u = getelementptr i8, ptr %.01644.i.i, i64 84
  %.016.val.i.i.5 = load i32, ptr %i.u, align 4, !tbaa !49
  %i.v = add i32 %.016.val.i.i.5, %i.t
  %i.w = getelementptr i8, ptr %.01644.i.i, i64 100
  %.016.val.i.i.6 = load i32, ptr %i.w, align 4, !tbaa !49
  %i.x = add i32 %.016.val.i.i.6, %i.v
  %i.y = getelementptr i8, ptr %.01644.i.i, i64 116
  %.016.val.i.i.7 = load i32, ptr %i.y, align 4, !tbaa !49
  %i.z = add i32 %.016.val.i.i.7, %i.x            ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01644.i.i, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa, label %.lr.ph.i.i

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.01644.i.i.epil.init = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i ], [ %i.aa, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ]
  %.01743.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.z, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ]
  %lcmp.mod348 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod348)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.01644.i.i.epil = phi ptr [ %i.ad, %.lr.ph.i.i.epil ], [ %.01644.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01743.i.i.epil = phi i32 [ %i.ac, %.lr.ph.i.i.epil ], [ %.01743.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ab = getelementptr i8, ptr %.01644.i.i.epil, i64 4
  %.016.val.i.i.epil = load i32, ptr %i.ab, align 4, !tbaa !49
  %i.ac = add i32 %.016.val.i.i.epil, %.01743.i.i.epil ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01644.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !52

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i: ; preds = %.lr.ph.i.i.epil, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa
  %.lcssa346 = phi i32 [ %i.z, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ], [ %i.ac, %.lr.ph.i.i.epil ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.b, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread, !prof !66

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i: ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54
  %.not.i10.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i10.i, label %.thread.i, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread, !prof !66

bb.b:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i
  %i.ai = add i32 %.lcssa346, 3
  %i.aj = add i32 %.lcssa346, 1
  %i.ak = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aj, i1 false)
  %i.al = sub nuw nsw i32 39, %i.ak
  %i.am = lshr i32 %i.al, 3
  %.sroa.speculated.i.i = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %i.am)
  %i.an = add i32 %.val.i.i, 1
  %i.ao = mul i32 %.sroa.speculated.i.i, %i.an
  %i.ap = add i32 %i.ai, %i.ao                    ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = icmp slt i32 %i.ap, 0
  br i1 %i.ar, label %.critedge.i.i, label %.thread.i, !prof !67

.thread.i:                                        ; preds = %bb.b, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i
  %.01116.i = phi i32 [ %.lcssa346, %bb.b ], [ 0, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 4 uses
  %.0.i1215.i = phi i64 [ %i.aq, %bb.b ], [ 2, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 2 uses
  %i.as = phi ptr [ %i.ae, %bb.b ], [ %i.ag, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !68 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !69 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp slt i64 %i.az, %.0.i1215.i
  br i1 %i.ba, label %.critedge.i.i, label %bb.c, !prof !70

.critedge.i.i:                                    ; preds = %.thread.i, %bb.b
  %i.bb = phi ptr [ %i.as, %.thread.i ], [ %i.ae, %bb.b ]
  store i32 4, ptr %i.bb, align 4, !tbaa !54
  br label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread

bb.c:                                             ; preds = %.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.aw, ptr %i.bc, align 8, !tbaa !71
  %i.bd = sub nsw i64 0, %.0.i1215.i
  %i.be = getelementptr inbounds i8, ptr %i.au, i64 %i.bd ; 4 uses
  store ptr %i.be, ptr %i.av, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !73
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 264
  %.val46.i.i = load ptr, ptr %i.bi, align 8, !tbaa !48 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i16.i = zext i32 %.val.i.i to i64 ; 2 uses
  %i.bj = tail call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.be, ptr noundef nonnull %1, ptr %.val46.i.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i16.i, i32 noundef %.01116.i, i32 noundef %i.d)
  br i1 %i.bj, label %bb.d, label %bb.m, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.bk = zext i32 %.01116.i to i64               ; 2 uses
  %i.bl = load i32, ptr %i.as, align 4, !tbaa !54
  %.not.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.m, !prof !66

bb.e:                                             ; preds = %bb.d
  %i.bm = icmp slt i32 %.01116.i, 0
  br i1 %i.bm, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.f, !prof !70

bb.f:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.bo = load ptr, ptr %i.av, align 8, !tbaa !69 ; 4 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp slt i64 %i.br, %i.bk
  br i1 %i.bs, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, !prof !70

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i: ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bk
  store ptr %i.bt, ptr %i.av, align 8, !tbaa !69
  %.not43.i.i = icmp eq ptr %i.bo, null
  br i1 %.not43.i.i, label %bb.m, label %bb.g, !prof !78

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i
  %.idx.i17.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i16.i, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 %.idx.i17.i
  br i1 %.not41.i.i, label %.loopexit277, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %bb.g, %bb.l
  %.082.i.i = phi ptr [ %i.ch, %bb.l ], [ %.val46.i.i, %bb.g ] ; 3 uses
  %.03481.i.i = phi i32 [ %.1.ph.i.i, %bb.l ], [ %.01116.i, %bb.g ] ; 3 uses
  %.03580.i.i = phi ptr [ %.136.ph.i.i, %bb.l ], [ %i.bo, %bb.g ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !49 ; 5 uses
  %.not45.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not45.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i18.i
  %i.bx = icmp ugt i32 %i.bw, %.03481.i.i
  br i1 %i.bx, label %bb.i, label %bb.j, !prof !70

bb.i:                                             ; preds = %bb.h
  %i.by = load i32, ptr %i.as, align 4, !tbaa !54
  %.not.i.i53.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i53.not.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.m, !prof !79

bb.j:                                             ; preds = %bb.h
  %i.bz = sub nuw nsw i32 %.03481.i.i, %i.bw      ; 2 uses
  %i.ca = icmp eq i32 %i.bw, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !80 ; 2 uses
  br i1 %i.ca, label %bb.k, label %_ZL9hb_memcpyPvPKvm.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 1
  store i8 %i.cd, ptr %.03580.i.i, align 1, !tbaa !81
  br label %bb.l

_ZL9hb_memcpyPvPKvm.exit.i.i:                     ; preds = %bb.j
  %i.cf = zext nneg i32 %i.bw to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i.i, ptr readonly align 1 %i.cc, i64 %i.cf, i1 false), !alias.scope !82
  %i.cg = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 %i.cf
  br label %bb.l

bb.l:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i, %bb.k, %.lr.ph.i18.i
  %.136.ph.i.i = phi ptr [ %.03580.i.i, %.lr.ph.i18.i ], [ %i.cg, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.ce, %bb.k ]
  %.1.ph.i.i = phi i32 [ %.03481.i.i, %.lr.ph.i18.i ], [ %i.bz, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.bz, %bb.k ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 16 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.ch, %i.bu
  br i1 %.not44.i.i, label %.loopexit277, label %.lr.ph.i18.i

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i: ; preds = %bb.i, %bb.f, %bb.e
  %.sink.i.i = phi i32 [ 4, %bb.e ], [ 4, %bb.f ], [ 8, %bb.i ]
  store i32 %.sink.i.i, ptr %i.as, align 4, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, %bb.i, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, %bb.d, %bb.c
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread

.loopexit277:                                     ; preds = %bb.l, %bb.g
  %i.ci = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false)
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !87 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit277
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 220 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 292 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 508
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 308 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !103 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.da = add nsw i32 %i.cl, -1
  %i.db = zext nneg i32 %i.da to i64
  br label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.pr = load ptr, ptr %i.cn, align 8, !tbaa !103
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %i.dc = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.cy, %.lr.ph.split.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ %i.db, %.lr.ph.split.preheader ] ; 13 uses
  %.not.i.i133 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i133, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32
  %i.de = mul i32 %i.dd, 506952113
  %i.df = and i32 %i.de, 1073741823               ; 2 uses
  %i.dg = load i32, ptr %i.co, align 8, !tbaa !104
  %i.dh = urem i32 %i.df, %i.dg                   ; 2 uses
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %i.dc, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %i.dm = and i32 %i.dl, 2
  %.not15.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not15.i.i.i.i, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n
  %i.dn = load i32, ptr %i.cp, align 4
  %i.do = load i32, ptr %i.dj, align 4, !tbaa !105
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp eq i64 %indvars.iv, %i.dp
  br i1 %i.dq, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.dr = load i32, ptr %i.dy, align 4, !tbaa !105
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp eq i64 %indvars.iv, %i.ds
  br i1 %i.dt, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i, !llvm.loop !106

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.o
  %.01016.i20.i.i.i = phi i32 [ %i.dw, %bb.o ], [ %i.dh, %.lr.ph.i.i.i.i ]
  %.017.i19.i.i.i = phi i32 [ %i.du, %bb.o ], [ 0, %.lr.ph.i.i.i.i ]
  %i.du = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.dv = add i32 %i.du, %.01016.i20.i.i.i
  %i.dw = and i32 %i.dv, %i.dn                    ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dc, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = and i32 %i.ea, 2
  %.not.i.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i.i, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.o, !llvm.loop !106

_ZNK14hb_inc_bimap_t3hasEj.exit:                  ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.lcssa17.i.i.i = phi i32 [ %i.dl, %.lr.ph.i.i.i.i ], [ %i.ea, %bb.o ]
  %i.ec = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.ec, label %bb.p, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

bb.p:                                             ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.ed = load i32, ptr %i.cq, align 4, !tbaa !108
  %i.ee = zext i32 %i.ed to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.ee
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !66

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

bb.r:                                             ; preds = %bb.p
  %i.ef = load ptr, ptr %i.cr, align 8, !tbaa !109
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit: ; preds = %bb.q, %bb.r
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.q ], [ %i.eg, %bb.r ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !47
  %.not = icmp eq i32 %i.ei, 0
  br i1 %.not, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %i.ej = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.ek = load i32, ptr %i.cq, align 4, !tbaa !108
  %i.el = zext i32 %i.ek to i64
  %.not.i134 = icmp samesign ult i64 %indvars.iv, %i.el
  br i1 %.not.i134, label %bb.u, label %bb.t, !prof !66

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136

bb.u:                                             ; preds = %bb.s
  %i.em = load ptr, ptr %i.cr, align 8, !tbaa !109
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136: ; preds = %bb.t, %bb.u
  %.0.i135 = phi ptr [ @_hb_CrapPool, %bb.t ], [ %i.en, %bb.u ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i135, i64 4
  %.val.i.i137 = load i32, ptr %i.eo, align 4, !tbaa !47 ; 2 uses
  %.not41.i.i138 = icmp eq i32 %.val.i.i137, 0    ; 2 uses
  br i1 %.not41.i.i138, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148_crit_edge, label %.lr.ph.preheader.i.i139

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148_crit_edge: ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i135, i64 8
  %.val46.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148

.lr.ph.preheader.i.i139:                          ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136
  %.sroa.2.8.insert.ext.i.i.i.i.i.i140 = zext i32 %.val.i.i137 to i64 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i135, i64 8
  %.val21.i.i141 = load ptr, ptr %i.ep, align 8, !tbaa !48 ; 4 uses
  %i.eq = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i140, 1152921504606846975
  %i.er = and i64 %i.eq, 1152921504606846975      ; 2 uses
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %xtraiter349 = and i64 %i.es, 7                 ; 3 uses
  %i.et = icmp samesign ult i64 %i.er, 7
  br i1 %i.et, label %.lr.ph.i.i143.epil.preheader, label %.lr.ph.preheader.i.i139.new

.lr.ph.preheader.i.i139.new:                      ; preds = %.lr.ph.preheader.i.i139
  %unroll_iter354 = and i64 %i.es, 2305843009213693944
  br label %.lr.ph.i.i143

.lr.ph.i.i143:                                    ; preds = %.lr.ph.i.i143, %.lr.ph.preheader.i.i139.new
  %.01644.i.i144 = phi ptr [ %.val21.i.i141, %.lr.ph.preheader.i.i139.new ], [ %i.fk, %.lr.ph.i.i143 ] ; 9 uses
  %.01743.i.i145 = phi i32 [ 0, %.lr.ph.preheader.i.i139.new ], [ %i.fj, %.lr.ph.i.i143 ]
  %niter355 = phi i64 [ 0, %.lr.ph.preheader.i.i139.new ], [ %niter355.next.7, %.lr.ph.i.i143 ]
  %i.eu = getelementptr i8, ptr %.01644.i.i144, i64 4
  %.016.val.i.i146 = load i32, ptr %i.eu, align 4, !tbaa !49
  %i.ev = add i32 %.016.val.i.i146, %.01743.i.i145
  %i.ew = getelementptr i8, ptr %.01644.i.i144, i64 20
  %.016.val.i.i146.1 = load i32, ptr %i.ew, align 4, !tbaa !49
  %i.ex = add i32 %.016.val.i.i146.1, %i.ev
  %i.ey = getelementptr i8, ptr %.01644.i.i144, i64 36
  %.016.val.i.i146.2 = load i32, ptr %i.ey, align 4, !tbaa !49
  %i.ez = add i32 %.016.val.i.i146.2, %i.ex
  %i.fa = getelementptr i8, ptr %.01644.i.i144, i64 52
  %.016.val.i.i146.3 = load i32, ptr %i.fa, align 4, !tbaa !49
  %i.fb = add i32 %.016.val.i.i146.3, %i.ez
  %i.fc = getelementptr i8, ptr %.01644.i.i144, i64 68
  %.016.val.i.i146.4 = load i32, ptr %i.fc, align 4, !tbaa !49
  %i.fd = add i32 %.016.val.i.i146.4, %i.fb
  %i.fe = getelementptr i8, ptr %.01644.i.i144, i64 84
  %.016.val.i.i146.5 = load i32, ptr %i.fe, align 4, !tbaa !49
  %i.ff = add i32 %.016.val.i.i146.5, %i.fd
  %i.fg = getelementptr i8, ptr %.01644.i.i144, i64 100
  %.016.val.i.i146.6 = load i32, ptr %i.fg, align 4, !tbaa !49
  %i.fh = add i32 %.016.val.i.i146.6, %i.ff
  %i.fi = getelementptr i8, ptr %.01644.i.i144, i64 116
  %.016.val.i.i146.7 = load i32, ptr %i.fi, align 4, !tbaa !49
  %i.fj = add i32 %.016.val.i.i146.7, %i.fh       ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01644.i.i144, i64 128 ; 2 uses
  %niter355.next.7 = add i64 %niter355, 8         ; 2 uses
  %niter355.ncmp.7 = icmp eq i64 %niter355.next.7, %unroll_iter354
  br i1 %niter355.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148.loopexit.unr-lcssa, label %.lr.ph.i.i143

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i143
  %lcmp.mod351.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod351.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148, label %.lr.ph.i.i143.epil.preheader

.lr.ph.i.i143.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148.loopexit.unr-lcssa, %.lr.ph.preheader.i.i139
  %.01644.i.i144.epil.init = phi ptr [ %.val21.i.i141, %.lr.ph.preheader.i.i139 ], [ %i.fk, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148.loopexit.unr-lcssa ]
  %.01743.i.i145.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i139 ], [ %i.fj, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148.loopexit.unr-lcssa ]
  %lcmp.mod353 = icmp ne i64 %xtraiter349, 0
  tail call void @llvm.assume(i1 %lcmp.mod353)
  br label %.lr.ph.i.i143.epil

.lr.ph.i.i143.epil:                               ; preds = %.lr.ph.i.i143.epil, %.lr.ph.i.i143.epil.preheader
  %.01644.i.i144.epil = phi ptr [ %i.fn, %.lr.ph.i.i143.epil ], [ %.01644.i.i144.epil.init, %.lr.ph.i.i143.epil.preheader ] ; 2 uses
  %.01743.i.i145.epil = phi i32 [ %i.fm, %.lr.ph.i.i143.epil ], [ %.01743.i.i145.epil.init, %.lr.ph.i.i143.epil.preheader ]
  %epil.iter350 = phi i64 [ %epil.iter350.next, %.lr.ph.i.i143.epil ], [ 0, %.lr.ph.i.i143.epil.preheader ]
  %i.fl = getelementptr i8, ptr %.01644.i.i144.epil, i64 4
  %.016.val.i.i146.epil = load i32, ptr %i.fl, align 4, !tbaa !49
  %i.fm = add i32 %.016.val.i.i146.epil, %.01743.i.i145.epil ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.01644.i.i144.epil, i64 16
  %epil.iter350.next = add i64 %epil.iter350, 1   ; 2 uses
  %epil.iter350.cmp.not = icmp eq i64 %epil.iter350.next, %xtraiter349
  br i1 %epil.iter350.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148, label %.lr.ph.i.i143.epil, !llvm.loop !110

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148.loopexit.unr-lcssa, %.lr.ph.i.i143.epil, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi = phi i64 [ 0, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i140, %.lr.ph.i.i143.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i140, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i = phi ptr [ %.val46.i.pre, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148_crit_edge ], [ %.val21.i.i141, %.lr.ph.i.i143.epil ], [ %.val21.i.i141, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148.loopexit.unr-lcssa ] ; 3 uses
  %.066.i = phi i32 [ 0, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit136._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148_crit_edge ], [ %i.fj, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148.loopexit.unr-lcssa ], [ %i.fm, %.lr.ph.i.i143.epil ] ; 4 uses
  %i.fo = tail call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.ej, ptr noundef nonnull %1, ptr %.val46.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi, i32 noundef %.066.i, i32 noundef 0)
  br i1 %i.fo, label %bb.v, label %.critedge, !prof !66

bb.v:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i148
  %i.fp = zext i32 %.066.i to i64                 ; 2 uses
  %i.fq = load i32, ptr %i.cs, align 4, !tbaa !54
  %.not.i.i149 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i149, label %bb.w, label %.critedge, !prof !66

bb.w:                                             ; preds = %bb.v
  %i.fr = icmp slt i32 %.066.i, 0
  br i1 %i.fr, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %bb.x, !prof !70

bb.x:                                             ; preds = %bb.w
  %i.fs = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.ft = load ptr, ptr %i.av, align 8, !tbaa !69 ; 4 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = icmp slt i64 %i.fw, %i.fp
  br i1 %i.fx, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, !prof !70

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i: ; preds = %bb.x
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fp
  store ptr %i.fy, ptr %i.av, align 8, !tbaa !69
  %.not43.i = icmp eq ptr %i.ft, null
  br i1 %.not43.i, label %.critedge, label %bb.y, !prof !78

bb.y:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi, 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.val46.i, i64 %.idx.i
  br i1 %.not41.i.i138, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %bb.ad
  %.082.i = phi ptr [ %i.gm, %bb.ad ], [ %.val46.i, %bb.y ] ; 3 uses
  %.03481.i = phi i32 [ %.1.ph.i, %bb.ad ], [ %.066.i, %bb.y ] ; 3 uses
  %.03580.i = phi ptr [ %.136.ph.i, %bb.ad ], [ %i.ft, %bb.y ] ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.082.i, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !49 ; 5 uses
  %.not45.i = icmp eq i32 %i.gb, 0
  br i1 %.not45.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  %i.gc = icmp ugt i32 %i.gb, %.03481.i
  br i1 %i.gc, label %bb.aa, label %bb.ab, !prof !70

bb.aa:                                            ; preds = %bb.z
  %i.gd = load i32, ptr %i.cs, align 4, !tbaa !54
  %.not.i.i53.not.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i53.not.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %.critedge, !prof !79

bb.ab:                                            ; preds = %bb.z
  %i.ge = sub nuw nsw i32 %.03481.i, %i.gb        ; 2 uses
  %i.gf = icmp eq i32 %i.gb, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.082.i, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !80 ; 2 uses
  br i1 %i.gf, label %bb.ac, label %_ZL9hb_memcpyPvPKvm.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !81
  %i.gj = getelementptr inbounds nuw i8, ptr %.03580.i, i64 1
  store i8 %i.gi, ptr %.03580.i, align 1, !tbaa !81
  br label %bb.ad

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.ab
  %i.gk = zext nneg i32 %i.gb to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i, ptr readonly align 1 %i.gh, i64 %i.gk, i1 false), !alias.scope !111
  %i.gl = getelementptr inbounds nuw i8, ptr %.03580.i, i64 %i.gk
  br label %bb.ad

bb.ad:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i, %bb.ac, %.lr.ph.i
  %.136.ph.i = phi ptr [ %.03580.i, %.lr.ph.i ], [ %i.gl, %_ZL9hb_memcpyPvPKvm.exit.i ], [ %i.gj, %bb.ac ]
  %.1.ph.i = phi i32 [ %.03481.i, %.lr.ph.i ], [ %i.ge, %_ZL9hb_memcpyPvPKvm.exit.i ], [ %i.ge, %bb.ac ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.082.i, i64 16 ; 2 uses
  %.not44.i = icmp eq ptr %i.gm, %i.fz
  br i1 %.not44.i, label %.thread, label %.lr.ph.i

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i: ; preds = %bb.x, %bb.w, %bb.aa
  %.sink.i = phi i32 [ 8, %bb.aa ], [ 4, %bb.w ], [ 4, %bb.x ]
  store i32 %.sink.i, ptr %i.cs, align 4, !tbaa !54
  br label %.critedge

.thread:                                          ; preds = %bb.ad, %bb.y
  %i.gn = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true)
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %.1 = phi i32 [ 0, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit ], [ %i.gn, %.thread ] ; 2 uses
  %i.go = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11PrivateDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.gp = load i32, ptr %i.ck, align 4, !tbaa !115
  %i.gq = zext i32 %i.gp to i64
  %.not.i150 = icmp ult i64 %indvars.iv, %i.gq
  %i.gr = load ptr, ptr %i.cv, align 8
  %i.gs = getelementptr inbounds nuw [40 x i8], ptr %i.gr, i64 %indvars.iv
  %.0.i151 = select i1 %.not.i150, ptr %i.gs, ptr @_hb_NullPool, !prof !66 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i151, i64 12 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !116
  %.not12.i = icmp eq i32 %i.gu, 0
  br i1 %.not12.i, label %.loopexit276, label %.lr.ph.i152

.lr.ph.i152:                                      ; preds = %bb.ae
  %i.gv = load i8, ptr %i.cu, align 8, !tbaa !120, !range !121, !noundef !122
  %i.gw = load i8, ptr %i.ct, align 4, !tbaa !123, !range !121, !noundef !122
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i151, i64 16
  %i.gy = trunc nuw i8 %i.gv to i1
  %i.gz = trunc nuw i8 %i.gw to i1
  %i.ha = icmp eq i32 %.1, 0
  %or.cond.not.i = or i1 %i.ha, %i.gz
  br label %bb.af

_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread: ; preds = %.lr.ph.i.i221, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %.preheader.i.i, %bb.ah, %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hb = load i32, ptr %i.gt, align 4, !tbaa !116
  %i.hc = zext i32 %i.hb to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.hc
  br i1 %.not.not.i, label %bb.af, label %.loopexit276, !llvm.loop !124

bb.af:                                            ; preds = %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread, %.lr.ph.i152
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i152 ], [ %indvars.iv.next.i, %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread ] ; 2 uses
  %i.hd = load ptr, ptr %i.gx, align 8
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv.i ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !125 ; 2 uses
  br i1 %i.gy, label %bb.ag, label %_ZN3CFF12dict_opset_t10is_hint_opEj.exit.i

bb.ag:                                            ; preds = %bb.af
  switch i32 %i.hg, label %bb.ai [
    i32 6, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 7, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 8, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 9, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 268, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 269, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 10, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 11, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 265, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 266, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 267, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 270, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 273, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 274, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread
    i32 19, label %bb.ah
  ]

_ZN3CFF12dict_opset_t10is_hint_opEj.exit.i:       ; preds = %bb.af
  %i.hh = icmp eq i32 %i.hg, 19
  br i1 %i.hh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %_ZN3CFF12dict_opset_t10is_hint_opEj.exit.i
  br i1 %or.cond.not.i, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit

bb.ai:                                            ; preds = %bb.ag, %_ZN3CFF12dict_opset_t10is_hint_opEj.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 12 ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 4, !tbaa !127 ; 2 uses
  %i.hk = zext i8 %i.hj to i64                    ; 3 uses
  %i.hl = load i32, ptr %i.cs, align 4, !tbaa !54
  %.not.i.i.i217 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i217, label %bb.aj, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread247, !prof !66

bb.aj:                                            ; preds = %bb.ai
  %i.hm = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.hn = load ptr, ptr %i.av, align 8, !tbaa !69 ; 3 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = icmp slt i64 %i.hq, %i.hk
  br i1 %i.hr, label %.critedge.i.i.i, label %bb.ak, !prof !70

.critedge.i.i.i:                                  ; preds = %bb.aj
  store i32 4, ptr %i.cs, align 4, !tbaa !54
  br label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread247

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.not.i.i = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.not.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i219, label %bb.al, !prof !128

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hn, i8 0, i64 %i.hk, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !69
  br label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i219

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i219: ; preds = %bb.al, %bb.ak
  %i.hs = phi ptr [ %.pre.i.i.i, %bb.al ], [ %i.hn, %bb.ak ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hk
  store ptr %i.ht, ptr %i.av, align 8, !tbaa !69
  %.not.i.i220 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i220, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread247, label %.preheader.i.i, !prof !78

.preheader.i.i:                                   ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i219
  %i.hu = load i8, ptr %i.hi, align 4, !tbaa !127
  %.not15.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not15.i.i, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread, label %.lr.ph.i.i221

.lr.ph.i.i221:                                    ; preds = %.preheader.i.i, %.lr.ph.i.i221
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i221 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.hv = load ptr, ptr %i.he, align 8, !tbaa !129
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %indvars.iv.i.i
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !81
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 %indvars.iv.i.i
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !81
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hz = load i8, ptr %i.hi, align 4, !tbaa !127
  %i.ia = zext i8 %i.hz to i64
  %i.ib = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ia
  br i1 %i.ib, label %.lr.ph.i.i221, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread, !llvm.loop !130

_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit: ; preds = %bb.ah
  %i.ic = tail call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EsLj2EEELi28EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %1, i32 noundef 19, i32 noundef %.1, i32 noundef 0)
  br i1 %i.ic, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread, label %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread247, !prof !131

.loopexit276:                                     ; preds = %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread, %bb.ae
  %i.id = load ptr, ptr %i.cn, align 8, !tbaa !103 ; 4 uses
  %.not.i.i.i154 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i154, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.am

bb.am:                                            ; preds = %.loopexit276
  %i.ie = load i32, ptr %i.co, align 8, !tbaa !104
  %i.if = urem i32 %i.df, %i.ie                   ; 2 uses
  %i.ig = zext nneg i32 %i.if to i64              ; 2 uses
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %i.id, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i32, ptr %i.ii, align 4            ; 2 uses
  %i.ik = and i32 %i.ij, 2
  %.not15.i.i.i.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not15.i.i.i.i.i, label %_ZNK14hb_inc_bimap_tixEj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.am
  %i.il = load i32, ptr %i.cp, align 4
  %i.im = load i32, ptr %i.ih, align 4, !tbaa !105
  %i.in = zext i32 %i.im to i64
  %i.io = icmp eq i64 %indvars.iv, %i.in
  br i1 %i.io, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i155

bb.an:                                            ; preds = %.lr.ph.i.i.i.i155
  %i.ip = load i32, ptr %i.ja, align 4, !tbaa !105
  %i.iq = zext i32 %i.ip to i64
  %i.ir = icmp eq i64 %indvars.iv, %i.iq
  br i1 %i.ir, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i155, !llvm.loop !106

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.lr.ph.i.i.i.i.i
  %.lcssa10.i.i.i.i = phi i32 [ %i.ij, %.lr.ph.i.i.i.i.i ], [ %i.jc, %bb.an ]
  %i.is = phi i64 [ %i.ig, %.lr.ph.i.i.i.i.i ], [ %i.iz, %bb.an ]
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %i.id, i64 %i.is
  %i.iu = trunc i32 %.lcssa10.i.i.i.i to i1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %spec.select.i.i.i.i = select i1 %i.iu, ptr %i.iv, ptr @minus_1
  br label %_ZNK14hb_inc_bimap_tixEj.exit

.lr.ph.i.i.i.i155:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.an
  %.01016.i13.i.i.i.i = phi i32 [ %i.iy, %bb.an ], [ %i.if, %.lr.ph.i.i.i.i.i ]
  %.017.i12.i.i.i.i = phi i32 [ %i.iw, %bb.an ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.iw = add i32 %.017.i12.i.i.i.i, 1            ; 2 uses
  %i.ix = add i32 %i.iw, %.01016.i13.i.i.i.i
  %i.iy = and i32 %i.ix, %i.il                    ; 2 uses
  %i.iz = zext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds nuw [12 x i8], ptr %i.id, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jc = load i32, ptr %i.jb, align 4            ; 2 uses
  %i.jd = and i32 %i.jc, 2
  %.not.i.i.i.i.i = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.an, !llvm.loop !106

_ZNK14hb_inc_bimap_tixEj.exit:                    ; preds = %.lr.ph.i.i.i.i155, %.loopexit276, %bb.am, %._crit_edge.i.i.i.i
  %.0.i.i.i = phi ptr [ @minus_1, %.loopexit276 ], [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i ], [ @minus_1, %bb.am ], [ @minus_1, %.lr.ph.i.i.i.i155 ]
  %i.je = load i32, ptr %.0.i.i.i, align 4, !tbaa !105 ; 4 uses
  %i.jf = load ptr, ptr %i.bf, align 8, !tbaa !72 ; 2 uses
  %.not.i156 = icmp eq ptr %i.jf, null
  br i1 %.not.i156, label %_ZNK22hb_serialize_context_t6lengthEv.exit, label %bb.ao, !prof !70

bb.ao:                                            ; preds = %_ZNK14hb_inc_bimap_tixEj.exit
  %i.jg = load ptr, ptr %i.av, align 8, !tbaa !69
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !77
  %i.ji = ptrtoint ptr %i.jg to i64
end_hunk_0
begin_hunk_1_@_ZNK2OT4cff120accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff1_subset_planE:bb.a
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.ln = call noundef zeroext i1 @_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE(ptr noundef nonnull align 1 dereferenceable(5) %i.lh, ptr noundef nonnull %1, i8 noundef zeroext %i.lj, i32 noundef %i.ll, ptr noundef nonnull align 8 dereferenceable(16) %i.lm)
  br i1 %i.ln, label %.thread258, label %bb.bf, !prof !66

.thread258:                                       ; preds = %bb.be
  %i.lo = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true)
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 %i.lo, ptr %i.lp, align 8, !tbaa !150
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread

bb.bg:                                            ; preds = %.thread258, %bb.bd
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 322
  %i.lr = load i8, ptr %i.lq, align 2, !tbaa !151, !range !121, !noundef !122
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.lt = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF8EncodingEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 323
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !152
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 324
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !153
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.ma = call noundef zeroext i1 @_ZN3CFF8Encoding9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EES7_(ptr noundef nonnull align 1 dereferenceable(4) %i.lt, ptr noundef nonnull %1, i8 noundef zeroext %i.lv, i32 noundef %i.lx, ptr noundef nonnull align 8 dereferenceable(16) %i.ly, ptr noundef nonnull align 8 dereferenceable(16) %i.lz)
  br i1 %i.ma, label %.thread260, label %bb.bi, !prof !66

.thread260:                                       ; preds = %bb.bh
  %i.mb = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true)
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !154
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread

bb.bj:                                            ; preds = %.thread260, %bb.bg
  %i.md = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 276
  %.val.i.i174 = load i32, ptr %i.me, align 4, !tbaa !47 ; 2 uses
  %.not41.i.i175 = icmp eq i32 %.val.i.i174, 0    ; 2 uses
  br i1 %.not41.i.i175, label %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185_crit_edge, label %.lr.ph.preheader.i.i176

._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185_crit_edge: ; preds = %bb.bj
  %.phi.trans.insert300 = getelementptr inbounds nuw i8, ptr %2, i64 280
  %.val46.i188.pre = load ptr, ptr %.phi.trans.insert300, align 8, !tbaa !48
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185

.lr.ph.preheader.i.i176:                          ; preds = %bb.bj
  %.sroa.2.8.insert.ext.i.i.i.i.i.i177 = zext i32 %.val.i.i174 to i64 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 280
  %.val21.i.i178 = load ptr, ptr %i.mf, align 8, !tbaa !48 ; 4 uses
  %i.mg = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i177, 1152921504606846975
  %i.mh = and i64 %i.mg, 1152921504606846975      ; 2 uses
  %i.mi = add nuw nsw i64 %i.mh, 1                ; 2 uses
  %xtraiter356 = and i64 %i.mi, 7                 ; 3 uses
  %i.mj = icmp samesign ult i64 %i.mh, 7
  br i1 %i.mj, label %.lr.ph.i.i180.epil.preheader, label %.lr.ph.preheader.i.i176.new

.lr.ph.preheader.i.i176.new:                      ; preds = %.lr.ph.preheader.i.i176
  %unroll_iter361 = and i64 %i.mi, 2305843009213693944
  br label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %.lr.ph.i.i180, %.lr.ph.preheader.i.i176.new
  %.01644.i.i181 = phi ptr [ %.val21.i.i178, %.lr.ph.preheader.i.i176.new ], [ %i.na, %.lr.ph.i.i180 ] ; 9 uses
  %.01743.i.i182 = phi i32 [ 0, %.lr.ph.preheader.i.i176.new ], [ %i.mz, %.lr.ph.i.i180 ]
  %niter362 = phi i64 [ 0, %.lr.ph.preheader.i.i176.new ], [ %niter362.next.7, %.lr.ph.i.i180 ]
  %i.mk = getelementptr i8, ptr %.01644.i.i181, i64 4
  %.016.val.i.i183 = load i32, ptr %i.mk, align 4, !tbaa !49
  %i.ml = add i32 %.016.val.i.i183, %.01743.i.i182
  %i.mm = getelementptr i8, ptr %.01644.i.i181, i64 20
  %.016.val.i.i183.1 = load i32, ptr %i.mm, align 4, !tbaa !49
  %i.mn = add i32 %.016.val.i.i183.1, %i.ml
  %i.mo = getelementptr i8, ptr %.01644.i.i181, i64 36
  %.016.val.i.i183.2 = load i32, ptr %i.mo, align 4, !tbaa !49
  %i.mp = add i32 %.016.val.i.i183.2, %i.mn
  %i.mq = getelementptr i8, ptr %.01644.i.i181, i64 52
  %.016.val.i.i183.3 = load i32, ptr %i.mq, align 4, !tbaa !49
  %i.mr = add i32 %.016.val.i.i183.3, %i.mp
  %i.ms = getelementptr i8, ptr %.01644.i.i181, i64 68
  %.016.val.i.i183.4 = load i32, ptr %i.ms, align 4, !tbaa !49
  %i.mt = add i32 %.016.val.i.i183.4, %i.mr
  %i.mu = getelementptr i8, ptr %.01644.i.i181, i64 84
  %.016.val.i.i183.5 = load i32, ptr %i.mu, align 4, !tbaa !49
  %i.mv = add i32 %.016.val.i.i183.5, %i.mt
  %i.mw = getelementptr i8, ptr %.01644.i.i181, i64 100
  %.016.val.i.i183.6 = load i32, ptr %i.mw, align 4, !tbaa !49
  %i.mx = add i32 %.016.val.i.i183.6, %i.mv
  %i.my = getelementptr i8, ptr %.01644.i.i181, i64 116
  %.016.val.i.i183.7 = load i32, ptr %i.my, align 4, !tbaa !49
  %i.mz = add i32 %.016.val.i.i183.7, %i.mx       ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.01644.i.i181, i64 128 ; 2 uses
  %niter362.next.7 = add i64 %niter362, 8         ; 2 uses
  %niter362.ncmp.7 = icmp eq i64 %niter362.next.7, %unroll_iter361
  br i1 %niter362.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185.loopexit.unr-lcssa, label %.lr.ph.i.i180

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i180
  %lcmp.mod358.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod358.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185, label %.lr.ph.i.i180.epil.preheader

.lr.ph.i.i180.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185.loopexit.unr-lcssa, %.lr.ph.preheader.i.i176
  %.01644.i.i181.epil.init = phi ptr [ %.val21.i.i178, %.lr.ph.preheader.i.i176 ], [ %i.na, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185.loopexit.unr-lcssa ]
  %.01743.i.i182.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i176 ], [ %i.mz, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185.loopexit.unr-lcssa ]
  %lcmp.mod360 = icmp ne i64 %xtraiter356, 0
  call void @llvm.assume(i1 %lcmp.mod360)
  br label %.lr.ph.i.i180.epil

.lr.ph.i.i180.epil:                               ; preds = %.lr.ph.i.i180.epil, %.lr.ph.i.i180.epil.preheader
  %.01644.i.i181.epil = phi ptr [ %i.nd, %.lr.ph.i.i180.epil ], [ %.01644.i.i181.epil.init, %.lr.ph.i.i180.epil.preheader ] ; 2 uses
  %.01743.i.i182.epil = phi i32 [ %i.nc, %.lr.ph.i.i180.epil ], [ %.01743.i.i182.epil.init, %.lr.ph.i.i180.epil.preheader ]
  %epil.iter357 = phi i64 [ %epil.iter357.next, %.lr.ph.i.i180.epil ], [ 0, %.lr.ph.i.i180.epil.preheader ]
  %i.nb = getelementptr i8, ptr %.01644.i.i181.epil, i64 4
  %.016.val.i.i183.epil = load i32, ptr %i.nb, align 4, !tbaa !49
  %i.nc = add i32 %.016.val.i.i183.epil, %.01743.i.i182.epil ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.01644.i.i181.epil, i64 16
  %epil.iter357.next = add i64 %epil.iter357, 1   ; 2 uses
  %epil.iter357.cmp.not = icmp eq i64 %epil.iter357.next, %xtraiter356
  br i1 %epil.iter357.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185, label %.lr.ph.i.i180.epil, !llvm.loop !155

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185.loopexit.unr-lcssa, %.lr.ph.i.i180.epil, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i189.pre-phi = phi i64 [ 0, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i177, %.lr.ph.i.i180.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i177, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i188 = phi ptr [ %.val46.i188.pre, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185_crit_edge ], [ %.val21.i.i178, %.lr.ph.i.i180.epil ], [ %.val21.i.i178, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185.loopexit.unr-lcssa ] ; 3 uses
  %.066.i187 = phi i32 [ 0, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185_crit_edge ], [ %i.mz, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185.loopexit.unr-lcssa ], [ %i.nc, %.lr.ph.i.i180.epil ] ; 4 uses
  %i.ne = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.md, ptr noundef nonnull %1, ptr %.val46.i188, i64 %.sroa.2.8.insert.ext.i.i.i.i.i189.pre-phi, i32 noundef %.066.i187, i32 noundef 0)
  br i1 %i.ne, label %bb.bk, label %bb.bt, !prof !66

bb.bk:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185
  %i.nf = zext i32 %.066.i187 to i64              ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !54
  %.not.i.i191 = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i191, label %bb.bl, label %bb.bt, !prof !66

bb.bl:                                            ; preds = %bb.bk
  %i.ni = icmp slt i32 %.066.i187, 0
  br i1 %i.ni, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i206, label %bb.bm, !prof !70

bb.bm:                                            ; preds = %bb.bl
  %i.nj = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.nk = load ptr, ptr %i.av, align 8, !tbaa !69 ; 4 uses
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm
  %i.no = icmp slt i64 %i.nn, %i.nf
  br i1 %i.no, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i206, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i192, !prof !70

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i192: ; preds = %bb.bm
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nf
  store ptr %i.np, ptr %i.av, align 8, !tbaa !69
  %.not43.i193 = icmp eq ptr %i.nk, null
  br i1 %.not43.i193, label %bb.bt, label %bb.bn, !prof !78

bb.bn:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i192
  %.idx.i194 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i189.pre-phi, 4
  %i.nq = getelementptr inbounds nuw i8, ptr %.val46.i188, i64 %.idx.i194
  br i1 %.not41.i.i175, label %.loopexit, label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %bb.bn, %bb.bs
  %.082.i197 = phi ptr [ %i.od, %bb.bs ], [ %.val46.i188, %bb.bn ] ; 3 uses
  %.03481.i198 = phi i32 [ %.1.ph.i203, %bb.bs ], [ %.066.i187, %bb.bn ] ; 3 uses
  %.03580.i199 = phi ptr [ %.136.ph.i202, %bb.bs ], [ %i.nk, %bb.bn ] ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.082.i197, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !49 ; 5 uses
  %.not45.i200 = icmp eq i32 %i.ns, 0
  br i1 %.not45.i200, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i196
  %i.nt = icmp ugt i32 %i.ns, %.03481.i198
  br i1 %i.nt, label %bb.bp, label %bb.bq, !prof !70

bb.bp:                                            ; preds = %bb.bo
  %i.nu = load i32, ptr %i.ng, align 4, !tbaa !54
  %.not.i.i53.not.i205 = icmp eq i32 %i.nu, 0
  br i1 %.not.i.i53.not.i205, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i206, label %bb.bt, !prof !79

bb.bq:                                            ; preds = %bb.bo
  %i.nv = sub nuw nsw i32 %.03481.i198, %i.ns     ; 2 uses
  %i.nw = icmp eq i32 %i.ns, 1
  %i.nx = getelementptr inbounds nuw i8, ptr %.082.i197, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !80 ; 2 uses
  br i1 %i.nw, label %bb.br, label %_ZL9hb_memcpyPvPKvm.exit.i201

bb.br:                                            ; preds = %bb.bq
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !81
  %i.oa = getelementptr inbounds nuw i8, ptr %.03580.i199, i64 1
  store i8 %i.nz, ptr %.03580.i199, align 1, !tbaa !81
  br label %bb.bs

_ZL9hb_memcpyPvPKvm.exit.i201:                    ; preds = %bb.bq
  %i.ob = zext nneg i32 %i.ns to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i199, ptr readonly align 1 %i.ny, i64 %i.ob, i1 false), !alias.scope !156
  %i.oc = getelementptr inbounds nuw i8, ptr %.03580.i199, i64 %i.ob
  br label %bb.bs

bb.bs:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i201, %bb.br, %.lr.ph.i196
  %.136.ph.i202 = phi ptr [ %.03580.i199, %.lr.ph.i196 ], [ %i.oc, %_ZL9hb_memcpyPvPKvm.exit.i201 ], [ %i.oa, %bb.br ]
  %.1.ph.i203 = phi i32 [ %.03481.i198, %.lr.ph.i196 ], [ %i.nv, %_ZL9hb_memcpyPvPKvm.exit.i201 ], [ %i.nv, %bb.br ]
  %i.od = getelementptr inbounds nuw i8, ptr %.082.i197, i64 16 ; 2 uses
  %.not44.i204 = icmp eq ptr %i.od, %i.nq
  br i1 %.not44.i204, label %.loopexit, label %.lr.ph.i196

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i206: ; preds = %bb.bp, %bb.bm, %bb.bl
  %.sink.i207 = phi i32 [ 4, %bb.bl ], [ 4, %bb.bm ], [ 8, %bb.bp ]
  store i32 %.sink.i207, ptr %i.ng, align 4, !tbaa !54
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i206, %bb.bp, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i192, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i185, %bb.bk
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread

.loopexit:                                        ; preds = %bb.bs, %bb.bn
  %i.oe = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false) ; 0 uses
  %i.of = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF15CFF1StringIndexEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.oh = load i8, ptr %i.og, align 8, !tbaa !160, !range !121, !noundef !122
  %i.oi = trunc nuw i8 %i.oh to i1
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 448 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 8
  %i.ol = icmp sgt i32 %i.ok, -1
  %.not275 = select i1 %i.oi, i1 %i.ol, i1 false
  br i1 %.not275, label %bb.bu, label %.thread268, !prof !66

bb.bu:                                            ; preds = %.loopexit
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !161
  %i.oo = call noundef zeroext i1 @_ZN3CFF15CFF1StringIndex9serializeEP22hb_serialize_context_tRKS0_RK11hb_vector_tIjLb0EE(ptr noundef nonnull align 1 dereferenceable(4) %i.of, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(4) %i.on, ptr noundef nonnull align 8 dereferenceable(16) %i.oj)
  br i1 %i.oo, label %bb.bv, label %.thread268, !prof !162

.thread268:                                       ; preds = %.loopexit, %bb.bu
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread

bb.bv:                                            ; preds = %bb.bu
  %i.op = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 0 uses
  %i.oq = load i32, ptr %i.ng, align 4, !tbaa !54
  %.not.i.i209 = icmp eq i32 %i.oq, 0
  br i1 %.not.i.i209, label %bb.bw, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread, !prof !66

bb.bw:                                            ; preds = %bb.bv
  %i.or = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.os = load ptr, ptr %i.av, align 8, !tbaa !69 ; 2 uses
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = icmp slt i64 %i.ov, 4
  br i1 %i.ow, label %.critedge.i.i211, label %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit, !prof !70

.critedge.i.i211:                                 ; preds = %bb.bw
  store i32 4, ptr %i.ng, align 4, !tbaa !54
  br label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread

_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit: ; preds = %bb.bw
  store i32 0, ptr %i.os, align 1
  %.pre.i.i = load ptr, ptr %i.av, align 8, !tbaa !69 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  store ptr %i.ox, ptr %i.av, align 8, !tbaa !69
  %.not124 = icmp eq ptr %.pre.i.i, null
  br i1 %.not124, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread, label %bb.bx, !prof !78

bb.bx:                                            ; preds = %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit
  store <4 x i8> <i8 1, i8 0, i8 4, i8 4>, ptr %.pre.i.i, align 1, !tbaa !81
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !163
  %i.pa = call noundef ptr @_ZN22hb_serialize_context_t5embedIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_RKS6_(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 1 dereferenceable(4) %i.oz)
  %.not125 = icmp eq ptr %i.pa, null
  br i1 %.not125, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread, label %bb.by, !prof !70

bb.by:                                            ; preds = %bb.bx
  %i.pb = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF7TopDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 464
  store ptr %i.pc, ptr %6, align 8, !tbaa !164
  %i.pe = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.pd, ptr %i.pe, align 8, !tbaa !166
  %i.pf = call noundef zeroext i1 @_ZN3CFF4Dict9serializeI26cff1_top_dict_values_mod_t29cff1_top_dict_op_serializer_tJR20top_dict_modifiers_tEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %i.pb, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.pf, label %bb.bz, label %bb.cb, !prof !66

bb.bz:                                            ; preds = %bb.by
  %i.pg = load ptr, ptr %i.bf, align 8, !tbaa !72 ; 2 uses
  %.not.i212 = icmp eq ptr %i.pg, null
  br i1 %.not.i212, label %_ZNK22hb_serialize_context_t6lengthEv.exit214, label %bb.ca, !prof !70

bb.ca:                                            ; preds = %bb.bz
  %i.ph = load ptr, ptr %i.av, align 8, !tbaa !69
  %i.pi = load ptr, ptr %i.pg, align 8, !tbaa !77
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = trunc i64 %i.pl to i32
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit214

_ZNK22hb_serialize_context_t6lengthEv.exit214:    ; preds = %bb.bz, %bb.ca
  %.0.i213 = phi i32 [ %i.pm, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  store i32 %.0.i213, ptr %i.a, align 4, !tbaa !105
  %i.pn = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false) ; 0 uses
  %i.po = load ptr, ptr %i.av, align 8, !tbaa !69
  %i.pp = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS8_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.po, ptr noundef nonnull %1, ptr nonnull %i.a, i64 1, i32 noundef %.0.i213, i32 noundef 0)
  br label %bb.cc

bb.cb:                                            ; preds = %bb.by
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit214, %bb.cb
  %.15 = phi i1 [ %i.pp, %_ZNK22hb_serialize_context_t6lengthEv.exit214 ], [ false, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread

_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff1_subset_planERKNS1_4cff120accelerator_subset_tE.exit.thread: ; preds = %bb.bv, %.critedge.i.i211, %.critedge, %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread247, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, %.critedge.i.i, %bb.m, %.thread268, %bb.bt, %bb.bi, %bb.bf, %bb.ay, %bb.cc, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit, %bb.bx, %bb.bc
  %.17 = phi i1 [ false, %.critedge ], [ false, %.thread268 ], [ false, %bb.bt ], [ false, %bb.bi ], [ false, %bb.bf ], [ false, %bb.bc ], [ false, %bb.ay ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ], [ %.15, %bb.cc ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit ], [ false, %bb.bx ], [ false, %bb.m ], [ false, %.critedge.i.i ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i ], [ false, %_ZNK33cff1_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj.exit.thread247 ], [ false, %.critedge.i.i211 ], [ false, %bb.bv ]
  ret i1 %.17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !70

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168
  store ptr %i.f, ptr %i.d, align 8, !tbaa !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !169
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !66

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #10 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !170
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !70

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !168
  store ptr %i.p, ptr %i.d, align 8, !tbaa !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !54
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !54
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !172
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !172
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !173
  store ptr %i.r, ptr %i.u, align 8, !tbaa !72
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !69
  ret ptr %.0
end_hunk_1
begin_hunk_2_@_ZN22hb_serialize_context_t8pop_packEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !180
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = call noundef ptr @_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE10fetch_itemERKS3_j(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.ad) ; 2 uses
  %.not6.i = icmp eq ptr %i.ah, null
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %spec.select.i = select i1 %.not6.i, ptr @_hb_NullPool, ptr %i.ai
  br label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit

_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit: ; preds = %bb.d, %bb.e
  %.1.i = phi ptr [ @_hb_NullPool, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.aj = load i32, ptr %.1.i, align 4, !tbaa !105 ; 5 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !105
  %.not17 = icmp eq i32 %i.aj, 0
  %.pre26.pre = load ptr, ptr %i.a, align 8, !tbaa !168 ; 4 uses
  br i1 %.not17, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !181
  %.not.i.i = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !66

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.am, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !182
  %i.ap = zext i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.aq, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre26.pre, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !178 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre26.pre, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !179 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %.idx.i = mul nuw nsw i64 %i.av, 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.not12.i = icmp eq i32 %i.au, 0
  br i1 %.not12.i, label %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !168 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 36 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i, %.lr.ph.i
  %.013.i = phi ptr [ %i.as, %.lr.ph.i ], [ %i.bk, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i ] ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !179 ; 3 uses
  %i.bc = load i32, ptr %i.ay, align 8, !tbaa !183
  %.not.i10.i = icmp slt i32 %i.bb, %i.bc
  br i1 %.not.i10.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = add i32 %i.bb, 1
  %i.be = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i32 noundef %i.bd, i1 noundef zeroext false)
  br i1 %i.be, label %..critedge_crit_edge.i.i, label %bb.k, !prof !66

..critedge_crit_edge.i.i:                         ; preds = %bb.j
  %.pre.i.i = load i32, ptr %i.az, align 4, !tbaa !179
  br label %.critedge.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.i
  %i.bf = phi i32 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.bb, %bb.i ] ; 2 uses
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !178
  %i.bh = add i32 %i.bf, 1
  store i32 %i.bh, ptr %i.az, align 4, !tbaa !179
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.bg, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %.013.i, i64 12, i1 false), !tbaa.struct !184
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i: ; preds = %.critedge.i.i, %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i, i64 12 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bk, %i.aw
  br i1 %.not.i18, label %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit, label %bb.i

_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !168
  br label %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit

_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit: ; preds = %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i
  %i.bl = phi ptr [ %.pre, %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit ], [ %.pre26.pre, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !183
  %i.bo = add i32 %i.bn, -1
  %spec.select.i.i.i = icmp ult i32 %i.bo, -2
  br i1 %spec.select.i.i.i, label %bb.l, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

bb.l:                                             ; preds = %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i32 0, ptr %i.bp, align 4, !tbaa !179
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !178
  call void @hb_free(ptr noundef %i.br) #10
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i: ; preds = %bb.l, %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !183
  %i.bu = add i32 %i.bt, -1
  %spec.select.i.i1.i = icmp ult i32 %i.bu, -2
  br i1 %spec.select.i.i1.i, label %bb.m, label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

bb.m:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  store i32 0, ptr %i.bv, align 4, !tbaa !179
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !178
  call void @hb_free(ptr noundef %i.bx) #10
  br label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

_ZN22hb_serialize_context_t8object_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !168 ; 2 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !167
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !168
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !167
  br label %bb.x

bb.n:                                             ; preds = %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit, %bb.c
  %.pre26.a = phi ptr [ %.pre26.pre, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit ], [ %i.d, %bb.c ] ; 2 uses
  %.0 = phi i32 [ %i.ad, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit ], [ 0, %bb.c ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !68
  %i.cd = sub nsw i64 0, %i.r
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd ; 3 uses
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !68
  br i1 %.not14, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %.pre26.a, align 8, !tbaa !77
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %i.cf, i64 %i.r, i1 false)
  %.pre24 = load ptr, ptr %i.cb, align 8, !tbaa !68
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !168
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cg = phi ptr [ %.pre26.a, %bb.n ], [ %.pre25, %bb.o ] ; 3 uses
  %i.ch = phi ptr [ %i.ce, %bb.n ], [ %.pre24, %bb.o ] ; 2 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !77
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !181 ; 3 uses
  %i.cn = load i32, ptr %i.ck, align 8, !tbaa !185
  %.not.i19 = icmp slt i32 %i.cm, %i.cn
  br i1 %.not.i19, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = add i32 %i.cm, 1
  %i.cp = call noundef zeroext i1 @_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i32 noundef %i.co, i1 noundef zeroext false)
  br i1 %i.cp, label %..critedge_crit_edge.i, label %bb.r, !prof !66

..critedge_crit_edge.i:                           ; preds = %bb.q
  %.pre.i = load i32, ptr %i.cl, align 4, !tbaa !181
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !168
  br label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.cq = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.p
  %i.cr = phi ptr [ %.pre27, %..critedge_crit_edge.i ], [ %i.cg, %bb.p ]
  %i.cs = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.cm, %bb.p ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !182
  %i.cv = add i32 %i.cs, 1
  store i32 %i.cv, ptr %i.cl, align 4, !tbaa !181
  %i.cw = zext i32 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cw
  store ptr %i.cr, ptr %i.cx, align 8, !tbaa !168
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit: ; preds = %bb.r, %.critedge.i
  %i.cy = load i32, ptr %i.ck, align 8, !tbaa !185
  %i.cz = icmp sgt i32 %i.cy, -1
  %i.da = load i32, ptr %i.e, align 4, !tbaa !54
  %.not.i.i.i = icmp ne i32 %i.da, 0              ; 2 uses
  %brmerge.i.i = or i1 %i.cz, %.not.i.i.i
  br i1 %brmerge.i.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit.thread, !prof !79

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit.thread: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit
  store i32 1, ptr %i.e, align 4, !tbaa !54
  br label %bb.s

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit
  br i1 %.not.i.i.i, label %bb.s, label %bb.t, !prof !78

bb.s:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit.thread, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !168
  call void @_ZN22hb_serialize_context_t8object_t4finiEv(ptr noundef nonnull align 8 dereferenceable(56) %i.db)
  br label %bb.x

bb.t:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit
  %i.dc = load i32, ptr %i.cl, align 4, !tbaa !186
  %i.dd = add i32 %i.dc, -1
  store i32 %i.dd, ptr %i.b, align 4, !tbaa !105
  br i1 %1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.df = call noundef zeroext i1 @_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13set_with_hashIRPS1_RjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  %.pre28 = load i32, ptr %i.e, align 4, !tbaa !54
  %i.dg = icmp ne i32 %.pre28, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not.i.i.i20 = phi i1 [ %i.dg, %bb.u ], [ false, %bb.t ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !187, !range !121, !noundef !122
  %i.dj = trunc nuw i8 %i.di to i1
  %brmerge.i.i21 = or i1 %.not.i.i.i20, %i.dj
  br i1 %brmerge.i.i21, label %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.e, align 4, !tbaa !54
  br label %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit

_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit: ; preds = %bb.v, %bb.w
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !105
  br label %bb.x

bb.x:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit, %bb.s, %_ZN22hb_serialize_context_t8object_t4finiEv.exit
  %.010 = phi i32 [ %i.aj, %_ZN22hb_serialize_context_t8object_t4finiEv.exit ], [ 0, %bb.s ], [ %i.dk, %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread: ; preds = %bb.b, %bb.x, %.critedge, %bb.a
  %.2 = phi i32 [ 0, %.critedge ], [ 0, %bb.a ], [ %.010, %bb.x ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54   ; 2 uses
  switch i32 %i.d, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread [
    i32 0, label %.critedge
    i32 2, label %.critedge
    i32 8, label %.critedge
    i32 16, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173
  store ptr %i.f, ptr %i.a, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %.critedge ]
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.e, label %_ZN22hb_serialize_context_t6revertEPcS0_.exit, !prof !66

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !68
  tail call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN22hb_serialize_context_t6revertEPcS0_.exit

_ZN22hb_serialize_context_t6revertEPcS0_.exit:    ; preds = %bb.d, %bb.e
  store ptr null, ptr %i.g, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !183
  %i.q = add i32 %i.p, -1
  %spec.select.i.i.i = icmp ult i32 %i.q, -2
  br i1 %spec.select.i.i.i, label %bb.f, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !179
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !178
  tail call void @hb_free(ptr noundef %i.t) #10
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i: ; preds = %bb.f, %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !183
  %i.w = add i32 %i.v, -1
  %spec.select.i.i1.i = icmp ult i32 %i.w, -2
  br i1 %spec.select.i.i1.i, label %bb.g, label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.x, align 4, !tbaa !179
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !178
  tail call void @hb_free(ptr noundef %i.z) #10
  br label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

_ZN22hb_serialize_context_t8object_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !168
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !167
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN22hb_serialize_context_t8object_t4finiEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11PrivateDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !70

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168
  store ptr %i.f, ptr %i.d, align 8, !tbaa !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !169
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !66

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #10 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !170
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !70

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !168
  store ptr %i.p, ptr %i.d, align 8, !tbaa !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !54
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !54
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
end_hunk_2
begin_hunk_3_@_ZN3CFF15CFF1StringIndex9serializeEP22hb_serialize_context_tRKS0_RK11hb_vector_tIjLb0EE:bb.a
.critedge:                                        ; preds = %bb.a, %bb.b
  %i.f = tail call noundef ptr @_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 1 dereferenceable(2) %0)
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.q, label %bb.c, !prof !70

bb.c:                                             ; preds = %.critedge
  store i16 0, ptr %0, align 1, !tbaa !81
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr %3, align 8, !tbaa !214
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.q, label %bb.e, !prof !70

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val9 = load ptr, ptr %i.i, align 8, !tbaa !215
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.d to i64
  store ptr %.val9, ptr %5, align 8, !alias.scope !216
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.2.8.insert.ext.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !216
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.j, align 8, !tbaa !221, !alias.scope !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN11hb_vector_tI10hb_array_tIKhELb0EE6extendI13hb_map_iter_tIS0_IKjERKN3CFF15CFF1StringIndexEL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEEvRKSG_b(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.k = load i32, ptr %4, align 8, !tbaa !223
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit, label %bb.f, !prof !70

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.val.i.i = load i32, ptr %i.m, align 4, !tbaa !226 ; 2 uses
  %.not41.i.i = icmp eq i32 %.val.i.i, 0          ; 2 uses
  br i1 %.not41.i.i, label %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i_crit_edge, label %.lr.ph.preheader.i.i

._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i_crit_edge: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val46.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !227
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i.i to i64 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val21.i.i = load ptr, ptr %i.n, align 8, !tbaa !227 ; 4 uses
  %i.o = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 1152921504606846975
  %i.p = and i64 %i.o, 1152921504606846975        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %xtraiter = and i64 %i.q, 7                     ; 3 uses
  %i.r = icmp samesign ult i64 %i.p, 7
  br i1 %i.r, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.q, 2305843009213693944
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.01644.i.i = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i.new ], [ %i.ai, %.lr.ph.i.i ] ; 9 uses
  %.01743.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ah, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.s = getelementptr i8, ptr %.01644.i.i, i64 8
  %.016.val22.i.i = load i64, ptr %i.s, align 8
  %.sroa.3.8.extract.trunc.i.i.i = trunc i64 %.016.val22.i.i to i32
  %i.t = add i32 %.01743.i.i, %.sroa.3.8.extract.trunc.i.i.i
  %i.u = getelementptr i8, ptr %.01644.i.i, i64 24
  %.016.val22.i.i.1 = load i64, ptr %i.u, align 8
  %.sroa.3.8.extract.trunc.i.i.i.1 = trunc i64 %.016.val22.i.i.1 to i32
  %i.v = add i32 %i.t, %.sroa.3.8.extract.trunc.i.i.i.1
  %i.w = getelementptr i8, ptr %.01644.i.i, i64 40
  %.016.val22.i.i.2 = load i64, ptr %i.w, align 8
  %.sroa.3.8.extract.trunc.i.i.i.2 = trunc i64 %.016.val22.i.i.2 to i32
  %i.x = add i32 %i.v, %.sroa.3.8.extract.trunc.i.i.i.2
  %i.y = getelementptr i8, ptr %.01644.i.i, i64 56
  %.016.val22.i.i.3 = load i64, ptr %i.y, align 8
  %.sroa.3.8.extract.trunc.i.i.i.3 = trunc i64 %.016.val22.i.i.3 to i32
  %i.z = add i32 %i.x, %.sroa.3.8.extract.trunc.i.i.i.3
  %i.aa = getelementptr i8, ptr %.01644.i.i, i64 72
  %.016.val22.i.i.4 = load i64, ptr %i.aa, align 8
  %.sroa.3.8.extract.trunc.i.i.i.4 = trunc i64 %.016.val22.i.i.4 to i32
  %i.ab = add i32 %i.z, %.sroa.3.8.extract.trunc.i.i.i.4
  %i.ac = getelementptr i8, ptr %.01644.i.i, i64 88
  %.016.val22.i.i.5 = load i64, ptr %i.ac, align 8
  %.sroa.3.8.extract.trunc.i.i.i.5 = trunc i64 %.016.val22.i.i.5 to i32
  %i.ad = add i32 %i.ab, %.sroa.3.8.extract.trunc.i.i.i.5
  %i.ae = getelementptr i8, ptr %.01644.i.i, i64 104
  %.016.val22.i.i.6 = load i64, ptr %i.ae, align 8
  %.sroa.3.8.extract.trunc.i.i.i.6 = trunc i64 %.016.val22.i.i.6 to i32
  %i.af = add i32 %i.ad, %.sroa.3.8.extract.trunc.i.i.i.6
  %i.ag = getelementptr i8, ptr %.01644.i.i, i64 120
  %.016.val22.i.i.7 = load i64, ptr %i.ag, align 8
  %.sroa.3.8.extract.trunc.i.i.i.7 = trunc i64 %.016.val22.i.i.7 to i32
  %i.ah = add i32 %i.af, %.sroa.3.8.extract.trunc.i.i.i.7 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01644.i.i, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.01644.i.i.epil.init = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i ], [ %i.ai, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i.loopexit.unr-lcssa ]
  %.01743.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ah, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod28)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.01644.i.i.epil = phi ptr [ %i.al, %.lr.ph.i.i.epil ], [ %.01644.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01743.i.i.epil = phi i32 [ %i.ak, %.lr.ph.i.i.epil ], [ %.01743.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aj = getelementptr i8, ptr %.01644.i.i.epil, i64 8
  %.016.val22.i.i.epil = load i64, ptr %i.aj, align 8
  %.sroa.3.8.extract.trunc.i.i.i.epil = trunc i64 %.016.val22.i.i.epil to i32
  %i.ak = add i32 %.01743.i.i.epil, %.sroa.3.8.extract.trunc.i.i.i.epil ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01644.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !228

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi = phi i64 [ 0, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i, %.lr.ph.i.i.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i = phi ptr [ %.val46.i.pre, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i_crit_edge ], [ %.val21.i.i, %.lr.ph.i.i.epil ], [ %.val21.i.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.066.i = phi i32 [ 0, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i_crit_edge ], [ %i.ah, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph.i.i.epil ] ; 4 uses
  %i.am = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIKS5_IKhEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr %.val46.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi, i32 noundef %.066.i, i32 noundef 0)
  br i1 %i.am, label %bb.g, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit, !prof !66

bb.g:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i
  %i.an = zext i32 %.066.i to i64                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !54
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit, !prof !66

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp slt i32 %.066.i, 0
  br i1 %i.aq, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %bb.i, !prof !70

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69 ; 4 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.ax, %i.an
  br i1 %i.ay, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, !prof !70

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i: ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.an
  store ptr %i.az, ptr %i.at, align 8, !tbaa !69
  %.not43.i = icmp eq ptr %i.au, null
  br i1 %.not43.i, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit, label %bb.j, !prof !78

bb.j:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.val46.i, i64 %.idx.i
  br i1 %.not41.i.i, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.o
  %.082.i = phi ptr [ %i.bm, %bb.o ], [ %.val46.i, %bb.j ] ; 3 uses
  %.03481.i = phi i32 [ %.1.ph.i, %bb.o ], [ %.066.i, %bb.j ] ; 3 uses
  %.03580.i = phi ptr [ %.136.ph.i, %bb.o ], [ %i.au, %bb.j ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.082.i, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !229 ; 5 uses
  %.not45.i = icmp eq i32 %i.bc, 0
  br i1 %.not45.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bd = icmp ugt i32 %i.bc, %.03481.i
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !70

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.ao, align 4, !tbaa !54
  %.not.i.i53.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i53.not.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = sub nuw nsw i32 %.03481.i, %i.bc        ; 2 uses
  %i.bg = icmp eq i32 %i.bc, 1
  %i.bh = load ptr, ptr %.082.i, align 8, !tbaa !231 ; 2 uses
  br i1 %i.bg, label %bb.n, label %_ZL9hb_memcpyPvPKvm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !81
  %i.bj = getelementptr inbounds nuw i8, ptr %.03580.i, i64 1
  store i8 %i.bi, ptr %.03580.i, align 1, !tbaa !81
  br label %bb.o

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.m
  %i.bk = zext nneg i32 %i.bc to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i, ptr readonly align 1 %i.bh, i64 %i.bk, i1 false), !alias.scope !232
  %i.bl = getelementptr inbounds nuw i8, ptr %.03580.i, i64 %i.bk
  br label %bb.o

bb.o:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit.i, %bb.n, %.lr.ph.i
  %.136.ph.i = phi ptr [ %.03580.i, %.lr.ph.i ], [ %i.bl, %_ZL9hb_memcpyPvPKvm.exit.i ], [ %i.bj, %bb.n ]
  %.1.ph.i = phi i32 [ %.03481.i, %.lr.ph.i ], [ %i.bf, %_ZL9hb_memcpyPvPKvm.exit.i ], [ %i.bf, %bb.n ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.082.i, i64 16 ; 2 uses
  %.not44.i = icmp eq ptr %i.bm, %i.ba
  br i1 %.not44.i, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit, label %.lr.ph.i

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i: ; preds = %bb.l, %bb.i, %bb.h
  %.sink.i = phi i32 [ 4, %bb.h ], [ 4, %bb.i ], [ 8, %bb.l ]
  store i32 %.sink.i, ptr %i.ao, align 4, !tbaa !54
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit: ; preds = %bb.o, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, %bb.l, %bb.j, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, %bb.g, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i ], [ true, %bb.j ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i ], [ false, %bb.l ], [ true, %bb.o ]
  %i.bn = load i32, ptr %4, align 8, !tbaa !223
  %i.bo = add i32 %i.bn, -1
  %spec.select.i.i.i = icmp ult i32 %i.bo, -2
  br i1 %spec.select.i.i.i, label %bb.p, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit

bb.p:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.bp, align 4, !tbaa !226
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !227
  call void @hb_free(ptr noundef %i.br) #10
  br label %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit

_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit:  ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %.critedge, %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit, %bb.c
  %.1 = phi i1 [ %.0, %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit ], [ true, %bb.c ], [ false, %.critedge ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN22hb_serialize_context_t5embedIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_RKS6_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 1 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 1, !tbaa !211    ; 2 uses
  %.not.i.i = icmp eq i16 %i.a, 0
  br i1 %.not.i.i, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !205   ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = add nuw nsw i64 %i.c, 1
  %i.h = mul nuw nsw i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 4 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.i [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205
  %i.l = zext i8 %i.k to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.c
  %i.n = load i16, ptr %i.m, align 1, !tbaa !211
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.i

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [3 x i8], ptr %i.i, i64 %i.c ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !81
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !81
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !81
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.i

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.c
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !236
  %i.af = tail call noundef i32 @llvm.bswap.i32(i32 %i.ae)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.i

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i.i = phi i32 [ %i.af, %bb.f ], [ %i.l, %bb.c ], [ %i.p, %bb.d ], [ %i.ac, %bb.e ], [ 0, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54
  %.not.i8.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i8.i, label %bb.g, label %_ZN22hb_serialize_context_t5embedIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_PKS6_.exit, !prof !66

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.thread.i: ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !54
  %.not.i812.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i812.i, label %.thread.i, label %_ZN22hb_serialize_context_t5embedIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_PKS6_.exit, !prof !66

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.i
  %narrow.i.i = add nuw nsw i64 %i.h, 3
  %i.ak = add i32 %.0.i.i.i, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %narrow.i.i, %i.al      ; 2 uses
  %i.an = icmp samesign ugt i64 %i.am, 2147483647
  br i1 %i.an, label %.critedge.i.i, label %.thread.i, !prof !67

.thread.i:                                        ; preds = %bb.g, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.thread.i
  %.0.i1316.i = phi i64 [ %i.am, %bb.g ], [ 2, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.thread.i ] ; 3 uses
  %i.ao = phi ptr [ %i.ag, %bb.g ], [ %i.ai, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.thread.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 5 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp slt i64 %i.av, %.0.i1316.i
  br i1 %i.aw, label %.critedge.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i, !prof !70

.critedge.i.i:                                    ; preds = %.thread.i, %bb.g
  %i.ax = phi ptr [ %i.ao, %.thread.i ], [ %i.ag, %bb.g ]
  store i32 4, ptr %i.ax, align 4, !tbaa !54
  br label %_ZN22hb_serialize_context_t5embedIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_PKS6_.exit

_ZN22hb_serialize_context_t13allocate_sizeIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i: ; preds = %.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %.0.i1316.i
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZN22hb_serialize_context_t5embedIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_PKS6_.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %1, i64 %.0.i1316.i, i1 false), !alias.scope !238
  br label %_ZN22hb_serialize_context_t5embedIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_PKS6_.exit

_ZN22hb_serialize_context_t5embedIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_PKS6_.exit: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.i, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.thread.i, %.critedge.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i, %bb.h
  %.0.i = phi ptr [ %i.as, %bb.h ], [ null, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i ], [ null, %.critedge.i.i ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.i ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv.exit.thread.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF7TopDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !70

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168
  store ptr %i.f, ptr %i.d, align 8, !tbaa !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !169
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !66

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #10 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !170
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !70

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !168
  store ptr %i.p, ptr %i.d, align 8, !tbaa !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !54
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit
end_hunk_3
begin_hunk_4_@_ZNK2OT4cff120accelerator_subset_t6subsetEP19hb_subset_context_t:bb.a
  %i.ad = call noundef zeroext i1 @_ZNK2OT4cff120accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff1_subset_planE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(516) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.ad, %bb.b ], [ false, %bb.a ]
  call void @_ZN2OT16cff1_subset_planD2Ev(ptr noundef nonnull align 8 dead_on_return(516) dereferenceable(516) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT16cff1_subset_plan6createERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.CFF::subr_flattener_t", align 8 ; 5 uses
  %4 = alloca %struct.cff1_subr_subsetter_t, align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !258  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not15.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = load i32, ptr %i.d, align 4, !tbaa !105
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.l = load i32, ptr %i.v, align 4, !tbaa !105
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !106

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.lcssa10.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i ], [ %i.x, %bb.c ]
  %i.n = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.u, %bb.c ]
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.n
  %i.p = trunc i32 %.lcssa10.i.i.i to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %spec.select.i.i.i = select i1 %i.p, ptr %i.q, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.01016.i13.i.i.i = phi i32 [ %i.t, %bb.c ], [ 0, %.lr.ph.i.i.i.i ]
  %.017.i12.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %.lr.ph.i.i.i.i ]
  %i.r = add i32 %.017.i12.i.i.i, 1               ; 2 uses
  %i.s = add i32 %i.r, %.01016.i13.i.i.i
  %i.t = and i32 %i.s, %i.i                       ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = and i32 %i.x, 2
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.c, !llvm.loop !106

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i:        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.b, %bb.a
  %.0.i.i = phi ptr [ @minus_1, %bb.a ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.b ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.z = load i32, ptr %.0.i.i, align 4, !tbaa !105
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.bi

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !307
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !144
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !308 ; 2 uses
  %i.aj = trunc i32 %i.ai to i8                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.al = and i8 %i.aj, 1
  store i8 %i.al, ptr %i.ak, align 8, !tbaa !120
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.an = lshr i8 %i.aj, 2
  %i.ao = and i8 %i.an, 1
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !123
  %i.ap = and i32 %i.ai, 32768
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !105
  %i.as = icmp ne i32 %i.ar, -1
  %i.at = zext i1 %i.as to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = phi i8 [ 0, %bb.d ], [ %i.at, %bb.e ]   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 509
  store i8 %i.au, ptr %i.av, align 1, !tbaa !251
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 0, ptr %i.aw, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !309
  %i.az = icmp slt i32 %i.ay, 3
  br i1 %i.az, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  store i8 1, ptr %i.ba, align 8, !tbaa !148
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bb = trunc nuw i8 %i.au to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 6 uses
  store i8 %i.au, ptr %i.bc, align 8, !tbaa !148
  br i1 %i.bb, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !310 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !311 ; 2 uses
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
  %i.bk = load i32, ptr %.060191, align 4, !tbaa !312
  %i.bl = getelementptr inbounds nuw i8, ptr %.060191, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !314
  %.not68 = icmp eq i32 %i.bk, %i.bm
  br i1 %.not68, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.critedge
  store i8 1, ptr %i.bc, align 8, !tbaa !148
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.h, %.thread, %bb.j, %bb.g
  %i.bn = phi i1 [ true, %.thread ], [ true, %bb.j ], [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  %i.bo = phi ptr [ %i.ba, %.thread ], [ %i.bc, %bb.j ], [ %i.bc, %bb.g ], [ %i.bc, %bb.h ], [ %i.bc, %bb.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !105
  %.not158 = icmp eq i32 %i.bq, -1
  br i1 %.not158, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !315
  %i.bt = icmp sgt i32 %i.bs, 1
  %i.bu = zext i1 %i.bt to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bv = phi i8 [ 0, %.loopexit ], [ %i.bu, %bb.k ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 322 ; 2 uses
  store i8 %i.bv, ptr %i.bw, align 2, !tbaa !151
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 0, ptr %0, align 8, !tbaa !316
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.bz, i8 -1, i64 44, i1 false), !tbaa !105
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.ca, align 8, !tbaa !317
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 8720, ptr %i.cb, align 4, !tbaa !318
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bx, ptr %i.cd, align 8, !tbaa !242
  %i.ce = trunc nuw i8 %i.bv to i1
  br i1 %i.ce, label %bb.m, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !319 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !320 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %.idx.i = mul nuw nsw i64 %i.cj, 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i
  %.not16.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not16.not.i, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.01117.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %i.cg, %bb.m ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01117.i, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !125
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
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !319 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !320 ; 2 uses
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
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !125
  %.not14.i87.not = icmp eq i32 %i.cx, 15
  br i1 %.not14.i87.not, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90, label %bb.o

_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90: ; preds = %.lr.ph.i85, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit
  br i1 %i.co, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread, label %bb.v

_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread: ; preds = %bb.o, %bb.n, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90
  %i.cy = phi i1 [ false, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90 ], [ true, %bb.n ], [ true, %bb.o ]
  br i1 %i.co, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread
  %i.cz = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i32 noundef 1, i1 noundef zeroext false)
  br i1 %i.cz, label %.critedge.i.i, label %bb.q, !prof !66

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit

.critedge.i.i:                                    ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !319
  %.pre.i.i = load i32, ptr %i.da, align 4, !tbaa !320 ; 2 uses
  %i.db = add i32 %.pre.i.i, 1
  store i32 %i.db, ptr %i.da, align 4, !tbaa !320
  %i.dc = zext i32 %.pre.i.i to i64
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dc ; 4 uses
  store ptr null, ptr %i.dd, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 65535, ptr %.sroa.5150.0..sroa_idx, align 8
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6151.0..sroa_idx, i8 0, i64 12, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit

_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit: ; preds = %bb.q, %.critedge.i.i
  %.0.i.i92 = phi ptr [ @_hb_CrapPool, %bb.q ], [ %i.dd, %.critedge.i.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i92, i64 8
  store i32 16, ptr %i.de, align 8, !tbaa !125
  %i.df = load i32, ptr %0, align 8, !tbaa !316
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr null, i64 %i.dg
  store ptr %i.dh, ptr %.0.i.i92, align 8, !tbaa !129
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i92, i64 12
  store i8 0, ptr %i.di, align 4, !tbaa !127
  store i32 0, ptr %0, align 8, !tbaa !316
  br label %bb.r

bb.r:                                             ; preds = %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread
  br i1 %i.cy, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !320 ; 3 uses
  %i.dl = load i32, ptr %i.by, align 8, !tbaa !321
  %.not.i.i93 = icmp slt i32 %i.dk, %i.dl
  br i1 %.not.i.i93, label %.critedge.i.i99, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = add i32 %i.dk, 1
  %i.dn = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i32 noundef %i.dm, i1 noundef zeroext false)
  br i1 %i.dn, label %..critedge_crit_edge.i.i97, label %bb.u, !prof !66

..critedge_crit_edge.i.i97:                       ; preds = %bb.t
  %.pre.i.i98 = load i32, ptr %i.dj, align 4, !tbaa !320
  br label %.critedge.i.i99

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100

.critedge.i.i99:                                  ; preds = %..critedge_crit_edge.i.i97, %bb.s
  %i.do = phi i32 [ %.pre.i.i98, %..critedge_crit_edge.i.i97 ], [ %i.dk, %bb.s ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !319
  %i.dr = add i32 %i.do, 1
  store i32 %i.dr, ptr %i.dj, align 4, !tbaa !320
  %i.ds = zext i32 %i.do to i64
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.ds ; 4 uses
  store ptr null, ptr %i.dt, align 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 65535, ptr %.sroa.5143.0..sroa_idx, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6144.0..sroa_idx, i8 0, i64 12, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100

_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100: ; preds = %bb.u, %.critedge.i.i99
  %.0.i.i94 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.dt, %.critedge.i.i99 ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i94, i64 8
  store i32 15, ptr %i.du, align 8, !tbaa !125
  %i.dv = load i32, ptr %0, align 8, !tbaa !316
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr null, i64 %i.dw
  store ptr %i.dx, ptr %.0.i.i94, align 8, !tbaa !129
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i94, i64 12
  store i8 0, ptr %i.dy, align 4, !tbaa !127
  store i32 0, ptr %0, align 8, !tbaa !316
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !142 ; 2 uses
  %.not69 = icmp eq ptr %i.ea, @_hb_NullPool
  br i1 %.not69, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = load i32, ptr %i.ag, align 4, !tbaa !248
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.eh = tail call noundef zeroext i1 @_Z27hb_plan_subset_cff_fdselectPK16hb_subset_plan_tjRKN3CFF8FDSelectERjS6_S6_R11hb_vector_tINS2_11code_pair_tELb0EER14hb_inc_bimap_t(ptr noundef nonnull %2, i32 noundef %i.eb, ptr noundef nonnull align 1 dereferenceable(6) %i.ea, ptr noundef nonnull align 4 dereferenceable(4) %i.ec, ptr noundef nonnull align 4 dereferenceable(4) %i.ed, ptr noundef nonnull align 4 dereferenceable(4) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(64) %i.eg) #10
  br i1 %i.eh, label %_ZN14hb_inc_bimap_t8identityEj.exit, label %bb.bi, !prof !66

bb.x:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !322
  %.not.i.i.i = icmp eq i32 %i.ek, 0
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8
  %.not8.i.i.i = icmp eq i32 %i.em, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not8.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN14hb_inc_bimap_t5clearEv.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !323
  %.fr15.i.i.i = freeze i32 %i.eo
  %i.ep = add i32 %.fr15.i.i.i, 1                 ; 2 uses
  %.not912.i.i.i = icmp ult i32 %i.ep, 2
  br i1 %.not912.i.i.i, label %._crit_edge.i.i.i101, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.y
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.ep to i64
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 12 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !103
  %i.es = add nsw i64 %.idx.i.i.i, -12
  %i.et = urem i64 %i.es, 12
  %i.eu = sub nuw nsw i64 %.idx.i.i.i, %i.et
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.er, i8 0, i64 %i.eu, i1 false)
  br label %._crit_edge.i.i.i101

._crit_edge.i.i.i101:                             ; preds = %.lr.ph.preheader.i.i.i, %bb.y
  store i32 0, ptr %i.el, align 8, !tbaa !324
  store i32 0, ptr %i.ej, align 4, !tbaa !322
  br label %_ZN14hb_inc_bimap_t5clearEv.exit.i

_ZN14hb_inc_bimap_t5clearEv.exit.i:               ; preds = %._crit_edge.i.i.i101, %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 0, ptr %i.ev, align 4, !tbaa !213
  %i.ew = tail call noundef i32 @_ZN14hb_inc_bimap_t3addEj(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, i32 noundef 0) ; 0 uses
  br label %_ZN14hb_inc_bimap_t8identityEj.exit

_ZN14hb_inc_bimap_t8identityEj.exit:              ; preds = %_ZN14hb_inc_bimap_t5clearEv.exit.i, %bb.w
  %i.ex = tail call noundef zeroext i1 @_ZN2OT16cff1_subset_plan21collect_sids_in_dictsERKNS_4cff120accelerator_subset_tE(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1)
  br i1 %i.ex, label %bb.z, label %bb.bi, !prof !66

bb.z:                                             ; preds = %_ZN14hb_inc_bimap_t8identityEj.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !325
  %i.fb = icmp ugt i32 %i.fa, 32768
  br i1 %i.fb, label %bb.bi, label %bb.aa, !prof !70

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i8, ptr %i.bo, align 8, !tbaa !148, !range !121, !noundef !122
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fe = tail call noundef zeroext i1 @_ZN2OT16cff1_subset_plan19plan_subset_charsetERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull %2)
  br i1 %i.fe, label %bb.ac, label %bb.bi

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void @_ZN26cff1_top_dict_values_mod_t12reassignSIDsERK11remap_sid_t(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ey)
  %i.ff = load i8, ptr %i.am, align 4, !tbaa !123, !range !121, !noundef !122
end_hunk_4
