Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22cff2_instancing_plan_t6createEPKNS_22CFF2ItemVariationStoreEPK16hb_subset_plan_t:bb.a
  br i1 %i.y, label %bb.e, label %.loopexit, !llvm.loop !979

bb.f:                                             ; preds = %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread.i.i
  %i.z = icmp ugt i32 %i.p, %i.e
  br i1 %i.z, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.e)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.g, %bb.f
  store i32 %i.e, ptr %i.o, align 4, !tbaa !284
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !345 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %.0.i.i.i = select i1 %i.ac, ptr @_hb_NullPool, ptr %i.af, !prof !99
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 2656
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = tail call noundef zeroext i1 @_ZNK2OT13VarRegionList15get_var_regionsERK8hb_map_tR11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
  br i1 %i.ai, label %bb.h, label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE6resizeEi.exit.thread

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %3, i8 0, i64 304, i1 false)
  %.not90265 = icmp eq i16 %i.c, 0
  br i1 %.not90265, label %.critedge97, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 2360
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2356
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 34
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 82
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 18 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 100 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 116 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 132 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 2416
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %wide.trip.count291 = zext i16 %i.d to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph269, %bb.ar
  %indvars.iv287 = phi i64 [ 0, %.lr.ph269 ], [ %indvars.iv.next288, %bb.ar ] ; 6 uses
  %i.cg = load i16, ptr %i.b, align 1, !tbaa !276
  %i.ch = call noundef i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ci = zext i16 %i.ch to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv287, %i.ci
  br i1 %.not.i.i, label %bb.j, label %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit, !prof !97

bb.j:                                             ; preds = %bb.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !442
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv287
  br label %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit

_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.cj, %bb.j ], [ @_hb_NullPool, %bb.i ]
  %i.ck = load i32, ptr %.0.i.i, align 1, !tbaa !345 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  %.0.i.i.i101 = select i1 %i.cl, ptr @_hb_NullPool, ptr %i.co, !prof !99 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i101, i64 4 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 1, !tbaa !276 ; 2 uses
  %i.cr = call noundef i16 @llvm.bswap.i16(i16 %i.cq) ; 4 uses
  %i.cs = zext i16 %i.cr to i32                   ; 21 uses
  %i.ct = load ptr, ptr %i.ak, align 8, !tbaa !992
  %i.cu = getelementptr inbounds nuw [72 x i8], ptr %i.ct, i64 %indvars.iv287 ; 13 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = call noundef zeroext i1 @_ZN11hb_vector_tIfLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i32 noundef %i.cs, i1 noundef zeroext true) ; 3 uses
  br i1 %i.cw, label %bb.k, label %.critedge97

bb.k:                                             ; preds = %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 20 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !230 ; 3 uses
  %i.cz = icmp ult i32 %i.cy, %i.cs
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.da = sub nuw nsw i32 %i.cs, %i.cy
  %i.db = shl nuw nsw i32 %i.da, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !231
  %i.de = zext nneg i32 %i.cy to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = zext nneg i32 %i.db to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.df, i8 0, i64 %i.dg, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  store i32 %i.cs, ptr %i.cx, align 4, !tbaa !230
  %i.dh = load ptr, ptr %i.al, align 8, !tbaa !443
  %i.di = load i32, ptr %i.am, align 4, !tbaa !444
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !445
  %i.dl = load i16, ptr %i.b, align 1, !tbaa !276
  %i.dm = call noundef i16 @llvm.bswap.i16(i16 %i.dl)
  %i.dn = zext i16 %i.dm to i64
  %.not.i.i103 = icmp samesign ult i64 %indvars.iv287, %i.dn
  br i1 %.not.i.i103, label %bb.n, label %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit, !prof !97

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !442
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv287
  br label %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit

_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit: ; preds = %bb.m, %bb.n
  %.0.i.i104 = phi ptr [ %i.do, %bb.n ], [ @_hb_NullPool, %bb.m ]
  %i.dp = load i32, ptr %.0.i.i104, align 1, !tbaa !345 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ds
  %.0.i.i.i105 = select i1 %i.dq, ptr @_hb_NullPool, ptr %i.dt, !prof !99
  %i.du = load i32, ptr %i.aa, align 1, !tbaa !345 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dx
  %.0.i.i5.i = select i1 %i.dv, ptr @_hb_NullPool, ptr %i.dy, !prof !99
  call void @_ZNK2OT7VarData18get_region_scalarsEPKijRKNS_13VarRegionListEPfj(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i105, ptr noundef %i.dh, i32 noundef %i.di, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i5.i, ptr noundef %i.dk, i32 noundef %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %4, i8 0, i64 16, i1 false)
  store atomic i32 1, ptr %i.an monotonic, align 8
  store atomic i8 1, ptr %i.ao monotonic, align 4
  store atomic ptr null, ptr %i.ap monotonic, align 8
  store i8 1, ptr %i.aq, align 8, !tbaa !993
  store ptr null, ptr %i.as, align 8, !tbaa !448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ar, i8 0, i64 18, i1 false)
  store atomic i32 1, ptr %i.at monotonic, align 8
  store atomic i8 1, ptr %i.au monotonic, align 4
  store atomic ptr null, ptr %i.av monotonic, align 8
  store i8 1, ptr %i.aw, align 8, !tbaa !994
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ax, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.ay, i8 0, i64 22, i1 false)
  %.not87258.not = icmp ne i16 %i.cq, 0           ; 3 uses
  br i1 %.not87258.not, label %.lr.ph, label %.critedge92.thread

.lr.ph:                                           ; preds = %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i101, i64 6
  %i.ea = zext i16 %i.cr to i64
  %wide.trip.count = zext i16 %i.cr to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store atomic i32 1, ptr %5 monotonic, align 8
  store atomic i8 1, ptr %i.az monotonic, align 4
  store atomic ptr null, ptr %i.ba monotonic, align 8
  store i8 1, ptr %i.bb, align 8, !tbaa !451
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bc, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bd, i8 0, i64 120, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %.preheader.i
  %.043.i = phi i32 [ %i.ed, %.preheader.i ], [ 0, %bb.o ] ; 2 uses
  %i.eb = lshr i32 %.043.i, 1
  %i.ec = add i32 %.043.i, 8
  %i.ed = add i32 %i.ec, %i.eb                    ; 6 uses
  %i.ee = icmp ult i32 %i.ed, %i.cs
  br i1 %i.ee, label %.preheader.i, label %.thread.i, !llvm.loop !19

.thread.i:                                        ; preds = %.preheader.i
  %6 = icmp ugt i32 %i.ed, 1073741823
  br i1 %6, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread195, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i, !prof !99

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.ef = shl nuw i32 %i.ed, 2
  %i.eg = zext i32 %i.ef to i64
  %i.eh = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.eg) #16 ; 2 uses
  %.not22.i = icmp eq ptr %i.eh, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit, !prof !100

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i
  %.pre = load i32, ptr %i.be, align 8, !tbaa !229 ; 2 uses
  %.not23.i = icmp ugt i32 %i.ed, %.pre
  br i1 %.not23.i, label %7, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread

7:                                                ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i
  %8 = xor i32 %.pre, -1
  br label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread195

_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread195:  ; preds = %.thread.i, %7
  %.sink.i.ph = phi i32 [ %8, %7 ], [ -1, %.thread.i ]
  store i32 %.sink.i.ph, ptr %i.be, align 8, !tbaa !229
  br label %.critedge

_ZN11hb_vector_tIfLb0EE5allocEjb.exit:            ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i
  store ptr %i.eh, ptr %i.bf, align 8, !tbaa !231
  store i32 %i.ed, ptr %i.be, align 8, !tbaa !229
  br label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread:     ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIfLb0EE5allocEjb.exit
  %i.ei = load i32, ptr %i.bg, align 4, !tbaa !230 ; 3 uses
  %i.ej = icmp ult i32 %i.ei, %i.cs
  br i1 %i.ej, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread
  %i.ek = sub nuw nsw i32 %i.cs, %i.ei
  %i.el = shl nuw nsw i32 %i.ek, 2
  %i.em = load ptr, ptr %i.bf, align 8, !tbaa !231
  %i.en = zext nneg i32 %i.ei to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = zext nneg i32 %i.el to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.eo, i8 0, i64 %i.ep, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread
  store i32 %i.cs, ptr %i.bg, align 4, !tbaa !230
  %i.eq = load i32, ptr %i.bh, align 8, !tbaa !454 ; 4 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.critedge, label %bb.r, !prof !99

bb.r:                                             ; preds = %bb.q
  %.not.i.i109 = icmp samesign ult i32 %i.eq, %i.cs
  br i1 %.not.i.i109, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i, !prof !99

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.eu, %.preheader.i.i ], [ %i.eq, %bb.r ] ; 2 uses
  %i.es = lshr i32 %.053.i.i, 1
  %i.et = add nuw i32 %.053.i.i, 8
  %i.eu = add nuw i32 %i.et, %i.es                ; 6 uses
  %i.ev = icmp ult i32 %i.eu, %i.cs
  br i1 %i.ev, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !980

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.eq, 0
  %i.ew = load ptr, ptr %i.bi, align 8, !tbaa !455 ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.s, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i

bb.s:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ex = zext i32 %i.eu to i64
  %i.ey = call ptr @hb_malloc(i64 noundef %i.ex) #16 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %bb.u, !prof !99

bb.u:                                             ; preds = %bb.t
  %i.ez = load i32, ptr %i.bj, align 4, !tbaa !456 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, label %bb.v, !prof !99

bb.v:                                             ; preds = %bb.u
  %i.fa = zext i32 %i.ez to i64
  %i.fb = load ptr, ptr %i.bi, align 8, !tbaa !455
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ey, ptr readonly align 1 %i.fb, i64 %i.fa, i1 false), !alias.scope !995
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.s, %.thread39.i.i
  %i.fc = phi ptr [ null, %bb.s ], [ %i.ew, %.thread39.i.i ]
  %i.fd = zext i32 %i.eu to i64
  %i.fe = call ptr @hb_realloc(ptr noundef %i.fc, i64 noundef %i.fd) #16 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fe, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, !prof !152

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.t
  %i.ff = load i32, ptr %i.bh, align 8, !tbaa !454 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.eu, %i.ff
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i:  ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.v, %bb.u
  %.1.i.i52.i.i = phi ptr [ %i.fe, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.ey, %bb.u ], [ %i.ey, %bb.v ]
  store ptr %.1.i.i52.i.i, ptr %i.bi, align 8, !tbaa !455
  store i32 %i.eu, ptr %i.bh, align 8, !tbaa !454
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i
  %i.fg = xor i32 %i.ff, -1
  store i32 %i.fg, ptr %i.bh, align 8, !tbaa !454
  br label %.critedge

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i:   ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, %bb.r
  %i.fh = load i32, ptr %i.bj, align 4, !tbaa !456 ; 3 uses
  %i.fi = icmp ult i32 %i.fh, %i.cs
  %.pre294.a = load ptr, ptr %i.bi, align 8, !tbaa !455 ; 2 uses
  br i1 %i.fi, label %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit

_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i
  %i.fj = sub nuw nsw i32 %i.cs, %i.fh
  %i.fk = zext nneg i32 %i.fh to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.pre294.a, i64 %i.fk
  %i.fm = zext nneg i32 %i.fj to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.fl, i8 0, i64 %i.fm, i1 false)
  %.pre293.a = load ptr, ptr %i.bi, align 8, !tbaa !460
  br label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit

_ZN11hb_vector_tIbLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.fn = phi ptr [ %.pre294.a, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i ], [ %.pre293.a, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ]
  store i32 %i.cs, ptr %i.bj, align 4, !tbaa !456
  call void @llvm.memset.p0.i64(ptr align 1 %i.fn, i8 1, i64 range(i64 0, 65536) %i.ea, i1 false), !tbaa !346
  %i.fo = load ptr, ptr %i.bf, align 8, !tbaa !996
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.fp, align 4, !tbaa !462
  %i.fq = load i16, ptr %i.cp, align 1, !tbaa !276
  %i.fr = call noundef i16 @llvm.bswap.i16(i16 %i.fq)
  %i.fs = zext i16 %i.fr to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.fs
  br i1 %.not.i, label %_ZNK2OT7VarData16get_region_indexEj.exit, label %.critedge

_ZNK2OT7VarData16get_region_indexEj.exit:         ; preds = %_ZN11hb_vector_tIbLb0EE6resizeEi.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !442
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %indvars.iv
  %i.fu = load i16, ptr %i.ft, align 1, !tbaa !276
  %i.fv = call noundef i16 @llvm.bswap.i16(i16 %i.fu) ; 2 uses
  %i.fw = zext i16 %i.fv to i32
  %i.fx = load i32, ptr %i.bk, align 4, !tbaa !997
  %.not = icmp ugt i32 %i.fx, %i.fw
  br i1 %.not, label %bb.w, label %.critedge, !prof !156

bb.w:                                             ; preds = %_ZNK2OT7VarData16get_region_indexEj.exit
  %i.fy = load ptr, ptr %i.bl, align 8, !tbaa !998
  %i.fz = zext i16 %i.fv to i64
  %i.ga = getelementptr inbounds nuw [48 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12hb_hashmap_tIj6TripleLb0EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.ga) ; 0 uses
  %i.gc = load i8, ptr %i.bb, align 8, !tbaa !451, !range !121, !noundef !122
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.x, label %.critedge, !prof !97

bb.x:                                             ; preds = %bb.w
  %i.ge = load i32, ptr %i.bm, align 4, !tbaa !465 ; 3 uses
  %i.gf = load i32, ptr %4, align 8, !tbaa !466   ; 6 uses
  %.not.i111 = icmp slt i32 %i.ge, %i.gf
  br i1 %.not.i111, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gg = add i32 %i.ge, 1                        ; 2 uses
  %i.gh = icmp slt i32 %i.gf, 0
  br i1 %i.gh, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread202, label %bb.z, !prof !99

bb.z:                                             ; preds = %bb.y
  %.not.i133 = icmp ugt i32 %i.gg, %i.gf
  br i1 %.not.i133, label %.preheader.i135, label %..critedge_crit_edge.i, !prof !99

.preheader.i135:                                  ; preds = %bb.z, %.preheader.i135
  %.043.i136 = phi i32 [ %i.gk, %.preheader.i135 ], [ %i.gf, %bb.z ] ; 2 uses
  %i.gi = lshr i32 %.043.i136, 1
  %i.gj = add i32 %.043.i136, 8
  %i.gk = add i32 %i.gj, %i.gi                    ; 7 uses
  %i.gl = icmp ugt i32 %i.gg, %i.gk
  br i1 %i.gl, label %.preheader.i135, label %.thread.i137, !llvm.loop !20

.thread.i137:                                     ; preds = %.preheader.i135
  %i.gm = icmp ugt i32 %i.gk, 26843545
  br i1 %i.gm, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread205, label %bb.aa, !prof !99

bb.aa:                                            ; preds = %.thread.i137
  %.not49.i139 = icmp eq i32 %i.gf, 0
  %i.gn = load ptr, ptr %i.bn, align 8, !tbaa !467 ; 2 uses
  br i1 %.not49.i139, label %bb.ab, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i

bb.ab:                                            ; preds = %bb.aa
  %.not9.i.i.i146 = icmp eq ptr %i.gn, null
  br i1 %.not9.i.i.i146, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.go = zext nneg i32 %i.gk to i64
  %i.gp = mul nuw nsw i64 %i.go, 160
  %i.gq = call ptr @hb_malloc(i64 noundef %i.gp) #16 ; 4 uses
  %.not10.i.i.i147 = icmp eq ptr %i.gq, null
  br i1 %.not10.i.i.i147, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i, label %bb.ad, !prof !99

bb.ad:                                            ; preds = %bb.ac
  %i.gr = load i32, ptr %i.bm, align 4, !tbaa !465 ; 2 uses
  %.not.i.i.i.i148 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i.i148, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit, label %bb.ae, !prof !99

bb.ae:                                            ; preds = %bb.ad
  %i.gs = zext i32 %i.gr to i64
  %i.gt = mul nuw nsw i64 %i.gs, 160
  %i.gu = load ptr, ptr %i.bn, align 8, !tbaa !467
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr readonly align 1 %i.gu, i64 %i.gt, i1 false), !alias.scope !999
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i: ; preds = %bb.ab, %bb.aa
  %i.gv = phi ptr [ null, %bb.ab ], [ %i.gn, %bb.aa ]
  %i.gw = zext nneg i32 %i.gk to i64
  %i.gx = mul nuw nsw i64 %i.gw, 160
  %i.gy = call ptr @hb_realloc(ptr noundef %i.gv, i64 noundef %i.gx) #16 ; 2 uses
  %.not22.i140 = icmp eq ptr %i.gy, null
  br i1 %.not22.i140, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit, !prof !100

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i, %bb.ac
  %i.gz = load i32, ptr %4, align 8, !tbaa !466   ; 2 uses
  %.not23.i145 = icmp ugt i32 %i.gk, %i.gz
  br i1 %.not23.i145, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread205, label %..critedge_crit_edge.i, !prof !146

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread205: ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i, %.thread.i137
  %.sink.i143.ph.in = phi i32 [ %i.gf, %.thread.i137 ], [ %i.gz, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i ]
  %.sink.i143.ph = xor i32 %.sink.i143.ph.in, -1
  store i32 %.sink.i143.ph, ptr %4, align 8, !tbaa !466
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread202

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit: ; preds = %bb.ad, %bb.ae, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i
  %.1.i.i42.i141 = phi ptr [ %i.gy, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i ], [ %i.gq, %bb.ae ], [ %i.gq, %bb.ad ]
  store ptr %.1.i.i42.i141, ptr %i.bn, align 8, !tbaa !467
  store i32 %i.gk, ptr %4, align 8, !tbaa !466
  br label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i, %bb.z, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit
  %.pre.i = load i32, ptr %i.bm, align 4, !tbaa !465
  br label %.critedge.i

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread202: ; preds = %bb.y, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb.exit.thread205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(160) @_hb_NullPool, i64 160, i1 false)
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.x
  %i.ha = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.ge, %bb.x ] ; 2 uses
  %i.hb = load ptr, ptr %i.bn, align 8, !tbaa !467
  %i.hc = add i32 %i.ha, 1
  store i32 %i.hc, ptr %i.bm, align 4, !tbaa !465
  %i.hd = zext i32 %i.ha to i64
  %i.he = getelementptr inbounds nuw [160 x i8], ptr %i.hb, i64 %i.hd ; 29 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store atomic i32 1, ptr %i.he monotonic, align 4
  store atomic i8 1, ptr %i.hf monotonic, align 4
  store atomic ptr null, ptr %i.hg monotonic, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i8 1, ptr %i.hh, align 8, !tbaa !451
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 18 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.hi, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.hj, i8 0, i64 120, i1 false)
  %i.hk = load i8, ptr %i.bb, align 8, !range !121
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.af, label %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit, !prof !97

bb.af:                                            ; preds = %.critedge.i
  %i.hm = load i16, ptr %i.bc, align 2, !tbaa !468
  store i16 %i.hm, ptr %i.hi, align 2, !tbaa !468
  store i16 0, ptr %i.bc, align 2, !tbaa !468
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  %i.ho = load i32, ptr %i.bo, align 4, !tbaa !101
  store i32 %i.ho, ptr %i.hn, align 4, !tbaa !101
  store i32 0, ptr %i.bo, align 4, !tbaa !101
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 24 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !101
  %i.hr = load i32, ptr %i.bp, align 8, !tbaa !101
  store i32 %i.hr, ptr %i.hp, align 8, !tbaa !101
  store i32 %i.hq, ptr %i.bp, align 8, !tbaa !101
  %i.hs = getelementptr inbounds nuw i8, ptr %i.he, i64 28 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !101
  %i.hu = load i32, ptr %i.bq, align 4, !tbaa !101
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !101
  store i32 %i.ht, ptr %i.bq, align 4, !tbaa !101
  %i.hv = getelementptr inbounds nuw i8, ptr %i.he, i64 32 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !101
  %i.hx = load i32, ptr %i.br, align 8, !tbaa !101
  store i32 %i.hx, ptr %i.hv, align 8, !tbaa !101
  store i32 %i.hw, ptr %i.br, align 8, !tbaa !101
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v8i64
!800 = !{!95, !48, i64 348}
!801 = !{!95, !48, i64 356}
!802 = !{!750, !749}
!803 = !{!185, !184, i64 8}
!804 = !{!"branch_weights", !"expected", i32 1073741824, i32 1073741824}
!805 = distinct !{!805, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!806 = distinct !{!806, !805, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!807 = distinct !{!807, !805, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!808 = !{!807, !806}
!809 = !{i64 0, i64 4, !148, i64 4, i64 4, !101, i64 8, i64 4, !101}
!810 = distinct !{!810, !98}
!811 = distinct !{!811, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!812 = distinct !{!812, !811, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!813 = distinct !{!813, !811, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!814 = !{!813, !812}
!815 = distinct !{!815, !157}
!816 = distinct !{!816, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!817 = distinct !{!817, !816, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!818 = distinct !{!818, !816, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!819 = !{!818, !817}
!820 = distinct !{!820, !157}
!821 = distinct !{!821, !157}
!822 = distinct !{!822, !157}
!823 = distinct !{!823, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!824 = distinct !{!824, !823, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!825 = distinct !{!825, !823, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!826 = !{!825, !824}
!827 = distinct !{!827, !157}
!828 = distinct !{!828, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!829 = distinct !{!829, !828, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!830 = distinct !{!830, !828, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!831 = distinct !{!831, !157}
!832 = distinct !{!832, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!833 = distinct !{!833, !832, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!834 = distinct !{!834, !832, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!835 = distinct !{!835, !98, !280}
!836 = distinct !{!836, i1 true, !"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS6_16cff2_subset_planES0_IiEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_"}
!837 = distinct !{!837, !836, !"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS6_16cff2_subset_planES0_IiEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_: argument 0"}
!838 = distinct !{!838, i1 true, !"_ZN24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS0_16cff2_subset_planE10hb_array_tIiEE3$_0RK3$_8EclIS7_IKN3CFF23cff2_font_dict_values_tEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISK_S9_SC_LDnEESK_"}
!839 = distinct !{!839, !838, !"_ZN24hb_filter_iter_factory_tIZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS0_16cff2_subset_planE10hb_array_tIiEE3$_0RK3$_8EclIS7_IKN3CFF23cff2_font_dict_values_tEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISK_S9_SC_LDnEESK_: argument 0"}
!840 = distinct !{!840, !98}
!841 = distinct !{!841, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!842 = distinct !{!842, !841, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!843 = distinct !{!843, !841, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!844 = distinct !{!844, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!845 = distinct !{!845, !844, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!846 = distinct !{!846, !844, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!847 = distinct !{!847, !98}
!848 = distinct !{!848, !98}
!849 = distinct !{!849, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!850 = distinct !{!850, !849, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!851 = distinct !{!851, !849, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!852 = distinct !{!852, !98}
!853 = distinct !{!853, !157}
!854 = distinct !{!854, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!855 = distinct !{!855, !854, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!856 = distinct !{!856, !854, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!857 = !{!830, !829}
!858 = !{!834, !833}
!859 = !{!216, !214, i64 72}
!860 = !{!839, !837}
!861 = !{!843, !842}
!862 = !{!846, !845}
!863 = !{!851, !850}
!864 = !{!95, !48, i64 20}
!865 = !{!53, !48, i64 20}
!866 = !{!"branch_weights", !"expected", i32 2146162781, i32 1320867}
!867 = !{!856, !855}
!868 = distinct !{!868, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!869 = distinct !{!869, !868, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!870 = distinct !{!870, !868, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!871 = distinct !{!871, !98, !288, !289}
!872 = distinct !{!872, !98, !288}
!873 = distinct !{!873, !98}
!874 = distinct !{!874, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!875 = distinct !{!875, !874, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!876 = distinct !{!876, !874, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!877 = !{!870, !869}
!878 = !{!286, !48, i64 52}
!879 = !{!88, !48, i64 20}
!880 = !{!286, !68, i64 56}
!881 = !{!876, !875}
!882 = distinct !{!882, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!883 = distinct !{!883, !882, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!884 = distinct !{!884, !882, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!885 = distinct !{!885, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!886 = distinct !{!886, !885, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!887 = distinct !{!887, !885, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!888 = !{!91, !54, i64 40}
!889 = !{!"_ZTS21hb_dispatch_context_tI19hb_subset_context_tbLj0EE", !48, i64 0}
!890 = !{!"_ZTS19hb_subset_context_t", !889, i64 0, !182, i64 8, !301, i64 16, !211, i64 24, !48, i64 32}
!891 = !{!890, !301, i64 16}
!892 = !{!890, !211, i64 24}
!893 = !{!168, !129, i64 24}
!894 = !{!884, !883}
!895 = !{!887, !886}
!896 = !{!337, !303, i64 80}
!897 = distinct !{!897, !98}
!898 = distinct !{!898, !98}
!899 = distinct !{!899, !98}
!900 = distinct !{!900, !98}
!901 = distinct !{!901, !98}
!902 = !{!201, !193, i64 136}
!903 = !{!337, !54, i64 92}
!904 = !{i64 0, i64 4, !101, i64 4, i64 4, !101, i64 8, i64 4, !101, i64 12, i64 4, !101, i64 16, i64 4, !101, i64 20, i64 4, !101, i64 24, i64 4, !101, i64 28, i64 4, !101, i64 32, i64 4, !101, i64 36, i64 4, !101, i64 40, i64 1, !346}
!905 = !{!384, !384, i64 0}
!906 = !{!95, !71, i64 136}
!907 = !{!57, !48, i64 0}
!908 = !{!57, !48, i64 4}
!909 = !{!57, !56, i64 8}
!910 = !{!"_ZTSZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_E3$_0", !89, i64 0, !68, i64 8, !68, i64 16, !89, i64 24, !111, i64 32}
!911 = !{!910, !89, i64 0}
!912 = !{!910, !68, i64 8}
!913 = !{i64 4}
!914 = !{!910, !68, i64 16}
!915 = !{!910, !89, i64 24}
!916 = !{!910, !111, i64 32}
!917 = distinct !{!917, !98}
!918 = distinct !{!918, !98}
!919 = distinct !{!919, !98}
!920 = distinct !{!920, i1 true, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv"}
!921 = distinct !{!921, !920, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv: argument 0"}
!922 = distinct !{null}
!923 = distinct !{!923, !98}
!924 = !{!"p1 _ZTSN20hb_user_data_array_t19hb_user_data_item_tE", !55, i64 0}
!925 = !{!"_ZTS11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE", !48, i64 0, !48, i64 4, !924, i64 8}
!926 = !{!"_ZTS17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE", !925, i64 0}
!927 = !{!926, !48, i64 4}
!928 = !{!925, !48, i64 0}
!929 = !{!925, !924, i64 8}
!930 = !{!55, !55, i64 0}
!931 = !{!925, !48, i64 4}
!932 = !{!921}
!933 = distinct !{!933, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!934 = distinct !{!934, !933, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!935 = distinct !{!935, !933, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!936 = !{!935, !934}
!937 = distinct !{!937, !98}
!938 = distinct !{!938, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!939 = distinct !{!939, !938, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!940 = distinct !{!940, !938, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!941 = !{!940, !939}
!942 = distinct !{!942, !98}
!943 = distinct !{!943, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!944 = distinct !{!944, !943, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!945 = distinct !{!945, !943, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!946 = distinct !{!946, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!947 = distinct !{!947, !946, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!948 = distinct !{!948, !946, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!949 = !{!945, !944}
!950 = !{!948, !947}
!951 = distinct !{!951, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!952 = distinct !{!952, !951, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!953 = distinct !{!953, !951, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!954 = !{!953, !952}
!955 = distinct !{!955, !98}
!956 = distinct !{!956, !98}
!957 = distinct !{!957, !98}
!958 = !{!"_ZTSZL10fasthash64PKvmmE15packed_uint64_t", !435, i64 0}
!959 = !{!958, !435, i64 0}
!960 = distinct !{!960, !98}
!961 = distinct !{!961, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!962 = distinct !{!962, !961, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!963 = distinct !{!963, !961, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!964 = !{!963, !962}
!965 = distinct !{!965, !98}
!966 = distinct !{!966, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!967 = distinct !{!967, !966, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!968 = distinct !{!968, !966, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!969 = !{!968, !967}
!970 = distinct !{!970, !98}
!971 = distinct !{!971, !98}
!972 = distinct !{!972, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!973 = distinct !{!973, !972, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!974 = distinct !{!974, !972, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!975 = distinct !{!975, !98}
!976 = distinct !{!976, !98}
!977 = !{!974, !973}
!978 = distinct !{!978, !98}
!979 = distinct !{!979, !98}
!980 = distinct !{!980, !98}
!981 = distinct !{!981, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!982 = distinct !{!982, !981, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!983 = distinct !{!983, !981, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!984 = distinct !{!984, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!985 = distinct !{!985, !984, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!986 = distinct !{!986, !984, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!987 = distinct !{!987, !98}
!988 = distinct !{!988, !98, !288, !289}
!989 = distinct !{!989, !157}
!990 = distinct !{!990, !98, !288}
!991 = distinct !{!991, !98}
!992 = !{!88, !75, i64 8}
!993 = !{!447, !54, i64 16}
!994 = !{!450, !54, i64 16}
!995 = !{!983, !982}
!996 = !{!459, !212, i64 72}
!997 = !{!88, !48, i64 116}
!998 = !{!88, !77, i64 120}
!999 = !{!986, !985}
!1000 = !{!"branch_weights", !"expected", i32 2414338, i32 2145069310}
!1001 = !{!459, !48, i64 68}
!1002 = !{!"branch_weights", !"expected", i32 1117922, i32 2146365726}
!1003 = distinct !{!1003, !98}
!1004 = distinct !{!1004, !98}
!1005 = !{!480, !48, i64 40}
!1006 = distinct !{!1006, !98}
!1007 = !{!"_ZTSN3CFF13interpreter_tINS_27cff2_priv_dict_interp_env_tEEE", !384, i64 0}
!1008 = !{!1007, !384, i64 0}
!1009 = distinct !{!1009, !98}
!1010 = distinct !{!1010, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1011 = distinct !{!1011, !1010, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1012 = distinct !{!1012, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1013 = distinct !{!1013, !1012, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1014 = distinct !{!1014, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1015 = distinct !{!1015, !1014, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1016 = distinct !{!1016, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv"}
!1017 = distinct !{!1017, !1016, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv: argument 0"}
!1018 = distinct !{!1018, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1019 = distinct !{!1019, !1018, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1020 = distinct !{!1020, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1021 = distinct !{!1021, !1020, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1022 = distinct !{!1022, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1023 = distinct !{!1023, !1022, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1024 = distinct !{!1024, i1 true, !"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv"}
!1025 = distinct !{!1025, !1024, !"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv: argument 0"}
!1026 = distinct !{!1026, i1 true, !"_ZNK13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjS3_EvEL24hb_function_sortedness_t0ELSC_0EE8__item__Ev"}
!1027 = distinct !{!1027, !1026, !"_ZNK13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjS3_EvEL24hb_function_sortedness_t0ELSC_0EE8__item__Ev: argument 0"}
!1028 = distinct !{!1028, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv"}
!1029 = distinct !{!1029, !1028, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv: argument 0"}
!1030 = distinct !{!1030, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1031 = distinct !{!1031, !1030, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1032 = distinct !{!1032, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1033 = distinct !{!1033, !1032, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1034 = distinct !{!1034, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1035 = distinct !{!1035, !1034, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1036 = distinct !{!1036, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv"}
!1037 = distinct !{!1037, !1036, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv: argument 0"}
!1038 = distinct !{!1038, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1039 = distinct !{!1039, !1038, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1040 = distinct !{!1040, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1041 = distinct !{!1041, !1040, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1042 = distinct !{!1042, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1043 = distinct !{!1043, !1042, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1044 = distinct !{!1044, i1 true, !"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv"}
!1045 = distinct !{!1045, !1044, !"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv: argument 0"}
!1046 = distinct !{!1046, i1 true, !"_ZNK13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjS3_EvEL24hb_function_sortedness_t0ELSC_0EE8__item__Ev"}
!1047 = distinct !{!1047, !1046, !"_ZNK13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjS3_EvEL24hb_function_sortedness_t0ELSC_0EE8__item__Ev: argument 0"}
!1048 = distinct !{!1048, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv"}
!1049 = distinct !{!1049, !1048, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv: argument 0"}
!1050 = distinct !{!1050, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1051 = distinct !{!1051, !1050, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1052 = distinct !{!1052, !1050, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!1053 = distinct !{!1053, !280}
!1054 = distinct !{!1054, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1055 = distinct !{!1055, !1054, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1056 = distinct !{!1056, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1057 = distinct !{!1057, !1056, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1058 = distinct !{!1058, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1059 = distinct !{!1059, !1058, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1060 = distinct !{!1060, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv"}
!1061 = distinct !{!1061, !1060, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv: argument 0"}
!1062 = distinct !{!1062, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1063 = distinct !{!1063, !1062, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1064 = distinct !{!1064, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1065 = distinct !{!1065, !1064, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1066 = distinct !{!1066, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1067 = distinct !{!1067, !1066, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1068 = distinct !{!1068, i1 true, !"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv"}
!1069 = distinct !{!1069, !1068, !"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv: argument 0"}
!1070 = distinct !{!1070, i1 true, !"_ZNK13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjS3_EvEL24hb_function_sortedness_t0ELSC_0EE8__item__Ev"}
!1071 = distinct !{!1071, !1070, !"_ZNK13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjS3_EvEL24hb_function_sortedness_t0ELSC_0EE8__item__Ev: argument 0"}
!1072 = distinct !{!1072, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv"}
!1073 = distinct !{!1073, !1072, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv: argument 0"}
!1074 = distinct !{!1074, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1075 = distinct !{!1075, !1074, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1076 = distinct !{!1076, !1074, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!1077 = distinct !{!1077, !280}
!1078 = distinct !{!1078, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1079 = distinct !{!1079, !1078, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1080 = distinct !{!1080, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1081 = distinct !{!1081, !1080, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1082 = distinct !{!1082, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1083 = distinct !{!1083, !1082, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1084 = distinct !{!1084, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv"}
!1085 = distinct !{!1085, !1084, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv: argument 0"}
!1086 = distinct !{!1086, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1087 = distinct !{!1087, !1086, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1088 = distinct !{!1088, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1089 = distinct !{!1089, !1088, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1090 = distinct !{!1090, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1091 = distinct !{!1091, !1090, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1092 = distinct !{!1092, i1 true, !"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv"}
!1093 = distinct !{!1093, !1092, !"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv: argument 0"}
!1094 = distinct !{!1094, i1 true, !"_ZNK13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjS3_EvEL24hb_function_sortedness_t0ELSC_0EE8__item__Ev"}
!1095 = distinct !{!1095, !1094, !"_ZNK13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjS3_EvEL24hb_function_sortedness_t0ELSC_0EE8__item__Ev: argument 0"}
!1096 = distinct !{!1096, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv"}
!1097 = distinct !{!1097, !1096, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv: argument 0"}
!1098 = distinct !{!1098, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1099 = distinct !{!1099, !1098, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1100 = distinct !{!1100, !1098, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!1101 = distinct !{!1101, !98}
!1102 = !{!1015, !1013, !1011}
!1103 = !{!1023, !1021, !1019, !1017}
!1104 = !{!1027, !1025}
!1105 = !{!1029}
!1106 = !{!1035, !1033, !1031}
!1107 = !{ptr @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE13set_with_hashIS3_jEEbOT_jOT0_b}
!1108 = !{!1043, !1041, !1039, !1037}
!1109 = !{!1047, !1045}
!1110 = !{!1049}
!1111 = !{!1052, !1051}
!1112 = !{!1059, !1057, !1055}
!1113 = !{!1067, !1065, !1063, !1061}
!1114 = !{!1071, !1069}
!1115 = !{!1073}
!1116 = !{!1076, !1075}
!1117 = !{!1083, !1081, !1079}
!1118 = !{!1091, !1089, !1087, !1085}
!1119 = !{!1095, !1093}
!1120 = !{!1097}
!1121 = !{!1100, !1099}
!1122 = !{!88, !77, i64 24}
!1123 = distinct !{!1123, !98}
!1124 = !{!393, !391, i64 0}
!1125 = distinct !{!1125, !98}
!1126 = distinct !{!1126, !98}
!1127 = distinct !{!1127, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1128 = distinct !{!1128, !1127, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1129 = distinct !{!1129, !1127, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!1130 = distinct !{!1130, !98}
!1131 = !{!1129, !1128}
!1132 = !{!405, !48, i64 76}
!1133 = !{!405, !403, i64 80}
!1134 = distinct !{!1134, !98}
!1135 = distinct !{!1135, i1 true, !"_ZNK4$_10clIRK12hb_hashmap_tIj6TripleLb0EEEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS6_"}
!1136 = distinct !{!1136, !1135, !"_ZNK4$_10clIRK12hb_hashmap_tIj6TripleLb0EEEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS6_: argument 0"}
!1137 = distinct !{!1137, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv"}
!1138 = distinct !{!1138, !1137, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4iterEv: argument 0"}
!1139 = distinct !{!1139, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1140 = distinct !{!1140, !1139, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1141 = distinct !{!1141, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1142 = distinct !{!1142, !1141, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1143 = distinct !{!1143, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1144 = distinct !{!1144, !1143, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1145 = distinct !{!1145, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv"}
!1146 = distinct !{!1146, !1145, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv: argument 0:pre.rot"}
!1147 = distinct !{!1147, !98}
!1148 = distinct !{!1148, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv"}
!1149 = distinct !{!1149, !1148, !"_ZNK12hb_hashmap_tIj6TripleLb0EE6item_t8get_pairEv: argument 0:h.rot"}
!1150 = !{!1144, !1142, !1140, !1138, !1136}
!1151 = !{!1146}
!1152 = !{!"_ZTS9hb_pair_tIj6TripleE", !48, i64 0, !440, i64 8}
!1153 = !{!1152, !48, i64 0}
!1154 = !{!1149}
!1155 = !{!450, !449, i64 40}
!1156 = distinct !{!1156, !98}
!1157 = distinct !{!1157, !98}
!1158 = !{!199, !199, i64 0}
!1159 = distinct !{!1159, !98}
!1160 = distinct !{!1160, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1161 = distinct !{!1161, !1160, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1162 = distinct !{!1162, !1160, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!1163 = !{!1162, !1161}
!1164 = distinct !{!1164, !98}
!1165 = distinct !{!1165, !98}
!1166 = distinct !{!1166, !98}
!1167 = distinct !{!1167, !98}
!1168 = distinct !{!1168, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1169 = distinct !{!1169, !1168, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1170 = distinct !{!1170, !1168, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!1171 = !{!1170, !1169}
!1172 = distinct !{!1172, !98, !288, !289}
!1173 = distinct !{!1173, !98, !289, !288}
!1174 = distinct !{!1174, !98}
!1175 = distinct !{!1175, !98}
!1176 = distinct !{!1176, !98}
!1177 = distinct !{!1177, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1178 = distinct !{!1178, !1177, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1179 = distinct !{!1179, !1177, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!1180 = !{!1179, !1178}
!1181 = distinct !{!1181, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4keysEv"}
!1182 = distinct !{!1182, !1181, !"_ZNK12hb_hashmap_tIj6TripleLb0EE4keysEv: argument 0"}
!1183 = distinct !{!1183, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE8keys_refEv"}
!1184 = distinct !{!1184, !1183, !"_ZNK12hb_hashmap_tIj6TripleLb0EE8keys_refEv: argument 0"}
!1185 = distinct !{!1185, i1 true, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv"}
!1186 = distinct !{!1186, !1185, !"_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv: argument 0"}
!1187 = distinct !{!1187, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_"}
!1188 = distinct !{!1188, !1187, !"_ZorI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEE24hb_filter_iter_factory_tIMS4_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISE_Efp_EEEOSE_OSK_: argument 0"}
!1189 = distinct !{!1189, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_"}
!1190 = distinct !{!1190, !1189, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS3_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSE_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISE_S5_S8_LDnEESE_: argument 0"}
!1191 = distinct !{!1191, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1192 = distinct !{!1192, !1191, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1193 = distinct !{!1193, !1191, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!1194 = distinct !{!1194, !98}
!1195 = distinct !{!1195, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1196 = distinct !{!1196, !1195, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1197 = distinct !{!1197, !1195, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!1198 = distinct !{!1198, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!1199 = distinct !{!1199, !1198, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!1200 = distinct !{!1200, !1198, !"_ZL9hb_memcpyPvPKvm: argument 0"}
end_hunk_1
