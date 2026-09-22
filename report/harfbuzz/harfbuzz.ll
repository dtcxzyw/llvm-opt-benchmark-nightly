Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@_ZN12hb_ot_font_tD2Ev:bb.a
  br label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit

_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit:    ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4, %bb.o, %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit
  %i.v = load atomic ptr, ptr %i.u acquire, align 8 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i7, label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = cmpxchg weak ptr %i.u, ptr %i.v, ptr null acq_rel monotonic, align 8
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.v) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8

_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8: ; preds = %bb.q, %bb.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9: ; preds = %bb.t, %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8
  %i.z = load atomic ptr, ptr %i.y acquire, align 8 ; 4 uses
  %.not.i1.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i1.i.i10, label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit12, label %bb.t

bb.t:                                             ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9
  %i.aa = cmpxchg weak ptr %i.y, ptr %i.z, ptr null acq_rel monotonic, align 8
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.u, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i.i11 = icmp eq ptr %i.z, @_hb_NullPool
  br i1 %.not.i.i.i.i.i11, label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit12, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.z) #63
  br label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit12

_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit12:  ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT9KerxTableIN2OT6KernOTEE5applyEPNS_22hb_aat_apply_context_tERKNS_23kern_accelerator_data_tE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %4 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %5 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %6 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !587
  %i.e = and i32 %i.d, 64
  %i.f = icmp eq i32 %i.e, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !324 ; 5 uses
  br i1 %i.f, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %.not98 = icmp eq i32 %.pre, 0
  br i1 %.not98, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, label %.lr.ph.i

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 141 ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !588
  br label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589  ; 5 uses
  %wide.trip.count.i = zext i32 %.pre to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.k = icmp ult i32 %.pre, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !591
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 4, !tbaa !591
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !591
  %i.s = or i32 %i.r, 2
  store i32 %i.s, ptr %i.q, align 4, !tbaa !591
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !591
  %i.w = or i32 %i.v, 2
  store i32 %i.w, ptr %i.u, align 4, !tbaa !591
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !591
  %i.aa = or i32 %i.z, 2
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !591
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !16

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !591
  %i.ae = or i32 %i.ad, 2
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !591
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.d, !llvm.loop !3687

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit:       ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %i.af = icmp ugt i32 %.pre, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 141 ; 3 uses
  %i.al = zext i1 %i.aj to i8
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !588
  br i1 %i.aj, label %bb.e, label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit, !prof !592

bb.e:                                             ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !546
  %.not.i.i.i = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %.not1.i.i.i = icmp eq i32 %i.ap, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.am, align 4, !tbaa !547
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 0, ptr %i.aq, align 4, !tbaa !548
  store i32 0, ptr %i.ao, align 4, !tbaa !549
  br label %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i

_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i: ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !589
  tail call void @_ZN12hb_bit_set_t9set_arrayIjEEvbPKT_jj(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i1 noundef zeroext true, ptr noundef %i.as, i32 noundef %.pre, i32 noundef 20)
  br label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit

_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit: ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i
  %i.at = phi ptr [ %i.h, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread ], [ %i.ak, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit ], [ %i.ak, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i ]
  %i.au = phi ptr [ %i.g, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread ], [ %i.ag, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit ], [ %i.ag, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 6 uses
  store i32 0, ptr %i.av, align 8, !tbaa !593
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %.not110 = icmp eq i16 %i.ax, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.bi = add nuw nsw i64 %i.az, 4294967295
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.phi.trans.insert1.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bm = and i64 %i.bi, 4294967295
  %wide.trip.count118 = zext i16 %i.ay to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.x, %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit
  %.060.lcssa = phi i1 [ false, %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit ], [ %.161, %bb.x ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.y, label %bb.aa

bb.g:                                             ; preds = %.lr.ph109, %bb.x
  %indvars.iv116 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next117, %bb.x ] ; 4 uses
  %.058106 = phi ptr [ %i.ba, %.lr.ph109 ], [ %i.iw, %bb.x ] ; 6 uses
  %.059105 = phi i1 [ false, %.lr.ph109 ], [ %.2, %bb.x ] ; 4 uses
  %.060104 = phi i1 [ false, %.lr.ph109 ], [ %.161, %bb.x ] ; 4 uses
  %i.bq = load i32, ptr %i.bb, align 4, !tbaa !1679
  %i.br = zext i32 %i.bq to i64
  %.not.i65 = icmp samesign ult i64 %indvars.iv116, %i.br
  %i.bs = load ptr, ptr %i.bc, align 8
  %i.bt = getelementptr inbounds nuw [608 x i8], ptr %i.bs, i64 %indvars.iv116
  %.0.i = select i1 %.not.i65, ptr %i.bt, ptr @_hb_NullPool, !prof !268 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.058106, i64 5 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !303
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !614
  %i.bz = and i32 %i.by, -2
  %i.ca = trunc i8 %i.bv to i1
  %i.cb = icmp ne i32 %i.bz, 4
  %.not = xor i1 %i.cb, %i.ca
  br i1 %.not, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  store ptr %.0.i, ptr %i.bd, align 8, !tbaa !1680
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store ptr %i.cc, ptr %i.be, align 8, !tbaa !1681
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store ptr %i.cd, ptr %i.bf, align 8, !tbaa !1682
  %i.ce = load i8, ptr %i.at, align 1, !tbaa !588, !range !380, !noundef !293
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit, label %.preheader.i, !prof !268

.preheader.i:                                     ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !607
  %.not.i66 = icmp eq i32 %i.ch, 0
  br i1 %.not.i66, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread, label %.lr.ph.i67

_ZNK12hb_bit_set_t3hasEj.exit.thread:             ; preds = %bb.m, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge, %._crit_edge.i.i.i.i, %_ZNK12hb_bit_set_t3hasEj.exit
  %i.ci = phi ptr [ %.pre123, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge ], [ %.pre124, %_ZNK12hb_bit_set_t3hasEj.exit ], [ %i.cn, %._crit_edge.i.i.i.i ], [ %i.cn, %bb.m ] ; 3 uses
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !607
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp samesign ult i64 %indvars.iv.next.i69, %i.cl
  br i1 %i.cm, label %.lr.ph.i67, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread, !llvm.loop !159

.lr.ph.i67:                                       ; preds = %.preheader.i, %_ZNK12hb_bit_set_t3hasEj.exit.thread
  %i.cn = phi ptr [ %i.ci, %_ZNK12hb_bit_set_t3hasEj.exit.thread ], [ %i.bw, %.preheader.i ] ; 3 uses
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i69, %_ZNK12hb_bit_set_t3hasEj.exit.thread ], [ 0, %.preheader.i ] ; 2 uses
  %i.co = load ptr, ptr %i.bd, align 8, !tbaa !1680 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !589
  %i.cr = getelementptr inbounds nuw [20 x i8], ptr %i.cq, i64 %indvars.iv.i68
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !637 ; 3 uses
  %i.ct = lshr i32 %i.cs, 9                       ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cv = load atomic i32, ptr %i.cu monotonic, align 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !1233 ; 3 uses
  %i.cy = icmp ult i32 %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !553 ; 3 uses
  br i1 %i.cy, label %bb.i, label %._crit_edge.i.i.i.i, !prof !268

bb.i:                                             ; preds = %.lr.ph.i67
  %i.db = zext i32 %i.cv to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1235
  %.not.i.i.i.i = icmp eq i32 %i.dd, %i.ct
  br i1 %.not.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %.lr.ph.i67
  %.not1.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cx, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %i.de = add nsw i32 %i.cx, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.m ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.df = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.dg = lshr i32 %i.df, 1                       ; 4 uses
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !1235 ; 2 uses
  %i.dl = icmp slt i32 %i.ct, %i.dk
  br i1 %i.dl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dm = add nsw i32 %i.dg, -1
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i = icmp eq i32 %i.ct, %i.dk
  br i1 %.not28.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = add nuw nsw i32 %i.dg, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.l ], [ %.0212.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.l ], [ %i.dm, %bb.j ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.k
  store atomic i32 %i.dg, ptr %i.cu monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i:         ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, %bb.i
  %i.do = phi i64 [ %i.dh, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ %i.db, %bb.i ]
  %.sink.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %.sink.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.sink.i.i.i.i, null
  br i1 %.not.i.i.i89, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge, label %_ZNK12hb_bit_set_t3hasEj.exit

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge: ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %.pre123 = load ptr, ptr %i.a, align 8, !tbaa !494
  br label %_ZNK12hb_bit_set_t3hasEj.exit.thread

_ZNK12hb_bit_set_t3hasEj.exit:                    ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !1238
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = lshr i32 %i.cs, 6
  %i.dw = and i32 %i.dv, 7
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1240
  %i.ea = and i32 %i.cs, 63
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = and i64 %i.dz, %i.ec
  %.not99 = icmp eq i64 %i.ed, 0
  %.pre124 = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  br i1 %.not99, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit: ; preds = %bb.h
  %i.ee = load ptr, ptr %i.au, align 8, !tbaa !551
  %i.ef = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t10intersectsERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ee, ptr noundef nonnull align 8 dereferenceable(48) %.0.i)
  %.pre122 = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  br i1 %i.ef, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread: ; preds = %_ZNK12hb_bit_set_t3hasEj.exit.thread, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit, %.preheader.i
  %i.eg = phi ptr [ %i.bw, %.preheader.i ], [ %.pre122, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit ], [ %i.ci, %_ZNK12hb_bit_set_t3hasEj.exit.thread ]
  %i.eh = load ptr, ptr %i.bg, align 8, !tbaa !492
  %i.ei = load i32, ptr %i.av, align 8, !tbaa !593
  %i.ej = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.eg, ptr noundef %i.eh, ptr noundef nonnull @.str.104, i32 noundef %i.ei) ; 0 uses
  br label %bb.x

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96: ; preds = %_ZNK12hb_bit_set_t3hasEj.exit, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit
  %i.ek = phi ptr [ %.pre122, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit ], [ %.pre124, %_ZNK12hb_bit_set_t3hasEj.exit ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load i32, ptr %i.el, align 8, !tbaa !614
  %i.en = and i32 %i.em, -3
  %i.eo = icmp eq i32 %i.en, 5
  %i.ep = load ptr, ptr %i.bg, align 8, !tbaa !492
  %i.eq = load i32, ptr %i.av, align 8, !tbaa !593
  %i.er = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ek, ptr noundef %i.ep, ptr noundef nonnull @.str.105, i32 noundef %i.eq)
  br i1 %i.er, label %bb.n, label %bb.x

bb.n:                                             ; preds = %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96
  br i1 %.059105, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.es = load i8, ptr %i.bu, align 1, !tbaa !303
  %i.et = and i8 %i.es, 4
  %.not63 = icmp eq i8 %i.et, 0
  br i1 %.not63, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !611 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !607 ; 4 uses
  %.not111 = icmp eq i32 %i.ey, 0
  br i1 %.not111, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %wide.trip.count = zext i32 %i.ey to i64        ; 2 uses
  %xtraiter150 = and i64 %wide.trip.count, 1
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter154 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter155 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter155.next.1, %.lr.ph ]
  %i.fa = getelementptr inbounds nuw [20 x i8], ptr %i.ew, i64 %indvars.iv ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 18
  store i8 2, ptr %i.fc, align 2, !tbaa !280
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !614
  %i.fg = and i32 %i.ff, -3
  %i.fh = icmp eq i32 %i.fg, 4
  %i.fi = select i1 %i.fh, i16 -1, i16 1
  store i16 %i.fi, ptr %i.fb, align 4, !tbaa !280
  %i.fj = getelementptr inbounds nuw [20 x i8], ptr %i.ew, i64 %indvars.iv ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 36
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 38
  store i8 2, ptr %i.fl, align 2, !tbaa !280
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !614
  %i.fp = and i32 %i.fo, -3
  %i.fq = icmp eq i32 %i.fp, 4
  %i.fr = select i1 %i.fq, i16 -1, i16 1
  store i16 %i.fr, ptr %i.fk, align 4, !tbaa !280
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter155.next.1 = add i64 %niter155, 2         ; 2 uses
  %niter155.ncmp.1 = icmp eq i64 %niter155.next.1, %unroll_iter154
  br i1 %niter155.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3688

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod152.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod152.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod153 = trunc i32 %i.ey to i1
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.fs = getelementptr inbounds nuw [20 x i8], ptr %i.ew, i64 %indvars.iv.epil.init ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 18
  store i8 2, ptr %i.fu, align 2, !tbaa !280
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !614
  %i.fy = and i32 %i.fx, -3
  %i.fz = icmp eq i32 %i.fy, 4
  %i.ga = select i1 %i.fz, i16 -1, i16 1
  store i16 %i.ga, ptr %i.ft, align 4, !tbaa !280
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.p, %bb.o, %bb.n
  %.1 = phi i1 [ true, %bb.n ], [ false, %bb.o ], [ true, %bb.p ], [ true, %.loopexit.loopexit.unr-lcssa ], [ true, %.lr.ph.epil.preheader ]
  %i.gb = load i8, ptr %i.bh, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.gc = zext i1 %i.eo to i8
  %.not64 = icmp eq i8 %i.gb, %i.gc
  br i1 %.not64, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 96 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !607 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 112
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !589 ; 2 uses
  %i.gi = icmp ult i32 %i.gf, 2
  br i1 %i.gi, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.q
  %i.gj = lshr i32 %i.gf, 1
  %zext.i.i = zext nneg i32 %i.gj to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.in17.i.i.i.i = phi i32 [ %i.gf, %.lr.ph.preheader.i.i.i.i ], [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i = add i32 %.0.in17.i.i.i.i, -1      ; 2 uses
  %i.gk = zext i32 %.0.i.i.i.i to i64
  %i.gl = getelementptr inbounds nuw [20 x i8], ptr %i.gh, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw [20 x i8], ptr %i.gh, i64 %indvars.iv.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.gl, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gl, ptr noundef nonnull align 4 dereferenceable(20) %i.gm, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gm, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.gn = icmp eq i64 %indvars.iv.next.i.i.i.i, %zext.i.i
  br i1 %i.gn, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.q
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 90
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !632, !range !380, !noundef !293
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.r, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit

bb.r:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !611 ; 2 uses
  %i.gt = load i32, ptr %i.ge, align 8, !tbaa !607
  %.sroa.speculated.i5.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.gf, i32 %i.gt) ; 3 uses
  %i.gu = icmp ult i32 %.sroa.speculated.i5.i.i.i, 2
  br i1 %i.gu, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.preheader.i6.i.i.i

.lr.ph.preheader.i6.i.i.i:                        ; preds = %bb.r
  %i.gv = lshr i32 %.sroa.speculated.i5.i.i.i, 1
  %zext1.i.i = zext nneg i32 %i.gv to i64
  br label %.lr.ph.i8.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %.lr.ph.i8.i.i.i, %.lr.ph.preheader.i6.i.i.i
  %indvars.iv.i9.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i ], [ %indvars.iv.next.i12.i.i.i, %.lr.ph.i8.i.i.i ] ; 2 uses
  %.0.in17.i10.i.i.i = phi i32 [ %.sroa.speculated.i5.i.i.i, %.lr.ph.preheader.i6.i.i.i ], [ %.0.i11.i.i.i, %.lr.ph.i8.i.i.i ]
  %.0.i11.i.i.i = add i32 %.0.in17.i10.i.i.i, -1  ; 2 uses
  %i.gw = zext i32 %.0.i11.i.i.i to i64
  %i.gx = getelementptr inbounds nuw [20 x i8], ptr %i.gs, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw [20 x i8], ptr %i.gs, i64 %indvars.iv.i9.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.gx, i64 20, i1 false), !tbaa.struct !612
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gx, ptr noundef nonnull align 4 dereferenceable(20) %i.gy, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gy, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %indvars.iv.next.i12.i.i.i = add nuw nsw i64 %indvars.iv.i9.i.i.i, 1 ; 2 uses
  %i.gz = icmp eq i64 %indvars.iv.next.i12.i.i.i, %zext1.i.i
  br i1 %i.gz, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.i8.i.i.i, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit: ; preds = %.lr.ph.i8.i.i.i, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, %bb.r
  %i.ha = load i8, ptr %i.bh, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.hb = xor i8 %i.ha, 1
  store i8 %i.hb, ptr %i.bh, align 4, !tbaa !1676
  br label %bb.s

bb.s:                                             ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, %.loopexit
  %i.hc = icmp samesign ult i64 %indvars.iv116, %i.bm
  %i.hd = select i1 %i.hc, ptr %.058106, ptr null ; 6 uses
  %i.he = load ptr, ptr %i.bj, align 8, !tbaa !496 ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i70, label %._crit_edge.i.i.i, label %bb.t

._crit_edge.i.i.i:                                ; preds = %bb.s
  %.pre.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !504
  %.pre2.i.i.i = load ptr, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !275 ; 3 uses
  store ptr %i.hg, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !276
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hj ; 2 uses
  store ptr %i.hk, ptr %i.bk, align 8, !tbaa !504
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i: ; preds = %bb.t, %._crit_edge.i.i.i
  %i.hl = phi ptr [ %.pre2.i.i.i, %._crit_edge.i.i.i ], [ %i.hg, %bb.t ] ; 2 uses
  %i.hm = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hk, %bb.t ] ; 2 uses
  %i.hn = ptrtoint ptr %i.hm to i64               ; 2 uses
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  store i32 %i.hq, ptr %i.bl, align 8, !tbaa !506
  %.not.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i, label %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i
  %i.hr = icmp uge ptr %i.hd, %i.hl
  %.not13.i.i = icmp ugt ptr %i.hm, %i.hd
  %or.cond.i.i = select i1 %i.hr, i1 %.not13.i.i, i1 false, !prof !707
  br i1 %or.cond.i.i, label %bb.v, label %.critedge.i.i, !prof !707

.critedge.i.i:                                    ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.phi.trans.insert1.i.i.i, i8 0, i64 20, i1 false)
  br label %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit

bb.v:                                             ; preds = %bb.u
  store ptr %i.hd, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.hs = ptrtoint ptr %i.hd to i64
  %i.ht = sub i64 %i.hn, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %.058106, i64 2
  %i.hv = load i16, ptr %i.hu, align 1, !tbaa !283
  %i.hw = tail call noundef i16 @llvm.bswap.i16(i16 %i.hv)
  %i.hx = zext i16 %i.hw to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ht, i64 %i.hx) ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.sroa.speculated.i.i
  store ptr %i.hy, ptr %i.bk, align 8, !tbaa !504
  %i.hz = trunc nuw nsw i64 %.sroa.speculated.i.i to i32
  store i32 %i.hz, ptr %i.bl, align 8, !tbaa !506
  br label %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit

_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i, %.critedge.i.i, %bb.v
  %i.ia = tail call noundef zeroext i1 @_ZNK2OT12KernSubTableINS_20KernOTSubTableHeaderEE8dispatchIN3AAT22hb_aat_apply_context_tEJEEENT_8return_tEPS6_DpOT0_(ptr noundef nonnull align 1 dereferenceable(20) %.058106, ptr noundef nonnull %1)
  %7 = or i1 %.060104, %i.ia
  %i.ib = load ptr, ptr %i.bj, align 8, !tbaa !496 ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i71, label %._crit_edge.i.i, label %bb.w

._crit_edge.i.i:                                  ; preds = %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit
  %.pre.i.i = load ptr, ptr %i.bk, align 8, !tbaa !504
  %.pre2.i.i = load ptr, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

bb.w:                                             ; preds = %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !275 ; 3 uses
  store ptr %i.id, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !276
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ig ; 2 uses
  store ptr %i.ih, ptr %i.bk, align 8, !tbaa !504
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

_ZN25hb_sanitize_with_object_tD2Ev.exit:          ; preds = %._crit_edge.i.i, %bb.w
  %i.ii = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.id, %bb.w ]
  %i.ij = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ih, %bb.w ]
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ii to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = trunc i64 %i.im to i32
  store i32 %i.in, ptr %i.bl, align 8, !tbaa !506
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.ip = load ptr, ptr %i.bg, align 8, !tbaa !492
  %i.iq = load i32, ptr %i.av, align 8, !tbaa !593
  %i.ir = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.io, ptr noundef %i.ip, ptr noundef nonnull @.str.106, i32 noundef %i.iq) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96, %bb.g, %_ZN25hb_sanitize_with_object_tD2Ev.exit, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread
  %.161 = phi i1 [ %.060104, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread ], [ %.060104, %bb.g ], [ %7, %_ZN25hb_sanitize_with_object_tD2Ev.exit ], [ %.060104, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96 ] ; 2 uses
  %.2 = phi i1 [ %.059105, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread ], [ %.059105, %bb.g ], [ %.1, %_ZN25hb_sanitize_with_object_tD2Ev.exit ], [ %.059105, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96 ]
  %i.is = getelementptr inbounds nuw i8, ptr %.058106, i64 2
  %i.it = load i16, ptr %i.is, align 1, !tbaa !283
  %i.iu = tail call noundef i16 @llvm.bswap.i16(i16 %i.it)
  %i.iv = zext i16 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %.058106, i64 %i.iv
  %i.ix = load i32, ptr %i.av, align 8, !tbaa !593
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr %i.av, align 8, !tbaa !593
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge, label %bb.g, !llvm.loop !3689

bb.y:                                             ; preds = %._crit_edge
  %i.iz = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 96 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !607 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 112
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !589 ; 2 uses
  %i.je = icmp ult i32 %i.jb, 2
  br i1 %i.je, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79, label %.lr.ph.preheader.i.i.i.i72

.lr.ph.preheader.i.i.i.i72:                       ; preds = %bb.y
  %i.jf = lshr i32 %i.jb, 1
  %zext.i.i73 = zext nneg i32 %i.jf to i64
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74, %.lr.ph.preheader.i.i.i.i72
  %indvars.iv.i.i.i.i75 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i72 ], [ %indvars.iv.next.i.i.i.i78, %.lr.ph.i.i.i.i74 ] ; 2 uses
  %.0.in17.i.i.i.i76 = phi i32 [ %i.jb, %.lr.ph.preheader.i.i.i.i72 ], [ %.0.i.i.i.i77, %.lr.ph.i.i.i.i74 ]
  %.0.i.i.i.i77 = add i32 %.0.in17.i.i.i.i76, -1  ; 2 uses
  %i.jg = zext i32 %.0.i.i.i.i77 to i64
  %i.jh = getelementptr inbounds nuw [20 x i8], ptr %i.jd, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw [20 x i8], ptr %i.jd, i64 %indvars.iv.i.i.i.i75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.jh, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jh, ptr noundef nonnull align 4 dereferenceable(20) %i.ji, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ji, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next.i.i.i.i78 = add nuw nsw i64 %indvars.iv.i.i.i.i75, 1 ; 2 uses
  %i.jj = icmp eq i64 %indvars.iv.next.i.i.i.i78, %zext.i.i73
  br i1 %i.jj, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79, label %.lr.ph.i.i.i.i74, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79: ; preds = %.lr.ph.i.i.i.i74, %bb.y
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 90
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !632, !range !380, !noundef !293
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.z, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88

bb.z:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iz, i64 128
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !611 ; 2 uses
  %i.jp = load i32, ptr %i.ja, align 8, !tbaa !607
  %.sroa.speculated.i5.i.i.i80 = tail call i32 @llvm.umin.i32(i32 %i.jb, i32 %i.jp) ; 3 uses
  %i.jq = icmp ult i32 %.sroa.speculated.i5.i.i.i80, 2
  br i1 %i.jq, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88, label %.lr.ph.preheader.i6.i.i.i81

.lr.ph.preheader.i6.i.i.i81:                      ; preds = %bb.z
  %i.jr = lshr i32 %.sroa.speculated.i5.i.i.i80, 1
  %zext1.i.i82 = zext nneg i32 %i.jr to i64
  br label %.lr.ph.i8.i.i.i83

.lr.ph.i8.i.i.i83:                                ; preds = %.lr.ph.i8.i.i.i83, %.lr.ph.preheader.i6.i.i.i81
  %indvars.iv.i9.i.i.i84 = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i81 ], [ %indvars.iv.next.i12.i.i.i87, %.lr.ph.i8.i.i.i83 ] ; 2 uses
  %.0.in17.i10.i.i.i85 = phi i32 [ %.sroa.speculated.i5.i.i.i80, %.lr.ph.preheader.i6.i.i.i81 ], [ %.0.i11.i.i.i86, %.lr.ph.i8.i.i.i83 ]
  %.0.i11.i.i.i86 = add i32 %.0.in17.i10.i.i.i85, -1 ; 2 uses
  %i.js = zext i32 %.0.i11.i.i.i86 to i64
  %i.jt = getelementptr inbounds nuw [20 x i8], ptr %i.jo, i64 %i.js ; 2 uses
  %i.ju = getelementptr inbounds nuw [20 x i8], ptr %i.jo, i64 %indvars.iv.i9.i.i.i84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.jt, i64 20, i1 false), !tbaa.struct !612
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jt, ptr noundef nonnull align 4 dereferenceable(20) %i.ju, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ju, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next.i12.i.i.i87 = add nuw nsw i64 %indvars.iv.i9.i.i.i84, 1 ; 2 uses
  %i.jv = icmp eq i64 %indvars.iv.next.i12.i.i.i87, %zext1.i.i82
  br i1 %i.jv, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88, label %.lr.ph.i8.i.i.i83, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88: ; preds = %.lr.ph.i8.i.i.i83, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79, %bb.z
  %i.jw = load i8, ptr %i.bn, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.jx = xor i8 %i.jw, 1
  store i8 %i.jx, ptr %i.bn, align 4, !tbaa !1676
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88, %._crit_edge
  ret i1 %.060.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT12KernSubTableINS_20KernOTSubTableHeaderEE8dispatchIN3AAT22hb_aat_apply_context_tEJEEENT_8return_tEPS6_DpOT0_(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.OT::hb_kern_machine_t.1012", align 8 ; 5 uses
  %3 = alloca %"struct.AAT::KerxSubTableFormat2<OT::KernOTSubTableHeader>::accelerator_t", align 8 ; 5 uses
  %4 = alloca %"struct.OT::hb_kern_machine_t.1009", align 8 ; 5 uses
  %5 = alloca %"struct.AAT::KerxSubTableFormat1<OT::KernOTSubTableHeader>::driver_context_t", align 8 ; 8 uses
  %6 = alloca %"struct.AAT::StateTableDriver", align 8 ; 5 uses
  %7 = alloca %"struct.AAT::KerxSubTableFormat0<OT::KernOTSubTableHeader>::accelerator_t", align 8 ; 5 uses
  %8 = alloca %"struct.OT::hb_kern_machine_t.983", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !303
  switch i8 %i.b, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT20KernOTSubTableHeaderEEEJEEEbRKT_DpOT0_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !491  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  %i.f = load i16, ptr %i.e, align 4
  %i.g = trunc i16 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT20KernOTSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  store ptr %0, ptr %7, align 8, !tbaa !3690
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !1686
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  %i.k = lshr i8 %i.i, 2
  %.lobit.i.i = and i8 %i.k, 1
  store ptr %7, ptr %8, align 8, !tbaa !3691
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 %.lobit.i.i, ptr %i.l, align 8, !tbaa !1689
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !492
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !494
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1365
  call void @_ZNK2OT17hb_kern_machine_tIN3AAT19KerxSubTableFormat0INS_20KernOTSubTableHeaderEE13accelerator_tEE4kernEP9hb_font_tP11hb_buffer_tjb(ptr noundef nonnull align 8 dereferenceable(9) %8, ptr noundef %i.n, ptr noundef %i.p, i32 noundef %i.r, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT20KernOTSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !491
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 180
  %i.v = load i16, ptr %i.u, align 4
  %i.w = trunc i16 %i.v to i1
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !303 ; 2 uses
  %i.x = and i8 %.pre.i.i, 4
  %.not.i.i = icmp ne i8 %i.x, 0
  %or.cond.not.i.i = select i1 %i.w, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %._crit_edge.i.i, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT20KernOTSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

._crit_edge.i.i:                                  ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  store ptr %1, ptr %5, align 8, !tbaa !1693
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.y, align 8, !tbaa !1694
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  store ptr %i.af, ptr %i.z, align 8, !tbaa !1695
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 0, ptr %i.ag, align 8, !tbaa !1696
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.ai = lshr i8 %.pre.i.i, 2
  %i.aj = and i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ah, align 4, !tbaa !1697
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !492
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !264 ; 2 uses
  store ptr %i.aa, ptr %6, align 8, !tbaa !1699
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 4 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.e, label %_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_19KerxSubTableFormat1IN2OT20KernOTSubTableHeaderEE5FlagsEEC2ERKNS_10StateTableIS1_vEEP9hb_face_t.exit.i.i, !prof !267

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ar = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.an), !inline_history !7
  br label %_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_19KerxSubTableFormat1IN2OT20KernOTSubTableHeaderEE5FlagsEEC2ERKNS_10StateTableIS1_vEEP9hb_face_t.exit.i.i

_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_19KerxSubTableFormat1IN2OT20KernOTSubTableHeaderEE5FlagsEEC2ERKNS_10StateTableIS1_vEEP9hb_face_t.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i
  %.0.i.i.i.i = phi i32 [ %i.ar, %bb.e ], [ %i.ap, %._crit_edge.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0.i.i.i.i, ptr %i.as, align 8, !tbaa !3692
  call void @_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_19KerxSubTableFormat1IN2OT20KernOTSubTableHeaderEE5FlagsEE5driveINS5_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(180) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT20KernOTSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !491 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 180
  %i.aw = load i16, ptr %i.av, align 4
  %i.ax = trunc i16 %i.aw to i1
  br i1 %i.ax, label %bb.g, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT20KernOTSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  store ptr %0, ptr %3, align 8, !tbaa !3693
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
begin_hunk_1_@_ZNK2OT17hb_kern_machine_tINS_19KernSubTableFormat3INS_20KernOTSubTableHeaderEEEE4kernEP9hb_font_tP11hb_buffer_tjb:bb.a
  %i.fn = load i8, ptr %i.cf, align 8, !tbaa !1709, !range !380, !noundef !293
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fp = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %.1, ptr %i.fq, align 4, !tbaa !644
  %i.fr = load i32, ptr %i.cg, align 8, !tbaa !1367
  %i.fs = or i32 %i.fr, 8
  store i32 %i.fs, ptr %i.cg, align 8, !tbaa !1367
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ft = ashr i32 %.1, 1                         ; 2 uses
  %i.fu = sub nsw i32 %.1, %i.ft                  ; 2 uses
  %i.fv = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !619
  %i.fy = add nsw i32 %i.fx, %i.ft
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !619
  %i.fz = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !619
  %i.gc = add nsw i32 %i.gb, %i.fu
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !619
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 12 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !645
  %i.gf = add nsw i32 %i.ge, %i.fu
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !645
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.o, %bb.p
  %i.gg = add i32 %i.cs, 1
  call void @_ZN11hb_buffer_t15unsafe_to_breakEjj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %.07183, i32 noundef %i.gg)
  %.pre = load i32, ptr %i.bt, align 8, !tbaa !1366
  br label %_ZNK2OT19KernSubTableFormat3INS_20KernOTSubTableHeaderEE11get_kerningEjj.exit.thread

_ZNK2OT19KernSubTableFormat3INS_20KernOTSubTableHeaderEE11get_kerningEjj.exit.thread: ; preds = %bb.v, %_ZNK2OT19KernSubTableFormat3INS_20KernOTSubTableHeaderEE11get_kerningEjj.exit, %bb.j, %bb.i
  %.172 = phi i32 [ %i.cr, %bb.i ], [ %i.cs, %bb.j ], [ %i.cs, %_ZNK2OT19KernSubTableFormat3INS_20KernOTSubTableHeaderEE11get_kerningEjj.exit ], [ %.pre, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %.backedge

bb.w:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT9KerxTableIN2OT7KernAATEE5applyEPNS_22hb_aat_apply_context_tERKNS_23kern_accelerator_data_tE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %4 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %5 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %6 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !587
  %i.e = and i32 %i.d, 64
  %i.f = icmp eq i32 %i.e, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !324 ; 5 uses
  br i1 %i.f, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %.not100 = icmp eq i32 %.pre, 0
  br i1 %.not100, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, label %.lr.ph.i

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 141 ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !588
  br label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589  ; 5 uses
  %wide.trip.count.i = zext i32 %.pre to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.k = icmp ult i32 %.pre, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !591
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 4, !tbaa !591
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !591
  %i.s = or i32 %i.r, 2
  store i32 %i.s, ptr %i.q, align 4, !tbaa !591
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !591
  %i.w = or i32 %i.v, 2
  store i32 %i.w, ptr %i.u, align 4, !tbaa !591
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !591
  %i.aa = or i32 %i.z, 2
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !591
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !16

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !591
  %i.ae = or i32 %i.ad, 2
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !591
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.d, !llvm.loop !3743

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit:       ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %i.af = icmp ugt i32 %.pre, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 141 ; 3 uses
  %i.al = zext i1 %i.aj to i8
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !588
  br i1 %i.aj, label %bb.e, label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit, !prof !592

bb.e:                                             ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !546
  %.not.i.i.i = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %.not1.i.i.i = icmp eq i32 %i.ap, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.am, align 4, !tbaa !547
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 0, ptr %i.aq, align 4, !tbaa !548
  store i32 0, ptr %i.ao, align 4, !tbaa !549
  br label %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i

_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i: ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !589
  tail call void @_ZN12hb_bit_set_t9set_arrayIjEEvbPKT_jj(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i1 noundef zeroext true, ptr noundef %i.as, i32 noundef %.pre, i32 noundef 20)
  br label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit

_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit: ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i
  %i.at = phi ptr [ %i.h, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread ], [ %i.ak, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit ], [ %i.ak, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i ]
  %i.au = phi ptr [ %i.g, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread ], [ %i.ag, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit ], [ %i.ag, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 6 uses
  store i32 0, ptr %i.av, align 8, !tbaa !593
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !278 ; 2 uses
  %.not113 = icmp eq i32 %i.ax, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit
  %i.ay = tail call noundef i32 @llvm.bswap.i32(i32 %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.bh = add i32 %i.ay, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.phi.trans.insert1.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bl = zext i32 %i.bh to i64
  %wide.trip.count121 = zext i32 %i.ay to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.y, %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit
  %.060.lcssa = phi i1 [ false, %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit ], [ %.161, %bb.y ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.z, label %bb.ab

bb.g:                                             ; preds = %.lr.ph112, %bb.y
  %indvars.iv119 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next120, %bb.y ] ; 4 uses
  %.058109 = phi ptr [ %i.az, %.lr.ph112 ], [ %i.ir, %bb.y ] ; 10 uses
  %.059108 = phi i1 [ false, %.lr.ph112 ], [ %.2, %bb.y ] ; 5 uses
  %.060107 = phi i1 [ false, %.lr.ph112 ], [ %.161, %bb.y ] ; 5 uses
  %i.bp = load i32, ptr %i.ba, align 4, !tbaa !1679
  %i.bq = zext i32 %i.bp to i64
  %.not.i66 = icmp samesign ult i64 %indvars.iv119, %i.bq
  %i.br = load ptr, ptr %i.bb, align 8
  %i.bs = getelementptr inbounds nuw [608 x i8], ptr %i.br, i64 %indvars.iv119
  %.0.i = select i1 %.not.i66, ptr %i.bs, ptr @_hb_NullPool, !prof !268 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.058109, i64 4 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !303 ; 2 uses
  %i.bv = and i8 %i.bu, 32
  %.not = icmp eq i8 %i.bv, 0
  br i1 %.not, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !614
  %i.bz = and i32 %i.by, -2
  %.not.i67 = icmp sgt i8 %i.bu, -1
  %i.ca = icmp ne i32 %i.bz, 4
  %.not63 = xor i1 %.not.i67, %i.ca
  br i1 %.not63, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i, ptr %i.bc, align 8, !tbaa !1680
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store ptr %i.cb, ptr %i.bd, align 8, !tbaa !1681
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store ptr %i.cc, ptr %i.be, align 8, !tbaa !1682
  %i.cd = load i8, ptr %i.at, align 1, !tbaa !588, !range !380, !noundef !293
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit, label %.preheader.i, !prof !268

.preheader.i:                                     ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !607
  %.not.i68 = icmp eq i32 %i.cg, 0
  br i1 %.not.i68, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread, label %.lr.ph.i69

_ZNK12hb_bit_set_t3hasEj.exit.thread:             ; preds = %bb.n, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge, %._crit_edge.i.i.i.i, %_ZNK12hb_bit_set_t3hasEj.exit
  %i.ch = phi ptr [ %.pre126, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge ], [ %.pre127, %_ZNK12hb_bit_set_t3hasEj.exit ], [ %i.cm, %._crit_edge.i.i.i.i ], [ %i.cm, %bb.n ] ; 3 uses
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !607
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next.i71, %i.ck
  br i1 %i.cl, label %.lr.ph.i69, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread, !llvm.loop !159

.lr.ph.i69:                                       ; preds = %.preheader.i, %_ZNK12hb_bit_set_t3hasEj.exit.thread
  %i.cm = phi ptr [ %i.ch, %_ZNK12hb_bit_set_t3hasEj.exit.thread ], [ %i.bw, %.preheader.i ] ; 3 uses
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i71, %_ZNK12hb_bit_set_t3hasEj.exit.thread ], [ 0, %.preheader.i ] ; 2 uses
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !1680 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 112
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !589
  %i.cq = getelementptr inbounds nuw [20 x i8], ptr %i.cp, i64 %indvars.iv.i70
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !637 ; 3 uses
  %i.cs = lshr i32 %i.cr, 9                       ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cu = load atomic i32, ptr %i.ct monotonic, align 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !1233 ; 3 uses
  %i.cx = icmp ult i32 %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !553 ; 3 uses
  br i1 %i.cx, label %bb.j, label %._crit_edge.i.i.i.i, !prof !268

bb.j:                                             ; preds = %.lr.ph.i69
  %i.da = zext i32 %i.cu to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !1235
  %.not.i.i.i.i = icmp eq i32 %i.dc, %i.cs
  br i1 %.not.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %.lr.ph.i69
  %.not1.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cw, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %i.dd = add nsw i32 %i.cw, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.n, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.n ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.n ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.de = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.df = lshr i32 %i.de, 1                       ; 4 uses
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !1235 ; 2 uses
  %i.dk = icmp slt i32 %i.cs, %i.dj
  br i1 %i.dk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dl = add nsw i32 %i.df, -1
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i = icmp eq i32 %i.cs, %i.dj
  br i1 %.not28.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = add nuw nsw i32 %i.df, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.dm, %bb.m ], [ %.0212.i.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.m ], [ %i.dl, %bb.k ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.l
  store atomic i32 %i.df, ptr %i.ct monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i:         ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, %bb.j
  %i.dn = phi i64 [ %i.dg, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ %i.da, %bb.j ]
  %.sink.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %.sink.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %.sink.i.i.i.i, null
  br i1 %.not.i.i.i91, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge, label %_ZNK12hb_bit_set_t3hasEj.exit

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge: ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %.pre126 = load ptr, ptr %i.a, align 8, !tbaa !494
  br label %_ZNK12hb_bit_set_t3hasEj.exit.thread

_ZNK12hb_bit_set_t3hasEj.exit:                    ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !1238
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = lshr i32 %i.cr, 6
  %i.dv = and i32 %i.du, 7
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1240
  %i.dz = and i32 %i.cr, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.dy, %i.eb
  %.not101 = icmp eq i64 %i.ec, 0
  %.pre127 = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  br i1 %.not101, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread98

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit: ; preds = %bb.i
  %i.ed = load ptr, ptr %i.au, align 8, !tbaa !551
  %i.ee = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t10intersectsERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ed, ptr noundef nonnull align 8 dereferenceable(48) %.0.i)
  %.pre125 = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  br i1 %i.ee, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread98, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread: ; preds = %_ZNK12hb_bit_set_t3hasEj.exit.thread, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit, %.preheader.i
  %i.ef = phi ptr [ %i.bw, %.preheader.i ], [ %.pre125, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit ], [ %i.ch, %_ZNK12hb_bit_set_t3hasEj.exit.thread ]
  %i.eg = load ptr, ptr %i.bf, align 8, !tbaa !492
  %i.eh = load i32, ptr %i.av, align 8, !tbaa !593
  %i.ei = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ef, ptr noundef %i.eg, ptr noundef nonnull @.str.104, i32 noundef %i.eh) ; 0 uses
  br label %bb.y

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread98: ; preds = %_ZNK12hb_bit_set_t3hasEj.exit, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit
  %i.ej = phi ptr [ %.pre125, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit ], [ %.pre127, %_ZNK12hb_bit_set_t3hasEj.exit ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !614
  %i.em = and i32 %i.el, -3
  %i.en = icmp eq i32 %i.em, 5
  %i.eo = load ptr, ptr %i.bf, align 8, !tbaa !492
  %i.ep = load i32, ptr %i.av, align 8, !tbaa !593
  %i.eq = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ej, ptr noundef %i.eo, ptr noundef nonnull @.str.105, i32 noundef %i.ep)
  br i1 %i.eq, label %bb.o, label %bb.y

bb.o:                                             ; preds = %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread98
  br i1 %.059108, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.er = load i8, ptr %i.bt, align 1, !tbaa !303
  %i.es = and i8 %i.er, 64
  %.not64 = icmp eq i8 %i.es, 0
  br i1 %.not64, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !611 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !607 ; 4 uses
  %.not114 = icmp eq i32 %i.ex, 0
  br i1 %.not114, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %wide.trip.count = zext i32 %i.ex to i64        ; 2 uses
  %xtraiter153 = and i64 %wide.trip.count, 1
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter157 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter158 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter158.next.1, %.lr.ph ]
  %i.ez = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %indvars.iv ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 18
  store i8 2, ptr %i.fb, align 2, !tbaa !280
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !614
  %i.ff = and i32 %i.fe, -3
  %i.fg = icmp eq i32 %i.ff, 4
  %i.fh = select i1 %i.fg, i16 -1, i16 1
  store i16 %i.fh, ptr %i.fa, align 4, !tbaa !280
  %i.fi = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %indvars.iv ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 38
  store i8 2, ptr %i.fk, align 2, !tbaa !280
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !614
  %i.fo = and i32 %i.fn, -3
  %i.fp = icmp eq i32 %i.fo, 4
  %i.fq = select i1 %i.fp, i16 -1, i16 1
  store i16 %i.fq, ptr %i.fj, align 4, !tbaa !280
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter158.next.1 = add i64 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3744

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod155.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod155.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod156 = trunc i32 %i.ex to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.fr = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %indvars.iv.epil.init ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 18
  store i8 2, ptr %i.ft, align 2, !tbaa !280
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !614
  %i.fx = and i32 %i.fw, -3
  %i.fy = icmp eq i32 %i.fx, 4
  %i.fz = select i1 %i.fy, i16 -1, i16 1
  store i16 %i.fz, ptr %i.fs, align 4, !tbaa !280
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.q, %bb.p, %bb.o
  %.1 = phi i1 [ true, %bb.o ], [ false, %bb.p ], [ true, %bb.q ], [ true, %.loopexit.loopexit.unr-lcssa ], [ true, %.lr.ph.epil.preheader ]
  %i.ga = load i8, ptr %i.bg, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.gb = zext i1 %i.en to i8
  %.not65 = icmp eq i8 %i.ga, %i.gb
  br i1 %.not65, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 96 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !607 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 112
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !589 ; 2 uses
  %i.gh = icmp ult i32 %i.ge, 2
  br i1 %i.gh, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.r
  %i.gi = lshr i32 %i.ge, 1
  %zext.i.i = zext nneg i32 %i.gi to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.in17.i.i.i.i = phi i32 [ %i.ge, %.lr.ph.preheader.i.i.i.i ], [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i = add i32 %.0.in17.i.i.i.i, -1      ; 2 uses
  %i.gj = zext i32 %.0.i.i.i.i to i64
  %i.gk = getelementptr inbounds nuw [20 x i8], ptr %i.gg, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw [20 x i8], ptr %i.gg, i64 %indvars.iv.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.gk, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gk, ptr noundef nonnull align 4 dereferenceable(20) %i.gl, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gl, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.gm = icmp eq i64 %indvars.iv.next.i.i.i.i, %zext.i.i
  br i1 %i.gm, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.r
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 90
  %i.go = load i8, ptr %i.gn, align 2, !tbaa !632, !range !380, !noundef !293
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.s, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit

bb.s:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !611 ; 2 uses
  %i.gs = load i32, ptr %i.gd, align 8, !tbaa !607
  %.sroa.speculated.i5.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ge, i32 %i.gs) ; 3 uses
  %i.gt = icmp ult i32 %.sroa.speculated.i5.i.i.i, 2
  br i1 %i.gt, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.preheader.i6.i.i.i

.lr.ph.preheader.i6.i.i.i:                        ; preds = %bb.s
  %i.gu = lshr i32 %.sroa.speculated.i5.i.i.i, 1
  %zext1.i.i = zext nneg i32 %i.gu to i64
  br label %.lr.ph.i8.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %.lr.ph.i8.i.i.i, %.lr.ph.preheader.i6.i.i.i
  %indvars.iv.i9.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i ], [ %indvars.iv.next.i12.i.i.i, %.lr.ph.i8.i.i.i ] ; 2 uses
  %.0.in17.i10.i.i.i = phi i32 [ %.sroa.speculated.i5.i.i.i, %.lr.ph.preheader.i6.i.i.i ], [ %.0.i11.i.i.i, %.lr.ph.i8.i.i.i ]
  %.0.i11.i.i.i = add i32 %.0.in17.i10.i.i.i, -1  ; 2 uses
  %i.gv = zext i32 %.0.i11.i.i.i to i64
  %i.gw = getelementptr inbounds nuw [20 x i8], ptr %i.gr, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw [20 x i8], ptr %i.gr, i64 %indvars.iv.i9.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.gw, i64 20, i1 false), !tbaa.struct !612
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gw, ptr noundef nonnull align 4 dereferenceable(20) %i.gx, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gx, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %indvars.iv.next.i12.i.i.i = add nuw nsw i64 %indvars.iv.i9.i.i.i, 1 ; 2 uses
  %i.gy = icmp eq i64 %indvars.iv.next.i12.i.i.i, %zext1.i.i
  br i1 %i.gy, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.i8.i.i.i, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit: ; preds = %.lr.ph.i8.i.i.i, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, %bb.s
  %i.gz = load i8, ptr %i.bg, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.ha = xor i8 %i.gz, 1
  store i8 %i.ha, ptr %i.bg, align 4, !tbaa !1676
  br label %bb.t

bb.t:                                             ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, %.loopexit
  %.not102 = icmp samesign ult i64 %indvars.iv119, %i.bl
  %i.hb = load ptr, ptr %i.bi, align 8, !tbaa !496 ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i72, label %._crit_edge.i.i.i, label %bb.u

._crit_edge.i.i.i:                                ; preds = %bb.t
  %.pre.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !504
  %.pre2.i.i.i = load ptr, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !275 ; 3 uses
  store ptr %i.hd, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !276
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hg ; 2 uses
  store ptr %i.hh, ptr %i.bj, align 8, !tbaa !504
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i: ; preds = %bb.u, %._crit_edge.i.i.i
  %i.hi = phi ptr [ %.pre2.i.i.i, %._crit_edge.i.i.i ], [ %i.hd, %bb.u ] ; 2 uses
  %i.hj = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hh, %bb.u ] ; 2 uses
  %i.hk = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = trunc i64 %i.hm to i32
  store i32 %i.hn, ptr %i.bk, align 8, !tbaa !506
  br i1 %.not102, label %bb.v, label %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_21KernAATSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit

bb.v:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i
  %i.ho = icmp uge ptr %.058109, %i.hi
  %.not13.i.i = icmp ugt ptr %i.hj, %.058109
  %or.cond.i.i = select i1 %i.ho, i1 %.not13.i.i, i1 false, !prof !707
  br i1 %or.cond.i.i, label %bb.w, label %.critedge.i.i, !prof !707

.critedge.i.i:                                    ; preds = %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.phi.trans.insert1.i.i.i, i8 0, i64 20, i1 false)
  br label %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_21KernAATSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit

bb.w:                                             ; preds = %bb.v
  store ptr %.058109, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.hp = ptrtoint ptr %.058109 to i64
  %i.hq = sub i64 %i.hk, %i.hp
  %i.hr = load i32, ptr %.058109, align 1, !tbaa !278
  %i.hs = tail call noundef i32 @llvm.bswap.i32(i32 %i.hr)
  %i.ht = zext i32 %i.hs to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.hq, i64 %i.ht) ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.058109, i64 %.sroa.speculated.i.i
  store ptr %i.hu, ptr %i.bj, align 8, !tbaa !504
  %i.hv = trunc nuw i64 %.sroa.speculated.i.i to i32
  store i32 %i.hv, ptr %i.bk, align 8, !tbaa !506
  br label %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_21KernAATSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit

_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_21KernAATSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i, %.critedge.i.i, %bb.w
  %i.hw = tail call noundef zeroext i1 @_ZNK2OT12KernSubTableINS_21KernAATSubTableHeaderEE8dispatchIN3AAT22hb_aat_apply_context_tEJEEENT_8return_tEPS6_DpOT0_(ptr noundef nonnull align 1 dereferenceable(22) %.058109, ptr noundef nonnull %1)
  %7 = or i1 %.060107, %i.hw
  %i.hx = load ptr, ptr %i.bi, align 8, !tbaa !496 ; 3 uses
  %.not.i.i73 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i73, label %._crit_edge.i.i, label %bb.x

._crit_edge.i.i:                                  ; preds = %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_21KernAATSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit
  %.pre.i.i = load ptr, ptr %i.bj, align 8, !tbaa !504
  %.pre2.i.i = load ptr, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

bb.x:                                             ; preds = %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_21KernAATSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !275 ; 3 uses
  store ptr %i.hz, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !276
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ic ; 2 uses
  store ptr %i.id, ptr %i.bj, align 8, !tbaa !504
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

_ZN25hb_sanitize_with_object_tD2Ev.exit:          ; preds = %._crit_edge.i.i, %bb.x
  %i.ie = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.hz, %bb.x ]
  %i.if = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.id, %bb.x ]
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.ie to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = trunc i64 %i.ii to i32
  store i32 %i.ij, ptr %i.bk, align 8, !tbaa !506
  %i.ik = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.il = load ptr, ptr %i.bf, align 8, !tbaa !492
  %i.im = load i32, ptr %i.av, align 8, !tbaa !593
  %i.in = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ik, ptr noundef %i.il, ptr noundef nonnull @.str.106, i32 noundef %i.im) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread98, %bb.h, %bb.g, %_ZN25hb_sanitize_with_object_tD2Ev.exit, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread
  %.161 = phi i1 [ %.060107, %bb.g ], [ %.060107, %bb.h ], [ %7, %_ZN25hb_sanitize_with_object_tD2Ev.exit ], [ %.060107, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread98 ], [ %.060107, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread ] ; 2 uses
  %.2 = phi i1 [ %.059108, %bb.g ], [ %.059108, %bb.h ], [ %.1, %_ZN25hb_sanitize_with_object_tD2Ev.exit ], [ %.059108, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread98 ], [ %.059108, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread ]
  %i.io = load i32, ptr %.058109, align 1, !tbaa !278
  %i.ip = tail call noundef i32 @llvm.bswap.i32(i32 %i.io)
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %.058109, i64 %i.iq
  %i.is = load i32, ptr %i.av, align 8, !tbaa !593
  %i.it = add i32 %i.is, 1
  store i32 %i.it, ptr %i.av, align 8, !tbaa !593
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %bb.g, !llvm.loop !3745

bb.z:                                             ; preds = %._crit_edge
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 96 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !607 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 112
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !589 ; 2 uses
  %i.iz = icmp ult i32 %i.iw, 2
  br i1 %i.iz, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i81, label %.lr.ph.preheader.i.i.i.i74

.lr.ph.preheader.i.i.i.i74:                       ; preds = %bb.z
  %i.ja = lshr i32 %i.iw, 1
  %zext.i.i75 = zext nneg i32 %i.ja to i64
  br label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %.lr.ph.i.i.i.i76, %.lr.ph.preheader.i.i.i.i74
  %indvars.iv.i.i.i.i77 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i74 ], [ %indvars.iv.next.i.i.i.i80, %.lr.ph.i.i.i.i76 ] ; 2 uses
  %.0.in17.i.i.i.i78 = phi i32 [ %i.iw, %.lr.ph.preheader.i.i.i.i74 ], [ %.0.i.i.i.i79, %.lr.ph.i.i.i.i76 ]
  %.0.i.i.i.i79 = add i32 %.0.in17.i.i.i.i78, -1  ; 2 uses
  %i.jb = zext i32 %.0.i.i.i.i79 to i64
  %i.jc = getelementptr inbounds nuw [20 x i8], ptr %i.iy, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [20 x i8], ptr %i.iy, i64 %indvars.iv.i.i.i.i77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.jc, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jc, ptr noundef nonnull align 4 dereferenceable(20) %i.jd, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jd, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next.i.i.i.i80 = add nuw nsw i64 %indvars.iv.i.i.i.i77, 1 ; 2 uses
  %i.je = icmp eq i64 %indvars.iv.next.i.i.i.i80, %zext.i.i75
  br i1 %i.je, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i81, label %.lr.ph.i.i.i.i76, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i81: ; preds = %.lr.ph.i.i.i.i76, %bb.z
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 90
  %i.jg = load i8, ptr %i.jf, align 2, !tbaa !632, !range !380, !noundef !293
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.aa, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit90

bb.aa:                                            ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i81
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iu, i64 128
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !611 ; 2 uses
  %i.jk = load i32, ptr %i.iv, align 8, !tbaa !607
  %.sroa.speculated.i5.i.i.i82 = tail call i32 @llvm.umin.i32(i32 %i.iw, i32 %i.jk) ; 3 uses
  %i.jl = icmp ult i32 %.sroa.speculated.i5.i.i.i82, 2
  br i1 %i.jl, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit90, label %.lr.ph.preheader.i6.i.i.i83

.lr.ph.preheader.i6.i.i.i83:                      ; preds = %bb.aa
  %i.jm = lshr i32 %.sroa.speculated.i5.i.i.i82, 1
  %zext1.i.i84 = zext nneg i32 %i.jm to i64
  br label %.lr.ph.i8.i.i.i85

.lr.ph.i8.i.i.i85:                                ; preds = %.lr.ph.i8.i.i.i85, %.lr.ph.preheader.i6.i.i.i83
  %indvars.iv.i9.i.i.i86 = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i83 ], [ %indvars.iv.next.i12.i.i.i89, %.lr.ph.i8.i.i.i85 ] ; 2 uses
  %.0.in17.i10.i.i.i87 = phi i32 [ %.sroa.speculated.i5.i.i.i82, %.lr.ph.preheader.i6.i.i.i83 ], [ %.0.i11.i.i.i88, %.lr.ph.i8.i.i.i85 ]
  %.0.i11.i.i.i88 = add i32 %.0.in17.i10.i.i.i87, -1 ; 2 uses
  %i.jn = zext i32 %.0.i11.i.i.i88 to i64
  %i.jo = getelementptr inbounds nuw [20 x i8], ptr %i.jj, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw [20 x i8], ptr %i.jj, i64 %indvars.iv.i9.i.i.i86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.jo, i64 20, i1 false), !tbaa.struct !612
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jo, ptr noundef nonnull align 4 dereferenceable(20) %i.jp, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jp, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next.i12.i.i.i89 = add nuw nsw i64 %indvars.iv.i9.i.i.i86, 1 ; 2 uses
  %i.jq = icmp eq i64 %indvars.iv.next.i12.i.i.i89, %zext1.i.i84
  br i1 %i.jq, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit90, label %.lr.ph.i8.i.i.i85, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit90: ; preds = %.lr.ph.i8.i.i.i85, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i81, %bb.aa
  %i.jr = load i8, ptr %i.bm, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.js = xor i8 %i.jr, 1
  store i8 %i.js, ptr %i.bm, align 4, !tbaa !1676
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit90, %._crit_edge
  ret i1 %.060.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT12KernSubTableINS_21KernAATSubTableHeaderEE8dispatchIN3AAT22hb_aat_apply_context_tEJEEENT_8return_tEPS6_DpOT0_(ptr noundef nonnull align 1 dereferenceable(22) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.OT::hb_kern_machine_t.1028", align 8 ; 5 uses
  %3 = alloca %"struct.AAT::KerxSubTableFormat2<OT::KernAATSubTableHeader>::accelerator_t", align 8 ; 5 uses
  %4 = alloca %"struct.OT::hb_kern_machine_t.1026", align 8 ; 5 uses
  %5 = alloca %"struct.AAT::KerxSubTableFormat1<OT::KernAATSubTableHeader>::driver_context_t", align 8 ; 8 uses
  %6 = alloca %"struct.AAT::StateTableDriver.1024", align 8 ; 5 uses
  %7 = alloca %"struct.AAT::KerxSubTableFormat0<OT::KernAATSubTableHeader>::accelerator_t", align 8 ; 5 uses
  %8 = alloca %"struct.OT::hb_kern_machine_t.1022", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !303
  switch i8 %i.b, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT21KernAATSubTableHeaderEEEJEEEbRKT_DpOT0_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !491  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  %i.f = load i16, ptr %i.e, align 4
  %i.g = trunc i16 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT21KernAATSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  store ptr %0, ptr %7, align 8, !tbaa !3746
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !1735
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  %i.k = lshr i8 %i.i, 6
  %.lobit.i.i = and i8 %i.k, 1
  store ptr %7, ptr %8, align 8, !tbaa !3747
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 %.lobit.i.i, ptr %i.l, align 8, !tbaa !1738
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !492
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !494
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1365
  call void @_ZNK2OT17hb_kern_machine_tIN3AAT19KerxSubTableFormat0INS_21KernAATSubTableHeaderEE13accelerator_tEE4kernEP9hb_font_tP11hb_buffer_tjb(ptr noundef nonnull align 8 dereferenceable(9) %8, ptr noundef %i.n, ptr noundef %i.p, i32 noundef %i.r, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT21KernAATSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !491
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 180
  %i.v = load i16, ptr %i.u, align 4
  %i.w = trunc i16 %i.v to i1
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !303 ; 2 uses
  %i.x = and i8 %.pre.i.i, 64
  %.not.i.i = icmp ne i8 %i.x, 0
  %or.cond.not.i.i = select i1 %i.w, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %._crit_edge.i.i, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT21KernAATSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

._crit_edge.i.i:                                  ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  store ptr %1, ptr %5, align 8, !tbaa !1741
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.y, align 8, !tbaa !1742
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  store ptr %i.af, ptr %i.z, align 8, !tbaa !1695
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 0, ptr %i.ag, align 8, !tbaa !1743
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.ai = lshr i8 %.pre.i.i, 6
  %i.aj = and i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ah, align 4, !tbaa !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !492
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !264 ; 2 uses
  store ptr %i.aa, ptr %6, align 8, !tbaa !1699
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 4 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.e, label %_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_19KerxSubTableFormat1IN2OT21KernAATSubTableHeaderEE5FlagsEEC2ERKNS_10StateTableIS1_vEEP9hb_face_t.exit.i.i, !prof !267

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ar = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.an), !inline_history !7
  br label %_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_19KerxSubTableFormat1IN2OT21KernAATSubTableHeaderEE5FlagsEEC2ERKNS_10StateTableIS1_vEEP9hb_face_t.exit.i.i

_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_19KerxSubTableFormat1IN2OT21KernAATSubTableHeaderEE5FlagsEEC2ERKNS_10StateTableIS1_vEEP9hb_face_t.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i
  %.0.i.i.i.i = phi i32 [ %i.ar, %bb.e ], [ %i.ap, %._crit_edge.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0.i.i.i.i, ptr %i.as, align 8, !tbaa !3748
  call void @_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_19KerxSubTableFormat1IN2OT21KernAATSubTableHeaderEE5FlagsEE5driveINS5_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(180) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT21KernAATSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !491 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 180
  %i.aw = load i16, ptr %i.av, align 4
  %i.ax = trunc i16 %i.aw to i1
  br i1 %i.ax, label %bb.g, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT21KernAATSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  store ptr %0, ptr %3, align 8, !tbaa !3749
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_1
begin_hunk_2_@_ZNK3AAT18LookupSegmentArrayIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tSD_DpOT_:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.bf = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bj = zext i32 %i.bi to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.bh, %i.bj
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS0_INS_7ArrayOfIN3AAT6AnchorENS_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEEES8_vLb0EE8sanitizeIJjRPKvEEEbP21hb_sanitize_context_tSE_DpOT_.exit, label %bb.i, !prof !711

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bk = load i32, ptr %i.bc, align 1, !tbaa !278
  %i.bl = tail call noundef i32 @llvm.bswap.i32(i32 %i.bk) ; 2 uses
  %i.bm = shl nuw i32 %i.bl, 2                    ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, 1073741823
  br i1 %i.bn, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS0_INS_7ArrayOfIN3AAT6AnchorENS_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEEES8_vLb0EE8sanitizeIJjRPKvEEEbP21hb_sanitize_context_tSE_DpOT_.exit, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bf, %i.bp
  %i.br = load i32, ptr %i.g, align 8, !tbaa !506 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bq, %i.bs
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS0_INS_7ArrayOfIN3AAT6AnchorENS_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEEES8_vLb0EE8sanitizeIJjRPKvEEEbP21hb_sanitize_context_tSE_DpOT_.exit, label %bb.k, !prof !711

bb.k:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bf
  %i.bw = trunc i64 %i.bv to i32
  %.not12.i.i.i.i.i.i.i.i = icmp ugt i32 %i.bm, %i.bw
  br i1 %.not12.i.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS0_INS_7ArrayOfIN3AAT6AnchorENS_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEEES8_vLb0EE8sanitizeIJjRPKvEEEbP21hb_sanitize_context_tSE_DpOT_.exit, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7ArrayOfIN3AAT6AnchorENS1_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEJRPKvEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i, !prof !711

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7ArrayOfIN3AAT6AnchorENS1_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEJRPKvEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i: ; preds = %bb.k
  %i.bx = load i32, ptr %i.am, align 4, !tbaa !508
  %i.by = sub i32 %i.bx, %i.bm                    ; 2 uses
  store i32 %i.by, ptr %i.am, align 4, !tbaa !508
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.f, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS0_INS_7ArrayOfIN3AAT6AnchorENS_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEEES8_vLb0EE8sanitizeIJjRPKvEEEbP21hb_sanitize_context_tSE_DpOT_.exit, !prof !672

_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS0_INS_7ArrayOfIN3AAT6AnchorENS_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEEES8_vLb0EE8sanitizeIJjRPKvEEEbP21hb_sanitize_context_tSE_DpOT_.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7ArrayOfIN3AAT6AnchorENS1_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEJRPKvEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i, %bb.c, %bb.d, %bb.e, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToINS_7ArrayOfIN3AAT6AnchorENS_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i, %bb.b, %bb.a
  %i.ca = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToINS_7ArrayOfIN3AAT6AnchorENS_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i ], [ false, %bb.e ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7ArrayOfIN3AAT6AnchorENS1_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEJRPKvEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.f ], [ false, %bb.k ]
  ret i1 %i.ca
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT9KerxTableINS_4kerxEE5applyEPNS_22hb_aat_apply_context_tERKNS_23kern_accelerator_data_tE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %4 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %5 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %6 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !587
  %i.e = and i32 %i.d, 64
  %i.f = icmp eq i32 %i.e, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !324 ; 5 uses
  br i1 %i.f, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %.not98 = icmp eq i32 %.pre, 0
  br i1 %.not98, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, label %.lr.ph.i

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 141 ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !588
  br label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589  ; 5 uses
  %wide.trip.count.i = zext i32 %.pre to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.k = icmp ult i32 %.pre, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !591
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 4, !tbaa !591
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !591
  %i.s = or i32 %i.r, 2
  store i32 %i.s, ptr %i.q, align 4, !tbaa !591
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !591
  %i.w = or i32 %i.v, 2
  store i32 %i.w, ptr %i.u, align 4, !tbaa !591
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !591
  %i.aa = or i32 %i.z, 2
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !591
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !16

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !591
  %i.ae = or i32 %i.ad, 2
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !591
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.d, !llvm.loop !5734

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit:       ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %i.af = icmp ugt i32 %.pre, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 141 ; 3 uses
  %i.al = zext i1 %i.aj to i8
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !588
  br i1 %i.aj, label %bb.e, label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit, !prof !592

bb.e:                                             ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !546
  %.not.i.i.i = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %.not1.i.i.i = icmp eq i32 %i.ap, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.am, align 4, !tbaa !547
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 0, ptr %i.aq, align 4, !tbaa !548
  store i32 0, ptr %i.ao, align 4, !tbaa !549
  br label %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i

_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i: ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !589
  tail call void @_ZN12hb_bit_set_t9set_arrayIjEEvbPKT_jj(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i1 noundef zeroext true, ptr noundef %i.as, i32 noundef %.pre, i32 noundef 20)
  br label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit

_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit: ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i
  %i.at = phi ptr [ %i.h, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread ], [ %i.ak, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit ], [ %i.ak, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i ]
  %i.au = phi ptr [ %i.g, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread ], [ %i.ag, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit ], [ %i.ag, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 6 uses
  store i32 0, ptr %i.av, align 8, !tbaa !593
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !278 ; 2 uses
  %.not111 = icmp eq i32 %i.ax, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit
  %i.ay = tail call noundef i32 @llvm.bswap.i32(i32 %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.bh = add i32 %i.ay, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.phi.trans.insert1.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bl = zext i32 %i.bh to i64
  %wide.trip.count119 = zext i32 %i.ay to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.x, %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit
  %.059.lcssa = phi i1 [ false, %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit ], [ %.160, %bb.x ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.y, label %bb.aa

bb.g:                                             ; preds = %.lr.ph110, %bb.x
  %indvars.iv117 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next118, %bb.x ] ; 4 uses
  %.057107 = phi ptr [ %i.az, %.lr.ph110 ], [ %i.iu, %bb.x ] ; 10 uses
  %.058106 = phi i1 [ false, %.lr.ph110 ], [ %.2, %bb.x ] ; 4 uses
  %.059105 = phi i1 [ false, %.lr.ph110 ], [ %.160, %bb.x ] ; 4 uses
  %i.bp = load i32, ptr %i.ba, align 4, !tbaa !1679
  %i.bq = zext i32 %i.bp to i64
  %.not.i64 = icmp samesign ult i64 %indvars.iv117, %i.bq
  %i.br = load ptr, ptr %i.bb, align 8
  %i.bs = getelementptr inbounds nuw [608 x i8], ptr %i.br, i64 %indvars.iv117
  %.0.i = select i1 %.not.i64, ptr %i.bs, ptr @_hb_NullPool, !prof !268 ; 4 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !614
  %i.bw = and i32 %i.bv, -2
  %i.bx = getelementptr inbounds nuw i8, ptr %.057107, i64 4 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 1, !tbaa !278
  %.mask.i = and i32 %i.by, 128
  %.not.i65 = icmp eq i32 %.mask.i, 0
  %i.bz = icmp ne i32 %i.bw, 4
  %.not = xor i1 %i.bz, %.not.i65
  br i1 %.not, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  store ptr %.0.i, ptr %i.bc, align 8, !tbaa !1680
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store ptr %i.ca, ptr %i.bd, align 8, !tbaa !1681
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store ptr %i.cb, ptr %i.be, align 8, !tbaa !1682
  %i.cc = load i8, ptr %i.at, align 1, !tbaa !588, !range !380, !noundef !293
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit, label %.preheader.i, !prof !268

.preheader.i:                                     ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !607
  %.not.i66 = icmp eq i32 %i.cf, 0
  br i1 %.not.i66, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread, label %.lr.ph.i67

_ZNK12hb_bit_set_t3hasEj.exit.thread:             ; preds = %bb.m, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge, %._crit_edge.i.i.i.i, %_ZNK12hb_bit_set_t3hasEj.exit
  %i.cg = phi ptr [ %.pre124, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge ], [ %.pre125, %_ZNK12hb_bit_set_t3hasEj.exit ], [ %i.cl, %._crit_edge.i.i.i.i ], [ %i.cl, %bb.m ] ; 3 uses
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !607
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next.i69, %i.cj
  br i1 %i.ck, label %.lr.ph.i67, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread, !llvm.loop !159

.lr.ph.i67:                                       ; preds = %.preheader.i, %_ZNK12hb_bit_set_t3hasEj.exit.thread
  %i.cl = phi ptr [ %i.cg, %_ZNK12hb_bit_set_t3hasEj.exit.thread ], [ %i.bt, %.preheader.i ] ; 3 uses
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i69, %_ZNK12hb_bit_set_t3hasEj.exit.thread ], [ 0, %.preheader.i ] ; 2 uses
  %i.cm = load ptr, ptr %i.bc, align 8, !tbaa !1680 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !589
  %i.cp = getelementptr inbounds nuw [20 x i8], ptr %i.co, i64 %indvars.iv.i68
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !637 ; 3 uses
  %i.cr = lshr i32 %i.cq, 9                       ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.ct = load atomic i32, ptr %i.cs monotonic, align 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !1233 ; 3 uses
  %i.cw = icmp ult i32 %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !553 ; 3 uses
  br i1 %i.cw, label %bb.i, label %._crit_edge.i.i.i.i, !prof !268

bb.i:                                             ; preds = %.lr.ph.i67
  %i.cz = zext i32 %i.ct to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !1235
  %.not.i.i.i.i = icmp eq i32 %i.db, %i.cr
  br i1 %.not.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %.lr.ph.i67
  %.not1.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cv, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %i.dc = add nsw i32 %i.cv, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.m ], [ %i.dc, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dd = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.de = lshr i32 %i.dd, 1                       ; 4 uses
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !1235 ; 2 uses
  %i.dj = icmp slt i32 %i.cr, %i.di
  br i1 %i.dj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dk = add nsw i32 %i.de, -1
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i = icmp eq i32 %i.cr, %i.di
  br i1 %.not28.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dl = add nuw nsw i32 %i.de, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.l ], [ %.0212.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.l ], [ %i.dk, %bb.j ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.k
  store atomic i32 %i.de, ptr %i.cs monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i:         ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, %bb.i
  %i.dm = phi i64 [ %i.df, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ %i.cz, %bb.i ]
  %.sink.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %.sink.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.sink.i.i.i.i, null
  br i1 %.not.i.i.i89, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge, label %_ZNK12hb_bit_set_t3hasEj.exit

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge: ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %.pre124 = load ptr, ptr %i.a, align 8, !tbaa !494
  br label %_ZNK12hb_bit_set_t3hasEj.exit.thread

_ZNK12hb_bit_set_t3hasEj.exit:                    ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1238
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = lshr i32 %i.cq, 6
  %i.du = and i32 %i.dt, 7
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !1240
  %i.dy = and i32 %i.cq, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.dx, %i.ea
  %.not99 = icmp eq i64 %i.eb, 0
  %.pre125 = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  br i1 %.not99, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit: ; preds = %bb.h
  %i.ec = load ptr, ptr %i.au, align 8, !tbaa !551
  %i.ed = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t10intersectsERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, ptr noundef nonnull align 8 dereferenceable(48) %.0.i)
  %.pre123 = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  br i1 %i.ed, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread: ; preds = %_ZNK12hb_bit_set_t3hasEj.exit.thread, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit, %.preheader.i
  %i.ee = phi ptr [ %i.bt, %.preheader.i ], [ %.pre123, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit ], [ %i.cg, %_ZNK12hb_bit_set_t3hasEj.exit.thread ]
  %i.ef = load ptr, ptr %i.bf, align 8, !tbaa !492
  %i.eg = load i32, ptr %i.av, align 8, !tbaa !593
  %i.eh = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ee, ptr noundef %i.ef, ptr noundef nonnull @.str.104, i32 noundef %i.eg) ; 0 uses
  br label %bb.x

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96: ; preds = %_ZNK12hb_bit_set_t3hasEj.exit, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit
  %i.ei = phi ptr [ %.pre123, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit ], [ %.pre125, %_ZNK12hb_bit_set_t3hasEj.exit ] ; 2 uses
  %i.ej = load i32, ptr %i.bx, align 1, !tbaa !278
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !614
  %i.em = and i32 %i.el, -3
  %i.en = icmp eq i32 %i.em, 5
  %i.eo = and i32 %i.ej, 16
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = xor i1 %i.ep, %i.en
  %i.er = load ptr, ptr %i.bf, align 8, !tbaa !492
  %i.es = load i32, ptr %i.av, align 8, !tbaa !593
  %i.et = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ei, ptr noundef %i.er, ptr noundef nonnull @.str.105, i32 noundef %i.es)
  br i1 %i.et, label %bb.n, label %bb.x

bb.n:                                             ; preds = %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96
  br i1 %.058106, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eu = load i32, ptr %i.bx, align 1, !tbaa !278
  %i.ev = and i32 %i.eu, 64
  %.not62 = icmp eq i32 %i.ev, 0
  br i1 %.not62, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 128
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !611 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !607 ; 4 uses
  %.not112 = icmp eq i32 %i.fa, 0
  br i1 %.not112, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %wide.trip.count = zext i32 %i.fa to i64        ; 2 uses
  %xtraiter151 = and i64 %wide.trip.count, 1
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter155 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter156 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter156.next.1, %.lr.ph ]
  %i.fc = getelementptr inbounds nuw [20 x i8], ptr %i.ey, i64 %indvars.iv ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 18
  store i8 2, ptr %i.fe, align 2, !tbaa !280
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !614
  %i.fi = and i32 %i.fh, -3
  %i.fj = icmp eq i32 %i.fi, 4
  %i.fk = select i1 %i.fj, i16 -1, i16 1
  store i16 %i.fk, ptr %i.fd, align 4, !tbaa !280
  %i.fl = getelementptr inbounds nuw [20 x i8], ptr %i.ey, i64 %indvars.iv ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 36
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 38
  store i8 2, ptr %i.fn, align 2, !tbaa !280
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !614
  %i.fr = and i32 %i.fq, -3
  %i.fs = icmp eq i32 %i.fr, 4
  %i.ft = select i1 %i.fs, i16 -1, i16 1
  store i16 %i.ft, ptr %i.fm, align 4, !tbaa !280
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5735

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod153.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod153.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod154 = trunc i32 %i.fa to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.fu = getelementptr inbounds nuw [20 x i8], ptr %i.ey, i64 %indvars.iv.epil.init ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 18
  store i8 2, ptr %i.fw, align 2, !tbaa !280
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !614
  %i.ga = and i32 %i.fz, -3
  %i.gb = icmp eq i32 %i.ga, 4
  %i.gc = select i1 %i.gb, i16 -1, i16 1
  store i16 %i.gc, ptr %i.fv, align 4, !tbaa !280
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.p, %bb.o, %bb.n
  %.1 = phi i1 [ true, %bb.n ], [ false, %bb.o ], [ true, %bb.p ], [ true, %.loopexit.loopexit.unr-lcssa ], [ true, %.lr.ph.epil.preheader ]
  %i.gd = load i8, ptr %i.bg, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.ge = zext i1 %i.eq to i8
  %.not63 = icmp eq i8 %i.gd, %i.ge
  br i1 %.not63, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 96 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !607 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 112
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !589 ; 2 uses
  %i.gk = icmp ult i32 %i.gh, 2
  br i1 %i.gk, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.q
  %i.gl = lshr i32 %i.gh, 1
  %zext.i.i = zext nneg i32 %i.gl to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.in17.i.i.i.i = phi i32 [ %i.gh, %.lr.ph.preheader.i.i.i.i ], [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i = add i32 %.0.in17.i.i.i.i, -1      ; 2 uses
  %i.gm = zext i32 %.0.i.i.i.i to i64
  %i.gn = getelementptr inbounds nuw [20 x i8], ptr %i.gj, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw [20 x i8], ptr %i.gj, i64 %indvars.iv.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.gn, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gn, ptr noundef nonnull align 4 dereferenceable(20) %i.go, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.go, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.gp = icmp eq i64 %indvars.iv.next.i.i.i.i, %zext.i.i
  br i1 %i.gp, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.q
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 90
  %i.gr = load i8, ptr %i.gq, align 2, !tbaa !632, !range !380, !noundef !293
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.r, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit

bb.r:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gf, i64 128
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !611 ; 2 uses
  %i.gv = load i32, ptr %i.gg, align 8, !tbaa !607
  %.sroa.speculated.i5.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.gh, i32 %i.gv) ; 3 uses
  %i.gw = icmp ult i32 %.sroa.speculated.i5.i.i.i, 2
  br i1 %i.gw, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.preheader.i6.i.i.i

.lr.ph.preheader.i6.i.i.i:                        ; preds = %bb.r
  %i.gx = lshr i32 %.sroa.speculated.i5.i.i.i, 1
  %zext1.i.i = zext nneg i32 %i.gx to i64
  br label %.lr.ph.i8.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %.lr.ph.i8.i.i.i, %.lr.ph.preheader.i6.i.i.i
  %indvars.iv.i9.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i ], [ %indvars.iv.next.i12.i.i.i, %.lr.ph.i8.i.i.i ] ; 2 uses
  %.0.in17.i10.i.i.i = phi i32 [ %.sroa.speculated.i5.i.i.i, %.lr.ph.preheader.i6.i.i.i ], [ %.0.i11.i.i.i, %.lr.ph.i8.i.i.i ]
  %.0.i11.i.i.i = add i32 %.0.in17.i10.i.i.i, -1  ; 2 uses
  %i.gy = zext i32 %.0.i11.i.i.i to i64
  %i.gz = getelementptr inbounds nuw [20 x i8], ptr %i.gu, i64 %i.gy ; 2 uses
  %i.ha = getelementptr inbounds nuw [20 x i8], ptr %i.gu, i64 %indvars.iv.i9.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.gz, i64 20, i1 false), !tbaa.struct !612
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gz, ptr noundef nonnull align 4 dereferenceable(20) %i.ha, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ha, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %indvars.iv.next.i12.i.i.i = add nuw nsw i64 %indvars.iv.i9.i.i.i, 1 ; 2 uses
  %i.hb = icmp eq i64 %indvars.iv.next.i12.i.i.i, %zext1.i.i
  br i1 %i.hb, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.i8.i.i.i, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit: ; preds = %.lr.ph.i8.i.i.i, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, %bb.r
  %i.hc = load i8, ptr %i.bg, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.hd = xor i8 %i.hc, 1
  store i8 %i.hd, ptr %i.bg, align 4, !tbaa !1676
  br label %bb.s

bb.s:                                             ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, %.loopexit
  %.not100 = icmp samesign ult i64 %indvars.iv117, %i.bl
  %i.he = load ptr, ptr %i.bi, align 8, !tbaa !496 ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i70, label %._crit_edge.i.i.i, label %bb.t

._crit_edge.i.i.i:                                ; preds = %bb.s
  %.pre.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !504
  %.pre2.i.i.i = load ptr, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !275 ; 3 uses
  store ptr %i.hg, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !276
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hj ; 2 uses
  store ptr %i.hk, ptr %i.bj, align 8, !tbaa !504
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i: ; preds = %bb.t, %._crit_edge.i.i.i
  %i.hl = phi ptr [ %.pre2.i.i.i, %._crit_edge.i.i.i ], [ %i.hg, %bb.t ] ; 2 uses
  %i.hm = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hk, %bb.t ] ; 2 uses
  %i.hn = ptrtoint ptr %i.hm to i64               ; 2 uses
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  store i32 %i.hq, ptr %i.bk, align 8, !tbaa !506
  br i1 %.not100, label %bb.u, label %_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit

bb.u:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i
  %i.hr = icmp uge ptr %.057107, %i.hl
  %.not13.i.i = icmp ugt ptr %i.hm, %.057107
  %or.cond.i.i = select i1 %i.hr, i1 %.not13.i.i, i1 false, !prof !707
  br i1 %or.cond.i.i, label %bb.v, label %.critedge.i.i, !prof !707

.critedge.i.i:                                    ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.phi.trans.insert1.i.i.i, i8 0, i64 20, i1 false)
  br label %_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit

bb.v:                                             ; preds = %bb.u
  store ptr %.057107, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.hs = ptrtoint ptr %.057107 to i64
  %i.ht = sub i64 %i.hn, %i.hs
  %i.hu = load i32, ptr %.057107, align 1, !tbaa !278
  %i.hv = tail call noundef i32 @llvm.bswap.i32(i32 %i.hu)
  %i.hw = zext i32 %i.hv to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ht, i64 %i.hw) ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.057107, i64 %.sroa.speculated.i.i
  store ptr %i.hx, ptr %i.bj, align 8, !tbaa !504
  %i.hy = trunc nuw i64 %.sroa.speculated.i.i to i32
  store i32 %i.hy, ptr %i.bk, align 8, !tbaa !506
  br label %_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit

_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i, %.critedge.i.i, %bb.v
  %i.hz = tail call noundef zeroext i1 @_ZNK3AAT12KerxSubTable8dispatchINS_22hb_aat_apply_context_tEJEEENT_8return_tEPS3_DpOT0_(ptr noundef nonnull align 1 dereferenceable(36) %.057107, ptr noundef nonnull %1)
  %7 = or i1 %.059105, %i.hz
  %i.ia = load ptr, ptr %i.bi, align 8, !tbaa !496 ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i71, label %._crit_edge.i.i, label %bb.w

._crit_edge.i.i:                                  ; preds = %_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit
  %.pre.i.i = load ptr, ptr %i.bj, align 8, !tbaa !504
  %.pre2.i.i = load ptr, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

bb.w:                                             ; preds = %_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !275 ; 3 uses
  store ptr %i.ic, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !276
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.if ; 2 uses
  store ptr %i.ig, ptr %i.bj, align 8, !tbaa !504
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

_ZN25hb_sanitize_with_object_tD2Ev.exit:          ; preds = %._crit_edge.i.i, %bb.w
  %i.ih = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.ic, %bb.w ]
  %i.ii = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ig, %bb.w ]
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = trunc i64 %i.il to i32
  store i32 %i.im, ptr %i.bk, align 8, !tbaa !506
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.io = load ptr, ptr %i.bf, align 8, !tbaa !492
  %i.ip = load i32, ptr %i.av, align 8, !tbaa !593
  %i.iq = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.in, ptr noundef %i.io, ptr noundef nonnull @.str.106, i32 noundef %i.ip) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96, %bb.g, %_ZN25hb_sanitize_with_object_tD2Ev.exit, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread
  %.160 = phi i1 [ %.059105, %bb.g ], [ %7, %_ZN25hb_sanitize_with_object_tD2Ev.exit ], [ %.059105, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96 ], [ %.059105, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread ] ; 2 uses
  %.2 = phi i1 [ %.058106, %bb.g ], [ %.1, %_ZN25hb_sanitize_with_object_tD2Ev.exit ], [ %.058106, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96 ], [ %.058106, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread ]
  %i.ir = load i32, ptr %.057107, align 1, !tbaa !278
  %i.is = tail call noundef i32 @llvm.bswap.i32(i32 %i.ir)
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %.057107, i64 %i.it
  %i.iv = load i32, ptr %i.av, align 8, !tbaa !593
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.av, align 8, !tbaa !593
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge, label %bb.g, !llvm.loop !5736

bb.y:                                             ; preds = %._crit_edge
  %i.ix = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 96 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !607 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 112
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !589 ; 2 uses
  %i.jc = icmp ult i32 %i.iz, 2
  br i1 %i.jc, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79, label %.lr.ph.preheader.i.i.i.i72

.lr.ph.preheader.i.i.i.i72:                       ; preds = %bb.y
  %i.jd = lshr i32 %i.iz, 1
  %zext.i.i73 = zext nneg i32 %i.jd to i64
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74, %.lr.ph.preheader.i.i.i.i72
  %indvars.iv.i.i.i.i75 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i72 ], [ %indvars.iv.next.i.i.i.i78, %.lr.ph.i.i.i.i74 ] ; 2 uses
  %.0.in17.i.i.i.i76 = phi i32 [ %i.iz, %.lr.ph.preheader.i.i.i.i72 ], [ %.0.i.i.i.i77, %.lr.ph.i.i.i.i74 ]
  %.0.i.i.i.i77 = add i32 %.0.in17.i.i.i.i76, -1  ; 2 uses
  %i.je = zext i32 %.0.i.i.i.i77 to i64
  %i.jf = getelementptr inbounds nuw [20 x i8], ptr %i.jb, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds nuw [20 x i8], ptr %i.jb, i64 %indvars.iv.i.i.i.i75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.jf, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jf, ptr noundef nonnull align 4 dereferenceable(20) %i.jg, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jg, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next.i.i.i.i78 = add nuw nsw i64 %indvars.iv.i.i.i.i75, 1 ; 2 uses
  %i.jh = icmp eq i64 %indvars.iv.next.i.i.i.i78, %zext.i.i73
  br i1 %i.jh, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79, label %.lr.ph.i.i.i.i74, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79: ; preds = %.lr.ph.i.i.i.i74, %bb.y
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ix, i64 90
  %i.jj = load i8, ptr %i.ji, align 2, !tbaa !632, !range !380, !noundef !293
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.z, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88

bb.z:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 128
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !611 ; 2 uses
  %i.jn = load i32, ptr %i.iy, align 8, !tbaa !607
  %.sroa.speculated.i5.i.i.i80 = tail call i32 @llvm.umin.i32(i32 %i.iz, i32 %i.jn) ; 3 uses
  %i.jo = icmp ult i32 %.sroa.speculated.i5.i.i.i80, 2
  br i1 %i.jo, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88, label %.lr.ph.preheader.i6.i.i.i81

.lr.ph.preheader.i6.i.i.i81:                      ; preds = %bb.z
  %i.jp = lshr i32 %.sroa.speculated.i5.i.i.i80, 1
  %zext1.i.i82 = zext nneg i32 %i.jp to i64
  br label %.lr.ph.i8.i.i.i83

.lr.ph.i8.i.i.i83:                                ; preds = %.lr.ph.i8.i.i.i83, %.lr.ph.preheader.i6.i.i.i81
  %indvars.iv.i9.i.i.i84 = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i81 ], [ %indvars.iv.next.i12.i.i.i87, %.lr.ph.i8.i.i.i83 ] ; 2 uses
  %.0.in17.i10.i.i.i85 = phi i32 [ %.sroa.speculated.i5.i.i.i80, %.lr.ph.preheader.i6.i.i.i81 ], [ %.0.i11.i.i.i86, %.lr.ph.i8.i.i.i83 ]
  %.0.i11.i.i.i86 = add i32 %.0.in17.i10.i.i.i85, -1 ; 2 uses
  %i.jq = zext i32 %.0.i11.i.i.i86 to i64
  %i.jr = getelementptr inbounds nuw [20 x i8], ptr %i.jm, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw [20 x i8], ptr %i.jm, i64 %indvars.iv.i9.i.i.i84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.jr, i64 20, i1 false), !tbaa.struct !612
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jr, ptr noundef nonnull align 4 dereferenceable(20) %i.js, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.js, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next.i12.i.i.i87 = add nuw nsw i64 %indvars.iv.i9.i.i.i84, 1 ; 2 uses
  %i.jt = icmp eq i64 %indvars.iv.next.i12.i.i.i87, %zext1.i.i82
  br i1 %i.jt, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88, label %.lr.ph.i8.i.i.i83, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88: ; preds = %.lr.ph.i8.i.i.i83, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79, %bb.z
  %i.ju = load i8, ptr %i.bm, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.jv = xor i8 %i.ju, 1
  store i8 %i.jv, ptr %i.bm, align 4, !tbaa !1676
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88, %._crit_edge
  ret i1 %.059.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT12KerxSubTable8dispatchINS_22hb_aat_apply_context_tEJEEENT_8return_tEPS3_DpOT0_(ptr noundef nonnull align 1 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.AAT::KerxSubTableFormat6<AAT::KerxSubTableHeader>::accelerator_t", align 8 ; 5 uses
  %3 = alloca %"struct.OT::hb_kern_machine_t.1920", align 8 ; 5 uses
  %4 = alloca %"struct.AAT::KerxSubTableFormat4<AAT::KerxSubTableHeader>::driver_context_t", align 8 ; 9 uses
  %5 = alloca %"struct.AAT::StateTableDriver.1918", align 8 ; 5 uses
  %6 = alloca %"struct.AAT::KerxSubTableFormat2<AAT::KerxSubTableHeader>::accelerator_t", align 8 ; 5 uses
  %7 = alloca %"struct.OT::hb_kern_machine_t.1916", align 8 ; 5 uses
  %8 = alloca %"struct.AAT::KerxSubTableFormat1<AAT::KerxSubTableHeader>::driver_context_t", align 8 ; 8 uses
  %9 = alloca %"struct.AAT::StateTableDriver.1914", align 8 ; 5 uses
  %10 = alloca %"struct.AAT::KerxSubTableFormat0<AAT::KerxSubTableHeader>::accelerator_t", align 8 ; 5 uses
  %11 = alloca %"struct.OT::hb_kern_machine_t.1912", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 1, !tbaa !278
  %i.c = lshr i32 %i.b, 24
  %trunc = trunc nuw i32 %i.c to i8
  switch i8 %trunc, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0INS_18KerxSubTableHeaderEEEJEEEbRKT_DpOT0_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 4, label %bb.j
    i8 6, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !491  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 180
  %i.g = load i16, ptr %i.f, align 4
  %i.h = trunc i16 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0INS_18KerxSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.a, align 1, !tbaa !278
  %i.j = tail call noundef i32 @llvm.bswap.i32(i32 %i.i) ; 2 uses
  %i.k = and i32 %i.j, 268435456
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0INS_18KerxSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #63
  store ptr %0, ptr %10, align 8, !tbaa !5737
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !2012
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #63
  %i.m = lshr i32 %i.j, 30
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = and i8 %i.n, 1
  store ptr %10, ptr %11, align 8, !tbaa !5738
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 %i.o, ptr %i.p, align 8, !tbaa !2015
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !492
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !494
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1365
  call void @_ZNK2OT17hb_kern_machine_tIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEE13accelerator_tEE4kernEP9hb_font_tP11hb_buffer_tjb(ptr noundef nonnull align 8 dereferenceable(9) %11, ptr noundef %i.r, ptr noundef %i.t, i32 noundef %i.v, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #63
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0INS_18KerxSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.e:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !491
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 180
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = trunc i16 %i.z to i1
  %.pre.i.i = load i32, ptr %i.a, align 1, !tbaa !278 ; 2 uses
  %i.ab = and i32 %.pre.i.i, 64
  %.not.i.i7 = icmp ne i32 %i.ab, 0
  %or.cond.not.i.i = select i1 %i.aa, i1 true, i1 %.not.i.i7
  br i1 %or.cond.not.i.i, label %._crit_edge.i.i, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0INS_18KerxSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

._crit_edge.i.i:                                  ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  store ptr %1, ptr %8, align 8, !tbaa !2018
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.ac, align 8, !tbaa !2019
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !278
  %i.ah = tail call noundef i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !1695
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 0, ptr %i.ak, align 8, !tbaa !2020
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.am = trunc i32 %.pre.i.i to i8
  %i.an = lshr i8 %i.am, 6
  %i.ao = and i8 %i.an, 1
  store i8 %i.ao, ptr %i.al, align 4, !tbaa !2021
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #63
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !492
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !264 ; 2 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !5739
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load atomic i32, ptr %i.at monotonic, align 4 ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.f, label %_ZN3AAT16StateTableDriverINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataENS_19KerxSubTableFormat1INS_18KerxSubTableHeaderEE5FlagsEEC2ERKNS_10StateTableIS1_S4_EEP9hb_face_t.exit.i.i, !prof !267

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aw = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.as), !inline_history !7
  br label %_ZN3AAT16StateTableDriverINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataENS_19KerxSubTableFormat1INS_18KerxSubTableHeaderEE5FlagsEEC2ERKNS_10StateTableIS1_S4_EEP9hb_face_t.exit.i.i

_ZN3AAT16StateTableDriverINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataENS_19KerxSubTableFormat1INS_18KerxSubTableHeaderEE5FlagsEEC2ERKNS_10StateTableIS1_S4_EEP9hb_face_t.exit.i.i: ; preds = %bb.f, %._crit_edge.i.i
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.f ], [ %i.au, %._crit_edge.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.0.i.i.i.i, ptr %i.ax, align 8, !tbaa !2024
  call void @_ZN3AAT16StateTableDriverINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataENS_19KerxSubTableFormat1INS_18KerxSubTableHeaderEE5FlagsEE5driveINS7_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(180) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0INS_18KerxSubTableHeaderEEEJEEEbRKT_DpOT0_.exit

bb.g:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_2
begin_hunk_3_@_ZL13apply_forwardPN2OT21hb_ot_apply_context_tERKNS_33hb_ot_layout_lookup_accelerator_tE:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 48
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !357
  %i.ey = and i32 %i.ep, 63
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = and i64 %i.ex, %i.fa
  %.not.i.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 56
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !357
  %i.fe = lshr i32 %i.ep, 6
  %i.ff = and i32 %i.fe, 63
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.fd, %i.fh
  %.not.i.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, label %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i

_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i: ; preds = %bb.y
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1836
  %i.fl = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !1838
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1404
  %i.fo = tail call noundef zeroext i1 %i.fk(ptr noundef %i.fl, ptr noundef nonnull %0, ptr noundef %i.fn) #63, !inline_history !5979
  br i1 %i.fo, label %_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i

_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i, %bb.y, %bb.x, %.lr.ph.i.i
  %i.fp = add i32 %.sroa.6.06.i.i, -1             ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 64
  %.not.not.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !5980

bb.z:                                             ; preds = %bb.v
  br i1 %.not5.not.i.i, label %.loopexit, label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %bb.z, %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i
  %.sroa.0.07.i.i87 = phi ptr [ %i.ha, %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i ], [ %i.z, %bb.z ] ; 7 uses
  %.sroa.6.06.i.i88 = phi i32 [ %i.gz, %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i ], [ %i.eg, %bb.z ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i87, i64 40
  %i.fs = load ptr, ptr %i.i, align 8, !tbaa !1278 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 112
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !589
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 92
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !653
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [20 x i8], ptr %i.fu, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !637 ; 3 uses
  %i.ga = load i64, ptr %i.fr, align 8, !tbaa !357
  %i.gb = lshr i32 %i.fz, 4
  %i.gc = and i32 %i.gb, 63
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = shl nuw i64 1, %i.gd
  %i.gf = and i64 %i.ge, %i.ga
  %.not.i.i.i.i.i.i.i.i.i.i.i90 = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i90, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i86
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i87, i64 48
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !357
  %i.gi = and i32 %i.fz, 63
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gh, %i.gk
  %.not.i.1.i.i.i.i.i.i.i.i.i.i91 = icmp eq i64 %i.gl, 0
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i91, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i87, i64 56
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !357
  %i.go = lshr i32 %i.fz, 6
  %i.gp = and i32 %i.go, 63
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl nuw i64 1, %i.gq
  %i.gs = and i64 %i.gn, %i.gr
  %.not.i.2.i.i.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.gs, 0
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i92, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, label %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i

_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i: ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i87, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !1835
  %i.gv = load ptr, ptr %.sroa.0.07.i.i87, align 8, !tbaa !1838
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i87, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1404
  %i.gy = tail call noundef zeroext i1 %i.gu(ptr noundef %i.gv, ptr noundef nonnull %0, ptr noundef %i.gx) #63, !inline_history !216
  br i1 %i.gy, label %_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i

_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i, %bb.ab, %bb.aa, %.lr.ph.i.i86
  %i.gz = add i32 %.sroa.6.06.i.i88, -1           ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i87, i64 64
  %.not.not.i.i93 = icmp eq i32 %i.gz, 0
  br i1 %.not.not.i.i93, label %.loopexit, label %.lr.ph.i.i86, !llvm.loop !217

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, %bb.w, %bb.z
  %i.hb = load i8, ptr %i.u, align 1, !tbaa !634, !range !380, !noundef !293
  %i.hc = trunc nuw i8 %i.hb to i1
  %.pre161 = load i32, ptr %i.o, align 4          ; 5 uses
  br i1 %i.hc, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.loopexit
  %i.hd = load ptr, ptr %i.v, align 8, !tbaa !636 ; 2 uses
  %i.he = load ptr, ptr %i.n, align 8, !tbaa !589 ; 2 uses
  %.not.i96 = icmp eq ptr %i.hd, %i.he
  %i.hf = load i32, ptr %i.w, align 4, !tbaa !635 ; 3 uses
  %.not2.i = icmp eq i32 %i.hf, %.pre161
  %or.cond.i97 = select i1 %.not.i96, i1 %.not2.i, i1 false
  br i1 %or.cond.i97, label %bb.ad, label %._crit_edge.i98

._crit_edge.i98:                                  ; preds = %bb.ac
  %i.hg = add i32 %i.hf, 1                        ; 3 uses
  %.not.i.i99 = icmp eq i32 %i.hg, 0
  %i.hh = load i32, ptr %i.x, align 8
  %i.hi = icmp ult i32 %i.hg, %i.hh
  %i.hj = select i1 %.not.i.i99, i1 true, i1 %i.hi
  br i1 %i.hj, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i102, label %_ZN11hb_buffer_t6ensureEj.exit.i100, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i100:              ; preds = %._crit_edge.i98
  %i.hk = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %i.j, i32 noundef %i.hg)
  br i1 %i.hk, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i101, label %_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i101: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i100
  %.pre3.i = load ptr, ptr %i.n, align 8, !tbaa !589
  %.pre4.i = load ptr, ptr %i.v, align 8, !tbaa !636
  %.pre5.i = load i32, ptr %i.w, align 4, !tbaa !635
  %.pre159 = load i32, ptr %i.o, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i102

_ZN11hb_buffer_t6ensureEj.exit.thread.i102:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i101, %._crit_edge.i98
  %i.hl = phi i32 [ %.pre159, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i101 ], [ %.pre161, %._crit_edge.i98 ]
  %i.hm = phi i32 [ %.pre5.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i101 ], [ %i.hf, %._crit_edge.i98 ]
  %i.hn = phi ptr [ %.pre4.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i101 ], [ %i.hd, %._crit_edge.i98 ]
  %i.ho = phi ptr [ %.pre3.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i101 ], [ %i.he, %._crit_edge.i98 ]
  %i.hp = zext i32 %i.hl to i64
  %i.hq = getelementptr inbounds nuw [20 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = zext i32 %i.hm to i64
  %i.hs = getelementptr inbounds nuw [20 x i8], ptr %i.hn, i64 %i.hr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hs, ptr noundef nonnull align 4 dereferenceable(20) %i.hq, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i103 = load i32, ptr %i.w, align 4, !tbaa !635
  %.pre160.pre = load i32, ptr %i.o, align 4, !tbaa !653
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i102, %bb.ac
  %.pre160 = phi i32 [ %.pre160.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i102 ], [ %.pre161, %bb.ac ]
  %i.ht = phi i32 [ %.pre7.i103, %_ZN11hb_buffer_t6ensureEj.exit.thread.i102 ], [ %.pre161, %bb.ac ]
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr %i.w, align 4, !tbaa !635
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit
  %i.hv = phi i32 [ %.pre160, %bb.ad ], [ %.pre161, %.loopexit ]
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr %i.o, align 4, !tbaa !653
  br label %_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit

_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i, %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i, %bb.ae, %_ZN11hb_buffer_t6ensureEj.exit.i100
  %.2 = phi i1 [ %.035146, %_ZN11hb_buffer_t6ensureEj.exit.i100 ], [ %.035146, %bb.ae ], [ true, %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i ], [ true, %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i ] ; 2 uses
  %i.hx = load i8, ptr %i.k, align 8, !tbaa !586, !range !380, !noundef !293
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.c, label %_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit.thread132

_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit.thread132: ; preds = %_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit, %.critedge41, %_ZN11hb_buffer_t6ensureEj.exit.i, %_ZNK2OT33hb_ot_layout_lookup_accelerator_t11cache_enterEPNS_21hb_ot_apply_context_tE.exit
  %.035.lcssa = phi i1 [ false, %_ZNK2OT33hb_ot_layout_lookup_accelerator_t11cache_enterEPNS_21hb_ot_apply_context_tE.exit ], [ %.035146, %_ZN11hb_buffer_t6ensureEj.exit.i ], [ %.035146, %.critedge41 ], [ %.2, %_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit ]
  br i1 %i.h, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit.thread132
  %i.hz = load i32, ptr %i.a, align 4, !tbaa !1834
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !1839
  %i.ie = tail call noundef zeroext i1 %i.id(ptr noundef %0, i32 noundef 1) #63, !inline_history !5981 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK2OT33hb_ot_layout_lookup_accelerator_t5applyEPNS_21hb_ot_apply_context_tEb.exit.thread132
  ret i1 %.035.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL14apply_backwardPN2OT21hb_ot_apply_context_tERKNS_33hb_ot_layout_lookup_accelerator_tE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i32, ptr %i.d, align 4, !tbaa !653
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNK15hb_set_digest_t8may_haveEj.exit21, %bb.a
  %i.n = phi i32 [ %.pre, %bb.a ], [ %i.dv, %_ZNK15hb_set_digest_t8may_haveEj.exit21 ]
  %.0 = phi i1 [ false, %bb.a ], [ %.1, %_ZNK15hb_set_digest_t8may_haveEj.exit21 ] ; 13 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %i.p ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !637  ; 4 uses
  %i.s = load i64, ptr %1, align 8, !tbaa !357
  %i.t = lshr i32 %i.r, 4
  %i.u = and i32 %i.t, 63
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw i64 1, %i.v                      ; 2 uses
  %i.x = and i64 %i.w, %i.s
  %.not.i20 = icmp eq i64 %i.x, 0
  br i1 %.not.i20, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.l, align 8, !tbaa !357
  %i.z = and i32 %i.r, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = and i64 %i.ab, %i.y
  %.not.i20.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i20.1, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !357
  %i.ae = lshr i32 %i.r, 6
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag                    ; 2 uses
  %i.ai = and i64 %i.ah, %i.ad
  %.not.i20.2 = icmp eq i64 %i.ai, 0
  br i1 %.not.i20.2, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !591
  %i.al = load i32, ptr %i.e, align 4, !tbaa !1265
  %i.am = and i32 %i.al, %i.ak
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %i.f, align 4, !tbaa !1286 ; 4 uses
  %i.ao = getelementptr i8, ptr %i.q, i64 12
  %.val = load i16, ptr %i.ao, align 4, !tbaa !280
  %i.ap = zext i16 %.val to i32                   ; 3 uses
  %i.aq = and i32 %i.an, 14
  %i.ar = and i32 %i.aq, %i.ap
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.g, label %_ZNK15hb_set_digest_t8may_haveEj.exit21

bb.g:                                             ; preds = %bb.f
  %i.as = and i32 %i.ap, 8
  %.not8.i = icmp eq i32 %i.as, 0
  br i1 %.not8.i, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = and i32 %i.an, 16
  %.not.i14 = icmp eq i32 %i.at, 0
  br i1 %.not.i14, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = lshr i32 %i.an, 16                      ; 2 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !1279, !nonnull !293, !align !294
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1720
  %i.ay = zext nneg i32 %i.au to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !357
  %i.bb = and i64 %i.w, %i.ba
  %.not.i17 = icmp eq i64 %i.bb, 0
  br i1 %.not.i17, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !357
  %i.be = and i64 %i.ab, %i.bd
  %.not.i17.1 = icmp eq i64 %i.be, 0
  br i1 %.not.i17.1, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !357
  %i.bh = and i64 %i.ah, %i.bg
  %.not.i17.2 = icmp eq i64 %i.bh, 0
  br i1 %.not.i17.2, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !1715, !nonnull !293 ; 4 uses
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.bj, 256
  br i1 %cond.i.i, label %bb.m, label %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bk = load i32, ptr %i.bi, align 1
  %i.bl = tail call noundef i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bm = icmp ugt i32 %i.bl, 65537
  br i1 %i.bm, label %bb.n, label %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bo = load i16, ptr %i.bn, align 1, !tbaa !283 ; 2 uses
  %i.bp = icmp eq i16 %i.bo, 0
  %i.bq = tail call i16 @llvm.bswap.i16(i16 %i.bo)
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.br
  %.0.i.i.i.i = select i1 %i.bp, ptr @_hb_NullPool, ptr %i.bs, !prof !267
  br label %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i

_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i:       ; preds = %bb.n, %bb.m, %bb.l
  %.0.i.i = phi ptr [ @_hb_NullPool, %bb.m ], [ %.0.i.i.i.i, %bb.n ], [ @_hb_NullPool, %bb.l ] ; 4 uses
  %i.bt = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %cond.i2.i = icmp eq i16 %i.bt, 256
  br i1 %cond.i2.i, label %bb.o, label %_ZNK15hb_set_digest_t8may_haveEj.exit21

bb.o:                                             ; preds = %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.bv = load i16, ptr %i.bu, align 1, !tbaa !283
  %i.bw = tail call noundef i16 @llvm.bswap.i16(i16 %i.bv)
  %i.bx = zext i16 %i.bw to i32
  %.not.i.i.i.i = icmp samesign ult i32 %i.au, %i.bx
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i, !prof !268

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ay
  br label %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i

_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i4.i = phi ptr [ %i.bz, %bb.p ], [ @_hb_NullPool, %bb.o ]
  %i.ca = load i32, ptr %.0.i.i.i4.i, align 1, !tbaa !278 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cd
  %.0.i.i.i.i.i = select i1 %i.cb, ptr @_hb_NullPool, ptr %i.ce, !prof !267
  %i.cf = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i.i, i32 noundef %i.r)
  %.not46 = icmp eq i32 %i.cf, -1
  br i1 %.not46, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread43

bb.q:                                             ; preds = %bb.h
  %i.cg = and i32 %i.an, 65280                    ; 2 uses
  %.not11.i = icmp eq i32 %i.cg, 0
  %i.ch = and i32 %i.ap, 65280
  %i.ci = icmp eq i32 %i.cg, %i.ch
  %or.cond = or i1 %.not11.i, %i.ci
  br i1 %or.cond, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread43, label %_ZNK15hb_set_digest_t8may_haveEj.exit21

_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread43: ; preds = %bb.g, %bb.q, %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i
  store ptr %1, ptr %i.i, align 8, !tbaa !1714
  %i.cj = load i32, ptr %i.k, align 8, !tbaa !1402 ; 2 uses
  %.not5.not.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not5.not.i.i, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread43, %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.dt, %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i ], [ %i.j, %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread43 ] ; 7 uses
  %.sroa.6.06.i.i = phi i32 [ %i.ds, %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i ], [ %i.cj, %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread43 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 40
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !589
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 92
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !653
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [20 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !637 ; 3 uses
  %i.ct = load i64, ptr %i.ck, align 8, !tbaa !357
  %i.cu = lshr i32 %i.cs, 4
  %i.cv = and i32 %i.cu, 63
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %i.ct
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 48
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !357
  %i.db = and i32 %i.cs, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.da, %i.dd
  %.not.i.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 56
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !357
  %i.dh = lshr i32 %i.cs, 6
  %i.di = and i32 %i.dh, 63
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dg, %i.dk
  %.not.i.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, label %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i

_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i: ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1835
  %i.do = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !1838
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1404
  %i.dr = tail call noundef zeroext i1 %i.dn(ptr noundef %i.do, ptr noundef nonnull %0, ptr noundef %i.dq) #63, !inline_history !216
  br i1 %i.dr, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i

_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i, %bb.s, %bb.r, %.lr.ph.i.i
  %i.ds = add i32 %.sroa.6.06.i.i, -1             ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 64
  %.not.not.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.not.i.i, label %_ZNK15hb_set_digest_t8may_haveEj.exit21, label %.lr.ph.i.i, !llvm.loop !217

_ZNK15hb_set_digest_t8may_haveEj.exit21:          ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i, %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i, %bb.b, %bb.c, %bb.d, %bb.i, %bb.j, %bb.k, %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread43, %bb.q, %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i, %bb.f, %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i, %bb.e
  %.1 = phi i1 [ %.0, %bb.i ], [ %.0, %bb.q ], [ %.0, %bb.e ], [ %.0, %bb.c ], [ %.0, %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i ], [ %.0, %bb.f ], [ %.0, %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i ], [ %.0, %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread43 ], [ %.0, %bb.b ], [ %.0, %bb.k ], [ %.0, %bb.j ], [ %.0, %bb.d ], [ true, %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i.i ], [ %.0, %_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT33hb_accelerate_subtables_context_t15hb_applicable_tEEZNKS2_33hb_ot_layout_lookup_accelerator_t5applyEPNS2_21hb_ot_apply_context_tEbEUlRS5_E0_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i.i ] ; 2 uses
  %i.du = load i32, ptr %i.d, align 4, !tbaa !653
  %i.dv = add i32 %i.du, -1                       ; 3 uses
  store i32 %i.dv, ptr %i.d, align 4, !tbaa !653
  %i.dw = icmp sgt i32 %i.dv, -1
  br i1 %i.dw, label %bb.b, label %bb.t, !llvm.loop !5982

bb.t:                                             ; preds = %_ZNK15hb_set_digest_t8may_haveEj.exit21
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4BASEELj28ELb1EE6createEP9hb_face_t(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #63
  store i32 0, ptr %1, align 8, !tbaa !495
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !496
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.a, i8 0, i64 33, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 0, ptr %i.e, align 1, !tbaa !499
  store i32 0, ptr %i.c, align 8, !tbaa !497
  store i8 1, ptr %i.d, align 4, !tbaa !498
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !872  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !873
  %i.j = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef 1111577413, ptr noundef %i.i) #63, !inline_history !5983 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not4.i.i.i, label %bb.c, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit

_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi ptr [ @_hb_NullPool, %bb.a ], [ %i.j, %bb.b ], [ @_hb_NullPool, %bb.c ]
  %i.k = call noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4BASEEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef nonnull %.0.i.i)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !496  ; 9 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN21hb_sanitize_context_tD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit
  %i.m = load atomic i32, ptr %i.l monotonic, align 4 ; 0 uses
  %i.n = load atomic i32, ptr %i.l monotonic, align 4
  %.not.i7.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i7.i.i.i.i.i, label %_ZN21hb_sanitize_context_tD2Ev.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i.i, !prof !267

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i.i: ; preds = %bb.d
  %i.o = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %.not6.i.i.i.i.i = icmp eq i32 %i.o, 1
  br i1 %.not6.i.i.i.i.i, label %bb.e, label %_ZN21hb_sanitize_context_tD2Ev.exit

bb.e:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i.i
  store atomic i32 -57005, ptr %i.l monotonic, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.q = load atomic ptr, ptr %i.p acquire, align 8 ; 5 uses
  %.not.i.i3.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i3.i.i.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q)
  %i.s = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #63 ; 0 uses
  call void @free(ptr noundef nonnull %i.q) #63
  store atomic ptr null, ptr %i.p monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !509  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !510
  call void %i.u(ptr noundef %i.w) #63, !inline_history !48
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i: ; preds = %bb.g, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i
  call void @free(ptr noundef nonnull %i.l) #63
  br label %_ZN21hb_sanitize_context_tD2Ev.exit

_ZN21hb_sanitize_context_tD2Ev.exit:              ; preds = %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit, %bb.d, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i.i, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #63
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4BASEEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %1, null            ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %1 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %1 monotonic, align 4
  %.not.i7.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i.i, label %bb.d, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %1, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !496
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !503
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !504
  %.pre2.i.i = load ptr, ptr %i.f, align 8, !tbaa !505
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !496
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.h, align 8, !tbaa !503
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !275  ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !505
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !276
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !504
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i: ; preds = %bb.d, %._crit_edge.i.i
  %i.q = phi ptr [ %i.f, %._crit_edge.i.i ], [ %i.i, %bb.d ]
  %i.r = phi ptr [ %i.d, %._crit_edge.i.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.s = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.t = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.o, %bb.d ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32                    ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.x, ptr %i.y, align 8, !tbaa !506
  %i.z = icmp ugt i32 %i.x, 67108863
  br i1 %i.z, label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit, label %bb.e, !prof !267

bb.e:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i
  %i.aa = shl nuw i32 %i.x, 6
  %.not.i3.i.i = icmp samesign ugt i32 %i.x, 16777215
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 16384)
  %.sroa.speculated.i = select i1 %.not.i3.i.i, i32 1073741823, i32 %.sroa.speculate.load.false.sroa.speculated.i
  br label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit

_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i, %bb.e
  %.sroa.speculated.sink.i = phi i32 [ %.sroa.speculated.i, %bb.e ], [ 1073741823, %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.speculated.sink.i, ptr %i.ab, align 4, !tbaa !508
  store i32 0, ptr %0, align 8, !tbaa !495
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ac, align 4, !tbaa !507
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.f, label %bb.g, !prof !267

bb.f:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  tail call void @_ZN21hb_sanitize_context_t14end_processingEv(ptr noundef nonnull align 8 dereferenceable(62) %0)
  br label %hb_blob_make_immutable.exit

bb.g:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  %i.ad = tail call noundef zeroext i1 @_ZNK2OT4BASE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %i.s, ptr noundef nonnull %0)
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !496 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZN21hb_sanitize_context_t14end_processingEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4 ; 0 uses
  %i.ag = load atomic i32, ptr %i.ae monotonic, align 4
  %.not.i7.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i7.i.i.i.i, label %_ZN21hb_sanitize_context_t14end_processingEv.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i, !prof !267

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i: ; preds = %bb.h
  %i.ah = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %.not6.i.i.i.i = icmp eq i32 %i.ah, 1
  br i1 %.not6.i.i.i.i, label %bb.i, label %_ZN21hb_sanitize_context_t14end_processingEv.exit

bb.i:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i
  store atomic i32 -57005, ptr %i.ae monotonic, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.aj = load atomic ptr, ptr %i.ai acquire, align 8 ; 5 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i3.i.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.aj)
  %i.al = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.aj) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.aj) #63
  store atomic ptr null, ptr %i.ai monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
end_hunk_3
