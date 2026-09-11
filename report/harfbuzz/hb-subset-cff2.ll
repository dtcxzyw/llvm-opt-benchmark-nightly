Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %i.ak = load i32, ptr %.sroa.18.4, align 4, !tbaa !101 ; 2 uses
  store i32 %i.ak, ptr %i.f, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !101
  %i.al = zext i32 %.sroa.11.1 to i64
  %.idx.i = shl nuw nsw i64 %i.al, 2
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.18.4, i64 %.idx.i
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 6 uses
  br label %bb.az

._crit_edge.i:                                    ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ap = sub i32 %i.nu, %i.ns
  %i.aq = add i32 %i.ap, 1                        ; 6 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i, label %bb.c, !prof !99

bb.c:                                             ; preds = %._crit_edge.i
  %.not.i200.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i200.not.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i, label %.preheader.i.i, !prof !97

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.au, %.preheader.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.as = lshr i32 %.043.i.i, 1
  %i.at = add nuw i32 %.043.i.i, 8
  %i.au = add nuw i32 %i.at, %i.as                ; 6 uses
  %i.av = icmp ugt i32 %i.aq, %i.au
  br i1 %i.av, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !0

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.aw = icmp ugt i32 %i.au, 1073741823
  br i1 %i.aw, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread64.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i.i, !prof !99

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.ax = shl nuw i32 %i.au, 2
  %i.ay = zext i32 %i.ax to i64
  %i.az = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ay) #16 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.az, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.i, !prof !100

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i.i
  %.pre.i = load i32, ptr %8, align 8, !tbaa !106 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.au, %.pre.i
  br i1 %.not23.i.i, label %bb.d, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i

bb.d:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i.i
  %i.ba = xor i32 %.pre.i, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread64.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread64.i: ; preds = %bb.d, %.thread.i.i
  %.sink.i.ph.i = phi i32 [ -1, %.thread.i.i ], [ %i.ba, %bb.d ]
  store i32 %.sink.i.ph.i, ptr %8, align 8, !tbaa !106
  br label %.lr.ph.i.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !107
  store i32 %i.au, ptr %8, align 8, !tbaa !106
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i:   ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i.i, %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !108 ; 3 uses
  %i.be = icmp ugt i32 %i.aq, %i.bd
  br i1 %i.be, label %bb.e, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i

bb.e:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i
  %i.bf = sub nuw nsw i32 %i.aq, %i.bd
  %i.bg = shl i32 %i.bf, 2                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i, label %bb.f, !prof !99

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !107
  %i.bj = zext nneg i32 %i.bd to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = zext i32 %i.bg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bk, i8 0, i64 %i.bl, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i
  store i32 %i.aq, ptr %i.bc, align 4, !tbaa !108
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread64.i, %._crit_edge.i
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 4 uses
  %.not.i.i.i223 = icmp eq ptr %i.bm, null
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.bo = load i32, ptr @_hb_NullPool, align 16   ; 20 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  br i1 %.not.i.i.i223, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i.i, label %.lr.ph.split.i.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i.i:   ; preds = %.lr.ph.i.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i
  %.019.us.i.i = phi i32 [ %i.br, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i ], [ 0, %.lr.ph.i.i ]
  %storemerge17.us.i.i = phi i32 [ %i.bw, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i ], [ %i.ns, %.lr.ph.i.i ] ; 2 uses
  %i.br = add i32 %.019.us.i.i, %i.bo             ; 2 uses
  %i.bs = sub i32 %storemerge17.us.i.i, %i.ns     ; 2 uses
  %i.bt = load i32, ptr %i.bn, align 4, !tbaa !108
  %.not.i9.us.i.i = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i9.us.i.i, label %bb.h, label %bb.g, !prof !97

bb.g:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i

bb.h:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i.i
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bu
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i:          ; preds = %bb.h, %bb.g
  %.0.i10.us.i.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.bv, %bb.h ]
  store i32 %i.br, ptr %.0.i10.us.i.i, align 4, !tbaa !101
  %i.bw = add i32 %storemerge17.us.i.i, 1         ; 2 uses
  %.not.us.i.i = icmp ugt i32 %i.bw, %i.nu
  br i1 %.not.us.i.i, label %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i.i, !llvm.loop !637

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i
  %.019.i.i = phi i32 [ %i.cy, %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i ], [ 0, %.lr.ph.i.i ]
  %storemerge17.i.i = phi i32 [ %i.dd, %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i ], [ %i.ns, %.lr.ph.i.i ] ; 5 uses
  %i.bx = mul i32 %storemerge17.i.i, 506952113
  %i.by = and i32 %i.bx, 1073741823
  %i.bz = load i32, ptr %i.an, align 8, !tbaa !109
  %i.ca = urem i32 %i.by, %i.bz                   ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = and i32 %i.ce, 2
  %.not15.i.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not15.i.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %i.cg = load i32, ptr %i.ao, align 4
  %i.ch = load i32, ptr %i.cc, align 4, !tbaa !101
  %i.ci = icmp eq i32 %i.ch, %storemerge17.i.i
  br i1 %i.ci, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cj = load i32, ptr %i.ct, align 4, !tbaa !101
  %i.ck = icmp eq i32 %i.cj, %storemerge17.i.i
  br i1 %i.ck, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.lcssa10.i.i.i.i = phi i32 [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %i.cv, %bb.i ]
  %i.cl = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i ], [ %i.cs, %bb.i ]
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.cl
  %i.cn = trunc i32 %.lcssa10.i.i.i.i to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %spec.select.i.i.i.i = select i1 %i.cn, ptr %i.co, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i, %bb.i
  %.01016.i13.i.i.i.i = phi i32 [ %i.cr, %bb.i ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  %.017.i12.i.i.i.i = phi i32 [ %i.cp, %bb.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.cp = add i32 %.017.i12.i.i.i.i, 1            ; 2 uses
  %i.cq = add i32 %i.cp, %.01016.i13.i.i.i.i
  %i.cr = and i32 %i.cq, %i.cg                    ; 2 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4            ; 2 uses
  %i.cw = and i32 %i.cv, 2
  %.not.i.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i, label %bb.i, !llvm.loop !1

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i:      ; preds = %.lr.ph.i.i.i.i, %._crit_edge.i.i.i.i, %.lr.ph.split.i.i
  %.0.i.i.i = phi ptr [ @_hb_NullPool, %.lr.ph.split.i.i ], [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i ], [ @_hb_NullPool, %.lr.ph.i.i.i.i ]
  %i.cx = load i32, ptr %.0.i.i.i, align 4, !tbaa !101
  %i.cy = add i32 %i.cx, %.019.i.i                ; 2 uses
  %i.cz = sub i32 %storemerge17.i.i, %i.ns        ; 2 uses
  %i.da = load i32, ptr %i.bn, align 4, !tbaa !108
  %.not.i9.i.i = icmp ult i32 %i.cz, %i.da
  br i1 %.not.i9.i.i, label %bb.k, label %bb.j, !prof !97

bb.j:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i

bb.k:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.db
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i

_ZN11hb_vector_tIjLb0EEixEi.exit.i.i:             ; preds = %bb.k, %bb.j
  %.0.i10.i.i = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.dc, %bb.k ]
  store i32 %i.cy, ptr %.0.i10.i.i, align 4, !tbaa !101
  %i.dd = add i32 %storemerge17.i.i, 1            ; 2 uses
  %.not.i78.i = icmp ugt i32 %i.dd, %i.nu
  br i1 %.not.i78.i, label %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.split.i.i, !llvm.loop !637

_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i
  %i.de = load i32, ptr %i.f, align 4, !tbaa !101 ; 6 uses
  %i.df = load i32, ptr %i.g, align 4, !tbaa !101 ; 4 uses
  %i.dg = sub i32 %i.df, %i.de                    ; 3 uses
  %i.dh = add nuw nsw i32 %i.dg, 1                ; 2 uses
  %or.cond97.i = icmp ult i32 %i.dg, 2147483647
  br i1 %or.cond97.i, label %.preheader.i205.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i, !prof !751

.preheader.i205.i:                                ; preds = %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, %.preheader.i205.i
  %.043.i206.i = phi i32 [ %i.dk, %.preheader.i205.i ], [ 0, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ] ; 2 uses
  %i.di = lshr i32 %.043.i206.i, 1
  %i.dj = add nuw i32 %.043.i206.i, 8
  %i.dk = add nuw i32 %i.dj, %i.di                ; 4 uses
  %.not150.i = icmp ult i32 %i.dg, %i.dk
  br i1 %.not150.i, label %.thread.i207.i, label %.preheader.i205.i, !llvm.loop !0

.thread.i207.i:                                   ; preds = %.preheader.i205.i
  %i.dl = icmp ugt i32 %i.dk, 1073741823
  br i1 %i.dl, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i, !prof !99

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i: ; preds = %.thread.i207.i
  %i.dm = shl nuw i32 %i.dk, 2
  %i.dn = zext i32 %i.dm to i64
  %i.do = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.dn) #16 ; 3 uses
  %.not22.i211.i = icmp eq ptr %i.do, null
  br i1 %.not22.i211.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i, label %bb.l, !prof !100

bb.l:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i
  %i.dp = shl nuw i32 %i.dh, 2
  %i.dq = zext i32 %i.dp to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.do, i8 0, i64 %i.dq, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i

_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i:      ; preds = %bb.l, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i, %.thread.i207.i, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %.sroa.041.1.i = phi i1 [ false, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ false, %.thread.i207.i ], [ false, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i ], [ true, %bb.l ]
  %.sroa.744.0.i = phi i32 [ 0, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ 0, %.thread.i207.i ], [ 0, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i ], [ %i.dh, %bb.l ] ; 8 uses
  %.sroa.1548.2.i = phi ptr [ null, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ null, %.thread.i207.i ], [ null, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i ], [ %i.do, %bb.l ] ; 9 uses
  %.not17.i.i = icmp ugt i32 %i.de, %i.df
  br i1 %.not17.i.i, label %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.i80.i

.lr.ph.i80.i:                                     ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i
  %i.dr = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 4 uses
  %.not.i.i81.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i81.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i, label %.lr.ph.split.i82.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i: ; preds = %.lr.ph.i80.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i
  %storemerge19.us.i.i = phi i32 [ %i.dv, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i ], [ %i.de, %.lr.ph.i80.i ] ; 2 uses
  %i.ds = sub i32 %storemerge19.us.i.i, %i.de     ; 2 uses
  %.not.i8.us.i.i = icmp ult i32 %i.ds, %.sroa.744.0.i
  br i1 %.not.i8.us.i.i, label %bb.n, label %bb.m, !prof !97

bb.m:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i

bb.n:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1548.2.i, i64 %i.dt
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i:        ; preds = %bb.n, %bb.m
  %.0.i9.us.i.i = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.du, %bb.n ]
  store i32 %i.bo, ptr %.0.i9.us.i.i, align 4, !tbaa !101
  %i.dv = add i32 %storemerge19.us.i.i, 1         ; 2 uses
  %.not.us.i98.i = icmp ugt i32 %i.dv, %i.df
  br i1 %.not.us.i98.i, label %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i, !llvm.loop !638

.lr.ph.split.i82.i:                               ; preds = %.lr.ph.i80.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i
  %storemerge19.i.i = phi i32 [ %i.fa, %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i ], [ %i.de, %.lr.ph.i80.i ] ; 5 uses
  %.018.i.i = phi i32 [ %.sroa.speculated.i.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i ], [ 0, %.lr.ph.i80.i ]
  %i.dw = mul i32 %storemerge19.i.i, 506952113
  %i.dx = and i32 %i.dw, 1073741823
  %i.dy = load i32, ptr %i.an, align 8, !tbaa !109
  %i.dz = urem i32 %i.dx, %i.dy                   ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.dr, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = and i32 %i.ed, 2
  %.not15.i.i.i.i83.i = icmp eq i32 %i.ee, 0
  br i1 %.not15.i.i.i.i83.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i, label %.lr.ph.i.i.i.i84.i

.lr.ph.i.i.i.i84.i:                               ; preds = %.lr.ph.split.i82.i
  %i.ef = load i32, ptr %i.ao, align 4
  %i.eg = load i32, ptr %i.eb, align 4, !tbaa !101
  %i.eh = icmp eq i32 %i.eg, %storemerge19.i.i
  br i1 %i.eh, label %._crit_edge.i.i.i89.i, label %.lr.ph.i.i.i85.i

bb.o:                                             ; preds = %.lr.ph.i.i.i85.i
  %i.ei = load i32, ptr %i.es, align 4, !tbaa !101
  %i.ej = icmp eq i32 %i.ei, %storemerge19.i.i
  br i1 %i.ej, label %._crit_edge.i.i.i89.i, label %.lr.ph.i.i.i85.i, !llvm.loop !1

._crit_edge.i.i.i89.i:                            ; preds = %bb.o, %.lr.ph.i.i.i.i84.i
  %.lcssa10.i.i.i90.i = phi i32 [ %i.ed, %.lr.ph.i.i.i.i84.i ], [ %i.eu, %bb.o ]
  %i.ek = phi i64 [ %i.ea, %.lr.ph.i.i.i.i84.i ], [ %i.er, %bb.o ]
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.dr, i64 %i.ek
  %i.em = trunc i32 %.lcssa10.i.i.i90.i to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %spec.select.i.i.i91.i = select i1 %i.em, ptr %i.en, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i

.lr.ph.i.i.i85.i:                                 ; preds = %.lr.ph.i.i.i.i84.i, %bb.o
  %.01016.i13.i.i.i86.i = phi i32 [ %i.eq, %bb.o ], [ %i.dz, %.lr.ph.i.i.i.i84.i ]
  %.017.i12.i.i.i87.i = phi i32 [ %i.eo, %bb.o ], [ 0, %.lr.ph.i.i.i.i84.i ]
  %i.eo = add i32 %.017.i12.i.i.i87.i, 1          ; 2 uses
  %i.ep = add i32 %i.eo, %.01016.i13.i.i.i86.i
  %i.eq = and i32 %i.ep, %i.ef                    ; 2 uses
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.dr, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4            ; 2 uses
  %i.ev = and i32 %i.eu, 2
  %.not.i.i.i.i88.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i.i88.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i, label %bb.o, !llvm.loop !1

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i:    ; preds = %.lr.ph.i.i.i85.i, %._crit_edge.i.i.i89.i, %.lr.ph.split.i82.i
  %.0.i.i93.i = phi ptr [ @_hb_NullPool, %.lr.ph.split.i82.i ], [ %spec.select.i.i.i91.i, %._crit_edge.i.i.i89.i ], [ @_hb_NullPool, %.lr.ph.i.i.i85.i ]
  %i.ew = load i32, ptr %.0.i.i93.i, align 4, !tbaa !101
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %.018.i.i, i32 %i.ew) ; 2 uses
  %i.ex = sub i32 %storemerge19.i.i, %i.de        ; 2 uses
  %.not.i8.i.i = icmp ult i32 %i.ex, %.sroa.744.0.i
  br i1 %.not.i8.i.i, label %bb.q, label %bb.p, !prof !97

bb.p:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i

bb.q:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1548.2.i, i64 %i.ey
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i

_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i:           ; preds = %bb.q, %bb.p
  %.0.i9.i.i = phi ptr [ @_hb_CrapPool, %bb.p ], [ %i.ez, %bb.q ]
  store i32 %.sroa.speculated.i.i, ptr %.0.i9.i.i, align 4, !tbaa !101
  %i.fa = add i32 %storemerge19.i.i, 1            ; 2 uses
  %.not.i95.i = icmp ugt i32 %i.fa, %i.df
  br i1 %.not.i95.i, label %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.split.i82.i, !llvm.loop !638

_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i
  %i.fb = load i32, ptr %i.f, align 4, !tbaa !101 ; 8 uses
  %i.fc = load i32, ptr %i.g, align 4, !tbaa !101 ; 6 uses
  %i.fd = sub i32 %i.fc, %i.fb                    ; 2 uses
  %i.fe = add i32 %i.fd, 1                        ; 8 uses
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i, label %bb.r, !prof !99

bb.r:                                             ; preds = %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %i.fg = load i32, ptr %9, align 8, !tbaa !106   ; 5 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i, label %bb.s, !prof !99

bb.s:                                             ; preds = %bb.r
  %.not.i224.i = icmp samesign ugt i32 %i.fe, %i.fg
  br i1 %.not.i224.i, label %.preheader.i226.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i, !prof !99

.preheader.i226.i:                                ; preds = %bb.s, %.preheader.i226.i
  %.043.i227.i = phi i32 [ %i.fk, %.preheader.i226.i ], [ %i.fg, %bb.s ] ; 2 uses
  %i.fi = lshr i32 %.043.i227.i, 1
  %i.fj = add nuw i32 %.043.i227.i, 8
  %i.fk = add nuw i32 %i.fj, %i.fi                ; 7 uses
  %i.fl = icmp ugt i32 %i.fe, %i.fk
  br i1 %i.fl, label %.preheader.i226.i, label %.thread.i228.i, !llvm.loop !0

.thread.i228.i:                                   ; preds = %.preheader.i226.i
  %i.fm = icmp ugt i32 %i.fk, 1073741823
  br i1 %i.fm, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread82.i, label %bb.t, !prof !99

bb.t:                                             ; preds = %.thread.i228.i
  %.not49.i230.i = icmp eq i32 %i.fg, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !107 ; 2 uses
  br i1 %.not49.i230.i, label %bb.u, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i

bb.u:                                             ; preds = %bb.t
  %.not9.i.i.i240.i = icmp eq ptr %i.fo, null
  br i1 %.not9.i.i.i240.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fp = shl nuw i32 %i.fk, 2
  %i.fq = zext i32 %i.fp to i64
  %i.fr = call ptr @hb_malloc(i64 noundef %i.fq) #16 ; 4 uses
  %.not10.i.i.i241.i = icmp eq ptr %i.fr, null
  br i1 %.not10.i.i.i241.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i, label %bb.w, !prof !99

bb.w:                                             ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !108 ; 2 uses
  %.not.i.i.i.i242.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i.i.i242.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i, label %bb.x, !prof !99

bb.x:                                             ; preds = %bb.w
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 2
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr readonly align 1 %i.fw, i64 %i.fv, i1 false), !alias.scope !752
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i: ; preds = %bb.u, %bb.t
  %i.fx = phi ptr [ null, %bb.u ], [ %i.fo, %bb.t ]
  %i.fy = shl nuw i32 %i.fk, 2
  %i.fz = zext i32 %i.fy to i64
  %i.ga = call ptr @hb_realloc(ptr noundef %i.fx, i64 noundef %i.fz) #16 ; 2 uses
  %.not22.i232.i = icmp eq ptr %i.ga, null
  br i1 %.not22.i232.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i, !prof !100

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i, %bb.v
  %i.gb = load i32, ptr %9, align 8, !tbaa !106   ; 2 uses
  %.not23.i239.i = icmp ugt i32 %i.fk, %i.gb
  br i1 %.not23.i239.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread82.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread82.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i, %.thread.i228.i
  %.sink.i236.ph.in.i = phi i32 [ %i.fg, %.thread.i228.i ], [ %i.gb, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i ]
  %.sink.i236.ph.i = xor i32 %.sink.i236.ph.in.i, -1
  store i32 %.sink.i236.ph.i, ptr %9, align 8, !tbaa !106
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i:       ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i, %bb.x, %bb.w
  %.1.i.i42.i234.i = phi ptr [ %i.ga, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i ], [ %i.fr, %bb.x ], [ %i.fr, %bb.w ]
  store ptr %.1.i.i42.i234.i, ptr %i.fn, align 8, !tbaa !107
  store i32 %i.fk, ptr %9, align 8, !tbaa !106
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i: ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i, %bb.s
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !108 ; 3 uses
  %i.ge = icmp ugt i32 %i.fe, %i.gd
  br i1 %i.ge, label %bb.y, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i

bb.y:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i
  %i.gf = sub nuw nsw i32 %i.fe, %i.gd
  %i.gg = shl i32 %i.gf, 2                        ; 2 uses
  %.not.i.i.i.i.i120.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i.i.i.i120.i, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i, label %bb.z, !prof !99

bb.z:                                             ; preds = %bb.y
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !107
  %i.gj = zext nneg i32 %i.gd to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = zext i32 %i.gg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.gk, i8 0, i64 %i.gl, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i: ; preds = %bb.z, %bb.y, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i
  store i32 %i.fe, ptr %i.gc, align 4, !tbaa !108
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i

_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i:     ; preds = %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread82.i, %bb.r, %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %.not20.i.i = icmp slt i32 %i.fc, %i.fb
  br i1 %.not20.i.i, label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i
  %i.gm = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 4 uses
  %.not.i.i103.i = icmp eq ptr %i.gm, null
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gp = load ptr, ptr %i.go, align 8            ; 4 uses
  br i1 %.not.i.i103.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader, label %.lr.ph.split.i104.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader: ; preds = %.lr.ph.i102.i
  %i.gq = icmp eq i32 %i.fc, %i.fb
  br i1 %i.gq, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.epil.preheader, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader.new

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader.new: ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader
  %unroll_iter = and i32 %i.fe, -2
  %i.gr = xor i32 %i.fb, -1
  br label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader.new
  %.022.us.i.i = phi i32 [ %i.fc, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader.new ], [ %i.hc, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1 ] ; 3 uses
  %.01321.us.i.i = phi i32 [ 0, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader.new ], [ %i.gx, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1 ]
  %niter = phi i32 [ 0, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader.new ], [ %niter.next.1, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1 ]
  %i.gs = add i32 %.01321.us.i.i, %i.bo           ; 2 uses
  %i.gt = sub i32 %.022.us.i.i, %i.fb             ; 2 uses
  %i.gu = load i32, ptr %i.gn, align 4, !tbaa !108
  %.not.i15.us.i.i = icmp ult i32 %i.gt, %i.gu
  br i1 %.not.i15.us.i.i, label %bb.ab, label %bb.aa, !prof !97

bb.aa:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i

bb.ab:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i
  %i.gv = zext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gv
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i:       ; preds = %bb.ab, %bb.aa
  %.0.i16.us.i.i = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.gw, %bb.ab ]
  store i32 %i.gs, ptr %.0.i16.us.i.i, align 4, !tbaa !101
  %i.gx = add i32 %i.gs, %i.bo                    ; 3 uses
  %i.gy = add i32 %.022.us.i.i, %i.gr             ; 2 uses
  %i.gz = load i32, ptr %i.gn, align 4, !tbaa !108
  %.not.i15.us.i.i.1 = icmp ult i32 %i.gy, %i.gz
  br i1 %.not.i15.us.i.i.1, label %bb.ad, label %bb.ac, !prof !97

bb.ac:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i
  %i.ha = zext i32 %i.gy to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ha
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1:     ; preds = %bb.ad, %bb.ac
  %.0.i16.us.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.hb, %bb.ad ]
  store i32 %i.gx, ptr %.0.i16.us.i.i.1, align 4, !tbaa !101
  %i.hc = add nsw i32 %.022.us.i.i, -2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i, !llvm.loop !642

.lr.ph.split.i104.i:                              ; preds = %.lr.ph.i102.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i
  %.022.i.i = phi i32 [ %i.ij, %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i ], [ %i.fc, %.lr.ph.i102.i ] ; 6 uses
  %.01321.i.i = phi i32 [ %i.ie, %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i ], [ 0, %.lr.ph.i102.i ]
  %i.hd = mul i32 %.022.i.i, 506952113
  %i.he = and i32 %i.hd, 1073741823
  %i.hf = load i32, ptr %i.an, align 8, !tbaa !109
  %i.hg = urem i32 %i.he, %i.hf                   ; 2 uses
  %i.hh = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %i.gm, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load i32, ptr %i.hj, align 4            ; 2 uses
  %i.hl = and i32 %i.hk, 2
  %.not15.i.i.i.i105.i = icmp eq i32 %i.hl, 0
  br i1 %.not15.i.i.i.i105.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i, label %.lr.ph.i.i.i.i106.i

.lr.ph.i.i.i.i106.i:                              ; preds = %.lr.ph.split.i104.i
  %i.hm = load i32, ptr %i.ao, align 4
  %i.hn = load i32, ptr %i.hi, align 4, !tbaa !101
  %i.ho = icmp eq i32 %i.hn, %.022.i.i
  br i1 %i.ho, label %._crit_edge.i.i.i111.i, label %.lr.ph.i.i.i107.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i107.i
  %i.hp = load i32, ptr %i.hz, align 4, !tbaa !101
  %i.hq = icmp eq i32 %i.hp, %.022.i.i
  br i1 %i.hq, label %._crit_edge.i.i.i111.i, label %.lr.ph.i.i.i107.i, !llvm.loop !1

._crit_edge.i.i.i111.i:                           ; preds = %bb.ae, %.lr.ph.i.i.i.i106.i
  %.lcssa10.i.i.i112.i = phi i32 [ %i.hk, %.lr.ph.i.i.i.i106.i ], [ %i.ib, %bb.ae ]
  %i.hr = phi i64 [ %i.hh, %.lr.ph.i.i.i.i106.i ], [ %i.hy, %bb.ae ]
  %i.hs = getelementptr inbounds nuw [12 x i8], ptr %i.gm, i64 %i.hr
  %i.ht = trunc i32 %.lcssa10.i.i.i112.i to i1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %spec.select.i.i.i113.i = select i1 %i.ht, ptr %i.hu, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i

.lr.ph.i.i.i107.i:                                ; preds = %.lr.ph.i.i.i.i106.i, %bb.ae
  %.01016.i13.i.i.i108.i = phi i32 [ %i.hx, %bb.ae ], [ %i.hg, %.lr.ph.i.i.i.i106.i ]
  %.017.i12.i.i.i109.i = phi i32 [ %i.hv, %bb.ae ], [ 0, %.lr.ph.i.i.i.i106.i ]
  %i.hv = add i32 %.017.i12.i.i.i109.i, 1         ; 2 uses
  %i.hw = add i32 %i.hv, %.01016.i13.i.i.i108.i
  %i.hx = and i32 %i.hw, %i.hm                    ; 2 uses
  %i.hy = zext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds nuw [12 x i8], ptr %i.gm, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.ia, align 4            ; 2 uses
  %i.ic = and i32 %i.ib, 2
  %.not.i.i.i.i110.i = icmp eq i32 %i.ic, 0
  br i1 %.not.i.i.i.i110.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i, label %bb.ae, !llvm.loop !1

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i:   ; preds = %.lr.ph.i.i.i107.i, %._crit_edge.i.i.i111.i, %.lr.ph.split.i104.i
  %.0.i.i115.i = phi ptr [ @_hb_NullPool, %.lr.ph.split.i104.i ], [ %spec.select.i.i.i113.i, %._crit_edge.i.i.i111.i ], [ @_hb_NullPool, %.lr.ph.i.i.i107.i ]
  %i.id = load i32, ptr %.0.i.i115.i, align 4, !tbaa !101
  %i.ie = add i32 %i.id, %.01321.i.i              ; 2 uses
  %i.if = sub i32 %.022.i.i, %i.fb                ; 2 uses
  %i.ig = load i32, ptr %i.gn, align 4, !tbaa !108
  %.not.i15.i.i = icmp ult i32 %i.if, %i.ig
  br i1 %.not.i15.i.i, label %bb.ag, label %bb.af, !prof !97

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i

bb.ag:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i
  %i.ih = zext i32 %i.if to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ih
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i

_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i:          ; preds = %bb.ag, %bb.af
  %.0.i16.i.i = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.ii, %bb.ag ]
  store i32 %i.ie, ptr %.0.i16.i.i, align 4, !tbaa !101
  %i.ij = add nsw i32 %.022.i.i, -1
  %.not.not.i.i = icmp sgt i32 %.022.i.i, %i.fb
  br i1 %.not.not.i.i, label %.lr.ph.split.i104.i, label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, !llvm.loop !642

_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1
  %i.ik = and i32 %i.fd, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ik, 0
  br i1 %lcmp.mod.not.not, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.epil.preheader, label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.epil.preheader: ; preds = %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader
  %.022.us.i.i.epil.init = phi i32 [ %i.fc, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader ], [ %i.hc, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa ]
  %.01321.us.i.i.epil.init = phi i32 [ 0, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader ], [ %i.gx, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod1858 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod1858)
  %i.il = add i32 %.01321.us.i.i.epil.init, %i.bo
  %i.im = sub i32 %.022.us.i.i.epil.init, %i.fb   ; 2 uses
  %i.in = load i32, ptr %i.gn, align 4, !tbaa !108
  %.not.i15.us.i.i.epil = icmp ult i32 %i.im, %i.in
  br i1 %.not.i15.us.i.i.epil, label %bb.ai, label %bb.ah, !prof !97

bb.ah:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.epil.preheader
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.epil

bb.ai:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.epil.preheader
  %i.io = zext i32 %i.im to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.io
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.epil

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.epil:  ; preds = %bb.ai, %bb.ah
  %.0.i16.us.i.i.epil = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.ip, %bb.ai ]
  store i32 %i.il, ptr %.0.i16.us.i.i.epil, align 4, !tbaa !101
  br label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i

_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.epil, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i
  %i.iq = load i32, ptr %i.f, align 4, !tbaa !101 ; 9 uses
  %i.ir = load i32, ptr %i.g, align 4, !tbaa !101 ; 7 uses
  %i.is = sub i32 %i.ir, %i.iq                    ; 4 uses
  %i.it = add i32 %i.is, 1                        ; 2 uses
  %or.cond98.i = icmp ult i32 %i.is, 2147483647
  br i1 %or.cond98.i, label %.preheader.i247.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i, !prof !751

.preheader.i247.i:                                ; preds = %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, %.preheader.i247.i
  %.043.i248.i = phi i32 [ %i.iw, %.preheader.i247.i ], [ 0, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ] ; 2 uses
  %i.iu = lshr i32 %.043.i248.i, 1
  %i.iv = add nuw i32 %.043.i248.i, 8
  %i.iw = add nuw i32 %i.iv, %i.iu                ; 4 uses
  %.not151.i = icmp ult i32 %i.is, %i.iw
  br i1 %.not151.i, label %.thread.i249.i, label %.preheader.i247.i, !llvm.loop !0

.thread.i249.i:                                   ; preds = %.preheader.i247.i
  %i.ix = icmp ugt i32 %i.iw, 1073741823
  br i1 %i.ix, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i, !prof !99

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i: ; preds = %.thread.i249.i
  %i.iy = shl nuw i32 %i.iw, 2
  %i.iz = zext i32 %i.iy to i64
  %i.ja = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.iz) #16 ; 3 uses
  %.not22.i253.i = icmp eq ptr %i.ja, null
  br i1 %.not22.i253.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i, label %bb.aj, !prof !100

bb.aj:                                            ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i
  %i.jb = shl nuw i32 %i.it, 2
  %i.jc = zext i32 %i.jb to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ja, i8 0, i64 %i.jc, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i

_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i:     ; preds = %bb.aj, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i, %.thread.i249.i, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %.sroa.0.1.i = phi i1 [ false, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ false, %.thread.i249.i ], [ false, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i ], [ true, %bb.aj ]
  %.sroa.7.0.i = phi i32 [ 0, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ 0, %.thread.i249.i ], [ 0, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i ], [ %i.it, %bb.aj ] ; 10 uses
  %.sroa.15.2.i = phi ptr [ null, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ null, %.thread.i249.i ], [ null, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i ], [ %i.ja, %bb.aj ] ; 11 uses
  %.not21.i.i = icmp slt i32 %i.ir, %i.iq
  br i1 %.not21.i.i, label %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.i122.i

.lr.ph.i122.i:                                    ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i
  %i.jd = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 4 uses
  %.not.i.i123.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i123.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.preheader, label %.lr.ph.split.i124.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.preheader: ; preds = %.lr.ph.i122.i
  %i.je = and i32 %i.is, 1
  %lcmp.mod1860.not.not = icmp eq i32 %i.je, 0
  br i1 %lcmp.mod1860.not.not, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol.loopexit

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol: ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.preheader
  %i.jf = sub i32 %i.ir, %i.iq                    ; 2 uses
  %.not.i13.us.i.i.prol = icmp ult i32 %i.jf, %.sroa.7.0.i
  br i1 %.not.i13.us.i.i.prol, label %bb.al, label %bb.ak, !prof !97

bb.ak:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.prol

bb.al:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.jg
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.prol

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.prol:  ; preds = %bb.al, %bb.ak
  %.0.i14.us.i.i.prol = phi ptr [ @_hb_CrapPool, %bb.ak ], [ %i.jh, %bb.al ]
  store i32 %i.bo, ptr %.0.i14.us.i.i.prol, align 4, !tbaa !101
  %i.ji = add nsw i32 %i.ir, -1
  br label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol.loopexit

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol.loopexit: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.prol, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.preheader
  %.023.us.i.i.unr = phi i32 [ %i.ir, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.preheader ], [ %i.ji, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.prol ]
  %i.jj = icmp eq i32 %i.ir, %i.iq
  br i1 %i.jj, label %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i: ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol.loopexit, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1
  %.023.us.i.i = phi i32 [ %i.jr, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1 ], [ %.023.us.i.i.unr, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol.loopexit ] ; 3 uses
  %i.jk = sub i32 %.023.us.i.i, %i.iq             ; 2 uses
  %.not.i13.us.i.i = icmp ult i32 %i.jk, %.sroa.7.0.i
  br i1 %.not.i13.us.i.i, label %bb.an, label %bb.am, !prof !97

bb.am:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i

bb.an:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.jl
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i:       ; preds = %bb.an, %bb.am
  %.0.i14.us.i.i = phi ptr [ @_hb_CrapPool, %bb.am ], [ %i.jm, %bb.an ]
  store i32 %i.bo, ptr %.0.i14.us.i.i, align 4, !tbaa !101
  %i.jn = add nsw i32 %.023.us.i.i, -1            ; 2 uses
  %i.jo = sub i32 %i.jn, %i.iq                    ; 2 uses
  %.not.i13.us.i.i.1 = icmp ult i32 %i.jo, %.sroa.7.0.i
  br i1 %.not.i13.us.i.i.1, label %bb.ap, label %bb.ao, !prof !97

bb.ao:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1

bb.ap:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.jp
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1:     ; preds = %bb.ap, %bb.ao
  %.0.i14.us.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.ao ], [ %i.jq, %bb.ap ]
  store i32 %i.bo, ptr %.0.i14.us.i.i.1, align 4, !tbaa !101
  %i.jr = add nsw i32 %.023.us.i.i, -2
  %.not.us.not.i141.i.1 = icmp sgt i32 %i.jn, %i.iq
  br i1 %.not.us.not.i141.i.1, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i, label %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, !llvm.loop !643

.lr.ph.split.i124.i:                              ; preds = %.lr.ph.i122.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i
  %.023.i.i = phi i32 [ %i.kw, %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i ], [ %i.ir, %.lr.ph.i122.i ] ; 6 uses
  %.01722.i.i = phi i32 [ %.sroa.speculated.i136.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i ], [ 0, %.lr.ph.i122.i ]
  %i.js = mul i32 %.023.i.i, 506952113
  %i.jt = and i32 %i.js, 1073741823
  %i.ju = load i32, ptr %i.an, align 8, !tbaa !109
  %i.jv = urem i32 %i.jt, %i.ju                   ; 2 uses
  %i.jw = zext nneg i32 %i.jv to i64              ; 2 uses
  %i.jx = getelementptr inbounds nuw [12 x i8], ptr %i.jd, i64 %i.jw ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.jz = load i32, ptr %i.jy, align 4            ; 2 uses
  %i.ka = and i32 %i.jz, 2
  %.not15.i.i.i.i125.i = icmp eq i32 %i.ka, 0
  br i1 %.not15.i.i.i.i125.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i, label %.lr.ph.i.i.i.i126.i

.lr.ph.i.i.i.i126.i:                              ; preds = %.lr.ph.split.i124.i
  %i.kb = load i32, ptr %i.ao, align 4
  %i.kc = load i32, ptr %i.jx, align 4, !tbaa !101
  %i.kd = icmp eq i32 %i.kc, %.023.i.i
  br i1 %i.kd, label %._crit_edge.i.i.i131.i, label %.lr.ph.i.i.i127.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i127.i
  %i.ke = load i32, ptr %i.ko, align 4, !tbaa !101
  %i.kf = icmp eq i32 %i.ke, %.023.i.i
  br i1 %i.kf, label %._crit_edge.i.i.i131.i, label %.lr.ph.i.i.i127.i, !llvm.loop !1

._crit_edge.i.i.i131.i:                           ; preds = %bb.aq, %.lr.ph.i.i.i.i126.i
  %.lcssa10.i.i.i132.i = phi i32 [ %i.jz, %.lr.ph.i.i.i.i126.i ], [ %i.kq, %bb.aq ]
  %i.kg = phi i64 [ %i.jw, %.lr.ph.i.i.i.i126.i ], [ %i.kn, %bb.aq ]
  %i.kh = getelementptr inbounds nuw [12 x i8], ptr %i.jd, i64 %i.kg
  %i.ki = trunc i32 %.lcssa10.i.i.i132.i to i1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %spec.select.i.i.i133.i = select i1 %i.ki, ptr %i.kj, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i

.lr.ph.i.i.i127.i:                                ; preds = %.lr.ph.i.i.i.i126.i, %bb.aq
  %.01016.i13.i.i.i128.i = phi i32 [ %i.km, %bb.aq ], [ %i.jv, %.lr.ph.i.i.i.i126.i ]
  %.017.i12.i.i.i129.i = phi i32 [ %i.kk, %bb.aq ], [ 0, %.lr.ph.i.i.i.i126.i ]
  %i.kk = add i32 %.017.i12.i.i.i129.i, 1         ; 2 uses
  %i.kl = add i32 %i.kk, %.01016.i13.i.i.i128.i
  %i.km = and i32 %i.kl, %i.kb                    ; 2 uses
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %i.jd, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = load i32, ptr %i.kp, align 4            ; 2 uses
  %i.kr = and i32 %i.kq, 2
  %.not.i.i.i.i130.i = icmp eq i32 %i.kr, 0
  br i1 %.not.i.i.i.i130.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i, label %bb.aq, !llvm.loop !1

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i:   ; preds = %.lr.ph.i.i.i127.i, %._crit_edge.i.i.i131.i, %.lr.ph.split.i124.i
  %.0.i.i135.i = phi ptr [ @_hb_NullPool, %.lr.ph.split.i124.i ], [ %spec.select.i.i.i133.i, %._crit_edge.i.i.i131.i ], [ @_hb_NullPool, %.lr.ph.i.i.i127.i ]
  %i.ks = load i32, ptr %.0.i.i135.i, align 4, !tbaa !101
  %.sroa.speculated.i136.i = call i32 @llvm.umax.i32(i32 %.01722.i.i, i32 %i.ks) ; 2 uses
  %i.kt = sub i32 %.023.i.i, %i.iq                ; 2 uses
  %.not.i13.i.i = icmp ult i32 %i.kt, %.sroa.7.0.i
  br i1 %.not.i13.i.i, label %bb.as, label %bb.ar, !prof !97

bb.ar:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i

bb.as:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.ku
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i

_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i:          ; preds = %bb.as, %bb.ar
  %.0.i14.i.i = phi ptr [ @_hb_CrapPool, %bb.ar ], [ %i.kv, %bb.as ]
  store i32 %.sroa.speculated.i136.i, ptr %.0.i14.i.i, align 4, !tbaa !101
  %i.kw = add nsw i32 %.023.i.i, -1
  %.not.not.i138.i = icmp sgt i32 %.023.i.i, %i.iq
  br i1 %.not.not.i138.i, label %.lr.ph.split.i124.i, label %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, !llvm.loop !643

_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol.loopexit, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %8, ptr %10, align 8, !tbaa !753
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.f, ptr %i.kx, align 8, !tbaa !110
  %i.ky = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.g, ptr %i.ky, align 8, !tbaa !110
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %9, ptr %i.kz, align 8, !tbaa !753
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %7, ptr %i.la, align 8, !tbaa !754
  %i.lb = load i32, ptr %i.f, align 4, !tbaa !101 ; 34 uses
  %i.lc = call fastcc noundef i32 @"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_0clEj"(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %i.lb)
  %i.ld = load i32, ptr %i.g, align 4, !tbaa !101 ; 21 uses
  %i.le = icmp sgt i32 %i.lb, %i.ld               ; 2 uses
  br i1 %i.le, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %.not.i.i.i.not.i = icmp eq i32 %.sroa.744.0.i, 0
  %.0.i.i.i.i = select i1 %.not.i.i.i.not.i, ptr @_hb_NullPool, ptr %.sroa.1548.2.i, !prof !99
  %i.lf = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !101
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i.i: ; preds = %bb.at, %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %.0.i.i144.i = phi i32 [ %i.lf, %bb.at ], [ 0, %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ] ; 2 uses
  %i.lg = add i32 %i.lb, -108                     ; 2 uses
  %i.lh = icmp sgt i32 %i.lb, -2147483541
  %i.li = icmp sgt i32 %i.lg, %i.ld
  %or.cond.i17.i.i = or i1 %i.lh, %i.li
  br i1 %or.cond.i17.i.i, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i.i
  %.not.i.i18.i.i = icmp ugt i32 %.sroa.744.0.i, -108
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.1548.2.i, i64 17179868752
  %.0.i.i19.i.i = select i1 %.not.i.i18.i.i, ptr %i.lj, ptr @_hb_NullPool, !prof !97
  %i.lk = load i32, ptr %.0.i.i19.i.i, align 4, !tbaa !101
  %i.ll = shl i32 %i.lk, 1
  %i.lm = call i32 @llvm.umax.i32(i32 %.0.i.i144.i, i32 %i.ll)
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i.i: ; preds = %bb.au, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i.i
  %.0.i20.i.i = phi i32 [ %i.lm, %bb.au ], [ %.0.i.i144.i, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i.i ] ; 2 uses
  %i.ln = add i32 %i.lb, -1132                    ; 2 uses
  %i.lo = icmp sgt i32 %i.lb, -2147482517
end_hunk_0
