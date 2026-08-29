Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-iup?download=true
inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL10rotate_setRK13hb_bit_page_tijRS_:bb.a
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ag = or i64 %i.ab, %i.af
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !47
  %i.ah = add nuw nsw i32 %i.v, 1                 ; 2 uses
  %i.ai = and i32 %i.ah, 511                      ; 2 uses
  %.not.i.i.i56 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i56, label %.loopexit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit
  %i.aj = phi i32 [ %i.bp, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit ], [ %i.ai, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit ]
  %i.ak = phi i32 [ %i.bo, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit ], [ %i.ah, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit ] ; 2 uses
  %i.al = lshr i32 %i.aj, 6                       ; 2 uses
  %i.am = and i32 %i.ak, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.aq = zext nneg i32 %i.am to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.aq
  %i.ar = and i64 %i.ap, %notmask.i.i.i
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !47
  %i.as = lshr i32 %i.ak, 6
  %i.at = and i32 %i.as, 7                        ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = or disjoint i32 %i.at, 8
  %i.aw = sub nuw nsw i32 %i.av, %i.al
  %wide.trip.count.i.i.i = zext nneg i32 %i.aw to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.au, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 2 uses
  %.027.i.i.i = phi ptr [ %i.a, %.lr.ph.preheader.i.i.i ], [ %i.ay, %bb.l ]
  %i.ax = load i64, ptr %.027.i.i.i, align 8, !tbaa !47 ; 2 uses
  %.not20.not.i.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not20.not.i.not.i.i, label %bb.l, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49, label %.lr.ph.i.i.i, !llvm.loop !128

_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit: ; preds = %.lr.ph.i.i.i
  %i.az = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ba = shl nuw nsw i32 %i.az, 6
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ax, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = add nuw i32 %i.bd, %i.b
  %i.bf = urem i32 %i.be, %2                      ; 2 uses
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = lshr i32 %i.bf, 6
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !47
  %i.bn = or i64 %i.bi, %i.bm
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !47
  %i.bo = add nuw i32 %i.bd, 1                    ; 2 uses
  %i.bp = and i32 %i.bo, 511                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.preheader.i.i.i

.loopexit:                                        ; preds = %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit, %bb.k, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49, %bb.c, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, double noundef %4, i32 noundef range(i32 0, 513) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 8 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.d, label %bb.c, label %.thread, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.b, ptr %i.e, align 4, !tbaa !28
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.b, ptr %i.g, align 4, !tbaa !42
  %.sroa.speculated133 = tail call i32 @llvm.umin.i32(i32 %5, i32 8)
  %.not172 = icmp eq i32 %i.b, 0
  br i1 %.not172, label %.thread, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = add nsw i32 %i.b, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph171, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %i.s = icmp eq i64 %indvars.iv, 0
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !37   ; 3 uses
  br i1 %i.s, label %.thread140, label %bb.f

.thread140:                                       ; preds = %bb.e
  store i32 1, ptr %i.t, align 4, !tbaa !38
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !40
  store i32 -1, ptr %i.u, align 4, !tbaa !38
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = add i32 %i.x, 1                          ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  store i32 %i.y, ptr %i.z, align 4, !tbaa !38
  %i.aa = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ab = add i32 %i.aa, -1                       ; 3 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !38
  %i.ae = lshr i32 %i.ab, 6
  %i.af = and i32 %i.ae, 7
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47
  %i.aj = and i32 %i.ab, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.ai, %i.al
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.thread140, %bb.f
  %.pre-phi = phi i32 [ 0, %.thread140 ], [ %i.aa, %bb.f ] ; 3 uses
  %i.an = phi i32 [ 1, %.thread140 ], [ %i.y, %bb.f ]
  %i.ao = sub nsw i32 %.pre-phi, %.sroa.speculated133
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 -2) ; 3 uses
  %i.aq = add i32 %.pre-phi, -2                   ; 2 uses
  %.not81.not165 = icmp sgt i32 %i.aq, %i.ap
  br i1 %.not81.not165, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.backedge
  %.077167 = phi i32 [ %.1, %.lr.ph.backedge ], [ %i.an, %bb.g ] ; 10 uses
  %.078166 = phi i32 [ %.078166.be, %.lr.ph.backedge ], [ %i.aq, %bb.g ] ; 11 uses
  %i.ar = icmp eq i32 %.078166, -1                ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.at = zext nneg i32 %.078166 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38
  %i.aw = add i32 %i.av, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.ax = phi i32 [ %i.aw, %bb.h ], [ 1, %.lr.ph ] ; 3 uses
  %i.ay = icmp ult i32 %i.ax, %.077167
  br i1 %i.ay, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.az = select i1 %i.ar, i32 %i.k, i32 %.078166
  %i.ba = xor i32 %.078166, -1
  %i.bb = add i32 %.pre-phi, %i.ba
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !30  ; 3 uses
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !8
  %i.be = add nsw i32 %.078166, 1                 ; 2 uses
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.bd, i32 %i.be)
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.bb)
  %i.bf = zext nneg i32 %i.be to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %.sroa.speculated.i.i.fr = freeze i32 %.sroa.speculated.i.i ; 12 uses
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i.fr to i64 ; 10 uses
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !40  ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf ; 2 uses
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !40  ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bf ; 2 uses
  %i.bl = zext i32 %i.az to i64                   ; 3 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bl
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !38 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !38 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !38 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !38 ; 2 uses
  %i.bw = icmp slt i32 %.sroa.speculated.i.i.fr, 0
  br i1 %i.bw, label %.critedge, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.bx = load i32, ptr %8, align 8, !tbaa !129   ; 5 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %.critedge, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %.not.i104 = icmp samesign ugt i32 %.sroa.speculated.i.i.fr, %i.bx
  br i1 %.not.i104, label %.preheader.i106, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, !prof !12

.preheader.i106:                                  ; preds = %bb.l, %.preheader.i106
  %.043.i107 = phi i32 [ %i.cb, %.preheader.i106 ], [ %i.bx, %bb.l ] ; 2 uses
  %i.bz = lshr i32 %.043.i107, 1
  %i.ca = add nuw i32 %.043.i107, 8
  %i.cb = add nuw i32 %i.ca, %i.bz                ; 7 uses
  %i.cc = icmp ugt i32 %.sroa.speculated.i.i.fr, %i.cb
  br i1 %i.cc, label %.preheader.i106, label %.thread.i108, !llvm.loop !132

.thread.i108:                                     ; preds = %.preheader.i106
  %i.cd = icmp ugt i32 %i.cb, 536870911
  br i1 %i.cd, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, label %bb.m, !prof !12

bb.m:                                             ; preds = %.thread.i108
  %.not49.i110 = icmp eq i32 %i.bx, 0
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !133 ; 2 uses
  br i1 %.not49.i110, label %bb.n, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111

bb.n:                                             ; preds = %bb.m
  %.not9.i.i.i120 = icmp eq ptr %i.ce, null
  br i1 %.not9.i.i.i120, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = shl nuw i32 %i.cb, 3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = tail call ptr @hb_malloc(i64 noundef %i.cg) #8 ; 4 uses
  %.not10.i.i.i121 = icmp eq ptr %i.ch, null
  br i1 %.not10.i.i.i121, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, label %bb.p, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !134 ; 2 uses
  %.not.i.i.i.i122 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i122, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr readonly align 1 %i.cl, i64 range(i64 0, 51539607541) %i.ck, i1 false), !alias.scope !135
  br label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111: ; preds = %bb.n, %bb.m
  %i.cm = phi ptr [ null, %bb.n ], [ %i.ce, %bb.m ]
  %i.cn = shl nuw i32 %i.cb, 3
  %i.co = zext i32 %i.cn to i64
  %i.cp = tail call ptr @hb_realloc(ptr noundef %i.cm, i64 noundef %i.co) #8 ; 2 uses
  %.not22.i112 = icmp eq ptr %i.cp, null
  br i1 %.not22.i112, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124, !prof !82

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111, %bb.o
  %i.cq = load i32, ptr %8, align 8, !tbaa !129   ; 2 uses
  %.not23.i119 = icmp ugt i32 %i.cb, %i.cq
  br i1 %.not23.i119, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, !prof !139

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, %.thread.i108
  %.sink.i116.ph.in = phi i32 [ %i.bx, %.thread.i108 ], [ %i.cq, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118 ]
  %.sink.i116.ph = xor i32 %.sink.i116.ph.in, -1
  store i32 %.sink.i116.ph, ptr %8, align 8, !tbaa !129
  br label %.critedge

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124:         ; preds = %bb.p, %bb.q, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111
  %.1.i.i42.i114 = phi ptr [ %i.cp, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111 ], [ %i.ch, %bb.q ], [ %i.ch, %bb.p ]
  store ptr %.1.i.i42.i114, ptr %i.o, align 8, !tbaa !133
  store i32 %i.cb, ptr %8, align 8, !tbaa !129
  br label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread:  ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, %bb.l, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124
  store i32 %.sroa.speculated.i.i.fr, ptr %i.p, align 4, !tbaa !134
  %i.cr = load i32, ptr %9, align 8, !tbaa !129   ; 5 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %.critedge, label %bb.r, !prof !12

bb.r:                                             ; preds = %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread
  %.not.i103 = icmp samesign ugt i32 %.sroa.speculated.i.i.fr, %i.cr
  br i1 %.not.i103, label %.preheader.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i, !prof !12

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %.043.i = phi i32 [ %i.cv, %.preheader.i ], [ %i.cr, %bb.r ] ; 2 uses
  %i.ct = lshr i32 %.043.i, 1
  %i.cu = add nuw i32 %.043.i, 8
  %i.cv = add nuw i32 %i.cu, %i.ct                ; 7 uses
  %i.cw = icmp ugt i32 %.sroa.speculated.i.i.fr, %i.cv
  br i1 %i.cw, label %.preheader.i, label %.thread.i, !llvm.loop !132

.thread.i:                                        ; preds = %.preheader.i
  %i.cx = icmp ugt i32 %i.cv, 536870911
  br i1 %i.cx, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, label %bb.s, !prof !12

bb.s:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.cr, 0
  %i.cy = load ptr, ptr %i.r, align 8, !tbaa !133 ; 2 uses
  br i1 %.not49.i, label %bb.t, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i

bb.t:                                             ; preds = %bb.s
  %.not9.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = shl nuw i32 %i.cv, 3
  %i.da = zext i32 %i.cz to i64
  %i.db = tail call ptr @hb_malloc(i64 noundef %i.da) #8 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, label %bb.v, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.dc = load i32, ptr %i.q, align 4, !tbaa !134 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread, label %bb.w, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.dd = zext i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr readonly align 1 %i.df, i64 range(i64 0, 51539607541) %i.de, i1 false), !alias.scope !140
  br label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i: ; preds = %bb.t, %bb.s
  %i.dg = phi ptr [ null, %bb.t ], [ %i.cy, %bb.s ]
  %i.dh = shl nuw i32 %i.cv, 3
  %i.di = zext i32 %i.dh to i64
  %i.dj = tail call ptr @hb_realloc(ptr noundef %i.dg, i64 noundef %i.di) #8 ; 2 uses
  %.not22.i = icmp eq ptr %i.dj, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread, !prof !82

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, %bb.u
  %i.dk = load i32, ptr %9, align 8, !tbaa !129   ; 2 uses
  %.not23.i = icmp ugt i32 %i.cv, %i.dk
  br i1 %.not23.i, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, label %.sink.split

_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152:  ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.cr, %.thread.i ], [ %i.dk, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %9, align 8, !tbaa !129
  br label %.critedge

_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, %bb.w, %bb.v
  %.1.i.i42.i = phi ptr [ %i.dj, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i ], [ %i.db, %bb.w ], [ %i.db, %bb.v ]
  store ptr %.1.i.i42.i, ptr %i.r, align 8, !tbaa !133
  store i32 %i.cv, ptr %9, align 8, !tbaa !129
  br label %.sink.split

_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i: ; preds = %bb.r
  store i32 %.sroa.speculated.i.i.fr, ptr %i.q, align 4, !tbaa !134
  %.not104.not.i.i = icmp eq i32 %.sroa.speculated.i.i.fr, 0
  br i1 %.not104.not.i.i, label %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit, label %bb.x

.sink.split:                                      ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread
  store i32 %.sroa.speculated.i.i.fr, ptr %i.q, align 4, !tbaa !134
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.dn = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 3 ; 2 uses
  %.090.us.i.i = sitofp i32 %i.br to double       ; 2 uses
  %.091.us.i.i = sitofp i32 %i.bp to double       ; 4 uses
  %.093.in.us.i.i = load float, ptr %i.bn, align 4, !tbaa !49 ; 3 uses
  %.093.us.i.i = fpext float %.093.in.us.i.i to double ; 2 uses
  %.095.in.us.i.i = load float, ptr %i.bm, align 4, !tbaa !49 ; 3 uses
  %.095.us.i.i = fpext float %.095.in.us.i.i to double ; 2 uses
  %.058.us.i.i = load ptr, ptr %i.o, align 8, !tbaa !133 ; 5 uses
  %i.do = fcmp oeq float %.095.in.us.i.i, %.093.in.us.i.i
  br i1 %i.do, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = fcmp ogt float %.095.in.us.i.i, %.093.in.us.i.i
  br i1 %i.dp, label %bb.z, label %.lr.ph.us.i.i

bb.z:                                             ; preds = %bb.y
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %bb.z, %bb.y
  %.196.us.i.i = phi double [ %.093.us.i.i, %bb.z ], [ %.095.us.i.i, %bb.y ] ; 3 uses
  %.194.us.i.i = phi double [ %.095.us.i.i, %bb.z ], [ %.093.us.i.i, %bb.y ] ; 2 uses
  %.192.us.i.i = phi double [ %.090.us.i.i, %bb.z ], [ %.091.us.i.i, %bb.y ] ; 3 uses
  %.1.us.i.i = phi double [ %.091.us.i.i, %bb.z ], [ %.090.us.i.i, %bb.y ] ; 2 uses
  %i.dq = fsub double %.1.us.i.i, %.192.us.i.i
  %i.dr = fsub double %.194.us.i.i, %.196.us.i.i
  %i.ds = fdiv double %i.dq, %i.dr
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ae
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.us.i.i, label %bb.ab, !llvm.loop !144

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next.i.i, %bb.aa ] ; 4 uses
  %gep.us.i.i = getelementptr inbounds nuw [12 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.dt = load float, ptr %gep.us.i.i, align 4, !tbaa !49
  %i.du = fpext float %i.dt to double             ; 3 uses
  %i.dv = fcmp ult double %.196.us.i.i, %i.du
  br i1 %i.dv, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dw = fcmp ugt double %.194.us.i.i, %i.du
  br i1 %i.dw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dx = fsub double %i.du, %.196.us.i.i
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.ds, double %.192.us.i.i)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0.us.i.i = phi double [ %i.dy, %bb.ad ], [ %.192.us.i.i, %bb.ab ], [ %.1.us.i.i, %bb.ac ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv.i.i
  store double %.0.us.i.i, ptr %i.dz, align 8, !tbaa !145
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !38
  %i.ec = sitofp i32 %i.eb to double
  %i.ed = fsub double %.0.us.i.i, %i.ec           ; 2 uses
  %i.ee = fmul double %i.ed, %i.ed
  %i.ef = fcmp ule double %i.ee, %4
  br i1 %i.ef, label %bb.aa, label %.critedge

bb.af:                                            ; preds = %bb.x
  %10 = icmp eq i32 %i.bp, %i.br
  br i1 %10, label %.lr.ph109.us.i.i.preheader, label %.lr.ph107.us.preheader.i.i

.lr.ph109.us.i.i.preheader:                       ; preds = %bb.af
  %min.iters.check209 = icmp ult i32 %.sroa.speculated.i.i.fr, 4
  br i1 %min.iters.check209, label %.lr.ph109.us.i.i.preheader223, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph109.us.i.i.preheader
  %n.vec211 = and i64 %.sroa.3.8.insert.ext.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert212 = insertelement <2 x double> poison, double %.091.us.i.i, i64 0
  %broadcast.splat213 = shufflevector <2 x double> %broadcast.splatinsert212, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph210
  %index215 = phi i64 [ 0, %vector.ph210 ], [ %index.next216, %vector.body214 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %index215 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <2 x double> %broadcast.splat213, ptr %i.eg, align 8, !tbaa !145
  store <2 x double> %broadcast.splat213, ptr %i.eh, align 8, !tbaa !145
  %index.next216 = add nuw i64 %index215, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.ei, label %middle.block217, label %vector.body214, !llvm.loop !147

middle.block217:                                  ; preds = %vector.body214
  %cmp.n218 = icmp eq i64 %n.vec211, %.sroa.3.8.insert.ext.i.i
  br i1 %cmp.n218, label %.loopexit.us.i.i, label %.lr.ph109.us.i.i.preheader223

.lr.ph109.us.i.i.preheader223:                    ; preds = %.lr.ph109.us.i.i.preheader, %middle.block217
  %indvars.iv172.i.i.ph = phi i64 [ 0, %.lr.ph109.us.i.i.preheader ], [ %n.vec211, %middle.block217 ]
  br label %.lr.ph109.us.i.i

.lr.ph109.us.i.i:                                 ; preds = %.lr.ph109.us.i.i.preheader223, %.lr.ph109.us.i.i
  %indvars.iv172.i.i = phi i64 [ %indvars.iv.next173.i.i, %.lr.ph109.us.i.i ], [ %indvars.iv172.i.i.ph, %.lr.ph109.us.i.i.preheader223 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv172.i.i
  store double %.091.us.i.i, ptr %i.ej, align 8, !tbaa !145
  %indvars.iv.next173.i.i = add nuw nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %exitcond176.not.i.i = icmp eq i64 %indvars.iv.next173.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond176.not.i.i, label %.loopexit.us.i.i, label %.lr.ph109.us.i.i, !llvm.loop !148

.loopexit.us.i.i:                                 ; preds = %bb.aa, %.lr.ph109.us.i.i, %middle.block217, %.lr.ph107.us.preheader.i.i
  %.090.us.1.i.i = sitofp i32 %i.bv to double     ; 2 uses
  %.091.us.1.i.i = sitofp i32 %i.bt to double     ; 4 uses
  %.093.in.us.1.i.i = load float, ptr %i.dm, align 4, !tbaa !49 ; 3 uses
  %.093.us.1.i.i = fpext float %.093.in.us.1.i.i to double ; 2 uses
  %.095.in.us.1.i.i = load float, ptr %i.dl, align 4, !tbaa !49 ; 3 uses
  %.095.us.1.i.i = fpext float %.095.in.us.1.i.i to double ; 2 uses
  %.058.us.1.i.i = load ptr, ptr %i.r, align 8, !tbaa !133 ; 5 uses
  %i.ek = fcmp oeq float %.095.in.us.1.i.i, %.093.in.us.1.i.i
  br i1 %i.ek, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.us.i.i
  %i.el = fcmp ogt float %.095.in.us.1.i.i, %.093.in.us.1.i.i
  br i1 %i.el, label %bb.ah, label %.lr.ph.us.1.i.i

bb.ah:                                            ; preds = %bb.ag
  br label %.lr.ph.us.1.i.i

.lr.ph.us.1.i.i:                                  ; preds = %bb.ah, %bb.ag
  %.196.us.1.i.i = phi double [ %.093.us.1.i.i, %bb.ah ], [ %.095.us.1.i.i, %bb.ag ] ; 3 uses
  %.194.us.1.i.i = phi double [ %.095.us.1.i.i, %bb.ah ], [ %.093.us.1.i.i, %bb.ag ] ; 2 uses
  %.192.us.1.i.i = phi double [ %.090.us.1.i.i, %bb.ah ], [ %.091.us.1.i.i, %bb.ag ] ; 3 uses
  %.1.us.1.i.i = phi double [ %.091.us.1.i.i, %bb.ah ], [ %.090.us.1.i.i, %bb.ag ] ; 2 uses
  %i.em = fsub double %.1.us.1.i.i, %.192.us.1.i.i
  %i.en = fsub double %.194.us.1.i.i, %.196.us.1.i.i
  %i.eo = fdiv double %i.em, %i.en
  %invariant.gep.us.1.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %.lr.ph.us.1.i.i
  %indvars.iv.1.i.i = phi i64 [ 0, %.lr.ph.us.1.i.i ], [ %indvars.iv.next.1.i.i, %bb.am ] ; 4 uses
  %gep.us.1.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.us.1.i.i, i64 %indvars.iv.1.i.i
  %i.ep = load float, ptr %gep.us.1.i.i, align 4, !tbaa !49
  %i.eq = fpext float %i.ep to double             ; 3 uses
  %i.er = fcmp ult double %.196.us.1.i.i, %i.eq
  br i1 %i.er, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.es = fcmp ugt double %.194.us.1.i.i, %i.eq
  br i1 %i.es, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.et = fsub double %i.eq, %.196.us.1.i.i
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.et, double %i.eo, double %.192.us.1.i.i)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.us.1.i.i = phi double [ %i.eu, %bb.ak ], [ %.192.us.1.i.i, %bb.ai ], [ %.1.us.1.i.i, %bb.aj ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv.1.i.i
  store double %.0.us.1.i.i, ptr %i.ev, align 8, !tbaa !145
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.1.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !38
  %i.ey = sitofp i32 %i.ex to double
  %i.ez = fsub double %.0.us.1.i.i, %i.ey         ; 2 uses
  %i.fa = fmul double %i.ez, %i.ez
  %i.fb = fcmp ule double %i.fa, %4
  br i1 %i.fb, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.1.not.i.i, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %bb.ai, !llvm.loop !144

bb.an:                                            ; preds = %.loopexit.us.i.i
  %11 = icmp eq i32 %i.bt, %i.bv
  br i1 %11, label %.lr.ph109.us.1.i.i.preheader, label %.lr.ph107.us.preheader.1.i.i

.lr.ph109.us.1.i.i.preheader:                     ; preds = %bb.an
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i.fr, 4
  br i1 %min.iters.check, label %.lr.ph109.us.1.i.i.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph109.us.1.i.i.preheader
  %n.vec = and i64 %.sroa.3.8.insert.ext.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.091.us.1.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x double> %broadcast.splat, ptr %i.fc, align 8, !tbaa !145
  store <2 x double> %broadcast.splat, ptr %i.fd, align 8, !tbaa !145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %.sroa.3.8.insert.ext.i.i
  br i1 %cmp.n, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %.lr.ph109.us.1.i.i.preheader220

.lr.ph109.us.1.i.i.preheader220:                  ; preds = %.lr.ph109.us.1.i.i.preheader, %middle.block
  %indvars.iv172.1.i.i.ph = phi i64 [ 0, %.lr.ph109.us.1.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph109.us.1.i.i

.lr.ph107.us.preheader.1.i.i:                     ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr align 8 %.058.us.1.i.i, i8 0, i64 %i.dn, i1 false), !tbaa !145
  br label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader

_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader: ; preds = %bb.am, %.lr.ph109.us.1.i.i, %middle.block, %.lr.ph107.us.preheader.1.i.i
  br label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i

.lr.ph109.us.1.i.i:                               ; preds = %.lr.ph109.us.1.i.i.preheader220, %.lr.ph109.us.1.i.i
  %indvars.iv172.1.i.i = phi i64 [ %indvars.iv.next173.1.i.i, %.lr.ph109.us.1.i.i ], [ %indvars.iv172.1.i.i.ph, %.lr.ph109.us.1.i.i.preheader220 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv172.1.i.i
  store double %.091.us.1.i.i, ptr %i.ff, align 8, !tbaa !145
  %indvars.iv.next173.1.i.i = add nuw nsw i64 %indvars.iv172.1.i.i, 1 ; 2 uses
  %exitcond176.1.not.i.i = icmp eq i64 %indvars.iv.next173.1.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond176.1.not.i.i, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %.lr.ph109.us.1.i.i, !llvm.loop !150

.lr.ph107.us.preheader.i.i:                       ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr align 8 %.058.us.i.i, i8 0, i64 %i.dn, i1 false), !tbaa !145
  br label %.loopexit.us.i.i

bb.ao:                                            ; preds = %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.not.i, label %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i, !llvm.loop !151

_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i: ; preds = %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, %bb.ao
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 0, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader ] ; 5 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !38
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv.i
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !145
  %i.fl = fsub double %i.fi, %i.fk                ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !38
  %i.fo = sitofp i32 %i.fn to double
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !145
  %i.fr = fsub double %i.fo, %i.fq                ; 2 uses
  %i.fs = fmul double %i.fr, %i.fr
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fl, double %i.fs)
  %i.fu = fcmp ule double %i.ft, %4
  br i1 %i.fu, label %bb.ao, label %.critedge

_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit: ; preds = %bb.ao, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv
  store i32 %i.ax, ptr %i.fw, align 4, !tbaa !38
  %i.fx = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv
  store i32 %.078166, ptr %i.fy, align 4, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.al, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, %bb.k, %bb.j, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, %bb.i, %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit
  %.1 = phi i32 [ %i.ax, %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit ], [ %.077167, %bb.i ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145 ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152 ], [ %.077167, %bb.j ], [ %.077167, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i ], [ %.077167, %bb.al ], [ %.077167, %bb.k ], [ %.077167, %bb.ae ]
  %i.fz = icmp sgt i32 %.078166, 0
  br i1 %i.fz, label %bb.ap, label %.critedge83

bb.ap:                                            ; preds = %.critedge
  %i.ga = lshr i32 %.078166, 6
  %i.gb = and i32 %i.ga, 7
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !47
  %i.gf = and i32 %.078166, 63
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = shl nuw i64 1, %i.gg
  %i.gi = and i64 %i.ge, %i.gh
  %.not159 = icmp eq i64 %i.gi, 0
  %i.gj = add nsw i32 %.078166, -1                ; 2 uses
  %.not81.not = icmp sgt i32 %i.gj, %i.ap
  %or.cond = select i1 %.not159, i1 %.not81.not, i1 false
  br i1 %or.cond, label %.lr.ph.backedge, label %.loopexit

.critedge83:                                      ; preds = %.critedge
  %.old = add nsw i32 %.078166, -1
  %.not81.not.old = icmp sgt i32 %.old, %i.ap
  br i1 %.not81.not.old, label %.lr.ph.backedge, label %.loopexit

.lr.ph.backedge:                                  ; preds = %.critedge83, %bb.ap
  %.078166.be = phi i32 [ %i.gj, %bb.ap ], [ -1, %.critedge83 ]
  br label %.lr.ph, !llvm.loop !152

.loopexit:                                        ; preds = %bb.ap, %.critedge83, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !153

.thread:                                          ; preds = %.loopexit, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.d ], [ true, %.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK13hb_bit_page_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !52     ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <8 x i64>, ptr %i.b, align 8, !tbaa !47
  %i.d = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.c)
  %i.e = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.d)
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, i32 } @_ZL5beginIR13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.not.1.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.1.i.i.i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not.2.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.2.i.i.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %.not.3.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.3.i.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %.not.4.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.4.i.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %.not.5.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.5.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.not.6.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.6.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.not.7.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.7.i.i.i.i, label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0712.lcssa.wide.i.i.i.i = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ]
  %.lcssa.i.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = or disjoint i32 %.0712.lcssa.wide.i.i.i.i, %i.r
  br label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit"
end_hunk_0
begin_hunk_1_@_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb:bb.a
_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !55    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !30
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 4}
!9 = !{!"_ZTS11hb_vector_tI15contour_point_tLb0EE", !5, i64 0, !5, i64 4, !10, i64 8}
!10 = !{!"p1 _ZTS15contour_point_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!14, !5, i64 0}
!14 = !{!"_ZTS11hb_vector_tIbLb0EE", !5, i64 0, !5, i64 4, !15, i64 8}
!15 = !{!"p1 bool", !11, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!14, !15, i64 8}
!19 = !{!14, !5, i64 4}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!22 = distinct !{!22, !"_ZL9hb_memcpyPvPKvm"}
!23 = distinct !{!23, !22, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!24 = !{!"branch_weights", !"expected", i32 1913573, i32 2145570075}
!25 = !{!26, !5, i64 0}
!26 = !{!"_ZTS11hb_vector_tIjLb0EE", !5, i64 0, !5, i64 4, !27, i64 8}
!27 = !{!"p1 int", !11, i64 0}
!28 = !{!26, !5, i64 4}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!9, !10, i64 8}
!31 = !{!32, !34, i64 9}
!32 = !{!"_ZTS15contour_point_t", !33, i64 0, !33, i64 4, !6, i64 8, !34, i64 9}
!33 = !{!"float", !6, i64 0}
!34 = !{!"bool", !6, i64 0}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!26, !27, i64 8}
!38 = !{!5, !5, i64 0}
!39 = distinct !{!39, !17}
!40 = !{!41, !27, i64 8}
!41 = !{!"_ZTS11hb_vector_tIiLb0EE", !5, i64 0, !5, i64 4, !27, i64 8}
!42 = !{!41, !5, i64 4}
!43 = !{!"branch_weights", i32 2002, i32 2000}
!44 = distinct !{!44, !17}
!45 = !{!34, !34, i64 0}
!46 = distinct !{!46, !17}
!47 = !{!48, !48, i64 0}
!48 = !{!"long long", !6, i64 0}
!49 = !{!33, !33, i64 0}
!50 = distinct !{!50, !17}
!51 = !{!41, !5, i64 0}
!52 = !{!53, !5, i64 0}
!53 = !{!"_ZTS13hb_bit_page_t", !5, i64 0, !54, i64 8}
!54 = !{!"_ZTS16hb_vector_size_tIyLj64EE", !6, i64 0}
!55 = !{!9, !5, i64 0}
!56 = !{!"branch_weights", i32 2146410443, i32 1073205}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!59 = distinct !{!59, !"_ZL9hb_memcpyPvPKvm"}
!60 = distinct !{!60, !59, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!63 = distinct !{!63, !"_ZL9hb_memcpyPvPKvm"}
!64 = distinct !{!64, !63, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!65 = distinct !{!65, !17}
!66 = !{!67, !15, i64 0}
!67 = !{!"_ZTS10hb_array_tIKbE", !15, i64 0, !5, i64 8, !5, i64 12}
!68 = !{!67, !5, i64 8}
!69 = !{!67, !5, i64 12}
!70 = distinct !{!70, !17, !71, !72}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!"branch_weights", i32 4, i32 28}
!74 = distinct !{!74, !17, !71, !72}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!78, !5, i64 8}
!78 = !{!"_ZTSN13hb_bit_page_t6iter_tE", !79, i64 0, !5, i64 8}
!79 = !{!"p1 _ZTS13hb_bit_page_t", !11, i64 0}
!80 = distinct !{!80, !17, !71}
!81 = distinct !{!81, !17}
!82 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!83 = distinct !{!83, !17}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!86 = distinct !{!86, !"_ZL9hb_memcpyPvPKvm"}
!87 = distinct !{!87, !86, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!90 = distinct !{!90, !"_ZL9hb_memcpyPvPKvm"}
!91 = distinct !{!91, !90, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!92 = !{!93, !95}
!93 = distinct !{!93, !94, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!94 = distinct !{!94, !"_ZL9hb_memcpyPvPKvm"}
!95 = distinct !{!95, !94, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!98 = distinct !{!98, !"_ZL9hb_memcpyPvPKvm"}
!99 = distinct !{!99, !98, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!100 = !{!101, !103}
!101 = distinct !{!101, !102, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!102 = distinct !{!102, !"_ZL9hb_memcpyPvPKvm"}
!103 = distinct !{!103, !102, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!104 = !{!105, !107}
!105 = distinct !{!105, !106, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!106 = distinct !{!106, !"_ZL9hb_memcpyPvPKvm"}
!107 = distinct !{!107, !106, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17, !71, !72}
!110 = distinct !{!110, !17}
!111 = !{i64 0, i64 4, !38, i64 8, i64 64, !112}
!112 = !{!6, !6, i64 0}
!113 = distinct !{!113, !17}
!114 = distinct !{!114, !17, !72, !71}
!115 = distinct !{!115, !17}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!118 = distinct !{!118, !"_ZL9hb_memcpyPvPKvm"}
!119 = distinct !{!119, !118, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!120 = !{!121, !123}
!121 = distinct !{!121, !122, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!122 = distinct !{!122, !"_ZL9hb_memcpyPvPKvm"}
!123 = distinct !{!123, !122, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!124 = !{!125, !127}
!125 = distinct !{!125, !126, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!126 = distinct !{!126, !"_ZL9hb_memcpyPvPKvm"}
!127 = distinct !{!127, !126, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!128 = distinct !{!128, !17}
!129 = !{!130, !5, i64 0}
!130 = !{!"_ZTS11hb_vector_tIdLb0EE", !5, i64 0, !5, i64 4, !131, i64 8}
!131 = !{!"p1 double", !11, i64 0}
!132 = distinct !{!132, !17}
!133 = !{!130, !131, i64 8}
!134 = !{!130, !5, i64 4}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!137 = distinct !{!137, !"_ZL9hb_memcpyPvPKvm"}
!138 = distinct !{!138, !137, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!139 = !{!"branch_weights", i32 1, i32 2147483647}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!142 = distinct !{!142, !"_ZL9hb_memcpyPvPKvm"}
!143 = distinct !{!143, !142, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!144 = distinct !{!144, !17}
!145 = !{!146, !146, i64 0}
!146 = !{!"double", !6, i64 0}
!147 = distinct !{!147, !17, !71, !72}
!148 = distinct !{!148, !17, !72, !71}
!149 = distinct !{!149, !17, !71, !72}
!150 = distinct !{!150, !17, !72, !71}
!151 = distinct !{!151, !17}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17}
!154 = !{!78, !79, i64 0}
!155 = !{!156, !158}
!156 = distinct !{!156, !157, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!157 = distinct !{!157, !"_ZL9hb_memcpyPvPKvm"}
!158 = distinct !{!158, !157, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!159 = !{!"branch_weights", i32 1073205, i32 2146410443}
!160 = !{!161, !163}
!161 = distinct !{!161, !162, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!162 = distinct !{!162, !"_ZL9hb_memcpyPvPKvm"}
!163 = distinct !{!163, !162, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!164 = !{!"branch_weights", !"expected", i32 2861879, i32 2144621769}
!165 = !{!166, !168}
!166 = distinct !{!166, !167, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!167 = distinct !{!167, !"_ZL9hb_memcpyPvPKvm"}
!168 = distinct !{!168, !167, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!169 = !{!170, !172}
!170 = distinct !{!170, !171, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!171 = distinct !{!171, !"_ZL9hb_memcpyPvPKvm"}
!172 = distinct !{!172, !171, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!173 = !{!174, !176}
!174 = distinct !{!174, !175, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!175 = distinct !{!175, !"_ZL9hb_memcpyPvPKvm"}
!176 = distinct !{!176, !175, !"_ZL9hb_memcpyPvPKvm: argument 1"}
end_hunk_1
