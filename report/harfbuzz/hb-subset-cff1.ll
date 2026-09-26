Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff1?download=true
inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN2OT16cff1_subset_plan21collect_sids_in_dictsERKNS_4cff120accelerator_subset_tE:bb.a
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !116
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !116 ; 2 uses
  %.not15.8 = icmp eq i32 %i.ar, -1
  br i1 %.not15.8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = tail call noundef i32 @_ZN11remap_sid_t3addEj(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.as, ptr %i.at, align 8, !tbaa !116
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.av = load i32, ptr %i.au, align 4, !tbaa !116 ; 2 uses
  %.not15.9 = icmp eq i32 %i.av, -1
  br i1 %.not15.9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = tail call noundef i32 @_ZN11remap_sid_t3addEj(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 500
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !116
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !116 ; 2 uses
  %.not15.10 = icmp eq i32 %i.az, -1
  br i1 %.not15.10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = tail call noundef i32 @_ZN11remap_sid_t3addEj(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !116
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !138
  %.not = icmp eq ptr %i.bd, @_hb_NullPool
  br i1 %.not, label %.loopexit, label %.preheader

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !114
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.be = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.bf = phi i32 [ %i.cn, %.lr.ph.splitthread-pre-split ], [ %i.e, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 6 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split
  %i.bg = trunc nuw i64 %indvars.iv to i32
  %i.bh = mul i32 %i.bg, 506952113
  %i.bi = and i32 %i.bh, 1073741823
  %i.bj = load i32, ptr %i.g, align 8, !tbaa !115
  %i.bk = urem i32 %i.bi, %i.bj                   ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = and i32 %i.bo, 2
  %.not15.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not15.i.i.i.i, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x
  %i.bq = load i32, ptr %i.h, align 4
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !116
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp eq i64 %indvars.iv, %i.bs
  br i1 %i.bt, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = load i32, ptr %i.cb, align 4, !tbaa !116
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp eq i64 %indvars.iv, %i.bv
  br i1 %i.bw, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.y
  %.01016.i20.i.i.i = phi i32 [ %i.bz, %bb.y ], [ %i.bk, %.lr.ph.i.i.i.i ]
  %.017.i19.i.i.i = phi i32 [ %i.bx, %bb.y ], [ 0, %.lr.ph.i.i.i.i ]
  %i.bx = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.by = add i32 %i.bx, %.01016.i20.i.i.i
  %i.bz = and i32 %i.by, %i.bq                    ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = and i32 %i.cd, 2
  %.not.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.y, !llvm.loop !0

_ZNK14hb_inc_bimap_t3hasEj.exit:                  ; preds = %bb.y, %.lr.ph.i.i.i.i
  %.lcssa17.i.i.i = phi i32 [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.cd, %bb.y ]
  %i.cf = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.cf, label %bb.z, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

bb.z:                                             ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.cg = load i32, ptr %i.i, align 4, !tbaa !292
  %i.ch = zext i32 %i.cg to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.ch
  %i.ci = load ptr, ptr %i.j, align 8
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.ci, i64 %indvars.iv
  %.0.i = select i1 %.not.i, ptr %i.cj, ptr @_hb_NullPool, !prof !82
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !295
  %i.cm = tail call noundef i32 @_ZN11remap_sid_t3addEj(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef %i.cl) ; 0 uses
  %.pre = load i32, ptr %i.d, align 4, !tbaa !198
  br label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

_ZNK14hb_inc_bimap_t3hasEj.exit.thread:           ; preds = %.lr.ph.i.i.i, %bb.x, %.lr.ph.split, %_ZNK14hb_inc_bimap_t3hasEj.exit, %bb.z
  %i.cn = phi i32 [ %.pre, %bb.z ], [ %i.bf, %bb.x ], [ %i.bf, %.lr.ph.split ], [ %i.bf, %_ZNK14hb_inc_bimap_t3hasEj.exit ], [ %i.bf, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = icmp samesign ult i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %.lr.ph.splitthread-pre-split, label %.loopexit, !llvm.loop !595

.loopexit:                                        ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, %.lr.ph, %.preheader, %bb.w
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT16cff1_subset_plan19plan_subset_charsetERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.CFF::code_pair_t", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 5 uses
  store i32 0, ptr %i.b, align 4, !tbaa !172
  %i.c = load i32, ptr %i.a, align 8, !tbaa !297
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.e, align 8, !tbaa !296
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 -4294967296, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !253  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.i = load i32, ptr %i.h, align 4, !tbaa !116
  %.sroa.speculated112 = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.i)
  %i.j = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %.sroa.speculated112, i1 noundef zeroext false) ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d, !prof !82

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.k, align 8, !tbaa !296
  br label %bb.as

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !318  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE23create_glyph_to_sid_mapEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 2 uses
  %.not72 = icmp eq ptr %i.o, null
  br i1 %.not72, label %bb.g, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE23create_glyph_to_sid_mapEv.exit

bb.g:                                             ; preds = %bb.f
  %.pr = load ptr, ptr %i.l, align 8, !tbaa !318
  %.not73 = icmp eq ptr %.pr, null
  br i1 %.not73, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE23create_glyph_to_sid_mapEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !319
  %.not.i78 = icmp eq ptr %i.q, @_hb_NullPool
  br i1 %.not.i78, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE23create_glyph_to_sid_mapEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @hb_malloc(i64 noundef 16) #10 ; 7 uses
  %.not7.i = icmp eq ptr %i.r, null
  br i1 %.not7.i, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE23create_glyph_to_sid_mapEv.exit, label %bb.j, !prof !86

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef 1, i1 noundef zeroext false)
  br i1 %i.s, label %..critedge_crit_edge.i.i, label %bb.k, !prof !82

..critedge_crit_edge.i.i:                         ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %.pre.i.i = load i32, ptr %i.t, align 4, !tbaa !172 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.w = add i32 %.pre.i.i, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !172
  %i.x = zext i32 %.pre.i.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  store i64 4294967296, ptr %i.y, align 4, !tbaa !116
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.z, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit.i

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit.i: ; preds = %bb.k, %..critedge_crit_edge.i.i
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !319
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !320
  tail call void @_ZNK3CFF7Charset24collect_glyph_to_sid_mapEP11hb_vector_tINS_11code_pair_tELb0EEj(ptr noundef nonnull align 1 dereferenceable(5) %i.aa, ptr noundef nonnull %i.r, i32 noundef %i.ac)
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE23create_glyph_to_sid_mapEv.exit

_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE23create_glyph_to_sid_mapEv.exit: ; preds = %bb.e, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit.i, %bb.i, %bb.h, %bb.g, %bb.f
  %.066 = phi ptr [ %i.o, %bb.f ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.i ], [ %i.r, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit.i ], [ null, %bb.e ] ; 7 uses
  %.065 = phi i1 [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.g ], [ true, %bb.i ], [ true, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit.i ], [ false, %bb.e ]
  %i.ad = getelementptr i8, ptr %2, i64 196
  %.val = load i32, ptr %i.ad, align 4, !tbaa !257 ; 3 uses
  %i.ae = getelementptr i8, ptr %2, i64 200
  %.val77 = load ptr, ptr %i.ae, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val, 0              ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %.val77, !prof !86
  %i.af = load i32, ptr %spec.select.i.i.i, align 4, !tbaa !259
  %i.ag = icmp ne i32 %i.af, 0                    ; 2 uses
  %brmerge = or i1 %.not.i.i.i, %i.ag
  %narrow = tail call i32 @llvm.usub.sat.i32(i32 %.val, i32 1)
  %.sroa.10.0.v = select i1 %i.ag, i32 %.val, i32 %narrow ; 2 uses
  %.sroa.10.0 = zext i32 %.sroa.10.0.v to i64
  %.sroa.088.0.idx = select i1 %brmerge, i64 0, i64 8, !prof !132
  %.sroa.088.0 = getelementptr inbounds nuw i8, ptr %.val77, i64 %.sroa.088.0.idx ; 2 uses
  %.not.i.i = icmp eq i32 %.sroa.10.0.v, 0
  %spec.select.i.i = select i1 %.not.i.i, ptr @_hb_NullPool, ptr %.sroa.088.0, !prof !86 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %spec.select.i.i, align 4, !tbaa !116
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !116
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !116
  %i.aj = icmp ne i32 %i.ai, -1                   ; 3 uses
  %i.ak = icmp ne ptr %.066, null                 ; 2 uses
  %or.cond = and i1 %i.ak, %i.aj
  br i1 %or.cond, label %.thread121, label %bb.l

.thread121:                                       ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE23create_glyph_to_sid_mapEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 509
  %i.am = load i8, ptr %i.al, align 1, !tbaa !201, !range !126, !noundef !127
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = xor i1 %i.an, true
  br label %bb.n

bb.l:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE23create_glyph_to_sid_mapEv.exit
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i32 noundef %i.g) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.as = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i32 noundef %i.g, i1 noundef zeroext true) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.thread121, %bb.m, %bb.l
  %i.at = phi i1 [ %i.ao, %.thread121 ], [ false, %bb.m ], [ false, %bb.l ]
  %i.au = icmp ugt i32 %i.g, 1
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 509
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.az = getelementptr inbounds nuw i8, ptr %.066, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bb = load i64, ptr @_hb_NullPool, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.o

._crit_edge:                                      ; preds = %bb.ag, %bb.n
  br i1 %.065, label %bb.ah, label %bb.al

bb.o:                                             ; preds = %.lr.ph, %bb.ag
  %.061131 = phi i32 [ 1, %.lr.ph ], [ %i.cr, %bb.ag ] ; 8 uses
  %.sroa.0.0130 = phi i32 [ %.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.0.1, %bb.ag ] ; 2 uses
  %.sroa.6.0129 = phi i32 [ %.sroa.6.0.copyload, %.lr.ph ], [ %.sroa.6.1, %bb.ag ] ; 2 uses
  %.067128 = phi i32 [ -2, %.lr.ph ], [ %.1, %bb.ag ]
  %.sroa.088.1127 = phi ptr [ %.sroa.088.0, %.lr.ph ], [ %.sroa.088.2, %bb.ag ] ; 3 uses
  %.sroa.10.1126 = phi i64 [ %.sroa.10.0, %.lr.ph ], [ %.sroa.10.2, %bb.ag ] ; 4 uses
  %i.bd = icmp eq i32 %.061131, %.sroa.0.0130
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.be = and i64 %.sroa.10.1126, 4294967295
  %.not.i.i80 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i80, label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit, label %bb.q, !prof !86

bb.q:                                             ; preds = %bb.p
  %i.bf = add i64 %.sroa.10.1126, 4294967295      ; 2 uses
  %.sroa.10.12.insert.insert107 = or i64 %i.bf, 4294967296
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.088.1127, i64 8 ; 2 uses
  %.pre132 = and i64 %i.bf, 4294967295
  %i.bh = icmp eq i64 %.pre132, 0
  %i.bi = select i1 %i.bh, ptr @_hb_NullPool, ptr %i.bg, !prof !86
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit: ; preds = %bb.p, %bb.q
  %.pre-phi = phi ptr [ @_hb_NullPool, %bb.p ], [ %i.bi, %bb.q ] ; 2 uses
  %.sroa.10.4 = phi i64 [ %.sroa.10.1126, %bb.p ], [ %.sroa.10.12.insert.insert107, %bb.q ]
  %.sroa.088.4 = phi ptr [ %.sroa.088.1127, %bb.p ], [ %i.bg, %bb.q ]
  %.sroa.0.0.copyload28 = load i32, ptr %.pre-phi, align 4, !tbaa !116
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 4
  %.sroa.6.0.copyload30 = load i32, ptr %.sroa.6.0..sroa_idx29, align 4, !tbaa !116
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit
  %.sroa.10.2 = phi i64 [ %.sroa.10.4, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.10.1126, %bb.o ]
  %.sroa.088.2 = phi ptr [ %.sroa.088.4, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.088.1127, %bb.o ]
  %.sroa.6.1 = phi i32 [ %.sroa.6.0.copyload30, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.6.0129, %bb.o ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload28, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.0.0130, %bb.o ] ; 2 uses
  %.060 = phi i32 [ %.sroa.6.0129, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.061131, %bb.o ] ; 7 uses
  %i.bj = load i8, ptr %i.av, align 1, !tbaa !201, !range !126, !noundef !127
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.ak, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !173
  %i.bm = zext i32 %.060 to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !176
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %i.aw, align 8, !tbaa !319 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bp, @_hb_NullPool
  br i1 %.not.i83, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = load i32, ptr %i.ax, align 8, !tbaa !320
  %i.br = call noundef i32 @_ZNK3CFF7Charset7get_sidEjjPNS_11code_pair_tE(ptr noundef nonnull align 1 dereferenceable(5) %i.bp, i32 noundef %.060, i32 noundef %i.bq, ptr noundef nonnull %3)
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.w:                                             ; preds = %bb.u
  %i.bs = load i32, ptr %i.ay, align 4, !tbaa !255
  switch i32 %i.bs, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.bt = icmp ult i32 %.060, 229
  %spec.select.i = select i1 %i.bt, i32 %.060, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.y:                                             ; preds = %bb.w
  %i.bu = call noundef i32 @_ZN2OT4cff129lookup_expert_charset_for_sidEj(i32 noundef %.060) #10
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.z:                                             ; preds = %bb.w
  %i.bv = call noundef i32 @_ZN2OT4cff136lookup_expert_subset_charset_for_sidEj(i32 noundef %.060) #10
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t
  %i.bw = phi i32 [ %i.bo, %bb.t ], [ %i.br, %bb.v ], [ 0, %bb.w ], [ %i.bv, %bb.z ], [ %spec.select.i, %bb.x ], [ %i.bu, %bb.y ] ; 2 uses
  br i1 %i.aj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit
  %i.bx = call noundef i32 @_ZN11remap_sid_t3addEj(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, i32 noundef %i.bw)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.r, %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit, %bb.aa
  %.0 = phi i32 [ %i.bw, %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit ], [ %i.bx, %bb.aa ], [ %.061131, %bb.r ] ; 4 uses
  %i.by = add i32 %.067128, 1
  %.not76 = icmp eq i32 %.0, %i.by
  br i1 %.not76, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load i32, ptr %i.b, align 4, !tbaa !172 ; 3 uses
  %i.ca = load i32, ptr %i.a, align 8, !tbaa !297
  %.not.i84 = icmp slt i32 %i.bz, %i.ca
  br i1 %.not.i84, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = add i32 %i.bz, 1
  %i.cc = call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.cb, i1 noundef zeroext false)
  br i1 %i.cc, label %..critedge_crit_edge.i, label %bb.ae, !prof !82

..critedge_crit_edge.i:                           ; preds = %bb.ad
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !172
  br label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.bb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.ac
  %i.cd = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.bz, %bb.ac ] ; 2 uses
  %i.ce = load ptr, ptr %i.bc, align 8, !tbaa !173
  %i.cf = add i32 %i.cd, 1
  store i32 %i.cf, ptr %i.b, align 4, !tbaa !172
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cg
  %.sroa.4.0.insert.ext = zext i32 %.061131 to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ch, align 4, !tbaa !116
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit: ; preds = %.critedge.i, %bb.ae, %bb.ab
  %i.ci = icmp eq i32 %.061131, %.060
  %or.cond3 = select i1 %i.ci, i1 %i.at, i1 false
  br i1 %or.cond3, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %i.cj = add i32 %.sroa.0.1, -1
  %i.ck = load ptr, ptr %i.az, align 8, !tbaa !173
  %i.cl = zext i32 %.061131 to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !116
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.cj, i32 %i.co) ; 2 uses
  %i.cp = sub i32 %.0, %.061131
  %i.cq = add i32 %i.cp, %.sroa.speculated
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %.162 = phi i32 [ %.sroa.speculated, %bb.af ], [ %.061131, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit ]
  %.1 = phi i32 [ %i.cq, %bb.af ], [ %.0, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit ]
  %i.cr = add i32 %.162, 1                        ; 2 uses
  %i.cs = icmp ult i32 %i.cr, %i.g
  br i1 %i.cs, label %bb.o, label %._crit_edge, !llvm.loop !596

bb.ah:                                            ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 3088
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !598
  %.not74 = icmp ne ptr %i.cu, null
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !318 ; 2 uses
  %.not75 = icmp eq ptr %.pre, null
  %or.cond148 = select i1 %.not74, i1 true, i1 %.not75
  br i1 %or.cond148, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.cw = cmpxchg weak ptr %i.cv, ptr null, ptr %.066 acq_rel monotonic, align 8
  %i.cx = extractvalue { ptr, i1 } %i.cw, 1
  br i1 %i.cx, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.cy = load i32, ptr %.066, align 8, !tbaa !297
  %i.cz = add i32 %i.cy, -1
  %spec.select.i.i.i86 = icmp ult i32 %i.cz, -2
  br i1 %spec.select.i.i.i86, label %bb.ak, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EED2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.da = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i32 0, ptr %i.da, align 4, !tbaa !172
  %i.db = getelementptr inbounds nuw i8, ptr %.066, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !173
  call void @hb_free(ptr noundef %i.dc) #10
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EED2Ev.exit

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @hb_free(ptr noundef nonnull %.066) #10
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EED2Ev.exit, %._crit_edge
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !172 ; 5 uses
  %.not15.i = icmp eq i32 %i.dd, 0
  br i1 %.not15.i, label %_ZN12range_list_t8completeEj.exit.thread, label %.lr.ph.i

_ZN12range_list_t8completeEj.exit.thread:         ; preds = %bb.al
  %i.de = load i32, ptr %i.f, align 8, !tbaa !253
  %i.df = shl i32 %i.de, 1
  %i.dg = add i32 %i.df, -2
  br label %.thread

.lr.ph.i:                                         ; preds = %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !173 ; 5 uses
  %i.dj = zext i32 %i.dd to i64                   ; 4 uses
  %xtraiter = and i64 %i.dj, 3                    ; 3 uses
  %i.dk = icmp ult i32 %i.dd, 4
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.dj, 4294967292
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %i.dj, %.lr.ph.i.new ], [ %i.ed, %bb.am ] ; 4 uses
  %.018.i = phi i32 [ %i.g, %.lr.ph.i.new ], [ %i.eg, %bb.am ]
  %.01317.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.ej, %bb.am ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.am ]
  %i.dl = getelementptr [8 x i8], ptr %i.di, i64 %indvars.iv.i
  %i.dm = getelementptr i8, ptr %i.dl, i64 -4     ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !175 ; 2 uses
  %i.do = xor i32 %i.dn, -1
  %i.dp = add i32 %.018.i, %i.do                  ; 2 uses
  %i.dq = or i32 %i.dp, %.01317.i
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !175
  %i.dr = getelementptr [8 x i8], ptr %i.di, i64 %indvars.iv.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 -12    ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !175 ; 2 uses
  %i.du = xor i32 %i.dt, -1
  %i.dv = add i32 %i.dn, %i.du                    ; 2 uses
  %i.dw = or i32 %i.dv, %i.dq
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !175
  %i.dx = getelementptr [8 x i8], ptr %i.di, i64 %indvars.iv.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 -20    ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !175 ; 2 uses
  %i.ea = xor i32 %i.dz, -1
  %i.eb = add i32 %i.dt, %i.ea                    ; 2 uses
  %i.ec = or i32 %i.eb, %i.dw
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !175
  %i.ed = add nsw i64 %indvars.iv.i, -4           ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !175 ; 3 uses
  %i.eh = xor i32 %i.eg, -1
  %i.ei = add i32 %i.dz, %i.eh                    ; 2 uses
  %i.ej = or i32 %i.ei, %i.ec                     ; 3 uses
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !175
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN12range_list_t8completeEj.exit.unr-lcssa, label %bb.am, !llvm.loop !4

_ZN12range_list_t8completeEj.exit.unr-lcssa:      ; preds = %bb.am
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN12range_list_t8completeEj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN12range_list_t8completeEj.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ %i.dj, %.lr.ph.i ], [ %i.ed, %_ZN12range_list_t8completeEj.exit.unr-lcssa ]
  %.018.i.epil.init = phi i32 [ %i.g, %.lr.ph.i ], [ %i.eg, %_ZN12range_list_t8completeEj.exit.unr-lcssa ]
  %.01317.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.ej, %_ZN12range_list_t8completeEj.exit.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %i.ek, %bb.an ]
  %.018.i.epil = phi i32 [ %.018.i.epil.init, %.epil.preheader ], [ %i.en, %bb.an ]
  %.01317.i.epil = phi i32 [ %.01317.i.epil.init, %.epil.preheader ], [ %i.eq, %bb.an ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.an ]
  %i.ek = add nsw i64 %indvars.iv.i.epil, -1      ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !175 ; 2 uses
  %i.eo = xor i32 %i.en, -1
  %i.ep = add i32 %.018.i.epil, %i.eo             ; 2 uses
  %i.eq = or i32 %i.ep, %.01317.i.epil            ; 2 uses
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !175
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN12range_list_t8completeEj.exit, label %bb.an, !llvm.loop !597

_ZN12range_list_t8completeEj.exit:                ; preds = %bb.an, %_ZN12range_list_t8completeEj.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.ej, %_ZN12range_list_t8completeEj.exit.unr-lcssa ], [ %i.eq, %bb.an ]
  %i.er = icmp ugt i32 %.lcssa, 255
  %i.es = load i32, ptr %i.f, align 8, !tbaa !253
  %i.et = shl i32 %i.es, 1
  %i.eu = add i32 %i.et, -2                       ; 2 uses
  br i1 %i.er, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %_ZN12range_list_t8completeEj.exit
  %i.ev = shl i32 %i.dd, 2
  %i.ew = icmp ult i32 %i.eu, %i.ev
  br i1 %i.ew, label %bb.ap, label %bb.ar

.thread:                                          ; preds = %_ZN12range_list_t8completeEj.exit, %_ZN12range_list_t8completeEj.exit.thread
  %i.ex = phi i32 [ %i.dg, %_ZN12range_list_t8completeEj.exit.thread ], [ %i.eu, %_ZN12range_list_t8completeEj.exit ]
  %i.ey = mul i32 %i.dd, 3
  %i.ez = icmp ult i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.thread, %bb.ao
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.fa, align 8, !tbaa !145
  br label %bb.as

bb.aq:                                            ; preds = %.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 1, ptr %i.fb, align 8, !tbaa !145
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 2, ptr %i.fc, align 8, !tbaa !145
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar, %bb.aq, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.b
  %.164 = phi i1 [ false, %bb.b ], [ %i.j, %bb.as ]
  ret i1 %.164
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26cff1_top_dict_values_mod_t12reassignSIDsERK11remap_sid_t(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_0
begin_hunk_1_@_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EED2Ev:bb.a
  %i.cl = add i32 %i.ck, -1
  %spec.select.i.i.i19 = icmp ult i32 %i.cl, -2
  br i1 %spec.select.i.i.i19, label %bb.m, label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EED2Ev.exit

bb.m:                                             ; preds = %_ZN3CFF13subr_remaps_tD2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.cm, align 4, !tbaa !372
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !373
  tail call void @hb_free(ptr noundef %i.co) #10
  br label %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EED2Ev.exit

_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EED2Ev.exit: ; preds = %_ZN3CFF13subr_remaps_tD2Ev.exit, %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !378
  %i.cr = add i32 %i.cq, -1
  %spec.select.i.i.i.i20 = icmp ult i32 %i.cr, -2
  br i1 %spec.select.i.i.i.i20, label %bb.n, label %_ZN3CFF15subr_closures_tD2Ev.exit

bb.n:                                             ; preds = %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !389 ; 3 uses
  %.not5.i.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not5.i.i.i.i, label %_ZN11hb_vector_tI8hb_set_tLb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !390
  %i.cw = zext i32 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [72 x i8], ptr %i.cv, i64 %i.cw
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i ], [ %i.cx, %.lr.ph.preheader.i.i.i.i ]
  %.046.i.i.i.i = phi i32 [ %i.cy, %.lr.ph.i.i.i.i ], [ %i.ct, %.lr.ph.preheader.i.i.i.i ]
  %i.cy = add i32 %.046.i.i.i.i, -1               ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -72 ; 2 uses
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.cz) #10
  %.not.i.i.i.i21 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i21, label %_ZN11hb_vector_tI8hb_set_tLb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZN11hb_vector_tI8hb_set_tLb0EE13shrink_vectorEj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.n
  store i32 0, ptr %i.cs, align 4, !tbaa !389
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !390
  tail call void @hb_free(ptr noundef %i.db) #10
  br label %_ZN3CFF15subr_closures_tD2Ev.exit

_ZN3CFF15subr_closures_tD2Ev.exit:                ; preds = %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EED2Ev.exit, %_ZN11hb_vector_tI8hb_set_tLb0EE13shrink_vectorEj.exit.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.dc) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT16cff1_subset_plan20plan_subset_encodingERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_vector_t.3, align 8      ; 10 uses
  %4 = alloca %"struct.CFF::code_pair_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !407  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 5 uses
  store i32 0, ptr %i.d, align 4, !tbaa !172
  %i.e = load i32, ptr %i.c, align 8, !tbaa !297
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !296
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 -4294967296, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !253
  %i.j = add i32 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 3 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !141
  %i.n = icmp ugt i32 %i.m, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit94

.lr.ph:                                           ; preds = %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit
  %i.o = getelementptr i8, ptr %2, i64 196
  %.val = load i32, ptr %i.o, align 4, !tbaa !257 ; 3 uses
  %.not.i.i.i = icmp eq i32 %.val, 0              ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 200
  %.val42 = load ptr, ptr %i.p, align 8, !tbaa !256 ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %.val42, !prof !86
  %i.q = load i32, ptr %spec.select.i.i.i, align 4, !tbaa !259
  %i.r = icmp ne i32 %i.q, 0                      ; 2 uses
  %brmerge = or i1 %.not.i.i.i, %i.r
  %narrow = tail call i32 @llvm.usub.sat.i32(i32 %.val, i32 1)
  %.sroa.10.0.v = select i1 %i.r, i32 %.val, i32 %narrow ; 2 uses
  %.sroa.10.0 = zext i32 %.sroa.10.0.v to i64
  %.not.i.i = icmp eq i32 %.sroa.10.0.v, 0
  %.sroa.063.0.idx = select i1 %brmerge, i64 0, i64 8, !prof !132
  %.sroa.063.0 = getelementptr inbounds nuw i8, ptr %.val42, i64 %.sroa.063.0.idx ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, ptr @_hb_NullPool, ptr %.sroa.063.0, !prof !86 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !116
  %.sroa.0.0.copyload = load i32, ptr %spec.select.i.i, align 4, !tbaa !116
  %i.s = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.not40 = icmp eq ptr %i.b, @_hb_NullPool
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv108 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next109, %.loopexit ] ; 4 uses
  %.sroa.0.0103 = phi i32 [ %.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.sroa.5.0102 = phi i32 [ %.sroa.5.0.copyload, %.lr.ph ], [ %.sroa.5.1, %.loopexit ] ; 2 uses
  %.037100 = phi i32 [ -2, %.lr.ph ], [ %i.ak, %.loopexit ]
  %.sroa.063.199 = phi ptr [ %.sroa.063.0, %.lr.ph ], [ %.sroa.063.2, %.loopexit ] ; 3 uses
  %.sroa.10.198 = phi i64 [ %.sroa.10.0, %.lr.ph ], [ %.sroa.10.2, %.loopexit ] ; 4 uses
  %i.ac = zext i32 %.sroa.0.0103 to i64
  %i.ad = icmp eq i64 %indvars.iv108, %i.ac
  %i.ae = trunc nuw i64 %indvars.iv108 to i32     ; 3 uses
  br i1 %i.ad, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = and i64 %.sroa.10.198, 4294967295
  %.not.i.i44 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i44, label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit, label %bb.e, !prof !86

bb.e:                                             ; preds = %bb.d
  %i.ag = add i64 %.sroa.10.198, 4294967295       ; 2 uses
  %.sroa.10.12.insert.insert82 = or i64 %i.ag, 4294967296
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.063.199, i64 8 ; 2 uses
  %.pre = and i64 %i.ag, 4294967295
  %i.ai = icmp eq i64 %.pre, 0
  %i.aj = select i1 %i.ai, ptr @_hb_NullPool, ptr %i.ah, !prof !86
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit: ; preds = %bb.d, %bb.e
  %.pre-phi = phi ptr [ @_hb_NullPool, %bb.d ], [ %i.aj, %bb.e ] ; 2 uses
  %.sroa.10.4 = phi i64 [ %.sroa.10.198, %bb.d ], [ %.sroa.10.12.insert.insert82, %bb.e ]
  %.sroa.063.4 = phi ptr [ %.sroa.063.199, %bb.d ], [ %i.ah, %bb.e ]
  %.sroa.0.0.copyload7 = load i32, ptr %.pre-phi, align 4, !tbaa !116
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 4
  %.sroa.5.0.copyload9 = load i32, ptr %.sroa.5.0..sroa_idx8, align 4, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit
  %.sroa.10.2 = phi i64 [ %.sroa.10.4, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.10.198, %bb.c ]
  %.sroa.063.2 = phi ptr [ %.sroa.063.4, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.063.199, %bb.c ]
  %.sroa.5.1 = phi i32 [ %.sroa.5.0.copyload9, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.5.0102, %bb.c ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload7, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.0.0103, %bb.c ]
  %.034 = phi i32 [ %.sroa.5.0102, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %i.ae, %bb.c ] ; 6 uses
  %i.ak = call noundef i32 @_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE13glyph_to_codeEjPNS2_11code_pair_tE(ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %.034, ptr noundef nonnull %4) ; 4 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = add nuw i32 %.037100, 1
  %.not = icmp eq i32 %i.ak, %i.am
  br i1 %.not, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i32, ptr %i.d, align 4, !tbaa !172 ; 3 uses
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !297
  %.not.i = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add i32 %i.an, 1
  %i.aq = call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.ap, i1 noundef zeroext false)
  br i1 %i.aq, label %..critedge_crit_edge.i, label %bb.j, !prof !82

..critedge_crit_edge.i:                           ; preds = %bb.i
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !172
  br label %.critedge.i

bb.j:                                             ; preds = %bb.i
  store i64 %i.s, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.h
  %i.ar = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.an, %bb.h ] ; 2 uses
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !173
  %i.at = add i32 %i.ar, 1
  store i32 %i.at, ptr %i.d, align 4, !tbaa !172
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  %.sroa.462.0.insert.shift = shl nuw i64 %indvars.iv108, 32
  %.sroa.061.0.insert.ext = zext i32 %i.ak to i64
  %.sroa.061.0.insert.insert = or disjoint i64 %.sroa.462.0.insert.shift, %.sroa.061.0.insert.ext
  store i64 %.sroa.061.0.insert.insert, ptr %i.av, align 4, !tbaa !116
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit: ; preds = %.critedge.i, %bb.j, %bb.g
  br i1 %.not40, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !319 ; 2 uses
  %.not.i47 = icmp eq ptr %i.aw, @_hb_NullPool
  br i1 %.not.i47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.v, align 8, !tbaa !320
  %i.ay = call noundef i32 @_ZNK3CFF7Charset7get_sidEjjPNS_11code_pair_tE(ptr noundef nonnull align 1 dereferenceable(5) %i.aw, i32 noundef %.034, i32 noundef %i.ax, ptr noundef nonnull %4)
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.m:                                             ; preds = %bb.k
  %i.az = load i32, ptr %i.w, align 4, !tbaa !255
  switch i32 %i.az, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp ult i32 %.034, 229
  %spec.select.i = select i1 %i.ba, i32 %.034, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = call noundef i32 @_ZN2OT4cff129lookup_expert_charset_for_sidEj(i32 noundef %.034) #10
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.p:                                             ; preds = %bb.m
  %i.bc = call noundef i32 @_ZN2OT4cff136lookup_expert_subset_charset_for_sidEj(i32 noundef %.034) #10
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.08.i = phi i32 [ %i.ay, %bb.l ], [ 0, %bb.m ], [ %i.bc, %bb.p ], [ %spec.select.i, %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  call void @_ZNK3CFF8Encoding20get_supplement_codesEjR11hb_vector_tIjLb0EE(ptr noundef nonnull align 1 dereferenceable(4) %i.b, i32 noundef %.08.i, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !184
  %.not104 = icmp eq i32 %i.bd, 0
  br i1 %.not104, label %.loopexit, label %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph

_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph:           ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit
  %.sroa.4.0.insert.ext = zext i32 %.08.i to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit55
  %indvars.iv = phi i64 [ 0, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit55 ] ; 2 uses
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !186
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !116
  %i.bh = load i32, ptr %i.aa, align 4, !tbaa !172 ; 3 uses
  %i.bi = load i32, ptr %i.y, align 8, !tbaa !297 ; 6 uses
  %.not.i50 = icmp slt i32 %i.bh, %i.bi
  br i1 %.not.i50, label %.critedge.i54, label %bb.q

bb.q:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.bj = add i32 %i.bh, 1                        ; 2 uses
  %i.bk = icmp slt i32 %i.bi, 0
  br i1 %i.bk, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit.thread84, label %bb.r, !prof !86

bb.r:                                             ; preds = %bb.q
  %.not.i58 = icmp ugt i32 %i.bj, %i.bi
  br i1 %.not.i58, label %.preheader.i, label %..critedge_crit_edge.i52, !prof !86

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %.043.i = phi i32 [ %i.bn, %.preheader.i ], [ %i.bi, %bb.r ] ; 2 uses
  %i.bl = lshr i32 %.043.i, 1
  %i.bm = add i32 %.043.i, 8
  %i.bn = add i32 %i.bm, %i.bl                    ; 7 uses
  %i.bo = icmp ugt i32 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i, label %.thread.i, !llvm.loop !11

.thread.i:                                        ; preds = %.preheader.i
  %i.bp = icmp ugt i32 %i.bn, 536870911
  br i1 %i.bp, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit.thread87, label %bb.s, !prof !86

bb.s:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.bi, 0
  %i.bq = load ptr, ptr %i.ab, align 8, !tbaa !173 ; 2 uses
  br i1 %.not49.i, label %bb.t, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i

bb.t:                                             ; preds = %bb.s
  %.not9.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = shl nuw i32 %i.bn, 3
  %i.bs = zext i32 %i.br to i64
  %i.bt = call ptr @hb_malloc(i64 noundef %i.bs) #10 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i, label %bb.v, !prof !86

bb.v:                                             ; preds = %bb.u
  %i.bu = load i32, ptr %i.aa, align 4, !tbaa !172 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit, label %bb.w, !prof !86

bb.w:                                             ; preds = %bb.v
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = load ptr, ptr %i.ab, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr readonly align 1 %i.bx, i64 %i.bw, i1 false), !alias.scope !635
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %bb.t, %bb.s
  %i.by = phi ptr [ null, %bb.t ], [ %i.bq, %bb.s ]
  %i.bz = shl nuw i32 %i.bn, 3
  %i.ca = zext i32 %i.bz to i64
  %i.cb = call ptr @hb_realloc(ptr noundef %i.by, i64 noundef %i.ca) #10 ; 2 uses
  %.not22.i = icmp eq ptr %i.cb, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit, !prof !304

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %bb.u
  %i.cc = load i32, ptr %i.y, align 8, !tbaa !297 ; 2 uses
  %.not23.i = icmp ugt i32 %i.bn, %i.cc
  br i1 %.not23.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit.thread87, label %..critedge_crit_edge.i52, !prof !636

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit.thread87: ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.bi, %.thread.i ], [ %i.cc, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %i.y, align 8, !tbaa !297
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit.thread84

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit: ; preds = %bb.v, %bb.w, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.cb, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %i.bt, %bb.w ], [ %i.bt, %bb.v ]
  store ptr %.1.i.i42.i, ptr %i.ab, align 8, !tbaa !173
  store i32 %i.bn, ptr %i.y, align 8, !tbaa !297
  br label %..critedge_crit_edge.i52

..critedge_crit_edge.i52:                         ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i, %bb.r, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit
  %.pre.i53 = load i32, ptr %i.aa, align 4, !tbaa !172
  br label %.critedge.i54

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit.thread84: ; preds = %bb.q, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit.thread87
  store i64 %i.s, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit55

.critedge.i54:                                    ; preds = %..critedge_crit_edge.i52, %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.cd = phi i32 [ %.pre.i53, %..critedge_crit_edge.i52 ], [ %i.bh, %_ZN11hb_vector_tIjLb0EEixEi.exit ] ; 2 uses
  %i.ce = load ptr, ptr %i.ab, align 8, !tbaa !173
  %i.cf = add i32 %i.cd, 1
  store i32 %i.cf, ptr %i.aa, align 4, !tbaa !172
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cg
  %.sroa.0.0.insert.ext = zext i32 %i.bg to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ch, align 4, !tbaa !116
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit55

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit55: ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb.exit.thread84, %.critedge.i54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = load i32, ptr %i.x, align 4, !tbaa !184
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %_ZN11hb_vector_tIjLb0EEixEi.exit, label %.loopexit, !llvm.loop !632

bb.x:                                             ; preds = %bb.f
  %i.cl = add i32 %i.ae, -1
  store i32 %i.cl, ptr %i.k, align 4, !tbaa !148
  br label %.loopexit94

.loopexit:                                        ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit55, %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 3 uses
  %i.cm = load i32, ptr %i.l, align 8, !tbaa !141
  %i.cn = zext i32 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next109, %i.cn
  br i1 %i.co, label %bb.c, label %.loopexit94.loopexit, !llvm.loop !633

.loopexit94.loopexit:                             ; preds = %.loopexit
  %i.cp = trunc nuw i64 %indvars.iv.next109 to i32
  br label %.loopexit94

.loopexit94:                                      ; preds = %.loopexit94.loopexit, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit, %bb.x
  %.03596 = phi i32 [ %i.ae, %bb.x ], [ 1, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit ], [ %i.cp, %.loopexit94.loopexit ] ; 2 uses
  %i.cq = load i32, ptr %3, align 8, !tbaa !185
  %i.cr = add i32 %i.cq, -1
  %spec.select.i.i56 = icmp ult i32 %i.cr, -2
  br i1 %spec.select.i.i56, label %bb.y, label %_ZN11hb_vector_tIjLb0EE4finiEv.exit

bb.y:                                             ; preds = %.loopexit94
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.cs, align 4, !tbaa !184
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !186
  call void @hb_free(ptr noundef %i.cu) #10
  br label %_ZN11hb_vector_tIjLb0EE4finiEv.exit

_ZN11hb_vector_tIjLb0EE4finiEv.exit:              ; preds = %.loopexit94, %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !172 ; 4 uses
  %.not15.i = icmp eq i32 %i.cv, 0
  br i1 %.not15.i, label %_ZN12range_list_t8completeEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11hb_vector_tIjLb0EE4finiEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !173 ; 5 uses
  %i.cy = zext i32 %i.cv to i64                   ; 3 uses
  %xtraiter = and i64 %i.cy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %i.cz, %.prol.preheader ], [ %i.cy, %.lr.ph.i ]
  %.018.i.prol = phi i32 [ %i.dc, %.prol.preheader ], [ %.03596, %.lr.ph.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.cz = add nsw i64 %indvars.iv.i.prol, -1      ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !175 ; 3 uses
  %i.dd = xor i32 %i.dc, -1
  %i.de = add i32 %.018.i.prol, %i.dd
  store i32 %i.de, ptr %i.db, align 4, !tbaa !175
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !634

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.cy, %.lr.ph.i ], [ %i.cz, %.prol.preheader ]
  %.018.i.unr = phi i32 [ %.03596, %.lr.ph.i ], [ %i.dc, %.prol.preheader ]
  %i.df = icmp ult i32 %i.cv, 4
  br i1 %i.df, label %_ZN12range_list_t8completeEj.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %i.dv, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 4 uses
  %.018.i = phi i32 [ %i.dy, %.lr.ph.i.new ], [ %.018.i.unr, %.prol.loopexit ]
  %i.dg = getelementptr [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 -4     ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !175 ; 2 uses
  %i.dj = xor i32 %i.di, -1
  %i.dk = add i32 %.018.i, %i.dj
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !175
  %i.dl = getelementptr [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.dm = getelementptr i8, ptr %i.dl, i64 -12    ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !175 ; 2 uses
  %i.do = xor i32 %i.dn, -1
  %i.dp = add i32 %i.di, %i.do
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !175
  %i.dq = getelementptr [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 -20    ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !175 ; 2 uses
  %i.dt = xor i32 %i.ds, -1
  %i.du = add i32 %i.dn, %i.dt
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !175
  %i.dv = add nsw i64 %indvars.iv.i, -4           ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !175 ; 2 uses
  %i.dz = xor i32 %i.dy, -1
  %i.ea = add i32 %i.ds, %i.dz
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !175
  %.not.wide.i.3 = icmp eq i64 %i.dv, 0
  br i1 %.not.wide.i.3, label %_ZN12range_list_t8completeEj.exit, label %.lr.ph.i.new, !llvm.loop !4

_ZN12range_list_t8completeEj.exit:                ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN11hb_vector_tIjLb0EE4finiEv.exit
  %i.eb = load i32, ptr %i.k, align 4, !tbaa !148
  %i.ec = add i32 %i.eb, 1
  %i.ed = shl i32 %i.cv, 1
  %.not41 = icmp ugt i32 %i.ec, %i.ed
  %spec.select = zext i1 %.not41 to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 323
  store i8 %spec.select, ptr %i.ee, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %bb.b, %_ZN12range_list_t8completeEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !263    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !116
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !86

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !637

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 178956970
  br i1 %i.j, label %.critedge, label %bb.e, !prof !86

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !261
  tail call void @hb_free(ptr noundef %i.m) #10
  br label %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !261  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 24
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #10 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !86

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !262  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !86

bb.l:                                             ; preds = %bb.k
end_hunk_1
begin_hunk_2_@_ZN3CFF10cs_opset_tINS_8number_tE27cff1_cs_opset_subr_subset_tNS_20cff1_cs_interp_env_tENS_19subr_subset_param_tENS_17path_procs_null_tIS3_S4_EEE10process_opEjRS3_RS4_:bb.a
  store i32 0, ptr %i.hy, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.av:                                            ; preds = %bb.a
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ib, align 4, !tbaa !355
  store i32 0, ptr %i.ia, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.aw:                                            ; preds = %bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.id, align 4, !tbaa !355
  store i32 0, ptr %i.ic, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ax:                                            ; preds = %bb.a
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.if, align 4, !tbaa !355
  store i32 0, ptr %i.ie, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ay:                                            ; preds = %bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ih, align 4, !tbaa !355
  store i32 0, ptr %i.ig, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.az:                                            ; preds = %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ij, align 4, !tbaa !355
  store i32 0, ptr %i.ii, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ba:                                            ; preds = %bb.a
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.il, align 4, !tbaa !355
  store i32 0, ptr %i.ik, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bb:                                            ; preds = %bb.a
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.in, align 4, !tbaa !355
  store i32 0, ptr %i.im, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bc:                                            ; preds = %bb.a
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ip, align 4, !tbaa !355
  store i32 0, ptr %i.io, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bd:                                            ; preds = %bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ir, align 4, !tbaa !355
  store i32 0, ptr %i.iq, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.be:                                            ; preds = %bb.a
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.it, align 4, !tbaa !355
  store i32 0, ptr %i.is, align 4, !tbaa !364
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bf:                                            ; preds = %bb.a
  tail call void @_ZN3CFF7opset_tINS_8number_tEE10process_opEjRNS_12interp_env_tIS1_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4128) %1)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit: ; preds = %bb.ae, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit.i, %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i, %bb.i, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %_ZN3CFF10cs_opset_tINS_8number_tE27cff1_cs_opset_subr_subset_tNS_20cff1_cs_interp_env_tENS_19subr_subset_param_tENS_17path_procs_null_tIS3_S4_EEE17process_post_moveEjRS3_RS4_.exit157, %_ZN3CFF10cs_opset_tINS_8number_tE27cff1_cs_opset_subr_subset_tNS_20cff1_cs_interp_env_tENS_19subr_subset_param_tENS_17path_procs_null_tIS3_S4_EEE17process_post_moveEjRS3_RS4_.exit151, %_ZN3CFF10cs_opset_tINS_8number_tE27cff1_cs_opset_subr_subset_tNS_20cff1_cs_interp_env_tENS_19subr_subset_param_tENS_17path_procs_null_tIS3_S4_EEE17process_post_moveEjRS3_RS4_.exit, %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit136, %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132, %bb.p, %bb.o, %_ZN3CFF15cff1_cs_opset_tI27cff1_cs_opset_subr_subset_tNS_19subr_subset_param_tENS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !414, !range !126, !noundef !127
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 9                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !432  ; 3 uses
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !418  ; 3 uses
  br i1 %i.h, label %bb.c, label %._crit_edge.i, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !434
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !434  ; 2 uses
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
  br i1 %.not.not.i.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i: ; preds = %bb.e
  store atomic i32 %i.p, ptr %i.d monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit

_ZN12hb_bit_set_t8page_forEjb.exit:               ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %bb.c
  %i.x = phi i64 [ %i.q, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i ], [ %i.k, %bb.c ]
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !435 ; 2 uses
  %.not = icmp eq ptr %.sink.i, null
  br i1 %.not, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !436
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %.sink.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !415
  %i.ae = and i32 %1, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = xor i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = lshr i32 %1, 6
  %i.ak = and i32 %i.aj, 7
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !438
  %i.ao = and i64 %i.an, %i.ah
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !438
  store i32 -1, ptr %i.ac, align 8, !tbaa !441
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %bb.g, %._crit_edge.i, %bb.h, %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !414, !range !126, !noundef !127
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp ne i32 %1, -1
  %or.cond.not = and i1 %i.c, %i.b
  br i1 %or.cond.not, label %bb.b, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !736

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.d, align 4, !tbaa !415
  %i.e = lshr i32 %1, 9                           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !432  ; 3 uses
  %i.j = icmp ult i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !418  ; 3 uses
  br i1 %i.j, label %bb.c, label %._crit_edge.i, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !434
  %.not.i = icmp eq i32 %i.o, %i.e
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !430  ; 2 uses
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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !434  ; 2 uses
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
  br i1 %.not.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

.loopexit.i:                                      ; preds = %bb.g, %._crit_edge.i
  %storemerge.i.i.ph.sink.i.i.ph.i = phi i32 [ 0, %._crit_edge.i ], [ %.223.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.ab = add i32 %i.q, 1
  %i.ac = tail call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ab, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.ac, label %bb.h, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !82

bb.h:                                             ; preds = %.loopexit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !435
  %i.af = zext i32 %i.q to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i8 0, i64 64, i1 false), !tbaa !438
  store i32 0, ptr %i.ag, align 8, !tbaa !441
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.aj = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i to i64 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.h, align 4, !tbaa !432
  %i.an = xor i32 %storemerge.i.i.ph.sink.i.i.ph.i, -1
  %i.ao = add i32 %i.am, %i.an
  %i.ap = shl i32 %i.ao, 3
  %i.aq = zext i32 %i.ap to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %i.ak, i64 %i.aq, i1 false)
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !442 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aj
  %.sroa.5.0.insert.shift.i = shl nuw i64 %i.af, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.e to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 4, !tbaa !116
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
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !435 ; 2 uses
  %.not = icmp eq ptr %.sink.i, null
  br i1 %.not, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %bb.i, !prof !737

bb.i:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.sink30.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !436
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
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !438
  %i.bi = or i64 %i.bh, %i.bb
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !438
  store i32 -1, ptr %i.ay, align 8, !tbaa !441
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %.loopexit.i, %bb.i, %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !414, !range !126, !noundef !127
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.j, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !430
  %i.f = icmp ult i32 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !739
  %i.h = icmp ult i32 %i.g, %1
  %i.i = icmp ult i32 %1, 3
  %or.cond = and i1 %i.i, %i.h
  %spec.select = or i1 %3, %or.cond
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.shrunk = phi i1 [ %3, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.j = icmp slt i32 %1, 0
  br i1 %i.j, label %.critedge, label %bb.e, !prof !86

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %1, i1 noundef zeroext %.0.shrunk)
  br i1 %i.k, label %bb.f, label %.critedge, !prof !95

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.d, align 4, !tbaa !420  ; 2 uses
  %i.m = icmp ugt i32 %1, %i.l
  %brmerge.not.i = and i1 %2, %i.m
  br i1 %brmerge.not.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !421  ; 5 uses
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i8 0, i64 64, i1 false), !tbaa !438
  store i32 0, ptr %i.r, align 8, !tbaa !441
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !738

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.prol, %.prol.preheader ]
  %i.t = sub nsw i64 %i.p, %wide.trip.count.i.i
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i8 0, i64 64, i1 false), !tbaa !438
  store i32 0, ptr %i.v, align 8, !tbaa !441
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, i8 0, i64 64, i1 false), !tbaa !438
  store i32 0, ptr %i.y, align 8, !tbaa !441
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i8 0, i64 64, i1 false), !tbaa !438
  store i32 0, ptr %i.ab, align 8, !tbaa !441
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false), !tbaa !438
  store i32 0, ptr %i.ae, align 8, !tbaa !441
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.lr.ph.i.i.new, !llvm.loop !15

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.f
  store i32 %1, ptr %i.d, align 4, !tbaa !420
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = tail call noundef zeroext i1 @_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i32 noundef %1, i1 noundef zeroext false)
  br i1 %i.ah, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.loopexit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !417 ; 3 uses
  %i.ak = icmp ugt i32 %1, %i.aj
  %brmerge.not.i15 = and i1 %2, %i.ak
  br i1 %brmerge.not.i15, label %bb.h, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit

bb.h:                                             ; preds = %bb.g
  %i.al = sub nuw nsw i32 %1, %i.aj
  %i.am = shl i32 %i.al, 3                        ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit, label %bb.i, !prof !86

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !418
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = zext i32 %i.am to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit: ; preds = %bb.g, %bb.h, %bb.i
  store i32 %1, ptr %i.ai, align 4, !tbaa !417
  br label %bb.j

.critedge:                                        ; preds = %.loopexit, %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !432
  %i.au = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.at, i1 noundef zeroext %2, i1 noundef zeroext %.0.shrunk) ; 0 uses
  store i8 0, ptr %0, align 8, !tbaa !414
  br label %bb.j

bb.j:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit, %bb.a, %.critedge
  %.012 = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit ]
  ret i1 %.012
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %3)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !420  ; 2 uses
  %i.e = icmp ugt i32 %1, %i.d
  %brmerge.not = and i1 %i.e, %2
  br i1 %brmerge.not, label %.lr.ph.i, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !421  ; 5 uses
  %i.h = zext i32 %i.d to i64                     ; 4 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.i = sub nsw i64 %wide.trip.count.i, %i.h
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %indvars.iv.i.prol ; 2 uses
end_hunk_2
