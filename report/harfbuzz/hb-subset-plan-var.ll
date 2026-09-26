Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjjEEbOT_jOT0_b:bb.a
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !171
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !705

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !172
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !172
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !170
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !209
  %i.ba = load i32, ptr %3, align 4, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !210
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !19
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !325
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !171 ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !80, !range !30, !noundef !31
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 9                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !262  ; 3 uses
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124  ; 3 uses
  br i1 %i.h, label %bb.c, label %._crit_edge.i, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !264
  %.not.i = icmp eq i32 %i.m, %i.c
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %.not1.i.i.i.i.i = icmp sgt i32 %i.g, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.n = add nsw i32 %i.g, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.g ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.o = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.p = lshr i32 %i.o, 1                         ; 4 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !264  ; 2 uses
  %i.u = icmp slt i32 %i.c, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = add nsw i32 %i.p, -1
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i32 %i.c, %i.t
  br i1 %.not28.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nuw nsw i32 %i.p, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.223.i.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ %.0212.i.i.i.i.i, %bb.d ] ; 2 uses
  %.2.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i, %bb.f ], [ %i.v, %bb.d ] ; 2 uses
  %.not.not.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i, %.2.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i: ; preds = %bb.e
  store atomic i32 %i.p, ptr %i.d monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit

_ZN12hb_bit_set_t8page_forEjb.exit:               ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %bb.c
  %i.x = phi i64 [ %i.q, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i ], [ %i.k, %bb.c ]
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !265 ; 2 uses
  %.not = icmp eq ptr %.sink.i, null
  br i1 %.not, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !266
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %.sink.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !81
  %i.ae = and i32 %1, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = xor i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = lshr i32 %1, 6
  %i.ak = and i32 %i.aj, 7
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !268
  %i.ao = and i64 %i.an, %i.ah
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !268
  store i32 -1, ptr %i.ac, align 8, !tbaa !329
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %bb.g, %._crit_edge.i, %bb.h, %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !80, !range !30, !noundef !31
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp ne i32 %1, -1
  %or.cond.not = and i1 %i.c, %i.b
  br i1 %or.cond.not, label %bb.b, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !706

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.d, align 4, !tbaa !81
  %i.e = lshr i32 %1, 9                           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !262  ; 3 uses
  %i.j = icmp ult i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !124  ; 3 uses
  br i1 %i.j, label %bb.c, label %._crit_edge.i, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !264
  %.not.i = icmp eq i32 %i.o, %i.e
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !326  ; 2 uses
  %.not1.i.i.i.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.r = add nsw i32 %i.i, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.g ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.s = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.t = lshr i32 %i.s, 1                         ; 4 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !264  ; 2 uses
  %i.y = icmp slt i32 %i.e, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = add nsw i32 %i.t, -1
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i32 %i.e, %i.x
  br i1 %.not28.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nuw nsw i32 %i.t, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.223.i.i.i.i.i = phi i32 [ %i.aa, %bb.f ], [ %.0212.i.i.i.i.i, %bb.d ] ; 3 uses
  %.2.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i, %bb.f ], [ %i.z, %bb.d ] ; 2 uses
  %.not.not.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i, %.2.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

.loopexit.i:                                      ; preds = %bb.g, %._crit_edge.i
  %storemerge.i.i.ph.sink.i.i.ph.i = phi i32 [ 0, %._crit_edge.i ], [ %.223.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.ab = add i32 %i.q, 1
  %i.ac = tail call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ab, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.ac, label %bb.h, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !33

bb.h:                                             ; preds = %.loopexit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !265
  %i.af = zext i32 %i.q to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i8 0, i64 64, i1 false), !tbaa !268
  store i32 0, ptr %i.ag, align 8, !tbaa !329
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !330
  %i.aj = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i to i64 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.h, align 4, !tbaa !262
  %i.an = xor i32 %storemerge.i.i.ph.sink.i.i.ph.i, -1
  %i.ao = add i32 %i.am, %i.an
  %i.ap = shl i32 %i.ao, 3
  %i.aq = zext i32 %i.ap to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %i.ak, i64 %i.aq, i1 false)
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !330 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aj
  %.sroa.5.0.insert.shift.i = shl nuw i64 %i.af, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.e to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 4, !tbaa !19
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i: ; preds = %bb.e, %bb.h
  %.pre-phi.i = phi i64 [ %i.aj, %bb.h ], [ %i.u, %bb.e ]
  %i.at = phi ptr [ %i.ar, %bb.h ], [ %i.l, %bb.e ]
  %storemerge.i.i.ph.sink.i.i17.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i, %bb.h ], [ %i.t, %bb.e ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i, ptr %i.f monotonic, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.pre-phi.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit

_ZN12hb_bit_set_t8page_forEjb.exit:               ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %bb.c
  %.sink30.i = phi ptr [ %i.au, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i ], [ %i.n, %bb.c ]
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !265 ; 2 uses
  %.not = icmp eq ptr %.sink.i, null
  br i1 %.not, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %bb.i, !prof !707

bb.i:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.sink30.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !266
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [72 x i8], ptr %.sink.i, i64 %i.ax ; 2 uses
  %i.az = and i32 %1, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = lshr i32 %1, 6
  %i.be = and i32 %i.bd, 7
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !268
  %i.bi = or i64 %i.bh, %i.bb
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !268
  store i32 -1, ptr %i.ay, align 8, !tbaa !329
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %.loopexit.i, %bb.i, %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !80, !range !30, !noundef !31
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.j, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !326
  %i.f = icmp ult i32 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !709
  %i.h = icmp ult i32 %i.g, %1
  %i.i = icmp ult i32 %1, 3
  %or.cond = and i1 %i.i, %i.h
  %spec.select = or i1 %3, %or.cond
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.shrunk = phi i1 [ %3, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.j = icmp slt i32 %1, 0
  br i1 %i.j, label %.critedge, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %1, i1 noundef zeroext %.0.shrunk)
  br i1 %i.k, label %bb.f, label %.critedge, !prof !253

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.d, align 4, !tbaa !126  ; 2 uses
  %i.m = icmp ugt i32 %1, %i.l
  %brmerge.not.i = and i1 %2, %i.m
  br i1 %brmerge.not.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 5 uses
  %i.p = zext i32 %i.l to i64                     ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %1 to i64  ; 3 uses
  %i.q = sub nsw i64 %wide.trip.count.i.i, %i.p
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i, %.prol.preheader
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.prol.preheader ], [ %i.p, %.lr.ph.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i8 0, i64 64, i1 false), !tbaa !268
  store i32 0, ptr %i.r, align 8, !tbaa !329
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !708

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.prol, %.prol.preheader ]
  %i.t = sub nsw i64 %i.p, %wide.trip.count.i.i
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i8 0, i64 64, i1 false), !tbaa !268
  store i32 0, ptr %i.v, align 8, !tbaa !329
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, i8 0, i64 64, i1 false), !tbaa !268
  store i32 0, ptr %i.y, align 8, !tbaa !329
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i8 0, i64 64, i1 false), !tbaa !268
  store i32 0, ptr %i.ab, align 8, !tbaa !329
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false), !tbaa !268
  store i32 0, ptr %i.ae, align 8, !tbaa !329
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.lr.ph.i.i.new, !llvm.loop !10

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.f
  store i32 %1, ptr %i.d, align 4, !tbaa !126
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = tail call noundef zeroext i1 @_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i32 noundef %1, i1 noundef zeroext false)
  br i1 %i.ah, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.loopexit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !123 ; 3 uses
  %i.ak = icmp ugt i32 %1, %i.aj
  %brmerge.not.i15 = and i1 %2, %i.ak
  br i1 %brmerge.not.i15, label %bb.h, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit

bb.h:                                             ; preds = %bb.g
  %i.al = sub nuw nsw i32 %1, %i.aj
  %i.am = shl i32 %i.al, 3                        ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit, label %bb.i, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !124
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = zext i32 %i.am to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit: ; preds = %bb.g, %bb.h, %bb.i
  store i32 %1, ptr %i.ai, align 4, !tbaa !123
  br label %bb.j

.critedge:                                        ; preds = %.loopexit, %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !262
  %i.au = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.at, i1 noundef zeroext %2, i1 noundef zeroext %.0.shrunk) ; 0 uses
  store i8 0, ptr %0, align 8, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit, %bb.a, %.critedge
  %.012 = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit ]
  ret i1 %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %3)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !126  ; 2 uses
  %i.e = icmp ugt i32 %1, %i.d
  %brmerge.not = and i1 %i.e, %2
  br i1 %brmerge.not, label %.lr.ph.i, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127  ; 5 uses
  %i.h = zext i32 %i.d to i64                     ; 4 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.i = sub nsw i64 %wide.trip.count.i, %i.h
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
end_hunk_0
begin_hunk_1_@_ZNK2OT4fvar8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = load i32, ptr %i.g, align 8, !tbaa !287
  %i.r = zext i32 %i.q to i64
  %.not14 = icmp ugt i64 %i.p, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not14, label %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i16, ptr %i.t, align 1, !tbaa !62
  %i.v = icmp eq i16 %i.u, 5120
  br i1 %i.v, label %bb.e, label %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.x = load i16, ptr %i.w, align 1, !tbaa !62
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !62
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = shl nuw nsw i32 %i.ad, 2
  %i.af = add nuw nsw i32 %i.ae, 4
  %.not = icmp samesign ugt i32 %i.af, %i.z
  br i1 %.not, label %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i16, ptr %i.a, align 1, !tbaa !62  ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 0
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ag)
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %.0.i.i.i = select i1 %i.ah, ptr @_hb_NullPool, ptr %i.ak, !prof !32 ; 2 uses
  %i.al = mul nuw nsw i32 %i.ad, 20               ; 3 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.an = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !287
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.ap, %i.ar
  br i1 %.not.i.i.i.i, label %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.s, align 8, !tbaa !285
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = sub i64 %i.at, %i.an
  %i.av = trunc i64 %i.au to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.al, %i.av
  br i1 %.not12.i.i.i.i, label %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit.thread, label %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit

_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit: ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !288
  %i.ay = sub i32 %i.ax, %i.al                    ; 3 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !288
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.h, label %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit.thread

bb.h:                                             ; preds = %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !62
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i32
  %i.be = mul nuw i32 %i.bd, %i.z                 ; 2 uses
  %i.bf = zext nneg i32 %i.al to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.bf
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = sub i64 %i.bh, %i.ao
  %.not.i.i = icmp ugt i64 %i.bi, %i.ar
  %i.bj = sub i64 %i.at, %i.bh
  %i.bk = trunc i64 %i.bj to i32
  %.not12.i.i = icmp ugt i32 %i.be, %i.bk
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not12.i.i
  br i1 %or.cond, label %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = sub i32 %i.ay, %i.be                    ; 2 uses
  store i32 %i.bl, ptr %i.aw, align 4, !tbaa !288
  %i.bm = icmp sgt i32 %i.bl, 0
  br label %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit.thread

_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit.thread: ; preds = %bb.i, %bb.h, %bb.f, %bb.g, %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bn = phi i1 [ false, %_ZNK10hb_array_tIKN2OT10AxisRecordEE8sanitizeI21hb_sanitize_context_tEEbPT_.exit ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.f ], [ %i.bm, %bb.i ], [ false, %bb.h ]
  ret i1 %i.bn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE13set_with_hashIRKjS1_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !258, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !334  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !335
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !33

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !261
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !259  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !335
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !734

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !334
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !334
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !336
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !336
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bb = load i64, ptr %3, align 4, !tbaa !19
  store i64 %i.bb, ptr %i.ba, align 4, !tbaa !19
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !19
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !339
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !335 ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !258, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i, !prof !33

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !335
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !336
  %.sroa.speculated44 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated44, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 3 uses
  %i.m = shl nuw i32 1, %narrow.i                 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 4                  ; 2 uses
  %i.p = tail call noundef ptr @hb_malloc(i64 noundef %i.o) #10 ; 3 uses
  %.not37.not = icmp eq ptr %i.p, null
  br i1 %.not37.not, label %bb.e, label %._crit_edge, !prof !32

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !258
  br label %bb.i

._crit_edge:                                      ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.p, i8 0, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !335  ; 2 uses
  %.not.i40 = icmp eq i32 %i.r, 0
  %i.s = add i32 %i.r, 1
  %spec.select.i = select i1 %.not.i40, i32 0, i32 %i.s ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !259  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !334
  store i32 0, ptr %i.i, align 4, !tbaa !336
  %i.w = add i32 %i.m, -1
  store i32 %i.w, ptr %i.q, align 4, !tbaa !335
  %i.x = icmp eq i32 %i.l, 0
  br i1 %i.x, label %_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE9prime_forEj.exit, label %bb.f, !prof !32

bb.f:                                             ; preds = %._crit_edge
  %i.y = zext nneg i32 %narrow.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE9prime_forEj.prime_mod, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !19
  br label %_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE9prime_forEj.exit: ; preds = %._crit_edge, %bb.f
  %.0.i = phi i32 [ %i.aa, %bb.f ], [ 2147483647, %._crit_edge ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.ab, align 8, !tbaa !261
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ac = shl nuw nsw i16 %.tr, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !339
  store ptr %i.p, ptr %i.t, align 8, !tbaa !259
  %.not55 = icmp eq i32 %spec.select.i, 0
  br i1 %.not55, label %.preheader, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph54

.preheader:                                       ; preds = %bb.h, %_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.u) #10
  br label %bb.i

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph54
  %i.ai = lshr i32 %i.ag, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE13set_with_hashIjS1_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, i32 noundef %i.ai, ptr noundef nonnull align 4 dereferenceable(8) %i.aj, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph54, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph54, !llvm.loop !735

bb.i:                                             ; preds = %bb.e, %.preheader, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE13set_with_hashIjS1_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !258, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !334  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !335
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !33

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !261
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !259  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !335
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !736

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !334
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !334
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !336
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !336
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bb = load i64, ptr %3, align 4, !tbaa !19
  store i64 %i.bb, ptr %i.ba, align 4, !tbaa !19
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !19
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !339
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !335 ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN16hb_subset_plan_t19source_table_loaderIN2OT4BASEEEclEPS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.hb::unique_ptr", align 8   ; 5 uses
  %3 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !738  ; 3 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #10 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !738
  br label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit

_ZN9hb_lock_tC2EP10hb_mutex_t.exit:               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %i.h = select i1 %.not14, ptr %i.g, ptr %i.f    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !340, !range !30, !noundef !31
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit

bb.c:                                             ; preds = %_ZN9hb_lock_tC2EP10hb_mutex_t.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !341  ; 5 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !342
  %i.p = urem i32 693710773, %i.o                 ; 3 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = and i32 %i.t, 2
  %.not15.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not15.i.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !19
  %i.y = icmp eq i32 %i.x, 1111577413
  br i1 %i.y, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = load i32, ptr %i.af, align 4, !tbaa !19
  %i.aa = icmp eq i32 %i.z, 1111577413
  br i1 %i.aa, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !737

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.01016.i20.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.p, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.ab, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.ab = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ac = add i32 %i.ab, %.01016.i20.i.i
  %i.ad = and i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = and i32 %i.ah, 2
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.e, !llvm.loop !737

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit: ; preds = %bb.e
  %i.aj = trunc i32 %i.ah to i1
  br i1 %i.aj, label %.lr.ph.i.i19, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i.i
  %i.ak = trunc i32 %i.t to i1
  br i1 %i.ak, label %._crit_edge.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit

bb.f:                                             ; preds = %.lr.ph.i.i19
  %i.al = load i32, ptr %i.av, align 4, !tbaa !19
  %i.am = icmp eq i32 %i.al, 1111577413
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i19, !llvm.loop !737

._crit_edge.i.i:                                  ; preds = %bb.f, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread
  %.lcssa10.i.i = phi i32 [ %i.t, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread ], [ %i.ax, %bb.f ]
  %i.an = phi i64 [ %i.q, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread ], [ %i.au, %bb.f ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.an
  %i.ap = trunc i32 %.lcssa10.i.i to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %spec.select.i.i = select i1 %i.ap, ptr %i.aq, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit

.lr.ph.i.i19:                                     ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit, %bb.f
  %.01016.i13.i.i = phi i32 [ %i.at, %bb.f ], [ %i.p, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit ]
  %.017.i12.i.i = phi i32 [ %i.ar, %bb.f ], [ 0, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit ]
  %i.ar = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.as = add i32 %i.ar, %.01016.i13.i.i
  %i.at = and i32 %i.as, %i.w                     ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = and i32 %i.ax, 2
  %.not.i.i.i20 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i20, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit, label %bb.f, !llvm.loop !737

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit: ; preds = %.lr.ph.i.i19, %._crit_edge.i.i
  %.0.i21 = phi ptr [ %spec.select.i.i, %._crit_edge.i.i ], [ @_hb_NullPool, %.lr.ph.i.i19 ]
  %i.az = load ptr, ptr %.0.i21, align 8, !tbaa !344
  %i.ba = tail call ptr @hb_blob_reference(ptr noundef %i.az) #10
  br label %bb.h

_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit: ; preds = %.lr.ph.i.i, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, %bb.d, %bb.c, %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i32 0, ptr %3, align 8, !tbaa !279
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !232
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bb, i8 0, i64 33, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 61
  store i8 0, ptr %i.bf, align 1, !tbaa !282
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !175 ; 2 uses
  %i.bi = tail call i32 @hb_face_get_glyph_count(ptr noundef %i.bh) #10
  store i32 %i.bi, ptr %i.bd, align 8, !tbaa !280
  store i8 1, ptr %i.be, align 4, !tbaa !281
  %i.bj = tail call ptr @hb_face_reference_table(ptr noundef %i.bh, i32 noundef 1111577413) #10
  %i.bk = call noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4BASEEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %3, ptr noundef %i.bj) ; 2 uses
  store ptr %i.bk, ptr %2, align 8, !tbaa !344
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !232 ; 2 uses
  %.not.i22 = icmp eq ptr %i.bl, null
  br i1 %.not.i22, label %_ZN21hb_sanitize_context_tD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit
  call void @hb_blob_destroy(ptr noundef nonnull %i.bl) #10
  br label %_ZN21hb_sanitize_context_tD2Ev.exit

_ZN21hb_sanitize_context_tD2Ev.exit:              ; preds = %_ZN21hb_sanitize_context_t15reference_tableIN2OT4BASEEEEP9hb_blob_tPK9hb_face_tj.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.bm = call ptr @hb_blob_reference(ptr noundef %i.bk) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 1111577413, ptr %i.a, align 4, !tbaa !19
  %i.bn = call noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE13set_with_hashIjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 693710773, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bo = load ptr, ptr %2, align 8, !tbaa !344
  call void @hb_blob_destroy(ptr noundef %i.bo) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.h

bb.h:                                             ; preds = %_ZN21hb_sanitize_context_tD2Ev.exit, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit
  %.sroa.026.0 = phi ptr [ %i.bm, %_ZN21hb_sanitize_context_tD2Ev.exit ], [ %i.ba, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit ]
  br i1 %.not, label %_ZN9hb_lock_tD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #10 ; 0 uses
  br label %_ZN9hb_lock_tD2Ev.exit

_ZN9hb_lock_tD2Ev.exit:                           ; preds = %bb.h, %bb.i
  ret ptr %.sroa.026.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4BASEEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_blob_reference(ptr noundef %1) #10 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN12hb_hashmap_tIj15TripleDistancesLb0EE13set_with_hashIjS0_EEbOT_jOT0_b:bb.a

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !352
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !752

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !351
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !351
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !355
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !355
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !358
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !275
  %i.bb = shl nuw i32 %i.k, 2
  %i.bc = or disjoint i32 %i.bb, 3
  store i32 %i.bc, ptr %i.ap, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !19
  %i.bf = add <2 x i32> %i.be, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !359
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp ugt i32 %.0283961, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x i32> %i.bf, i64 1
  %i.bl = shl i32 %i.bk, 3
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !352 ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = add i32 %i.bm, -8
  %i.bp = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj15TripleDistancesLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bo) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE13set_with_hashIRKjS0_IjRiEEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !258, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !334  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !335
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !33

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !261
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !259  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.02848 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.03046 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03145 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03145, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03145, i32 %.03046 ; 2 uses
  %i.ac = add i32 %.02848, 1                      ; 3 uses
  %i.ad = add i32 %i.ac, %.03046
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !335
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !753

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03143 = phi i32 [ %.03145, %bb.e ], [ %spec.select, %bb.f ]
  %.03041 = phi i32 [ %.03046, %bb.e ], [ %i.af, %bb.f ]
  %.02939 = phi i32 [ %.02848, %bb.e ], [ %i.ac, %bb.f ]
  %.03143.fr = freeze i32 %.03143                 ; 2 uses
  %i.al = icmp eq i32 %.03143.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.03041, i32 %.03143.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0293961 = phi i32 [ %.02939, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !334
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !334
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !336
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !336
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !338
  %i.ba = load i32, ptr %3, align 8, !tbaa !755
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !756, !nonnull !31, !align !757
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !19
  %.sroa.2.0.insert.ext.i = zext i32 %i.bd to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ba to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.be, align 4, !tbaa !19
  %i.bf = shl nuw i32 %i.k, 2
  %i.bg = or disjoint i32 %i.bf, 3
  store i32 %i.bg, ptr %i.ap, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bi = load <2 x i32>, ptr %i.bh, align 4, !tbaa !19
  %i.bj = add <2 x i32> %i.bi, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !339
  %i.bm = zext i16 %i.bl to i32
  %i.bn = icmp ugt i32 %.0293961, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bo = extractelement <2 x i32> %i.bj, i64 1
  %i.bp = shl i32 %i.bo, 3
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !335 ; 2 uses
  %i.br = icmp ugt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = add i32 %i.bq, -8
  %i.bt = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bs) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE13set_with_hashIRKjRS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !360, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !361  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !362
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.n, !prof !33

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !363
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !364  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !362
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !758

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select69 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283963 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select69, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.an ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !361
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !361
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !365
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !365
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !368
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !245 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bd = xor i32 %i.bb, -1
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !245
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i

_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 4 uses
  store i32 0, ptr %i.be, align 4, !tbaa !246
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !246
  %i.bh = tail call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i32 noundef %i.bg, i1 noundef zeroext true) ; 0 uses
  %i.bi = load i32, ptr %i.ba, align 8, !tbaa !245
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %_ZN22contour_point_vector_taSERKS_.exit, label %bb.j, !prof !32

bb.j:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i
  store i32 0, ptr %i.be, align 4, !tbaa !246
  %i.bk = load i32, ptr %i.bf, align 4, !tbaa !246 ; 2 uses
  %i.bl = mul i32 %i.bk, 12                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i.i, label %bb.k, !prof !32

bb.k:                                             ; preds = %bb.j
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !247
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr readonly align 1 %i.bo, i64 range(i64 0, 309237645241) %i.bm, i1 false), !alias.scope !762
  %.pre.i.i = load i32, ptr %i.be, align 4, !tbaa !246
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i.i

_ZN11hb_vector_tI15contour_point_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i.i: ; preds = %bb.k, %bb.j
  %i.br = phi i32 [ 0, %bb.j ], [ %.pre.i.i, %bb.k ]
  %i.bs = add i32 %i.br, %i.bk
  store i32 %i.bs, ptr %i.be, align 4, !tbaa !246
  br label %_ZN22contour_point_vector_taSERKS_.exit

_ZN22contour_point_vector_taSERKS_.exit:          ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i, %_ZN11hb_vector_tI15contour_point_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i.i
  %i.bt = shl nuw i32 %i.k, 2
  %i.bu = or disjoint i32 %i.bt, 3
  store i32 %i.bu, ptr %i.ap, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !19
  %i.bx = add <2 x i32> %i.bw, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !369
  %i.ca = zext i16 %i.bz to i32
  %i.cb = icmp ugt i32 %.0283963, %i.ca
  br i1 %i.cb, label %bb.l, label %bb.n, !prof !32

bb.l:                                             ; preds = %_ZN22contour_point_vector_taSERKS_.exit
  %i.cc = extractelement <2 x i32> %i.bx, i64 1
  %i.cd = shl i32 %i.cc, 3
  %i.ce = load i32, ptr %i.h, align 4, !tbaa !362 ; 2 uses
  %i.cf = icmp ugt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.m, label %bb.n

end_hunk_2
