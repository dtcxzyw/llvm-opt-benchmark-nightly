Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/AdditiveQuantizer?download=true
inline.NumInlined: 721
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK5faiss17AdditiveQuantizer22compute_1_distance_LUTILb0ELNS0_13Search_type_tE1EEEfPKhPKf:bb.a
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = trunc i64 %i.c to i32
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %i.i = sub nuw nsw i32 8, %i.h                  ; 4 uses
  %i.j = lshr i64 %i.c, 3                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !63
  %i.m = zext i8 %i.l to i32
  %i.n = lshr i32 %i.m, %i.h                      ; 2 uses
  %.not.i.i = icmp slt i32 %i.i, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %notmask30.i.i = shl nsw i32 -1, %i.f
  %i.o = xor i32 %notmask30.i.i, -1
  %i.p = and i32 %i.n, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %sext.i = shl i64 %i.e, 32
  %i.r = ashr exact i64 %sext.i, 32
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = zext nneg i32 %i.n to i64                ; 2 uses
  %i.t = and i64 %i.e, 4294967295
  %i.u = sub nuw nsw i32 %i.f, %i.i               ; 3 uses
  %.02431.i.i = add nuw nsw i64 %i.j, 1           ; 2 uses
  %i.v = icmp samesign ugt i32 %i.u, 8
  br i1 %i.v, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.w = zext nneg i32 %i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.w, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.02435.i.i = phi i64 [ %.02431.i.i, %.lr.ph.preheader.i.i ], [ %.024.i.i, %.lr.ph.i.i ] ; 2 uses
  %.02633.i.i = phi i64 [ %i.s, %.lr.ph.preheader.i.i ], [ %i.ab, %.lr.ph.i.i ]
  %.02732.i.i = phi i32 [ %i.u, %.lr.ph.preheader.i.i ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !63
  %i.z = zext i8 %i.y to i64
  %i.aa = shl i64 %i.z, %indvars.iv.i.i
  %i.ab = or i64 %i.aa, %.02633.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.ac = add nsw i32 %.02732.i.i, -8             ; 2 uses
  %.024.i.i = add nuw nsw i64 %.02435.i.i, 1      ; 2 uses
  %i.ad = icmp samesign ugt i32 %.02732.i.i, 16
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.ae = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.027.lcssa.i.i = phi i32 [ %i.u, %bb.c ], [ %i.ac, %._crit_edge.loopexit.i.i ]
  %.026.lcssa.i.i = phi i64 [ %i.s, %bb.c ], [ %i.ab, %._crit_edge.loopexit.i.i ]
  %.025.lcssa.i.i = phi i32 [ %i.i, %bb.c ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %.024.lcssa.i.i = phi i64 [ %.02431.i.i, %bb.c ], [ %.024.i.i, %._crit_edge.loopexit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !63
  %notmask.i.i = shl nsw i32 -1, %.027.lcssa.i.i
  %i.ah = xor i32 %notmask.i.i, -1
  %i.ai = zext i8 %i.ag to i32
  %i.aj = and i32 %i.ai, %i.ah
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = zext nneg i32 %.025.lcssa.i.i to i64
  %i.am = shl i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.026.lcssa.i.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

_ZN5faiss15BitstringReader4readEi.exit.i:         ; preds = %._crit_edge.i.i, %bb.b
  %.pn = phi i64 [ %i.r, %bb.b ], [ %i.t, %._crit_edge.i.i ]
  %.0.i.i = phi i64 [ %i.q, %bb.b ], [ %i.an, %._crit_edge.i.i ]
  %i.ao = add i64 %.pn, %i.c
  %i.ap = shl i64 %.0.i.i, 32
  %i.aq = ashr exact i64 %i.ap, 30
  %i.ar = getelementptr inbounds i8, ptr %.04.i, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !70
  %i.at = fadd float %.0123.i, %i.as              ; 2 uses
  %i.au = shl nuw i64 1, %i.e
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.04.i, i64 %i.au
  %i.aw = add nuw i64 %.0132.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %.val
  br i1 %exitcond.not.i, label %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit, label %.lr.ph.i, !llvm.loop !4

_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit: ; preds = %_ZN5faiss15BitstringReader4readEi.exit.i, %bb.a
  %.012.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.at, %_ZN5faiss15BitstringReader4readEi.exit.i ]
  %i.ax = fneg float %.012.lcssa.i
  ret float %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZNK5faiss17AdditiveQuantizer22compute_1_distance_LUTILb0ELNS0_13Search_type_tE3EEEfPKhPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(412) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5faiss15BitstringReader4readEi.exit.i
  %i.c = phi i64 [ %.sroa.6.0, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.04.i = phi ptr [ %i.au, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ %2, %bb.a ] ; 2 uses
  %.0123.i = phi float [ %i.as, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ 0.000000e+00, %bb.a ]
  %.0132.i = phi i64 [ %i.av, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val5, i64 %.0132.i
  %i.e = load i64, ptr %i.d, align 8, !tbaa !65   ; 4 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = trunc i64 %i.c to i32
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %i.i = sub nuw nsw i32 8, %i.h                  ; 4 uses
  %i.j = lshr i64 %i.c, 3                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !63
  %i.m = zext i8 %i.l to i32
  %i.n = lshr i32 %i.m, %i.h                      ; 2 uses
  %.not.i.i = icmp slt i32 %i.i, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %notmask30.i.i = shl nsw i32 -1, %i.f
  %i.o = xor i32 %notmask30.i.i, -1
  %i.p = and i32 %i.n, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %sext.i = shl i64 %i.e, 32
  %i.r = ashr exact i64 %sext.i, 32
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = zext nneg i32 %i.n to i64                ; 2 uses
  %i.t = and i64 %i.e, 4294967295
  %i.u = sub nuw nsw i32 %i.f, %i.i               ; 3 uses
  %.02431.i.i = add nuw nsw i64 %i.j, 1           ; 2 uses
  %i.v = icmp samesign ugt i32 %i.u, 8
  br i1 %i.v, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.w = zext nneg i32 %i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.w, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.02435.i.i = phi i64 [ %.02431.i.i, %.lr.ph.preheader.i.i ], [ %.024.i.i, %.lr.ph.i.i ] ; 2 uses
  %.02633.i.i = phi i64 [ %i.s, %.lr.ph.preheader.i.i ], [ %i.ab, %.lr.ph.i.i ]
  %.02732.i.i = phi i32 [ %i.u, %.lr.ph.preheader.i.i ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !63
  %i.z = zext i8 %i.y to i64
  %i.aa = shl i64 %i.z, %indvars.iv.i.i
  %i.ab = or i64 %i.aa, %.02633.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.ac = add nsw i32 %.02732.i.i, -8             ; 2 uses
  %.024.i.i = add nuw nsw i64 %.02435.i.i, 1      ; 2 uses
  %i.ad = icmp samesign ugt i32 %.02732.i.i, 16
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.ae = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.027.lcssa.i.i = phi i32 [ %i.u, %bb.c ], [ %i.ac, %._crit_edge.loopexit.i.i ]
  %.026.lcssa.i.i = phi i64 [ %i.s, %bb.c ], [ %i.ab, %._crit_edge.loopexit.i.i ]
  %.025.lcssa.i.i = phi i32 [ %i.i, %bb.c ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %.024.lcssa.i.i = phi i64 [ %.02431.i.i, %bb.c ], [ %.024.i.i, %._crit_edge.loopexit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !63
  %notmask.i.i = shl nsw i32 -1, %.027.lcssa.i.i
  %i.ah = xor i32 %notmask.i.i, -1
  %i.ai = zext i8 %i.ag to i32
  %i.aj = and i32 %i.ai, %i.ah
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = zext nneg i32 %.025.lcssa.i.i to i64
  %i.am = shl i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.026.lcssa.i.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

_ZN5faiss15BitstringReader4readEi.exit.i:         ; preds = %._crit_edge.i.i, %bb.b
  %.pn = phi i64 [ %i.t, %._crit_edge.i.i ], [ %i.r, %bb.b ]
  %.0.i.i = phi i64 [ %i.an, %._crit_edge.i.i ], [ %i.q, %bb.b ]
  %.sroa.6.0 = add i64 %.pn, %i.c                 ; 2 uses
  %i.ao = shl i64 %.0.i.i, 32
  %i.ap = ashr exact i64 %i.ao, 30
  %i.aq = getelementptr inbounds i8, ptr %.04.i, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !70
  %i.as = fadd float %.0123.i, %i.ar              ; 2 uses
  %i.at = shl nuw i64 1, %i.e
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.04.i, i64 %i.at
  %i.av = add nuw i64 %.0132.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %.val
  br i1 %exitcond.not.i, label %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit, label %.lr.ph.i, !llvm.loop !4

_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit: ; preds = %_ZN5faiss15BitstringReader4readEi.exit.i, %bb.a
  %.sroa.6.1 = phi i64 [ 0, %bb.a ], [ %.sroa.6.0, %_ZN5faiss15BitstringReader4readEi.exit.i ] ; 2 uses
  %.012.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.as, %_ZN5faiss15BitstringReader4readEi.exit.i ]
  %i.aw = trunc i64 %.sroa.6.1 to i32
  %i.ax = and i32 %i.aw, 7                        ; 5 uses
  %i.ay = sub nuw nsw i32 8, %i.ax
  %i.az = lshr i64 %.sroa.6.1, 3                  ; 5 uses
  %i.ba = zext nneg i32 %i.ay to i64              ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %i.ba, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !63
  %i.be = zext i8 %i.bd to i64
  %3 = shl nuw nsw i64 %i.be, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !63
  %i.bh = zext i8 %i.bg to i32
  %i.bi = lshr i32 %i.bh, %i.ax
  %i.bj = zext nneg i32 %i.bi to i64
  %4 = or i64 %3, %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !63
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, %indvars.iv.next.i
  %i.bp = or i64 %i.bo, %4                        ; 2 uses
  %indvars.iv.next.i.1 = or disjoint i64 %i.ba, 16 ; 2 uses
  %i.bq = or disjoint i32 %i.ax, 8
  %.024.i.1 = add nuw nsw i64 %i.az, 3            ; 2 uses
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %._crit_edge.loopexit.i, label %.lr.ph.i7.2

.lr.ph.i7.2:                                      ; preds = %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.024.i.1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !63
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, %indvars.iv.next.i.1
  %i.bv = or i64 %i.bu, %i.bp
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.ba, 24
  %.024.i.2 = add nuw nsw i64 %i.az, 4
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i7.2, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit
  %.lcssa30 = phi i64 [ %i.bv, %.lr.ph.i7.2 ], [ %i.bp, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit ]
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.2, %.lr.ph.i7.2 ], [ %indvars.iv.next.i.1, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit ]
  %.lcssa = phi i32 [ %i.ax, %.lr.ph.i7.2 ], [ %i.bq, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit ]
  %.024.i.lcssa = phi i64 [ %.024.i.2, %.lr.ph.i7.2 ], [ %.024.i.1, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %.024.i.lcssa
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !63
  %notmask.i = shl nsw i32 -1, %.lcssa
  %i.by = xor i32 %notmask.i, -1
  %i.bz = zext i8 %i.bx to i32
  %i.ca = and i32 %i.bz, %i.by
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %i.cb, %indvars.iv.next.i.lcssa
  %i.cd = or i64 %i.cc, %.lcssa30
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = bitcast i32 %i.ce to float
  %i.cg = tail call float @llvm.fmuladd.f32(float %.012.lcssa.i, float -2.000000e+00, float %i.cf)
  ret float %i.cg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZNK5faiss17AdditiveQuantizer22compute_1_distance_LUTILb0ELNS0_13Search_type_tE6EEEfPKhPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(412) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit.thread, label %.lr.ph.i

_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit.thread: ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !63
  %i.d = zext i8 %i.c to i32
  br label %_ZN5faiss15BitstringReader4readEi.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5faiss15BitstringReader4readEi.exit.i
  %i.e = phi i64 [ %.sroa.6.0, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.04.i = phi ptr [ %i.aw, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ %2, %bb.a ] ; 2 uses
  %.0123.i = phi float [ %i.au, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ 0.000000e+00, %bb.a ]
  %.0132.i = phi i64 [ %i.ax, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val5, i64 %.0132.i
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65   ; 4 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = trunc i64 %i.e to i32
  %i.j = and i32 %i.i, 7                          ; 2 uses
  %i.k = sub nuw nsw i32 8, %i.j                  ; 4 uses
  %i.l = lshr i64 %i.e, 3                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !63
  %i.o = zext i8 %i.n to i32
  %i.p = lshr i32 %i.o, %i.j                      ; 2 uses
  %.not.i.i = icmp slt i32 %i.k, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %notmask30.i.i = shl nsw i32 -1, %i.h
  %i.q = xor i32 %notmask30.i.i, -1
  %i.r = and i32 %i.p, %i.q
  %i.s = zext nneg i32 %i.r to i64
  %sext.i = shl i64 %i.g, 32
  %i.t = ashr exact i64 %sext.i, 32
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = zext nneg i32 %i.p to i64                ; 2 uses
  %i.v = and i64 %i.g, 4294967295
  %i.w = sub nuw nsw i32 %i.h, %i.k               ; 3 uses
  %.02431.i.i = add nuw nsw i64 %i.l, 1           ; 2 uses
  %i.x = icmp samesign ugt i32 %i.w, 8
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.y = zext nneg i32 %i.k to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.y, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.02435.i.i = phi i64 [ %.02431.i.i, %.lr.ph.preheader.i.i ], [ %.024.i.i, %.lr.ph.i.i ] ; 2 uses
  %.02633.i.i = phi i64 [ %i.u, %.lr.ph.preheader.i.i ], [ %i.ad, %.lr.ph.i.i ]
  %.02732.i.i = phi i32 [ %i.w, %.lr.ph.preheader.i.i ], [ %i.ae, %.lr.ph.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !63
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl i64 %i.ab, %indvars.iv.i.i
  %i.ad = or i64 %i.ac, %.02633.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.ae = add nsw i32 %.02732.i.i, -8             ; 2 uses
  %.024.i.i = add nuw nsw i64 %.02435.i.i, 1      ; 2 uses
  %i.af = icmp samesign ugt i32 %.02732.i.i, 16
  br i1 %i.af, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.ag = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.027.lcssa.i.i = phi i32 [ %i.w, %bb.c ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %.026.lcssa.i.i = phi i64 [ %i.u, %bb.c ], [ %i.ad, %._crit_edge.loopexit.i.i ]
  %.025.lcssa.i.i = phi i32 [ %i.k, %bb.c ], [ %i.ag, %._crit_edge.loopexit.i.i ]
  %.024.lcssa.i.i = phi i64 [ %.02431.i.i, %bb.c ], [ %.024.i.i, %._crit_edge.loopexit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !63
  %notmask.i.i = shl nsw i32 -1, %.027.lcssa.i.i
  %i.aj = xor i32 %notmask.i.i, -1
  %i.ak = zext i8 %i.ai to i32
  %i.al = and i32 %i.ak, %i.aj
  %i.am = zext nneg i32 %i.al to i64
  %i.an = zext nneg i32 %.025.lcssa.i.i to i64
  %i.ao = shl i64 %i.am, %i.an
  %i.ap = or i64 %i.ao, %.026.lcssa.i.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

_ZN5faiss15BitstringReader4readEi.exit.i:         ; preds = %._crit_edge.i.i, %bb.b
  %.pn = phi i64 [ %i.v, %._crit_edge.i.i ], [ %i.t, %bb.b ]
  %.0.i.i = phi i64 [ %i.ap, %._crit_edge.i.i ], [ %i.s, %bb.b ]
  %.sroa.6.0 = add i64 %.pn, %i.e                 ; 3 uses
  %i.aq = shl i64 %.0.i.i, 32
  %i.ar = ashr exact i64 %i.aq, 30
  %i.as = getelementptr inbounds i8, ptr %.04.i, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !70
  %i.au = fadd float %.0123.i, %i.at              ; 3 uses
  %i.av = shl nuw i64 1, %i.g
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.04.i, i64 %i.av
  %i.ax = add nuw i64 %.0132.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %.val
  br i1 %exitcond.not.i, label %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit, label %.lr.ph.i, !llvm.loop !4

_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit: ; preds = %_ZN5faiss15BitstringReader4readEi.exit.i
  %i.ay = trunc i64 %.sroa.6.0 to i32
  %i.az = and i32 %i.ay, 7                        ; 3 uses
  %i.ba = lshr i64 %.sroa.6.0, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !63
  %i.bd = zext i8 %i.bc to i32
  %i.be = lshr i32 %i.bd, %i.az                   ; 2 uses
  %.not.i6.not = icmp eq i32 %i.az, 0
  br i1 %.not.i6.not, label %_ZN5faiss15BitstringReader4readEi.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit
  %i.bf = sub nuw nsw i32 8, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !63
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, %i.bf
  %i.bk = and i32 %i.bj, 254
  %i.bl = or i32 %i.bk, %i.be
  br label %_ZN5faiss15BitstringReader4readEi.exit

_ZN5faiss15BitstringReader4readEi.exit:           ; preds = %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit.thread, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit, %bb.d
  %.012.lcssa.i22 = phi float [ %i.au, %bb.d ], [ %i.au, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit ], [ 0.000000e+00, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit.thread ]
  %.0.i = phi i32 [ %i.bl, %bb.d ], [ %i.be, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit ], [ %i.d, %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit.thread ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !95
  %i.bo = zext nneg i32 %.0.i to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !70
  %i.br = tail call float @llvm.fmuladd.f32(float %.012.lcssa.i22, float -2.000000e+00, float %i.bq)
  ret float %i.br
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZNK5faiss17AdditiveQuantizer22compute_1_distance_LUTILb0ELNS0_13Search_type_tE7EEEfPKhPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(412) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit.thread, label %.lr.ph.i

_ZN5faiss12_GLOBAL__N_114accumulate_IPsERKNS_17AdditiveQuantizerERNS_15BitstringReaderEPKf.exit.thread: ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !63
  %i.d = zext i8 %i.c to i32
  br label %bb.d

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5faiss15BitstringReader4readEi.exit.i
  %i.e = phi i64 [ %.sroa.6.0, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.04.i = phi ptr [ %i.aw, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ %2, %bb.a ] ; 2 uses
  %.0123.i = phi float [ %i.au, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ 0.000000e+00, %bb.a ]
  %.0132.i = phi i64 [ %i.ax, %_ZN5faiss15BitstringReader4readEi.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val5, i64 %.0132.i
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65   ; 4 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = trunc i64 %i.e to i32
end_hunk_0
