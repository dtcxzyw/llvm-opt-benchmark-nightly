Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff1?download=true
inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS9_jj:bb.a

._crit_edge155.loopexit.unr-lcssa:                ; preds = %.lr.ph154
  %i.er = and i64 %i.en, 4
  %lcmp.mod219.not.not = icmp eq i64 %i.er, 0
  br i1 %lcmp.mod219.not.not, label %.lr.ph154.epil.preheader, label %._crit_edge155

.lr.ph154.epil.preheader:                         ; preds = %._crit_edge155.loopexit.unr-lcssa, %.lr.ph154.preheader
  %.056152.epil.init = phi ptr [ %i.z, %.lr.ph154.preheader ], [ %.056.1, %._crit_edge155.loopexit.unr-lcssa ] ; 3 uses
  %.055151.epil.init = phi ptr [ %2, %.lr.ph154.preheader ], [ %i.ft, %._crit_edge155.loopexit.unr-lcssa ]
  %.pn150.epil.init = phi ptr [ %0, %.lr.ph154.preheader ], [ %.056, %._crit_edge155.loopexit.unr-lcssa ] ; 2 uses
  %.2149.epil.init = phi i32 [ 1, %.lr.ph154.preheader ], [ %i.fs, %._crit_edge155.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod223 = trunc i64 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.es = lshr i32 %.2149.epil.init, 16
  %i.et = trunc i32 %i.es to i8
  %i.eu = lshr i32 %.2149.epil.init, 8
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = trunc i32 %.2149.epil.init to i8
  store i8 %i.et, ptr %.056152.epil.init, align 1
  %.sroa.4.0..sroa_idx.i80.epil = getelementptr inbounds nuw i8, ptr %.pn150.epil.init, i64 4
  store i8 %i.ev, ptr %.sroa.4.0..sroa_idx.i80.epil, align 1
  %.sroa.5.0..sroa_idx.i81.epil = getelementptr inbounds nuw i8, ptr %.pn150.epil.init, i64 5
  store i8 %i.ew, ptr %.sroa.5.0..sroa_idx.i81.epil, align 1, !tbaa !81
  %i.ex = load i32, ptr %.055151.epil.init, align 4, !tbaa !105
  %i.ey = add i32 %i.ex, %.2149.epil.init
  %.056.epil = getelementptr inbounds nuw i8, ptr %.056152.epil.init, i64 3
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %.lr.ph154.epil.preheader, %._crit_edge155.loopexit.unr-lcssa, %bb.p
  %.2.lcssa = phi i32 [ 1, %bb.p ], [ %i.fs, %._crit_edge155.loopexit.unr-lcssa ], [ %i.ey, %.lr.ph154.epil.preheader ] ; 3 uses
  %.pn.lcssa = phi ptr [ %0, %bb.p ], [ %.056, %._crit_edge155.loopexit.unr-lcssa ], [ %.056152.epil.init, %.lr.ph154.epil.preheader ] ; 2 uses
  %.056.lcssa = phi ptr [ %i.z, %bb.p ], [ %.056.1, %._crit_edge155.loopexit.unr-lcssa ], [ %.056.epil, %.lr.ph154.epil.preheader ]
  %i.ez = lshr i32 %.2.lcssa, 16
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = lshr i32 %.2.lcssa, 8
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = trunc i32 %.2.lcssa to i8
  store i8 %i.fa, ptr %.056.lcssa, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 4
  store i8 %i.fc, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 5
  store i8 %i.fd, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !81
  br label %select.unfold

.lr.ph154:                                        ; preds = %.lr.ph154, %.lr.ph154.preheader.new
  %.056152 = phi ptr [ %i.z, %.lr.ph154.preheader.new ], [ %.056.1, %.lr.ph154 ] ; 5 uses
  %.055151 = phi ptr [ %2, %.lr.ph154.preheader.new ], [ %i.ft, %.lr.ph154 ] ; 3 uses
  %.pn150 = phi ptr [ %0, %.lr.ph154.preheader.new ], [ %.056, %.lr.ph154 ] ; 2 uses
  %.2149 = phi i32 [ 1, %.lr.ph154.preheader.new ], [ %i.fs, %.lr.ph154 ] ; 4 uses
  %niter225 = phi i64 [ 0, %.lr.ph154.preheader.new ], [ %niter225.next.1, %.lr.ph154 ]
  %i.fe = lshr i32 %.2149, 16
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = lshr i32 %.2149, 8
  %i.fh = trunc i32 %i.fg to i8
  %i.fi = trunc i32 %.2149 to i8
  store i8 %i.ff, ptr %.056152, align 1
  %.sroa.4.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %.pn150, i64 4
  store i8 %i.fh, ptr %.sroa.4.0..sroa_idx.i80, align 1
  %.sroa.5.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %.pn150, i64 5
  store i8 %i.fi, ptr %.sroa.5.0..sroa_idx.i81, align 1, !tbaa !81
  %i.fj = load i32, ptr %.055151, align 4, !tbaa !105
  %i.fk = add i32 %i.fj, %.2149                   ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.055151, i64 4
  %.056 = getelementptr inbounds nuw i8, ptr %.056152, i64 3 ; 4 uses
  %i.fm = lshr i32 %i.fk, 16
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = lshr i32 %i.fk, 8
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = trunc i32 %i.fk to i8
  store i8 %i.fn, ptr %.056, align 1
  %.sroa.4.0..sroa_idx.i80.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 4
  store i8 %i.fp, ptr %.sroa.4.0..sroa_idx.i80.1, align 1
  %.sroa.5.0..sroa_idx.i81.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 5
  store i8 %i.fq, ptr %.sroa.5.0..sroa_idx.i81.1, align 1, !tbaa !81
  %i.fr = load i32, ptr %i.fl, align 4, !tbaa !105
  %i.fs = add i32 %i.fr, %i.fk                    ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.055151, i64 8 ; 2 uses
  %.056.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 6 ; 3 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1 = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1, label %._crit_edge155.loopexit.unr-lcssa, label %.lr.ph154

bb.q:                                             ; preds = %bb.m
  %i.fu = shl i64 %3, 2
  %.idx = and i64 %i.fu, 17179869180              ; 2 uses
  %.not65142 = icmp samesign eq i64 %.idx, 0
  br i1 %.not65142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.fv = add nsw i64 %.idx, -4                   ; 2 uses
  %i.fw = lshr exact i64 %i.fv, 2
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %xtraiter = and i64 %i.fx, 3                    ; 3 uses
  %i.fy = icmp ult i64 %i.fv, 12
  br i1 %i.fy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fx, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.053145.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.gy, %._crit_edge.loopexit.unr-lcssa ]
  %.054144.epil.init = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.gu, %._crit_edge.loopexit.unr-lcssa ]
  %.3143.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.gx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.053145.epil = phi ptr [ %i.gd, %.lr.ph.epil ], [ %.053145.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.054144.epil = phi ptr [ %i.fz, %.lr.ph.epil ], [ %.054144.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.3143.epil = phi i32 [ %i.gc, %.lr.ph.epil ], [ %.3143.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.054144.epil, i64 4 ; 2 uses
  %i.ga = tail call i32 @llvm.bswap.i32(i32 %.3143.epil)
  store i32 %i.ga, ptr %.054144.epil, align 1, !tbaa !81
  %i.gb = load i32, ptr %.053145.epil, align 4, !tbaa !105
  %i.gc = add i32 %i.gb, %.3143.epil              ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.053145.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !808

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa213 = phi ptr [ %i.gu, %._crit_edge.loopexit.unr-lcssa ], [ %i.fz, %.lr.ph.epil ]
  %.lcssa212 = phi i32 [ %i.gx, %._crit_edge.loopexit.unr-lcssa ], [ %i.gc, %.lr.ph.epil ]
  %i.ge = tail call i32 @llvm.bswap.i32(i32 %.lcssa212)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %.3.lcssa = phi i32 [ 16777216, %bb.q ], [ %i.ge, %._crit_edge.loopexit ]
  %.054.lcssa = phi ptr [ %i.z, %bb.q ], [ %.lcssa213, %._crit_edge.loopexit ]
  store i32 %.3.lcssa, ptr %.054.lcssa, align 1, !tbaa !81
  br label %select.unfold

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.053145 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.gy, %.lr.ph ] ; 5 uses
  %.054144 = phi ptr [ %i.z, %.lr.ph.preheader.new ], [ %i.gu, %.lr.ph ] ; 5 uses
  %.3143 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.gx, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.054144, i64 4
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %.3143)
  store i32 %i.gg, ptr %.054144, align 1, !tbaa !81
  %i.gh = load i32, ptr %.053145, align 4, !tbaa !105
  %i.gi = add i32 %i.gh, %.3143                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.053145, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.054144, i64 8
  %i.gl = tail call i32 @llvm.bswap.i32(i32 %i.gi)
  store i32 %i.gl, ptr %i.gf, align 1, !tbaa !81
  %i.gm = load i32, ptr %i.gj, align 4, !tbaa !105
  %i.gn = add i32 %i.gm, %i.gi                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.053145, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.054144, i64 12
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gn)
  store i32 %i.gq, ptr %i.gk, align 1, !tbaa !81
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !105
  %i.gs = add i32 %i.gr, %i.gn                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.053145, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %.054144, i64 16 ; 3 uses
  %i.gv = tail call i32 @llvm.bswap.i32(i32 %i.gs)
  store i32 %i.gv, ptr %i.gp, align 1, !tbaa !81
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !105
  %i.gx = add i32 %i.gw, %i.gs                    ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.053145, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

select.unfold:                                    ; preds = %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit, %.critedge.i, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i, %._crit_edge174, %._crit_edge165, %._crit_edge155, %._crit_edge, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, %.critedge.i.i.i.i, %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, %.critedge.i.i.i, %bb.a
  %.0 = phi i1 [ true, %._crit_edge174 ], [ true, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %bb.f ], [ false, %.critedge.i.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ true, %bb.m ], [ true, %._crit_edge ], [ true, %._crit_edge155 ], [ true, %._crit_edge165 ], [ false, %.critedge.i ], [ false, %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9hb_sink_tIR11hb_vector_tIjLb0EEEclI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEESB_EZNS8_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS9_S9_SC_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRSA_SQ_EE_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSZ_6item_tEEE5valueEvE4typeELSW_0EEEvSZ_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef byval(%struct.hb_map_iter_t.214) align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !795 ; 2 uses
  %.promoted31 = load i32, ptr %i.b, align 8      ; 2 uses
  %i.c = icmp ne i32 %.promoted, 0
  %i.d = icmp ne i32 %.promoted31, 0
  %i.e = select i1 %i.c, i1 %i.d, i1 false
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted33 = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr @_hb_NullPool, align 16
  %.promoted37 = load ptr, ptr %i.g, align 8
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !809 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit
  %i.i = phi ptr [ %.promoted37, %.lr.ph ], [ %i.gr, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit ] ; 4 uses
  %i.j = phi i32 [ %.promoted, %.lr.ph ], [ %2, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit ]
  %i.k = phi i32 [ %.promoted31, %.lr.ph ], [ %i.gq, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit ]
  %i.l = phi ptr [ %.promoted33, %.lr.ph ], [ %i.gp, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit ] ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !811, !nonnull !122, !align !460 ; 4 uses
  %i.n = load ptr, ptr %.pre, align 8, !tbaa !794 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 26 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69   ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !814  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !116
  %.not12.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %_ZN9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEdeEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 44 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  br label %.lr.ph.i.i.i.i.i.i.i.i

_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit: ; preds = %.lr.ph.i, %bb.j, %bb.ag, %bb.x, %.preheader.i
  %indvars.iv.next.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !814  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !116
  %i.ac = zext i32 %i.ab to i64
  %.not.not.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i, %i.ac
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, !llvm.loop !815

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit
  %indvars.iv.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i, %_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ad = phi ptr [ %i.z, %_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i.i.i.i.i ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !125
  switch i32 %i.ai, label %bb.ah [
    i32 294, label %bb.c
    i32 18, label %bb.k
  ]

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aj = load i32, ptr %i.y, align 4, !tbaa !816 ; 2 uses
  %i.ak = load i32, ptr %i.u, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !69  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp slt i64 %i.ap, 1
  br i1 %i.aq, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i, !prof !70

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i: ; preds = %bb.d
  store i8 0, ptr %i.am, align 1
  %.pre.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !69 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 1
  store ptr %i.ar, ptr %i.o, align 8, !tbaa !69
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, label %bb.e, !prof !78

bb.e:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i
  store i8 28, ptr %.pre.i.i.i.i.i, align 1, !tbaa !81
  %i.as = load i32, ptr %i.u, align 4, !tbaa !54
  %.not.i9.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i9.i.i.i.i, label %bb.f, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, !prof !66

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !69  ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.ax, 2
  br i1 %i.ay, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i, !prof !70

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i: ; preds = %bb.f
  store i16 0, ptr %i.au, align 1
  %.pre.i11.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !69 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pre.i11.i.i.i.i, i64 2
  store ptr %i.az, ptr %i.o, align 8, !tbaa !69
  %.not8.i.i.i.i = icmp eq ptr %.pre.i11.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, label %bb.g, !prof !78

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i
  %i.ba = trunc i32 %i.aj to i16                  ; 2 uses
  %i.bb = tail call i16 @llvm.bswap.i16(i16 %i.ba)
  store i16 %i.bb, ptr %.pre.i11.i.i.i.i, align 1, !tbaa !81
  %i.bc = sext i16 %i.ba to i64
  %i.bd = zext i32 %i.aj to i64
  %.not.i.i.i.i.i.i3 = icmp eq i64 %i.bc, %i.bd
  %i.be = load i32, ptr %i.u, align 4, !tbaa !54  ; 2 uses
  br i1 %.not.i.i.i.i.i.i3, label %_ZN3CFF14UnsizedByteStr13serialize_intIN2OT7NumTypeILb1EsLj2EEEjEEbP22hb_serialize_context_tjT0_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = or i32 %i.be, 8
  br label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split

_ZN3CFF14UnsizedByteStr13serialize_intIN2OT7NumTypeILb1EsLj2EEEjEEbP22hb_serialize_context_tjT0_.exit.i.i.i: ; preds = %bb.g
  %.not.i14.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i14.i.i.i, label %bb.i, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, !prof !66

bb.i:                                             ; preds = %_ZN3CFF14UnsizedByteStr13serialize_intIN2OT7NumTypeILb1EsLj2EEEjEEbP22hb_serialize_context_tjT0_.exit.i.i.i
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.bh = load ptr, ptr %i.o, align 8, !tbaa !69  ; 5 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp slt i64 %i.bk, 2
  br i1 %i.bl, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i, !prof !70

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i: ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store ptr %i.bm, ptr %i.o, align 8, !tbaa !69
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, label %bb.j, !prof !78

bb.j:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i
  store i8 12, ptr %i.bh, align 1, !tbaa !81
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 38, ptr %i.bn, align 1, !tbaa !81
  br label %_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bo = load i32, ptr %i.t, align 4, !tbaa !817 ; 2 uses
  %i.bp = load i32, ptr %i.u, align 4, !tbaa !54
  %.not.i.i.i.i7 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i7, label %bb.l, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, !prof !66

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.br = load ptr, ptr %i.o, align 8, !tbaa !69  ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp slt i64 %i.bu, 1
  br i1 %i.bv, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i8, !prof !70

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i8: ; preds = %bb.l
  store i8 0, ptr %i.br, align 1
  %.pre.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !69 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 1
  store ptr %i.bw, ptr %i.o, align 8, !tbaa !69
  %.not.i.i.i9 = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not.i.i.i9, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, label %bb.m, !prof !78

bb.m:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i8
  store i8 28, ptr %.pre.i.i.i.i, align 1, !tbaa !81
  %i.bx = load i32, ptr %i.u, align 4, !tbaa !54
  %.not.i9.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i9.i.i.i, label %bb.n, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, !prof !66

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.bz = load ptr, ptr %i.o, align 8, !tbaa !69  ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp slt i64 %i.cc, 2
  br i1 %i.cd, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i, !prof !70

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i: ; preds = %bb.n
  store i16 0, ptr %i.bz, align 1
  %.pre.i11.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !69 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.i11.i.i.i, i64 2
  store ptr %i.ce, ptr %i.o, align 8, !tbaa !69
  %.not8.i.i.i = icmp eq ptr %.pre.i11.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, label %bb.o, !prof !78

bb.o:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i
  %i.cf = trunc i32 %i.bo to i16                  ; 2 uses
  %i.cg = tail call i16 @llvm.bswap.i16(i16 %i.cf)
  store i16 %i.cg, ptr %.pre.i11.i.i.i, align 1, !tbaa !81
  %i.ch = sext i16 %i.cf to i64
  %i.ci = zext i32 %i.bo to i64
  %.not.i.i.i.i.i10 = icmp eq i64 %i.ch, %i.ci
  br i1 %.not.i.i.i.i.i10, label %_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = load i32, ptr %i.u, align 4, !tbaa !54
  %i.ck = or i32 %i.cj, 8
  br label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split

_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i: ; preds = %bb.o
  %i.cl = load i32, ptr %i.ah, align 8, !tbaa !125 ; 3 uses
  %i.cm = load i32, ptr %i.w, align 4, !tbaa !818 ; 2 uses
  %i.cn = load ptr, ptr %i.o, align 8, !tbaa !69  ; 3 uses
  %i.co = load i32, ptr %i.u, align 4, !tbaa !54
  %.not.i.i.i.i11 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i.i11, label %bb.q, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, !prof !66

bb.q:                                             ; preds = %_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i
  %i.cp = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
end_hunk_0
begin_hunk_1_@_ZN9hb_sink_tIR11hb_vector_tIjLb0EEEclI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEESB_EZNS8_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS9_S9_SC_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRSA_SQ_EE_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSZ_6item_tEEE5valueEvE4typeELSW_0EEEvSZ_:bb.a
  %.not.i.i18 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i18, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, label %bb.v, !prof !78

bb.v:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 12, ptr %i.dh, align 1, !tbaa !81
  %i.dn = add i32 %i.cl, -256
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.013.i.i = phi i32 [ %i.dn, %bb.w ], [ %i.cl, %bb.v ]
  %.0.i.i = phi ptr [ %i.do, %bb.w ], [ %i.dh, %bb.v ]
  %i.dp = trunc i32 %.013.i.i to i8
  store i8 %i.dp, ptr %.0.i.i, align 1, !tbaa !81
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.dr = load i32, ptr %i.u, align 4, !tbaa !54
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = icmp eq i32 %i.cm, 0
  %or.cond.not.i.i = or i1 %i.dt, %i.ds
  br i1 %or.cond.not.i.i, label %_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit, label %bb.y, !prof !128

bb.y:                                             ; preds = %bb.x
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !72  ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 20 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !179 ; 2 uses
  %i.dx = add i32 %i.dw, 1                        ; 5 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.ad, label %bb.z, !prof !70

bb.z:                                             ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ea = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i32 noundef %i.dx, i1 noundef zeroext false)
  br i1 %i.ea, label %bb.aa, label %bb.ad, !prof !79

bb.aa:                                            ; preds = %bb.z
  %i.eb = load i32, ptr %i.dv, align 4, !tbaa !179 ; 3 uses
  %i.ec = icmp ugt i32 %i.dx, %i.eb
  br i1 %i.ec, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ed = sub nuw nsw i32 %i.dx, %i.eb
  %i.ee = mul i32 %i.ed, 12                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ae, label %bb.ac, !prof !70

bb.ac:                                            ; preds = %bb.ab
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !178
  %i.eh = zext nneg i32 %i.eb to i64
  %i.ei = getelementptr inbounds nuw [12 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = zext i32 %i.ee to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ei, i8 0, i64 %i.ej, i1 false)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z, %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !179
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !178
  %i.em = zext i32 %i.dw to i64
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.em
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.ad ], [ %i.en, %bb.ae ] ; 5 uses
  %i.eo = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !183
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.es = load i32, ptr %i.u, align 4, !tbaa !54
  %i.et = or i32 %i.es, 1
  store i32 %i.et, ptr %i.u, align 4, !tbaa !54
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.eu = load i32, ptr %.0.i.i.i, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.cm, ptr %i.ev, align 4, !tbaa !791
  %i.ew = and i32 %i.eu, -64
  %i.ex = or disjoint i32 %i.ew, 44
  store i32 %i.ex, ptr %.0.i.i.i, align 4
  %i.ey = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !77
  %i.fa = ptrtoint ptr %i.dq to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !793
  store i32 44, ptr %.0.i.i.i, align 4
  br label %_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 3 uses
  %i.fg = load i8, ptr %i.ff, align 4, !tbaa !127 ; 2 uses
  %i.fh = zext i8 %i.fg to i64                    ; 3 uses
  %i.fi = load i32, ptr %i.u, align 4, !tbaa !54
  %.not.i.i4 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i4, label %bb.ai, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, !prof !66

bb.ai:                                            ; preds = %bb.ah
  %i.fj = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.fk = load ptr, ptr %i.o, align 8, !tbaa !69  ; 3 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = icmp slt i64 %i.fn, %i.fh
  br i1 %i.fo, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split, label %bb.aj, !prof !70

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i19.not.i = icmp eq i8 %i.fg, 0
  br i1 %.not.i.i19.not.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, label %bb.ak, !prof !128

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fk, i8 0, i64 %i.fh, i1 false)
  %.pre.i.i5 = load ptr, ptr %i.o, align 8, !tbaa !69
  br label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i: ; preds = %bb.ak, %bb.aj
  %i.fp = phi ptr [ %.pre.i.i5, %bb.ak ], [ %i.fk, %bb.aj ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fh
  store ptr %i.fq, ptr %i.o, align 8, !tbaa !69
  %.not.not.i = icmp eq ptr %i.fp, null
  br i1 %.not.not.i, label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i, label %.preheader.i, !prof !78

.preheader.i:                                     ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i
  %i.fr = load i8, ptr %i.ff, align 4, !tbaa !127
  %.not.i = icmp eq i8 %i.fr, 0
  br i1 %.not.i, label %_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.fs = load ptr, ptr %i.ag, align 8, !tbaa !129
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !81
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv.i
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !81
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fw = load i8, ptr %i.ff, align 4, !tbaa !127
  %i.fx = zext i8 %i.fw to i64
  %i.fy = icmp samesign ult i64 %indvars.iv.next.i, %i.fx
  br i1 %i.fy, label %.lr.ph.i, label %_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit, !llvm.loop !819

_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split: ; preds = %bb.ai, %bb.u, %bb.s, %bb.q, %bb.l, %bb.n, %bb.i, %bb.d, %bb.f, %bb.p, %bb.h
  %.sink = phi i32 [ %i.bf, %bb.h ], [ %i.ck, %bb.p ], [ 4, %bb.f ], [ 4, %bb.d ], [ 4, %bb.i ], [ 4, %bb.n ], [ 4, %bb.l ], [ 4, %bb.q ], [ 4, %bb.s ], [ 4, %bb.u ], [ 4, %bb.ai ]
  store i32 %.sink, ptr %i.u, align 4, !tbaa !54
  br label %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i

_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i: ; preds = %bb.t, %_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i12, %bb.r, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i, %bb.k, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i8, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, %bb.ah, %bb.c, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i, %bb.e, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i, %_ZN3CFF14UnsizedByteStr13serialize_intIN2OT7NumTypeILb1EsLj2EEEjEEbP22hb_serialize_context_tjT0_.exit.i.i.i, %_ZNK30cff1_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERKNS2_27cff1_font_dict_values_mod_tE.exit, %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split
  %.pre5.i.i.i.i.i.i.i = load ptr, ptr %.pre, align 8, !tbaa !794
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre5.i.i.i.i.i.i.i, i64 8
  %.pre6.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !69
  br label %_ZN9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEdeEv.exit

_ZN9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEdeEv.exit: ; preds = %bb.b, %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i
  %i.fz = phi ptr [ %.pre6.i.i.i.i.i.i.i, %_ZN3CFF4Dict9serializeINS_27cff1_font_dict_values_mod_tE30cff1_font_dict_op_serializer_tJRKS2_EEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i ], [ %i.p, %bb.b ]
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.p to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 3 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !213 ; 3 uses
  %i.gf = load i32, ptr %i.m, align 8, !tbaa !214
  %.not.i.i = icmp slt i32 %i.ge, %i.gf
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.al

bb.al:                                            ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEdeEv.exit
  %i.gg = add i32 %i.ge, 1
  %i.gh = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef %i.gg, i1 noundef zeroext false)
  br i1 %i.gh, label %..critedge_crit_edge.i.i, label %bb.am, !prof !66

..critedge_crit_edge.i.i:                         ; preds = %bb.al
  %.pre.i.i = load i32, ptr %i.gd, align 4, !tbaa !213
  br label %.critedge.i.i

bb.am:                                            ; preds = %bb.al
  store i32 %i.h, ptr @_hb_CrapPool, align 16
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %_ZN9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEdeEv.exit
  %i.gi = phi i32 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.ge, %_ZN9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEdeEv.exit ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !215
  %i.gl = add i32 %i.gi, 1
  store i32 %i.gl, ptr %i.gd, align 4, !tbaa !213
  %i.gm = zext i32 %i.gi to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gm
  %i.go = trunc i64 %i.gc to i32
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !105
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit

_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit: ; preds = %bb.am, %.critedge.i.i
  %2 = add i32 %i.j, -1                           ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.gq = add i32 %i.k, -1                        ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %3 = icmp ne i32 %2, 0
  %i.gs = icmp ne i32 %i.gq, 0
  %i.gt = select i1 %3, i1 %i.gs, i1 false
  br i1 %i.gt, label %bb.b, label %._crit_edge, !llvm.loop !820

._crit_edge:                                      ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %.critedge.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i, !prof !70

.critedge.i.i.i:                                  ; preds = %bb.b
  store i32 4, ptr %i.c, align 4, !tbaa !54
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i: ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 1
  store ptr %i.k, ptr %i.a, align 8, !tbaa !69
  %.not.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i
  store i8 29, ptr %.pre.i.i.i, align 1, !tbaa !81
  %i.l = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i9.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i9.i.i, label %bb.d, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp slt i64 %i.q, 4
  br i1 %i.r, label %.critedge.i12.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i, !prof !70

.critedge.i12.i.i:                                ; preds = %bb.d
  store i32 4, ptr %i.c, align 4, !tbaa !54
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i: ; preds = %bb.d
  store i32 0, ptr %i.n, align 1
  %.pre.i11.i.i = load ptr, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.i11.i.i, i64 4
  store ptr %i.s, ptr %i.a, align 8, !tbaa !69
  %.not8.i.i = icmp eq ptr %.pre.i11.i.i, null
  br i1 %.not8.i.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit, label %bb.e, !prof !78

bb.e:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i
  store i32 0, ptr %.pre.i11.i.i, align 1, !tbaa !81
  %i.t = icmp ugt i32 %1, 255                     ; 2 uses
  %i.u = select i1 %i.t, i64 2, i64 1             ; 2 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i14.i = icmp eq i32 %i.v, 0
  br i1 %.not.i14.i, label %bb.f, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit, !prof !66

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !69   ; 6 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp slt i64 %i.aa, %i.u
  br i1 %i.ab, label %.critedge.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i, !prof !70

.critedge.i.i:                                    ; preds = %bb.f
  store i32 4, ptr %i.c, align 4, !tbaa !54
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit, label %bb.g, !prof !78

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 12, ptr %i.x, align 1, !tbaa !81
  %i.ad = add i32 %1, -256
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.013.i = phi i32 [ %i.ad, %bb.h ], [ %1, %bb.g ]
  %.0.i = phi ptr [ %i.ae, %bb.h ], [ %i.x, %bb.g ]
  %i.af = trunc i32 %.013.i to i8
  store i8 %i.af, ptr %.0.i, align 1, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !54
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = icmp eq i32 %2, 0
  %or.cond.not.i = or i1 %i.aj, %i.ai
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit, label %bb.j, !prof !128

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !179 ; 2 uses
  %i.ao = add i32 %i.an, 1                        ; 5 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %bb.k, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i32 noundef %i.ao, i1 noundef zeroext false)
  br i1 %i.ar, label %bb.l, label %bb.o, !prof !79

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %i.am, align 4, !tbaa !179 ; 3 uses
  %i.at = icmp ugt i32 %i.ao, %i.as
  br i1 %i.at, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.au = sub nuw nsw i32 %i.ao, %i.as
  %i.av = mul i32 %i.au, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.n, !prof !70

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !178
  %i.ay = zext nneg i32 %i.as to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = zext i32 %i.av to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.ba, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !179
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !178
  %i.bd = zext i32 %i.an to i64
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bd
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.be, %bb.p ] ; 5 uses
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !183
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !54
  %i.bk = or i32 %i.bj, 1
  store i32 %i.bk, ptr %i.c, align 4, !tbaa !54
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.bl = load i32, ptr %.0.i.i, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %2, ptr %i.bm, align 4, !tbaa !791
  %i.bn = shl i32 %3, 4
  %i.bo = and i32 %i.bn, 48                       ; 2 uses
  %i.bp = and i32 %i.bl, -64
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = or disjoint i32 %i.bq, 12
  store i32 %i.br, ptr %.0.i.i, align 4
  %i.bs = load ptr, ptr %i.ak, align 8, !tbaa !72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77
  %i.bu = ptrtoint ptr %i.ag to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !793
  %i.bz = or disjoint i32 %i.bo, 12
  store i32 %i.bz, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EiLj4EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.e, %.critedge.i.i, %.critedge.i12.i.i, %.critedge.i.i.i, %bb.a, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i, %bb.c, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i, %bb.r, %bb.i
  %.1.i8 = phi i1 [ true, %bb.r ], [ true, %bb.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i ], [ false, %bb.c ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %.critedge.i12.i.i ], [ false, %.critedge.i.i ], [ false, %bb.e ]
  ret i1 %.1.i8
}
end_hunk_1
