Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-iup?download=true
inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE:bb.a
  %i.i = zext nneg i32 %.8.val to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.i
  %i.k = sub nsw i64 0, %i.f
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull readonly align 1 %i.l, i64 range(i64 0, 51539607541) %i.h, i1 false), !alias.scope !126
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.d, %bb.e
  %i.n = sub nuw nsw i32 %.8.val, %i.d
  %i.o = shl i32 %i.n, 2                          ; 2 uses
  %.not.i25 = icmp eq i32 %i.o, 0
  br i1 %.not.i25, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.f, !prof !16

bb.f:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr readonly align 1 %.0.val, i64 range(i64 0, 51539607541) %i.p, i1 false), !alias.scope !127
  br label %_ZL9hb_memcpyPvPKvm.exit26

_ZL9hb_memcpyPvPKvm.exit26:                       ; preds = %bb.c, %bb.b, %bb.f, %_ZL9hb_memcpyPvPKvm.exit, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ true, %_ZL9hb_memcpyPvPKvm.exit ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL10rotate_setRK13hb_bit_page_tijRS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef range(i32 0, 513) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp ne i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = urem i32 %1, %2                          ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !54
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %.not.1.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.1.i.i.i.i.i, label %bb.f, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %.not.2.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.2.i.i.i.i.i, label %bb.g, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %.not.3.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.3.i.i.i.i.i, label %bb.h, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %.not.4.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.4.i.i.i.i.i, label %bb.i, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %.not.5.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.5.i.i.i.i.i, label %bb.j, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  %.not.6.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.6.i.i.i.i.i, label %bb.k, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %.not.7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.7.i.i.i.i.i, label %.loopexit, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0712.lcssa.wide.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ 64, %bb.e ], [ 128, %bb.f ], [ 192, %bb.g ], [ 256, %bb.h ], [ 320, %bb.i ], [ 384, %bb.j ], [ 448, %bb.k ]
  %.lcssa.i.i.i.i.i = phi i64 [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.i, %bb.f ], [ %i.k, %bb.g ], [ %i.m, %bb.h ], [ %i.o, %bb.i ], [ %i.q, %bb.j ], [ %i.s, %bb.k ]
  %i.t = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i.i, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %.0712.lcssa.wide.i.i.i.i.i, %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 -1, ptr %3, align 8, !tbaa !42
  %i.x = add nuw nsw i32 %i.v, %i.b
  %i.y = urem i32 %i.x, %2                        ; 2 uses
  %i.z = and i32 %i.y, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = lshr i32 %i.y, 6
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.ag = or i64 %i.ab, %i.af
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !37
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
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.aq = zext nneg i32 %i.am to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.aq
  %i.ar = and i64 %i.ap, %notmask.i.i.i
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !37
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
  %i.ax = load i64, ptr %.027.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not20.not.i.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not20.not.i.not.i.i, label %bb.l, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49, label %.lr.ph.i.i.i, !llvm.loop !3

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
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !37
  %i.bn = or i64 %i.bi, %i.bm
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !37
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 8 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.d, label %bb.c, label %.thread, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.b, ptr %i.e, align 4, !tbaa !27
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.b, ptr %i.g, align 4, !tbaa !34
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !30   ; 3 uses
  br i1 %i.s, label %.thread140, label %bb.f

.thread140:                                       ; preds = %bb.e
  store i32 1, ptr %i.t, align 4, !tbaa !31
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !33
  store i32 -1, ptr %i.u, align 4, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %10 = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv
  %11 = getelementptr i8, ptr %10, i64 -4
  %i.v = load i32, ptr %11, align 4, !tbaa !31
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !31
  %12 = trunc nuw i64 %indvars.iv to i32          ; 2 uses
  %13 = add nsw i32 %12, -1                       ; 3 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %13, ptr %i.z, align 4, !tbaa !31
  %i.aa = lshr i32 %13, 6
  %i.ab = and i32 %i.aa, 7
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.af = and i32 %13, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ae, %i.ah
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.thread140, %bb.f
  %.pre-phi = phi i32 [ 0, %.thread140 ], [ %12, %bb.f ] ; 3 uses
  %14 = phi i32 [ 1, %.thread140 ], [ %i.w, %bb.f ]
  %i.aj = sub nsw i32 %.pre-phi, %.sroa.speculated133
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 -2) ; 3 uses
  %15 = add nsw i32 %.pre-phi, -2                 ; 2 uses
  %.not81.not165 = icmp sgt i32 %15, %i.ak
  br i1 %.not81.not165, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.backedge
  %.077167 = phi i32 [ %.1, %.lr.ph.backedge ], [ %14, %bb.g ] ; 10 uses
  %.078166 = phi i32 [ %.078166.be, %.lr.ph.backedge ], [ %15, %bb.g ] ; 11 uses
  %i.al = icmp eq i32 %.078166, -1                ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !30
  %16 = zext nneg i32 %.078166 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !31
  %i.ap = add i32 %i.ao, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.aq = phi i32 [ %i.ap, %bb.h ], [ 1, %.lr.ph ] ; 3 uses
  %i.ar = icmp ult i32 %i.aq, %.077167
  br i1 %i.ar, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.as = select i1 %i.al, i32 %i.k, i32 %.078166
  %i.at = xor i32 %.078166, -1
  %i.au = add i32 %.pre-phi, %i.at
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !28  ; 3 uses
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !15
  %i.ax = add nsw i32 %.078166, 1                 ; 2 uses
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.aw, i32 %i.ax)
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.au)
  %i.ay = zext nneg i32 %i.ax to i64              ; 3 uses
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.ay ; 2 uses
  %.sroa.speculated.i.i.fr = freeze i32 %.sroa.speculated.i.i ; 12 uses
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i.fr to i64 ; 10 uses
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !33  ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !33  ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ay ; 2 uses
  %i.be = zext i32 %i.as to i64                   ; 3 uses
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.be
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !31
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !31
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.be
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.bp = icmp slt i32 %.sroa.speculated.i.i.fr, 0
  br i1 %i.bp, label %.critedge, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.bq = load i32, ptr %8, align 8, !tbaa !145   ; 5 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.critedge, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %.not.i104 = icmp samesign ugt i32 %.sroa.speculated.i.i.fr, %i.bq
  br i1 %.not.i104, label %.preheader.i106, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, !prof !16

.preheader.i106:                                  ; preds = %bb.l, %.preheader.i106
  %.043.i107 = phi i32 [ %i.bu, %.preheader.i106 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bs = lshr i32 %.043.i107, 1
  %i.bt = add nuw i32 %.043.i107, 8
  %i.bu = add nuw i32 %i.bt, %i.bs                ; 7 uses
  %i.bv = icmp ugt i32 %.sroa.speculated.i.i.fr, %i.bu
  br i1 %i.bv, label %.preheader.i106, label %.thread.i108, !llvm.loop !128

.thread.i108:                                     ; preds = %.preheader.i106
  %i.bw = icmp ugt i32 %i.bu, 536870911
  br i1 %i.bw, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, label %bb.m, !prof !16

bb.m:                                             ; preds = %.thread.i108
  %.not49.i110 = icmp eq i32 %i.bq, 0
  %i.bx = load ptr, ptr %i.o, align 8, !tbaa !146 ; 2 uses
  br i1 %.not49.i110, label %bb.n, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111

bb.n:                                             ; preds = %bb.m
  %.not9.i.i.i120 = icmp eq ptr %i.bx, null
  br i1 %.not9.i.i.i120, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = shl nuw i32 %i.bu, 3
  %i.bz = zext i32 %i.by to i64
  %i.ca = tail call ptr @hb_malloc(i64 noundef %i.bz) #9 ; 4 uses
  %.not10.i.i.i121 = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i121, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, label %bb.p, !prof !16

bb.p:                                             ; preds = %bb.o
  %i.cb = load i32, ptr %i.p, align 4, !tbaa !147 ; 2 uses
  %.not.i.i.i.i122 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i122, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124, label %bb.q, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !146
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr readonly align 1 %i.ce, i64 range(i64 0, 51539607541) %i.cd, i1 false), !alias.scope !148
  br label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111: ; preds = %bb.n, %bb.m
  %i.cf = phi ptr [ null, %bb.n ], [ %i.bx, %bb.m ]
  %i.cg = shl nuw i32 %i.bu, 3
  %i.ch = zext i32 %i.cg to i64
  %i.ci = tail call ptr @hb_realloc(ptr noundef %i.cf, i64 noundef %i.ch) #9 ; 2 uses
  %.not22.i112 = icmp eq ptr %i.ci, null
  br i1 %.not22.i112, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124, !prof !52

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111, %bb.o
  %i.cj = load i32, ptr %8, align 8, !tbaa !145   ; 2 uses
  %.not23.i119 = icmp ugt i32 %i.bu, %i.cj
  br i1 %.not23.i119, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, !prof !149

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, %.thread.i108
  %.sink.i116.ph.in = phi i32 [ %i.bq, %.thread.i108 ], [ %i.cj, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118 ]
  %.sink.i116.ph = xor i32 %.sink.i116.ph.in, -1
  store i32 %.sink.i116.ph, ptr %8, align 8, !tbaa !145
  br label %.critedge

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124:         ; preds = %bb.p, %bb.q, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111
  %.1.i.i42.i114 = phi ptr [ %i.ci, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111 ], [ %i.ca, %bb.q ], [ %i.ca, %bb.p ]
  store ptr %.1.i.i42.i114, ptr %i.o, align 8, !tbaa !146
  store i32 %i.bu, ptr %8, align 8, !tbaa !145
  br label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread:  ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, %bb.l, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124
  store i32 %.sroa.speculated.i.i.fr, ptr %i.p, align 4, !tbaa !147
  %i.ck = load i32, ptr %9, align 8, !tbaa !145   ; 5 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %.critedge, label %bb.r, !prof !16

bb.r:                                             ; preds = %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread
  %.not.i103 = icmp samesign ugt i32 %.sroa.speculated.i.i.fr, %i.ck
  br i1 %.not.i103, label %.preheader.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i, !prof !16

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %.043.i = phi i32 [ %i.co, %.preheader.i ], [ %i.ck, %bb.r ] ; 2 uses
  %i.cm = lshr i32 %.043.i, 1
  %i.cn = add nuw i32 %.043.i, 8
  %i.co = add nuw i32 %i.cn, %i.cm                ; 7 uses
  %i.cp = icmp ugt i32 %.sroa.speculated.i.i.fr, %i.co
  br i1 %i.cp, label %.preheader.i, label %.thread.i, !llvm.loop !128

.thread.i:                                        ; preds = %.preheader.i
  %i.cq = icmp ugt i32 %i.co, 536870911
  br i1 %i.cq, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, label %bb.s, !prof !16

bb.s:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.ck, 0
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !146 ; 2 uses
  br i1 %.not49.i, label %bb.t, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i

bb.t:                                             ; preds = %bb.s
  %.not9.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = shl nuw i32 %i.co, 3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = tail call ptr @hb_malloc(i64 noundef %i.ct) #9 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, label %bb.v, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.cv = load i32, ptr %i.q, align 4, !tbaa !147 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread, label %bb.w, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.cw = zext i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = load ptr, ptr %i.r, align 8, !tbaa !146
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr readonly align 1 %i.cy, i64 range(i64 0, 51539607541) %i.cx, i1 false), !alias.scope !150
  br label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i: ; preds = %bb.t, %bb.s
  %i.cz = phi ptr [ null, %bb.t ], [ %i.cr, %bb.s ]
  %i.da = shl nuw i32 %i.co, 3
  %i.db = zext i32 %i.da to i64
  %i.dc = tail call ptr @hb_realloc(ptr noundef %i.cz, i64 noundef %i.db) #9 ; 2 uses
  %.not22.i = icmp eq ptr %i.dc, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread, !prof !52

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, %bb.u
  %i.dd = load i32, ptr %9, align 8, !tbaa !145   ; 2 uses
  %.not23.i = icmp ugt i32 %i.co, %i.dd
  br i1 %.not23.i, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, label %.sink.split

_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152:  ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.ck, %.thread.i ], [ %i.dd, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %9, align 8, !tbaa !145
  br label %.critedge

_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, %bb.w, %bb.v
  %.1.i.i42.i = phi ptr [ %i.dc, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i ], [ %i.cu, %bb.w ], [ %i.cu, %bb.v ]
  store ptr %.1.i.i42.i, ptr %i.r, align 8, !tbaa !146
  store i32 %i.co, ptr %9, align 8, !tbaa !145
  br label %.sink.split

_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i: ; preds = %bb.r
  store i32 %.sroa.speculated.i.i.fr, ptr %i.q, align 4, !tbaa !147
  %.not104.not.i.i = icmp eq i32 %.sroa.speculated.i.i.fr, 0
  br i1 %.not104.not.i.i, label %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit, label %bb.x

.sink.split:                                      ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread
  store i32 %.sroa.speculated.i.i.fr, ptr %i.q, align 4, !tbaa !147
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.dg = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 3 ; 2 uses
  %.090.us.i.i = sitofp i32 %i.bk to double       ; 3 uses
  %.091.us.i.i = sitofp i32 %i.bi to double       ; 5 uses
  %.093.in.us.i.i = load float, ptr %i.bg, align 4, !tbaa !38 ; 3 uses
  %.093.us.i.i = fpext float %.093.in.us.i.i to double ; 2 uses
  %.095.in.us.i.i = load float, ptr %i.bf, align 4, !tbaa !38 ; 3 uses
  %.095.us.i.i = fpext float %.095.in.us.i.i to double ; 2 uses
  %.058.us.i.i = load ptr, ptr %i.o, align 8, !tbaa !146 ; 5 uses
  %i.dh = fcmp oeq float %.095.in.us.i.i, %.093.in.us.i.i
  br i1 %i.dh, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = fcmp ogt float %.095.in.us.i.i, %.093.in.us.i.i
  br i1 %i.di, label %bb.z, label %.lr.ph.us.i.i

bb.z:                                             ; preds = %bb.y
  br label %.lr.ph.us.i.i

end_hunk_0
begin_hunk_1_@_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_:bb.a
vector.body214:                                   ; preds = %vector.body214, %vector.ph210
  %index215 = phi i64 [ 0, %vector.ph210 ], [ %index.next216, %vector.body214 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %index215 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <2 x double> %broadcast.splat213, ptr %i.ea, align 8, !tbaa !152
  store <2 x double> %broadcast.splat213, ptr %i.eb, align 8, !tbaa !152
  %index.next216 = add nuw i64 %index215, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.ec, label %middle.block217, label %vector.body214, !llvm.loop !136

middle.block217:                                  ; preds = %vector.body214
  %cmp.n218 = icmp eq i64 %n.vec211, %.sroa.3.8.insert.ext.i.i
  br i1 %cmp.n218, label %.loopexit.us.i.i, label %.lr.ph109.us.i.i.preheader223

.lr.ph109.us.i.i.preheader223:                    ; preds = %.lr.ph109.us.i.i.preheader, %middle.block217
  %indvars.iv172.i.i.ph = phi i64 [ 0, %.lr.ph109.us.i.i.preheader ], [ %n.vec211, %middle.block217 ]
  br label %.lr.ph109.us.i.i

.lr.ph109.us.i.i:                                 ; preds = %.lr.ph109.us.i.i.preheader223, %.lr.ph109.us.i.i
  %indvars.iv172.i.i = phi i64 [ %indvars.iv.next173.i.i, %.lr.ph109.us.i.i ], [ %indvars.iv172.i.i.ph, %.lr.ph109.us.i.i.preheader223 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv172.i.i
  store double %.091.us.i.i, ptr %i.ed, align 8, !tbaa !152
  %indvars.iv.next173.i.i = add nuw nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %exitcond176.not.i.i = icmp eq i64 %indvars.iv.next173.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond176.not.i.i, label %.loopexit.us.i.i, label %.lr.ph109.us.i.i, !llvm.loop !137

.loopexit.us.i.i:                                 ; preds = %bb.aa, %.lr.ph109.us.i.i, %middle.block217, %.lr.ph107.us.preheader.i.i
  %.090.us.1.i.i = sitofp i32 %i.bo to double     ; 3 uses
  %.091.us.1.i.i = sitofp i32 %i.bm to double     ; 5 uses
  %.093.in.us.1.i.i = load float, ptr %i.df, align 4, !tbaa !38 ; 3 uses
  %.093.us.1.i.i = fpext float %.093.in.us.1.i.i to double ; 2 uses
  %.095.in.us.1.i.i = load float, ptr %i.de, align 4, !tbaa !38 ; 3 uses
  %.095.us.1.i.i = fpext float %.095.in.us.1.i.i to double ; 2 uses
  %.058.us.1.i.i = load ptr, ptr %i.r, align 8, !tbaa !146 ; 5 uses
  %i.ee = fcmp oeq float %.095.in.us.1.i.i, %.093.in.us.1.i.i
  br i1 %i.ee, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.us.i.i
  %i.ef = fcmp ogt float %.095.in.us.1.i.i, %.093.in.us.1.i.i
  br i1 %i.ef, label %bb.ah, label %.lr.ph.us.1.i.i

bb.ah:                                            ; preds = %bb.ag
  br label %.lr.ph.us.1.i.i

.lr.ph.us.1.i.i:                                  ; preds = %bb.ah, %bb.ag
  %.196.us.1.i.i = phi double [ %.093.us.1.i.i, %bb.ah ], [ %.095.us.1.i.i, %bb.ag ] ; 3 uses
  %.194.us.1.i.i = phi double [ %.095.us.1.i.i, %bb.ah ], [ %.093.us.1.i.i, %bb.ag ] ; 2 uses
  %.192.us.1.i.i = phi double [ %.090.us.1.i.i, %bb.ah ], [ %.091.us.1.i.i, %bb.ag ] ; 3 uses
  %.1.us.1.i.i = phi double [ %.091.us.1.i.i, %bb.ah ], [ %.090.us.1.i.i, %bb.ag ] ; 2 uses
  %i.eg = fsub double %.1.us.1.i.i, %.192.us.1.i.i
  %i.eh = fsub double %.194.us.1.i.i, %.196.us.1.i.i
  %i.ei = fdiv double %i.eg, %i.eh
  %invariant.gep.us.1.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %.lr.ph.us.1.i.i
  %indvars.iv.1.i.i = phi i64 [ 0, %.lr.ph.us.1.i.i ], [ %indvars.iv.next.1.i.i, %bb.am ] ; 4 uses
  %gep.us.1.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.us.1.i.i, i64 %indvars.iv.1.i.i
  %i.ej = load float, ptr %gep.us.1.i.i, align 4, !tbaa !38
  %i.ek = fpext float %i.ej to double             ; 3 uses
  %i.el = fcmp ult double %.196.us.1.i.i, %i.ek
  br i1 %i.el, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.em = fcmp ugt double %.194.us.1.i.i, %i.ek
  br i1 %i.em, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.en = fsub double %i.ek, %.196.us.1.i.i
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.en, double %i.ei, double %.192.us.1.i.i)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.us.1.i.i = phi double [ %i.eo, %bb.ak ], [ %.192.us.1.i.i, %bb.ai ], [ %.1.us.1.i.i, %bb.aj ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv.1.i.i
  store double %.0.us.1.i.i, ptr %i.ep, align 8, !tbaa !152
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.1.i.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !31
  %i.es = sitofp i32 %i.er to double
  %i.et = fsub double %.0.us.1.i.i, %i.es         ; 2 uses
  %i.eu = fmul double %i.et, %i.et
  %i.ev = fcmp ule double %i.eu, %4
  br i1 %i.ev, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.1.not.i.i, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %bb.ai, !llvm.loop !135

bb.an:                                            ; preds = %.loopexit.us.i.i
  %i.ew = fcmp oeq double %.091.us.1.i.i, %.090.us.1.i.i
  br i1 %i.ew, label %.lr.ph109.us.1.i.i.preheader, label %.lr.ph107.us.preheader.1.i.i

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
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ex, align 8, !tbaa !152
  store <2 x double> %broadcast.splat, ptr %i.ey, align 8, !tbaa !152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %.sroa.3.8.insert.ext.i.i
  br i1 %cmp.n, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %.lr.ph109.us.1.i.i.preheader220

.lr.ph109.us.1.i.i.preheader220:                  ; preds = %.lr.ph109.us.1.i.i.preheader, %middle.block
  %indvars.iv172.1.i.i.ph = phi i64 [ 0, %.lr.ph109.us.1.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph109.us.1.i.i

.lr.ph107.us.preheader.1.i.i:                     ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr align 8 %.058.us.1.i.i, i8 0, i64 %i.dg, i1 false), !tbaa !152
  br label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader

_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader: ; preds = %bb.am, %.lr.ph109.us.1.i.i, %middle.block, %.lr.ph107.us.preheader.1.i.i
  br label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i

.lr.ph109.us.1.i.i:                               ; preds = %.lr.ph109.us.1.i.i.preheader220, %.lr.ph109.us.1.i.i
  %indvars.iv172.1.i.i = phi i64 [ %indvars.iv.next173.1.i.i, %.lr.ph109.us.1.i.i ], [ %indvars.iv172.1.i.i.ph, %.lr.ph109.us.1.i.i.preheader220 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv172.1.i.i
  store double %.091.us.1.i.i, ptr %i.fa, align 8, !tbaa !152
  %indvars.iv.next173.1.i.i = add nuw nsw i64 %indvars.iv172.1.i.i, 1 ; 2 uses
  %exitcond176.1.not.i.i = icmp eq i64 %indvars.iv.next173.1.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond176.1.not.i.i, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %.lr.ph109.us.1.i.i, !llvm.loop !139

.lr.ph107.us.preheader.i.i:                       ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr align 8 %.058.us.i.i, i8 0, i64 %i.dg, i1 false), !tbaa !152
  br label %.loopexit.us.i.i

bb.ao:                                            ; preds = %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.not.i, label %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i, !llvm.loop !140

_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i: ; preds = %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, %bb.ao
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 0, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !31
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv.i
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !152
  %i.fg = fsub double %i.fd, %i.ff                ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !31
  %i.fj = sitofp i32 %i.fi to double
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv.i
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !152
  %i.fm = fsub double %i.fj, %i.fl                ; 2 uses
  %i.fn = fmul double %i.fm, %i.fm
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fg, double %i.fn)
  %i.fp = fcmp ule double %i.fo, %4
  br i1 %i.fp, label %bb.ao, label %.critedge

_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit: ; preds = %bb.ao, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i
  %i.fq = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv
  store i32 %i.aq, ptr %i.fr, align 4, !tbaa !31
  %i.fs = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv
  store i32 %.078166, ptr %i.ft, align 4, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.al, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, %bb.k, %bb.j, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, %bb.i, %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit
  %.1 = phi i32 [ %i.aq, %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit ], [ %.077167, %bb.i ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145 ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152 ], [ %.077167, %bb.j ], [ %.077167, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i ], [ %.077167, %bb.al ], [ %.077167, %bb.k ], [ %.077167, %bb.ae ]
  %i.fu = icmp sgt i32 %.078166, 0
  br i1 %i.fu, label %bb.ap, label %.critedge83

bb.ap:                                            ; preds = %.critedge
  %i.fv = lshr i32 %.078166, 6
  %i.fw = and i32 %i.fv, 7
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !37
  %i.ga = and i32 %.078166, 63
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = and i64 %i.fz, %i.gc
  %.not159 = icmp eq i64 %i.gd, 0
  %i.ge = add nsw i32 %.078166, -1                ; 2 uses
  %.not81.not = icmp sgt i32 %i.ge, %i.ak
  %or.cond = select i1 %.not159, i1 %.not81.not, i1 false
  br i1 %or.cond, label %.lr.ph.backedge, label %.loopexit

.critedge83:                                      ; preds = %.critedge
  %.old = add nsw i32 %.078166, -1
  %.not81.not.old = icmp sgt i32 %.old, %i.ak
  br i1 %.not81.not.old, label %.lr.ph.backedge, label %.loopexit

.lr.ph.backedge:                                  ; preds = %.critedge83, %bb.ap
  %.078166.be = phi i32 [ %i.ge, %bb.ap ], [ -1, %.critedge83 ]
  br label %.lr.ph, !llvm.loop !141

.loopexit:                                        ; preds = %bb.ap, %.critedge83, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !142

.thread:                                          ; preds = %.loopexit, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.d ], [ true, %.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK13hb_bit_page_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !42     ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <8 x i64>, ptr %i.b, align 8, !tbaa !37
  %i.d = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.c)
  %i.e = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.d)
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, i32 } @_ZL5beginIR13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not.1.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.1.i.i.i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %.not.2.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.2.i.i.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %.not.3.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.3.i.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %.not.4.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.4.i.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %.not.5.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.5.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %.not.6.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.6.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37   ; 2 uses
  %.not.7.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.7.i.i.i.i, label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0712.lcssa.wide.i.i.i.i = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ]
  %.lcssa.i.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = or disjoint i32 %.0712.lcssa.wide.i.i.i.i, %i.r
  br label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit"

"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit": ; preds = %bb.h, %bb.i
  %i.t = phi i32 [ %i.s, %bb.i ], [ -1, %bb.h ]
  %.fca.0.insert.i.i = insertvalue { ptr, i32 } poison, ptr %0, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i32 } %.fca.0.insert.i.i, i32 %i.t, 1
  ret { ptr, i32 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31
  %i.d = add i32 %i.c, 1                          ; 3 uses
  %i.e = and i32 %i.d, 511                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.preheader.i.i

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.b, align 4, !tbaa !31
  br label %_ZN13hb_bit_page_t6iter_t8__next__Ev.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !153
  %i.g = lshr i32 %i.e, 6                         ; 2 uses
  %i.h = and i32 %i.d, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  %i.m = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.m
  %i.n = and i64 %i.l, %notmask.i.i
  store i64 %i.n, ptr %i.a, align 8, !tbaa !37
  %i.o = lshr i32 %i.d, 6
  %i.p = and i32 %i.o, 7                          ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i32 %i.p, 8
  %i.s = sub nuw nsw i32 %i.r, %i.g
  %wide.trip.count.i.i = zext nneg i32 %i.s to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.q, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.027.i.i = phi ptr [ %i.a, %.lr.ph.preheader.i.i ], [ %i.z, %bb.d ]
  %i.t = load i64, ptr %.027.i.i, align 8, !tbaa !37 ; 2 uses
  %.not20.not.i.not.i = icmp eq i64 %i.t, 0
  br i1 %.not20.not.i.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.u = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.v = shl nuw nsw i32 %i.u, 6
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.t, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x
  br label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !3

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi i32 [ %i.y, %bb.c ], [ -1, %bb.d ]
  store i32 %storemerge.i.i, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN13hb_bit_page_t6iter_t8__next__Ev.exit

_ZN13hb_bit_page_t6iter_t8__next__Ev.exit:        ; preds = %bb.b, %.critedge.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12rotate_arrayIbTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 -2147483647, 1) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 8 uses
  %or.cond = icmp slt i32 %i.b, 1
  br i1 %or.cond, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !19     ; 4 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp samesign ugt i32 %i.b, %i.c
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h, !prof !16

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.g, %.preheader.i.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.e = lshr i32 %.053.i.i, 1
  %i.f = add nuw i32 %.053.i.i, 8
  %i.g = add nuw i32 %i.f, %i.e                   ; 6 uses
  %i.h = icmp ugt i32 %i.b, %i.g
  br i1 %i.h, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !0

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.c, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i

bb.d:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, label %bb.e

end_hunk_1
