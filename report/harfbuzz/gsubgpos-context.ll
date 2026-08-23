Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/gsubgpos-context?download=true
inline.NumInlined: 448
inline.NumDeleted: 318
begin_hunk_0_@_ZN5graph5GSTAR12find_lookupsIN2OT6Layout10SmallTypesEEEvRNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE:bb.a
  %or.cond = or i1 %.not35, %.not41
  br i1 %or.cond, label %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv ; 3 uses
  %i.au = load i32, ptr %i.j, align 4, !tbaa !39  ; 2 uses
  %.not.i.i.i = icmp ult i32 %.4.i.i, %i.au
  %i.av = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw [216 x i8], ptr %i.av, i64 %i.ae
  %.0.i.i.i23 = select i1 %.not.i.i.i, ptr %i.aw, ptr @_hb_NullPool, !prof !42 ; 4 uses
  %i.ax = load ptr, ptr %.0.i.i.i23, align 8, !tbaa !67 ; 2 uses
  %i.ay = icmp uge ptr %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %.not.i24 = icmp ult ptr %i.at, %i.ba
  %or.cond.i = select i1 %i.ay, i1 %.not.i24, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !68 ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !69
  %wide.trip.count.i = zext i32 %i.bc to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.k, !llvm.loop !70

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !72
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bi
  %.not23.not.i = icmp eq ptr %i.at, %i.bj
  br i1 %.not23.not.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !74
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.j, %bb.h, %bb.i, %.thread.i
  %.4.i = phi i32 [ -1, %bb.h ], [ %i.bl, %.thread.i ], [ -1, %bb.i ], [ -1, %bb.j ] ; 3 uses
  store i32 %.4.i, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not.i.i25 = icmp ult i32 %.4.i, %i.au         ; 2 uses
  %i.bm = zext i32 %.4.i to i64
  %i.bn = getelementptr inbounds nuw [216 x i8], ptr %i.av, i64 %i.bm ; 2 uses
  %.0.i.i26 = select i1 %.not.i.i25, ptr %i.bn, ptr @_hb_NullPool, !prof !42
  %i.bo = load ptr, ptr %.0.i.i26, align 8, !tbaa !67 ; 4 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !107
  %.not19 = icmp eq ptr %i.bo, null
  br i1 %.not19, label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  br i1 %.not.i.i25, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29: ; preds = %bb.l, %bb.m
  %.0.i28 = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i28, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !60
  %i.br = load ptr, ptr %.0.i28, align 8, !tbaa !43
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 6
  br i1 %i.bv, label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit

_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !61
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bx = load i16, ptr %i.bw, align 1, !tbaa !62
  %i.by = call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  %i.bz = zext i16 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !62
  %i.cd = and i16 %i.cc, 4096
  %.not.i.i30 = icmp eq i16 %i.cd, 0
  %.0.v.i.i = select i1 %.not.i.i30, i64 6, i64 8
  %.0.i.i31 = add nuw nsw i64 %.0.v.i.i, %i.ca
  %.not36 = icmp ult i64 %i.bu, %.0.i.i31
  br i1 %.not36, label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !38
  %i.ce = mul i32 %.val.i, -1640531535
  %i.cf = call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIRKjRS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true) ; 0 uses
  br label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread

_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29, %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i16, ptr %i.ag, align 1, !tbaa !62
  %i.ch = call noundef i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ci = zext i16 %i.ch to i64
  %i.cj = icmp samesign ult i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %bb.h, label %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, !llvm.loop !111

_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit.thread: ; preds = %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit, %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit, %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIRKjRS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !85, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !94
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !42

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
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
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !94
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !114

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
  %5 = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.am = zext i32 %5 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 2
  %.not36 = icmp eq i32 %i.aq, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !112
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.d, align 8, !tbaa !112
  %i.at = load i32, ptr %i.ao, align 4
  %i.au = and i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !115
  %i.ax = sub i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !115
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.ay = load i32, ptr %1, align 4, !tbaa !38
  store i32 %i.ay, ptr %i.an, align 8, !tbaa !116
  %i.az = load ptr, ptr %3, align 8, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !118
  %i.bb = shl nuw i32 %i.k, 2
  %i.bc = or disjoint i32 %i.bb, 3
  store i32 %i.bc, ptr %i.ao, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !38
  %i.bf = add <2 x i32> %i.be, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !119
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp ugt i32 %.0283961, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.k, !prof !37

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x i32> %i.bf, i64 1
  %i.bl = shl i32 %i.bk, 3
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !94  ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = add i32 %i.bm, -8
  %i.bp = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bo) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !85, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !42

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !94
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !115
  %.sroa.speculated35 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated35, 1           ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 4 uses
  %i.m = shl nuw i32 1, %narrow.i                 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = tail call noundef ptr @hb_malloc(i64 noundef %i.o) #9 ; 3 uses
  %.not29.not = icmp eq ptr %i.p, null
  br i1 %.not29.not, label %bb.e, label %bb.f, !prof !37

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !28
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %.not.i31 = icmp ugt i32 %i.k, 134217727
  br i1 %.not.i31, label %_ZL9hb_memsetPvij.exit, label %bb.g, !prof !37

bb.g:                                             ; preds = %bb.f
  %i.q = shl i32 16, %narrow.i
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.r, i1 false)
  br label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !94   ; 2 uses
  %.not.i32 = icmp eq i32 %i.t, 0
  %i.u = add i32 %i.t, 1
  %spec.select.i = select i1 %.not.i32, i32 0, i32 %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !112
  store i32 0, ptr %i.i, align 4, !tbaa !115
  %i.y = add i32 %i.m, -1
  store i32 %i.y, ptr %i.s, align 4, !tbaa !94
  %i.z = icmp eq i32 %i.l, 0
  br i1 %i.z, label %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit, label %bb.h, !prof !37

bb.h:                                             ; preds = %_ZL9hb_memsetPvij.exit
  %i.aa = zext nneg i32 %narrow.i to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.prime_mod, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !38
  br label %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit: ; preds = %_ZL9hb_memsetPvij.exit, %bb.h
  %.0.i = phi i32 [ %i.ac, %bb.h ], [ 2147483647, %_ZL9hb_memsetPvij.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.ad, align 8, !tbaa !113
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ae = shl nuw nsw i16 %.tr, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !119
  store ptr %i.p, ptr %i.v, align 8, !tbaa !29
  %.not43 = icmp eq i32 %spec.select.i, 0
  br i1 %.not43, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.j, %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.w) #9
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ak = lshr i32 %i.ai, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIjS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al, i1 noundef zeroext true) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !120

bb.k:                                             ; preds = %bb.e, %.preheader, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIjS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !85, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !94
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !42

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
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
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !94
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !121

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
  %5 = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.am = zext i32 %5 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 2
  %.not36 = icmp eq i32 %i.aq, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !112
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.d, align 8, !tbaa !112
  %i.at = load i32, ptr %i.ao, align 4
  %i.au = and i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !115
  %i.ax = sub i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !115
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.ay = load i32, ptr %1, align 4, !tbaa !38
  store i32 %i.ay, ptr %i.an, align 8, !tbaa !116
  %i.az = load ptr, ptr %3, align 8, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !118
  %i.bb = shl nuw i32 %i.k, 2
  %i.bc = or disjoint i32 %i.bb, 3
  store i32 %i.bc, ptr %i.ao, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !38
  %i.bf = add <2 x i32> %i.be, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !119
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp ugt i32 %.0283961, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.k, !prof !37

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x i32> %i.bf, i64 1
  %i.bl = shl i32 %i.bk, 3
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !94  ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = add i32 %i.bm, -8
  %i.bp = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bo) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPcLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !79     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !37

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !122

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !37

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80
  tail call void @hb_free(ptr noundef %i.m) #9
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !80   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #9 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !37

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !37

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 34359738361) %i.v, i1 false), !alias.scope !123
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #9 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !127

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !79    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !80
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !91     ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !37

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !38
end_hunk_0
