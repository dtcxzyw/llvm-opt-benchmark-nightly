Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  store i32 %i.ak, ptr %i.f, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !59
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
  br i1 %i.ar, label %.lr.ph.i.i, label %bb.c, !prof !57

bb.c:                                             ; preds = %._crit_edge.i
  %.not.i200.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i200.not.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i, label %.preheader.i.i, !prof !54

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.au, %.preheader.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.as = lshr i32 %.043.i.i, 1
  %i.at = add nuw i32 %.043.i.i, 8
  %i.au = add nuw i32 %i.at, %i.as                ; 6 uses
  %i.av = icmp ugt i32 %i.aq, %i.au
  br i1 %i.av, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !55

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.aw = icmp ugt i32 %i.au, 1073741823
  br i1 %i.aw, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread64.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i.i, !prof !57

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.ax = shl nuw i32 %i.au, 2
  %i.ay = zext i32 %i.ax to i64
  %i.az = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ay) #16 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.az, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.i, !prof !58

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i.i
  %.pre.i = load i32, ptr %8, align 8, !tbaa !64  ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.au, %.pre.i
  br i1 %.not23.i.i, label %bb.d, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i

bb.d:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i.i
  %i.ba = xor i32 %.pre.i, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread64.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread64.i: ; preds = %bb.d, %.thread.i.i
  %.sink.i.ph.i = phi i32 [ -1, %.thread.i.i ], [ %i.ba, %bb.d ]
  store i32 %.sink.i.ph.i, ptr %8, align 8, !tbaa !64
  br label %.lr.ph.i.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !65
  store i32 %i.au, ptr %8, align 8, !tbaa !64
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i:   ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i.i, %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !66 ; 3 uses
  %i.be = icmp ugt i32 %i.aq, %i.bd
  br i1 %i.be, label %bb.e, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i

bb.e:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i
  %i.bf = sub nuw nsw i32 %i.aq, %i.bd
  %i.bg = shl i32 %i.bf, 2                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i, label %bb.f, !prof !57

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !65
  %i.bj = zext nneg i32 %i.bd to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = zext i32 %i.bg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bk, i8 0, i64 %i.bl, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread.i
  store i32 %i.aq, ptr %i.bc, align 4, !tbaa !66
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread64.i, %._crit_edge.i
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 4 uses
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
  %i.bt = load i32, ptr %i.bn, align 4, !tbaa !66
  %.not.i9.us.i.i = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i9.us.i.i, label %bb.h, label %bb.g, !prof !54

bb.g:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i

bb.h:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i.i
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bu
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i:          ; preds = %bb.h, %bb.g
  %.0.i10.us.i.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.bv, %bb.h ]
  store i32 %i.br, ptr %.0.i10.us.i.i, align 4, !tbaa !59
  %i.bw = add i32 %storemerge17.us.i.i, 1         ; 2 uses
  %.not.us.i.i = icmp ugt i32 %i.bw, %i.nu
  br i1 %.not.us.i.i, label %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i.i, !llvm.loop !67

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i
  %.019.i.i = phi i32 [ %i.cy, %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i ], [ 0, %.lr.ph.i.i ]
  %storemerge17.i.i = phi i32 [ %i.dd, %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i ], [ %i.ns, %.lr.ph.i.i ] ; 5 uses
  %i.bx = mul i32 %storemerge17.i.i, 506952113
  %i.by = and i32 %i.bx, 1073741823
  %i.bz = load i32, ptr %i.an, align 8, !tbaa !68
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
  %i.ch = load i32, ptr %i.cc, align 4, !tbaa !59
  %i.ci = icmp eq i32 %i.ch, %storemerge17.i.i
  br i1 %i.ci, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cj = load i32, ptr %i.ct, align 4, !tbaa !59
  %i.ck = icmp eq i32 %i.cj, %storemerge17.i.i
  br i1 %i.ck, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !69

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
  br i1 %.not.i.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i, label %bb.i, !llvm.loop !69

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i:      ; preds = %.lr.ph.i.i.i.i, %._crit_edge.i.i.i.i, %.lr.ph.split.i.i
  %.0.i.i.i = phi ptr [ @_hb_NullPool, %.lr.ph.split.i.i ], [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i ], [ @_hb_NullPool, %.lr.ph.i.i.i.i ]
  %i.cx = load i32, ptr %.0.i.i.i, align 4, !tbaa !59
  %i.cy = add i32 %i.cx, %.019.i.i                ; 2 uses
  %i.cz = sub i32 %storemerge17.i.i, %i.ns        ; 2 uses
  %i.da = load i32, ptr %i.bn, align 4, !tbaa !66
  %.not.i9.i.i = icmp ult i32 %i.cz, %i.da
  br i1 %.not.i9.i.i, label %bb.k, label %bb.j, !prof !54

bb.j:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i

bb.k:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i.i
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.db
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i

_ZN11hb_vector_tIjLb0EEixEi.exit.i.i:             ; preds = %bb.k, %bb.j
  %.0.i10.i.i = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.dc, %bb.k ]
  store i32 %i.cy, ptr %.0.i10.i.i, align 4, !tbaa !59
  %i.dd = add i32 %storemerge17.i.i, 1            ; 2 uses
  %.not.i78.i = icmp ugt i32 %i.dd, %i.nu
  br i1 %.not.i78.i, label %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.split.i.i, !llvm.loop !67

_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.i.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i.i
  %i.de = load i32, ptr %i.f, align 4, !tbaa !59  ; 6 uses
  %i.df = load i32, ptr %i.g, align 4, !tbaa !59  ; 4 uses
  %i.dg = sub i32 %i.df, %i.de                    ; 2 uses
  %i.dh = add i32 %i.dg, 1                        ; 3 uses
  %or.cond97.i = icmp ult i32 %i.dg, 2147483647
  br i1 %or.cond97.i, label %.preheader.i205.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i, !prof !70

.preheader.i205.i:                                ; preds = %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, %.preheader.i205.i
  %.043.i206.i = phi i32 [ %i.dk, %.preheader.i205.i ], [ 0, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ] ; 2 uses
  %i.di = lshr i32 %.043.i206.i, 1
  %i.dj = add nuw i32 %.043.i206.i, 8
  %i.dk = add nuw i32 %i.dj, %i.di                ; 4 uses
  %i.dl = icmp ugt i32 %i.dh, %i.dk
  br i1 %i.dl, label %.preheader.i205.i, label %.thread.i207.i, !llvm.loop !55

.thread.i207.i:                                   ; preds = %.preheader.i205.i
  %i.dm = icmp ugt i32 %i.dk, 1073741823
  br i1 %i.dm, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i, !prof !57

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i: ; preds = %.thread.i207.i
  %i.dn = shl nuw i32 %i.dk, 2
  %i.do = zext i32 %i.dn to i64
  %i.dp = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.do) #16 ; 3 uses
  %.not22.i211.i = icmp eq ptr %i.dp, null
  br i1 %.not22.i211.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i, label %bb.l, !prof !58

bb.l:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i
  %20 = shl nuw i32 %i.dh, 2
  %i.dq = zext i32 %20 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dp, i8 0, i64 %i.dq, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i

_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i:      ; preds = %bb.l, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i, %.thread.i207.i, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %.sroa.041.1.i = phi i1 [ false, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ false, %.thread.i207.i ], [ false, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i ], [ true, %bb.l ]
  %.sroa.744.0.i = phi i32 [ 0, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ 0, %.thread.i207.i ], [ 0, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i ], [ %i.dh, %bb.l ] ; 8 uses
  %.sroa.1548.2.i = phi ptr [ null, %_ZN3CFFL14cumsum_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ null, %.thread.i207.i ], [ null, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i210.i ], [ %i.dp, %bb.l ] ; 9 uses
  %.not17.i.i = icmp ugt i32 %i.de, %i.df
  br i1 %.not17.i.i, label %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.i80.i

.lr.ph.i80.i:                                     ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i
  %i.dr = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 4 uses
  %.not.i.i81.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i81.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i, label %.lr.ph.split.i82.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i: ; preds = %.lr.ph.i80.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i
  %storemerge19.us.i.i = phi i32 [ %i.dv, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i ], [ %i.de, %.lr.ph.i80.i ] ; 2 uses
  %i.ds = sub i32 %storemerge19.us.i.i, %i.de     ; 2 uses
  %.not.i8.us.i.i = icmp ult i32 %i.ds, %.sroa.744.0.i
  br i1 %.not.i8.us.i.i, label %bb.n, label %bb.m, !prof !54

bb.m:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i

bb.n:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1548.2.i, i64 %i.dt
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i:        ; preds = %bb.n, %bb.m
  %.0.i9.us.i.i = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.du, %bb.n ]
  store i32 %i.bo, ptr %.0.i9.us.i.i, align 4, !tbaa !59
  %i.dv = add i32 %storemerge19.us.i.i, 1         ; 2 uses
  %.not.us.i98.i = icmp ugt i32 %i.dv, %i.df
  br i1 %.not.us.i98.i, label %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i96.i, !llvm.loop !71

.lr.ph.split.i82.i:                               ; preds = %.lr.ph.i80.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i
  %storemerge19.i.i = phi i32 [ %i.fa, %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i ], [ %i.de, %.lr.ph.i80.i ] ; 5 uses
  %.018.i.i = phi i32 [ %.sroa.speculated.i.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i ], [ 0, %.lr.ph.i80.i ]
  %i.dw = mul i32 %storemerge19.i.i, 506952113
  %i.dx = and i32 %i.dw, 1073741823
  %i.dy = load i32, ptr %i.an, align 8, !tbaa !68
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
  %i.eg = load i32, ptr %i.eb, align 4, !tbaa !59
  %i.eh = icmp eq i32 %i.eg, %storemerge19.i.i
  br i1 %i.eh, label %._crit_edge.i.i.i89.i, label %.lr.ph.i.i.i85.i

bb.o:                                             ; preds = %.lr.ph.i.i.i85.i
  %i.ei = load i32, ptr %i.es, align 4, !tbaa !59
  %i.ej = icmp eq i32 %i.ei, %storemerge19.i.i
  br i1 %i.ej, label %._crit_edge.i.i.i89.i, label %.lr.ph.i.i.i85.i, !llvm.loop !69

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
  br i1 %.not.i.i.i.i88.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i, label %bb.o, !llvm.loop !69

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i:    ; preds = %.lr.ph.i.i.i85.i, %._crit_edge.i.i.i89.i, %.lr.ph.split.i82.i
  %.0.i.i93.i = phi ptr [ @_hb_NullPool, %.lr.ph.split.i82.i ], [ %spec.select.i.i.i91.i, %._crit_edge.i.i.i89.i ], [ @_hb_NullPool, %.lr.ph.i.i.i85.i ]
  %i.ew = load i32, ptr %.0.i.i93.i, align 4, !tbaa !59
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %.018.i.i, i32 %i.ew) ; 2 uses
  %i.ex = sub i32 %storemerge19.i.i, %i.de        ; 2 uses
  %.not.i8.i.i = icmp ult i32 %i.ex, %.sroa.744.0.i
  br i1 %.not.i8.i.i, label %bb.q, label %bb.p, !prof !54

bb.p:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i

bb.q:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i92.i
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1548.2.i, i64 %i.ey
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i

_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i:           ; preds = %bb.q, %bb.p
  %.0.i9.i.i = phi ptr [ @_hb_CrapPool, %bb.p ], [ %i.ez, %bb.q ]
  store i32 %.sroa.speculated.i.i, ptr %.0.i9.i.i, align 4, !tbaa !59
  %i.fa = add i32 %storemerge19.i.i, 1            ; 2 uses
  %.not.i95.i = icmp ugt i32 %i.fa, %i.df
  br i1 %.not.i95.i, label %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.split.i82.i, !llvm.loop !71

_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.i94.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i97.i, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i79.i
  %i.fb = load i32, ptr %i.f, align 4, !tbaa !59  ; 8 uses
  %i.fc = load i32, ptr %i.g, align 4, !tbaa !59  ; 6 uses
  %i.fd = sub i32 %i.fc, %i.fb                    ; 2 uses
  %i.fe = add i32 %i.fd, 1                        ; 8 uses
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i, label %bb.r, !prof !57

bb.r:                                             ; preds = %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %i.fg = load i32, ptr %9, align 8, !tbaa !64    ; 5 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i, label %bb.s, !prof !57

bb.s:                                             ; preds = %bb.r
  %.not.i224.i = icmp samesign ugt i32 %i.fe, %i.fg
  br i1 %.not.i224.i, label %.preheader.i226.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i, !prof !57

.preheader.i226.i:                                ; preds = %bb.s, %.preheader.i226.i
  %.043.i227.i = phi i32 [ %i.fk, %.preheader.i226.i ], [ %i.fg, %bb.s ] ; 2 uses
  %i.fi = lshr i32 %.043.i227.i, 1
  %i.fj = add nuw i32 %.043.i227.i, 8
  %i.fk = add nuw i32 %i.fj, %i.fi                ; 7 uses
  %i.fl = icmp ugt i32 %i.fe, %i.fk
  br i1 %i.fl, label %.preheader.i226.i, label %.thread.i228.i, !llvm.loop !55

.thread.i228.i:                                   ; preds = %.preheader.i226.i
  %i.fm = icmp ugt i32 %i.fk, 1073741823
  br i1 %i.fm, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread82.i, label %bb.t, !prof !57

bb.t:                                             ; preds = %.thread.i228.i
  %.not49.i230.i = icmp eq i32 %i.fg, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !65 ; 2 uses
  br i1 %.not49.i230.i, label %bb.u, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i

bb.u:                                             ; preds = %bb.t
  %.not9.i.i.i240.i = icmp eq ptr %i.fo, null
  br i1 %.not9.i.i.i240.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fp = shl nuw i32 %i.fk, 2
  %i.fq = zext i32 %i.fp to i64
  %i.fr = call ptr @hb_malloc(i64 noundef %i.fq) #16 ; 4 uses
  %.not10.i.i.i241.i = icmp eq ptr %i.fr, null
  br i1 %.not10.i.i.i241.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i, label %bb.w, !prof !57

bb.w:                                             ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !66 ; 2 uses
  %.not.i.i.i.i242.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i.i.i242.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i, label %bb.x, !prof !57

bb.x:                                             ; preds = %bb.w
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 2
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr readonly align 1 %i.fw, i64 %i.fv, i1 false), !alias.scope !72
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i: ; preds = %bb.u, %bb.t
  %i.fx = phi ptr [ null, %bb.u ], [ %i.fo, %bb.t ]
  %i.fy = shl nuw i32 %i.fk, 2
  %i.fz = zext i32 %i.fy to i64
  %i.ga = call ptr @hb_realloc(ptr noundef %i.fx, i64 noundef %i.fz) #16 ; 2 uses
  %.not22.i232.i = icmp eq ptr %i.ga, null
  br i1 %.not22.i232.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i, !prof !58

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i, %bb.v
  %i.gb = load i32, ptr %9, align 8, !tbaa !64    ; 2 uses
  %.not23.i239.i = icmp ugt i32 %i.fk, %i.gb
  br i1 %.not23.i239.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread82.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread82.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i, %.thread.i228.i
  %.sink.i236.ph.in.i = phi i32 [ %i.fg, %.thread.i228.i ], [ %i.gb, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i ]
  %.sink.i236.ph.i = xor i32 %.sink.i236.ph.in.i, -1
  store i32 %.sink.i236.ph.i, ptr %9, align 8, !tbaa !64
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i:       ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i, %bb.x, %bb.w
  %.1.i.i42.i234.i = phi ptr [ %i.ga, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i231.i ], [ %i.fr, %bb.x ], [ %i.fr, %bb.w ]
  store ptr %.1.i.i42.i234.i, ptr %i.fn, align 8, !tbaa !65
  store i32 %i.fk, ptr %9, align 8, !tbaa !64
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i: ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.i, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i238.i, %bb.s
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !66 ; 3 uses
  %i.ge = icmp ugt i32 %i.fe, %i.gd
  br i1 %i.ge, label %bb.y, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i

bb.y:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i
  %i.gf = sub nuw nsw i32 %i.fe, %i.gd
  %i.gg = shl i32 %i.gf, 2                        ; 2 uses
  %.not.i.i.i.i.i120.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i.i.i.i120.i, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i, label %bb.z, !prof !57

bb.z:                                             ; preds = %bb.y
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !65
  %i.gj = zext nneg i32 %i.gd to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = zext i32 %i.gg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.gk, i8 0, i64 %i.gl, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i: ; preds = %bb.z, %bb.y, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread.i
  store i32 %i.fe, ptr %i.gc, align 4, !tbaa !66
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i

_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i:     ; preds = %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i119.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit244.thread82.i, %bb.r, %_ZN3CFFL14cummax_forwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %.not20.i.i = icmp slt i32 %i.fc, %i.fb
  br i1 %.not20.i.i, label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i
  %i.gm = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 4 uses
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
  %i.gu = load i32, ptr %i.gn, align 4, !tbaa !66
  %.not.i15.us.i.i = icmp ult i32 %i.gt, %i.gu
  br i1 %.not.i15.us.i.i, label %bb.ab, label %bb.aa, !prof !54

bb.aa:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i

bb.ab:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i
  %i.gv = zext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gv
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i:       ; preds = %bb.ab, %bb.aa
  %.0.i16.us.i.i = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.gw, %bb.ab ]
  store i32 %i.gs, ptr %.0.i16.us.i.i, align 4, !tbaa !59
  %i.gx = add i32 %i.gs, %i.bo                    ; 3 uses
  %i.gy = add i32 %.022.us.i.i, %i.gr             ; 2 uses
  %i.gz = load i32, ptr %i.gn, align 4, !tbaa !66
  %.not.i15.us.i.i.1 = icmp ult i32 %i.gy, %i.gz
  br i1 %.not.i15.us.i.i.1, label %bb.ad, label %bb.ac, !prof !54

bb.ac:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i
  %i.ha = zext i32 %i.gy to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ha
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1:     ; preds = %bb.ad, %bb.ac
  %.0.i16.us.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.hb, %bb.ad ]
  store i32 %i.gx, ptr %.0.i16.us.i.i.1, align 4, !tbaa !59
  %i.hc = add nsw i32 %.022.us.i.i, -2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i, !llvm.loop !76

.lr.ph.split.i104.i:                              ; preds = %.lr.ph.i102.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i
  %.022.i.i = phi i32 [ %i.ij, %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i ], [ %i.fc, %.lr.ph.i102.i ] ; 6 uses
  %.01321.i.i = phi i32 [ %i.ie, %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i ], [ 0, %.lr.ph.i102.i ]
  %i.hd = mul i32 %.022.i.i, 506952113
  %i.he = and i32 %i.hd, 1073741823
  %i.hf = load i32, ptr %i.an, align 8, !tbaa !68
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
  %i.hn = load i32, ptr %i.hi, align 4, !tbaa !59
  %i.ho = icmp eq i32 %i.hn, %.022.i.i
  br i1 %i.ho, label %._crit_edge.i.i.i111.i, label %.lr.ph.i.i.i107.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i107.i
  %i.hp = load i32, ptr %i.hz, align 4, !tbaa !59
  %i.hq = icmp eq i32 %i.hp, %.022.i.i
  br i1 %i.hq, label %._crit_edge.i.i.i111.i, label %.lr.ph.i.i.i107.i, !llvm.loop !69

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
  br i1 %.not.i.i.i.i110.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i, label %bb.ae, !llvm.loop !69

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i:   ; preds = %.lr.ph.i.i.i107.i, %._crit_edge.i.i.i111.i, %.lr.ph.split.i104.i
  %.0.i.i115.i = phi ptr [ @_hb_NullPool, %.lr.ph.split.i104.i ], [ %spec.select.i.i.i113.i, %._crit_edge.i.i.i111.i ], [ @_hb_NullPool, %.lr.ph.i.i.i107.i ]
  %i.id = load i32, ptr %.0.i.i115.i, align 4, !tbaa !59
  %i.ie = add i32 %i.id, %.01321.i.i              ; 2 uses
  %i.if = sub i32 %.022.i.i, %i.fb                ; 2 uses
  %i.ig = load i32, ptr %i.gn, align 4, !tbaa !66
  %.not.i15.i.i = icmp ult i32 %i.if, %i.ig
  br i1 %.not.i15.i.i, label %bb.ag, label %bb.af, !prof !54

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i

bb.ag:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i114.i
  %i.ih = zext i32 %i.if to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ih
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i

_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i:          ; preds = %bb.ag, %bb.af
  %.0.i16.i.i = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.ii, %bb.ag ]
  store i32 %i.ie, ptr %.0.i16.i.i, align 4, !tbaa !59
  %i.ij = add nsw i32 %.022.i.i, -1
  %.not.not.i.i = icmp sgt i32 %.022.i.i, %i.fb
  br i1 %.not.not.i.i, label %.lr.ph.split.i104.i, label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, !llvm.loop !76

_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.1
  %i.ik = and i32 %i.fd, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ik, 0
  br i1 %lcmp.mod.not.not, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.epil.preheader, label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.epil.preheader: ; preds = %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader
  %.022.us.i.i.epil.init = phi i32 [ %i.fc, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader ], [ %i.hc, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa ]
  %.01321.us.i.i.epil.init = phi i32 [ 0, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.preheader ], [ %i.gx, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod1864.a = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod1864.a)
  %i.il = add i32 %.01321.us.i.i.epil.init, %i.bo
  %i.im = sub i32 %.022.us.i.i.epil.init, %i.fb   ; 2 uses
  %i.in = load i32, ptr %i.gn, align 4, !tbaa !66
  %.not.i15.us.i.i.epil = icmp ult i32 %i.im, %i.in
  br i1 %.not.i15.us.i.i.epil, label %bb.ai, label %bb.ah, !prof !54

bb.ah:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.epil.preheader
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.epil

bb.ai:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i117.i.epil.preheader
  %i.io = zext i32 %i.im to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.io
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.epil

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.epil:  ; preds = %bb.ai, %bb.ah
  %.0.i16.us.i.i.epil = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.ip, %bb.ai ]
  store i32 %i.il, ptr %.0.i16.us.i.i.epil, align 4, !tbaa !59
  br label %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i

_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.i116.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i118.i.epil, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i.loopexit.unr-lcssa, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i101.i
  %i.iq = load i32, ptr %i.f, align 4, !tbaa !59  ; 9 uses
  %i.ir = load i32, ptr %i.g, align 4, !tbaa !59  ; 7 uses
  %i.is = sub i32 %i.ir, %i.iq                    ; 3 uses
  %i.it = add i32 %i.is, 1                        ; 3 uses
  %or.cond98.i = icmp ult i32 %i.is, 2147483647
  br i1 %or.cond98.i, label %.preheader.i247.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i, !prof !70

.preheader.i247.i:                                ; preds = %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, %.preheader.i247.i
  %.043.i248.i = phi i32 [ %i.iw, %.preheader.i247.i ], [ 0, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ] ; 2 uses
  %i.iu = lshr i32 %.043.i248.i, 1
  %i.iv = add nuw i32 %.043.i248.i, 8
  %i.iw = add nuw i32 %i.iv, %i.iu                ; 4 uses
  %i.ix = icmp ugt i32 %i.it, %i.iw
  br i1 %i.ix, label %.preheader.i247.i, label %.thread.i249.i, !llvm.loop !55

.thread.i249.i:                                   ; preds = %.preheader.i247.i
  %i.iy = icmp ugt i32 %i.iw, 1073741823
  br i1 %i.iy, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i, !prof !57

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i: ; preds = %.thread.i249.i
  %i.iz = shl nuw i32 %i.iw, 2
  %i.ja = zext i32 %i.iz to i64
  %i.jb = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ja) #16 ; 3 uses
  %.not22.i253.i = icmp eq ptr %i.jb, null
  br i1 %.not22.i253.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i, label %bb.aj, !prof !58

bb.aj:                                            ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i
  %21 = shl nuw i32 %i.it, 2
  %i.jc = zext i32 %21 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jb, i8 0, i64 %i.jc, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i

_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i:     ; preds = %bb.aj, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i, %.thread.i249.i, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %.sroa.0.1.i = phi i1 [ false, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ false, %.thread.i249.i ], [ false, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i ], [ true, %bb.aj ]
  %.sroa.7.0.i = phi i32 [ 0, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ 0, %.thread.i249.i ], [ 0, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i ], [ %i.it, %bb.aj ] ; 10 uses
  %.sroa.15.2.i = phi ptr [ null, %_ZN3CFFL15cumsum_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i ], [ null, %.thread.i249.i ], [ null, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i252.i ], [ %i.jb, %bb.aj ] ; 11 uses
  %.not21.i.i = icmp slt i32 %i.ir, %i.iq
  br i1 %.not21.i.i, label %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, label %.lr.ph.i122.i

.lr.ph.i122.i:                                    ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i
  %i.jd = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 4 uses
  %.not.i.i123.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i123.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.preheader, label %.lr.ph.split.i124.i

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.preheader: ; preds = %.lr.ph.i122.i
  %i.je = and i32 %i.is, 1
  %lcmp.mod1866.not.not = icmp eq i32 %i.je, 0
  br i1 %lcmp.mod1866.not.not, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol.loopexit

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol: ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.preheader
  %i.jf = sub i32 %i.ir, %i.iq                    ; 2 uses
  %.not.i13.us.i.i.prol = icmp ult i32 %i.jf, %.sroa.7.0.i
  br i1 %.not.i13.us.i.i.prol, label %bb.al, label %bb.ak, !prof !54

bb.ak:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.prol

bb.al:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.jg
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.prol

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.prol:  ; preds = %bb.al, %bb.ak
  %.0.i14.us.i.i.prol = phi ptr [ @_hb_CrapPool, %bb.ak ], [ %i.jh, %bb.al ]
  store i32 %i.bo, ptr %.0.i14.us.i.i.prol, align 4, !tbaa !59
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
  br i1 %.not.i13.us.i.i, label %bb.an, label %bb.am, !prof !54

bb.am:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i

bb.an:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.jl
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i:       ; preds = %bb.an, %bb.am
  %.0.i14.us.i.i = phi ptr [ @_hb_CrapPool, %bb.am ], [ %i.jm, %bb.an ]
  store i32 %i.bo, ptr %.0.i14.us.i.i, align 4, !tbaa !59
  %i.jn = add nsw i32 %.023.us.i.i, -1            ; 2 uses
  %i.jo = sub i32 %i.jn, %i.iq                    ; 2 uses
  %.not.i13.us.i.i.1 = icmp ult i32 %i.jo, %.sroa.7.0.i
  br i1 %.not.i13.us.i.i.1, label %bb.ap, label %bb.ao, !prof !54

bb.ao:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1

bb.ap:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.jp
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1

_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1:     ; preds = %bb.ap, %bb.ao
  %.0.i14.us.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.ao ], [ %i.jq, %bb.ap ]
  store i32 %i.bo, ptr %.0.i14.us.i.i.1, align 4, !tbaa !59
  %i.jr = add nsw i32 %.023.us.i.i, -2
  %.not.us.not.i141.i.1 = icmp sgt i32 %i.jn, %i.iq
  br i1 %.not.us.not.i141.i.1, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i, label %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, !llvm.loop !77

.lr.ph.split.i124.i:                              ; preds = %.lr.ph.i122.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i
  %.023.i.i = phi i32 [ %i.kw, %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i ], [ %i.ir, %.lr.ph.i122.i ] ; 6 uses
  %.01722.i.i = phi i32 [ %.sroa.speculated.i136.i, %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i ], [ 0, %.lr.ph.i122.i ]
  %i.js = mul i32 %.023.i.i, 506952113
  %i.jt = and i32 %i.js, 1073741823
  %i.ju = load i32, ptr %i.an, align 8, !tbaa !68
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
  %i.kc = load i32, ptr %i.jx, align 4, !tbaa !59
  %i.kd = icmp eq i32 %i.kc, %.023.i.i
  br i1 %i.kd, label %._crit_edge.i.i.i131.i, label %.lr.ph.i.i.i127.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i127.i
  %i.ke = load i32, ptr %i.ko, align 4, !tbaa !59
  %i.kf = icmp eq i32 %i.ke, %.023.i.i
  br i1 %i.kf, label %._crit_edge.i.i.i131.i, label %.lr.ph.i.i.i127.i, !llvm.loop !69

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
  br i1 %.not.i.i.i.i130.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i, label %bb.aq, !llvm.loop !69

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i:   ; preds = %.lr.ph.i.i.i127.i, %._crit_edge.i.i.i131.i, %.lr.ph.split.i124.i
  %.0.i.i135.i = phi ptr [ @_hb_NullPool, %.lr.ph.split.i124.i ], [ %spec.select.i.i.i133.i, %._crit_edge.i.i.i131.i ], [ @_hb_NullPool, %.lr.ph.i.i.i127.i ]
  %i.ks = load i32, ptr %.0.i.i135.i, align 4, !tbaa !59
  %.sroa.speculated.i136.i = call i32 @llvm.umax.i32(i32 %.01722.i.i, i32 %i.ks) ; 2 uses
  %i.kt = sub i32 %.023.i.i, %i.iq                ; 2 uses
  %.not.i13.i.i = icmp ult i32 %i.kt, %.sroa.7.0.i
  br i1 %.not.i13.i.i, label %bb.as, label %bb.ar, !prof !54

bb.ar:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i

bb.as:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i134.i
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.ku
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i

_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i:          ; preds = %bb.as, %bb.ar
  %.0.i14.i.i = phi ptr [ @_hb_CrapPool, %bb.ar ], [ %i.kv, %bb.as ]
  store i32 %.sroa.speculated.i136.i, ptr %.0.i14.i.i, align 4, !tbaa !59
  %i.kw = add nsw i32 %.023.i.i, -1
  %.not.not.i138.i = icmp sgt i32 %.023.i.i, %i.iq
  br i1 %.not.not.i138.i, label %.lr.ph.split.i124.i, label %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i, !llvm.loop !77

_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.i137.i, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.us.i139.i.prol.loopexit, %_ZN11hb_vector_tIjLb0EEixEi.exit.us.i140.i.1, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.i121.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %8, ptr %10, align 8, !tbaa !78
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.f, ptr %i.kx, align 8, !tbaa !79
  %i.ky = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.g, ptr %i.ky, align 8, !tbaa !79
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %9, ptr %i.kz, align 8, !tbaa !78
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %7, ptr %i.la, align 8, !tbaa !80
  %i.lb = load i32, ptr %i.f, align 4, !tbaa !59  ; 34 uses
  %i.lc = call fastcc noundef i32 @"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_0clEj"(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %i.lb)
  %i.ld = load i32, ptr %i.g, align 4, !tbaa !59  ; 21 uses
  %i.le = icmp sgt i32 %i.lb, %i.ld               ; 2 uses
  br i1 %i.le, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN3CFFL15cummax_backwardERK12hb_hashmap_tIjjLb0EEjjR11hb_vector_tIjLb0EE.exit.i
  %.not.i.i.i.not.i = icmp eq i32 %.sroa.744.0.i, 0
  %.0.i.i.i.i = select i1 %.not.i.i.i.not.i, ptr @_hb_NullPool, ptr %.sroa.1548.2.i, !prof !57
  %i.lf = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !59
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
  %.0.i.i19.i.i = select i1 %.not.i.i18.i.i, ptr %i.lj, ptr @_hb_NullPool, !prof !54
  %i.lk = load i32, ptr %.0.i.i19.i.i, align 4, !tbaa !59
  %i.ll = shl i32 %i.lk, 1
  %i.lm = call i32 @llvm.umax.i32(i32 %.0.i.i144.i, i32 %i.ll)
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i.i: ; preds = %bb.au, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i.i
  %.0.i20.i.i = phi i32 [ %i.lm, %bb.au ], [ %.0.i.i144.i, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i.i ] ; 2 uses
  %i.ln = add i32 %i.lb, -1132                    ; 2 uses
  %i.lo = icmp sgt i32 %i.lb, -2147482517
  %i.lp = icmp sgt i32 %i.ln, %i.ld
  %or.cond.i22.i.i = or i1 %i.lo, %i.lp
  br i1 %or.cond.i22.i.i, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i.i, label %bb.av

bb.av:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i.i
  %.not.i.i23.i.i = icmp ugt i32 %.sroa.744.0.i, -1132
end_hunk_0
begin_hunk_1_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %spec.select.i.i.i = select i1 %i.nc, ptr %i.nd, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i146.i, %bb.bb
  %.01016.i13.i.i.i = phi i32 [ %i.ng, %bb.bb ], [ %i.mp, %.lr.ph.i.i.i146.i ]
  %.017.i12.i.i.i = phi i32 [ %i.ne, %bb.bb ], [ 0, %.lr.ph.i.i.i146.i ]
  %i.ne = add i32 %.017.i12.i.i.i, 1              ; 2 uses
  %i.nf = add i32 %i.ne, %.01016.i13.i.i.i
  %i.ng = and i32 %i.nf, %i.mv                    ; 2 uses
  %i.nh = zext i32 %i.ng to i64                   ; 2 uses
  %i.ni = getelementptr inbounds nuw [12 x i8], ptr %i.ml, i64 %i.nh ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nk = load i32, ptr %i.nj, align 4            ; 2 uses
  %i.nl = and i32 %i.nk, 2
  %.not.i.i.i147.i = icmp eq i32 %i.nl, 0
  br i1 %.not.i.i.i147.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i, label %bb.bb, !llvm.loop !69

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i:        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.ba, %bb.az
  %.0.i148.i = phi ptr [ @_hb_NullPool, %bb.az ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @_hb_NullPool, %bb.ba ], [ @_hb_NullPool, %.lr.ph.i.i.i ]
  %i.nm = load i32, ptr %.0.i148.i, align 4, !tbaa !59
  %i.nn = add i32 %i.nm, 1
  store i32 %i.nn, ptr %i.i, align 4, !tbaa !59
  %i.no = mul i32 %i.mk, -1640531535
  %i.np = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.no, ptr noundef nonnull align 4 dereferenceable(4) %i.i, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  %i.nq = load i32, ptr %i.f, align 4, !tbaa !59
  %i.nr = load i32, ptr %i.h, align 4, !tbaa !59  ; 2 uses
  %i.ns = call i32 @llvm.umin.i32(i32 %i.nq, i32 %i.nr) ; 6 uses
  store i32 %i.ns, ptr %i.f, align 4, !tbaa !59
  %i.nt = load i32, ptr %i.g, align 4, !tbaa !59
  %i.nu = call i32 @llvm.umax.i32(i32 %i.nt, i32 %i.nr) ; 4 uses
  store i32 %i.nu, ptr %i.g, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  %i.nv = getelementptr inbounds nuw i8, ptr %.062130.i, i64 4 ; 2 uses
  %.not.i222 = icmp eq ptr %i.nv, %i.am
  br i1 %.not.i222, label %._crit_edge.i, label %bb.az

._crit_edge138.loopexit.i:                        ; preds = %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i"
  %.pre178.i = add nsw i32 %spec.select.i, -108
  %.pre179.i = add nsw i32 %spec.select.i, -1132
  %.pre181.i = add nsw i32 %spec.select.i, 108
  %.pre183.i = add nsw i32 %spec.select.i, 1132
  br label %._crit_edge138.i

._crit_edge138.i:                                 ; preds = %._crit_edge138.loopexit.i, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i"
  %.pre-phi184.i = phi i32 [ %.pre183.i, %._crit_edge138.loopexit.i ], [ %i.mc, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i" ] ; 6 uses
  %.pre-phi182.i = phi i32 [ %.pre181.i, %._crit_edge138.loopexit.i ], [ %i.lv, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i" ] ; 6 uses
  %.pre-phi180.i = phi i32 [ %.pre179.i, %._crit_edge138.loopexit.i ], [ %i.ln, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i" ] ; 6 uses
  %.pre-phi.i = phi i32 [ %.pre178.i, %._crit_edge138.loopexit.i ], [ %i.lg, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i" ] ; 6 uses
  %.060.lcssa.i = phi i32 [ %spec.select.i, %._crit_edge138.loopexit.i ], [ %i.lb, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i" ] ; 15 uses
  %.val.i = load i32, ptr %i.ao, align 4
  %.val71.i = load ptr, ptr %i.aj, align 8        ; 5 uses
  %i.nw = add i32 %.val.i, 1                      ; 6 uses
  %.not15.i.i.i.i.i.i = icmp ult i32 %i.nw, 2     ; 5 uses
  %i.nx = icmp slt i32 %.060.lcssa.i, %i.lb
  %i.ny = icmp sgt i32 %.060.lcssa.i, %i.ld
  %or.cond.i = or i1 %i.nx, %i.ny
  br i1 %or.cond.i, label %._crit_edge145.i, label %bb.bo

.lr.ph137.i:                                      ; preds = %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i", %.lr.ph137.preheader.i
  %.057136.i = phi i32 [ %.057.i, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i" ], [ %.057131.i, %.lr.ph137.preheader.i ] ; 8 uses
  %.057.in135.i = phi i32 [ %.057136.i, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i" ], [ %i.lb, %.lr.ph137.preheader.i ] ; 4 uses
  %.058134.i = phi i32 [ %spec.select67.i, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i" ], [ %i.mj, %.lr.ph137.preheader.i ] ; 2 uses
  %.060133.i = phi i32 [ %spec.select.i, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i" ], [ %i.lb, %.lr.ph137.preheader.i ]
  %i.nz = call fastcc noundef i32 @"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_0clEj"(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %.057136.i)
  %i.oa = icmp slt i32 %.057136.i, %i.lb
  %i.ob = icmp sgt i32 %.057136.i, %i.ld
  %or.cond.i.i154.i = or i1 %i.oa, %i.ob          ; 2 uses
  br i1 %or.cond.i.i154.i, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i157.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph137.i
  %i.oc = sub i32 %.057136.i, %i.lb               ; 2 uses
  %.not.i.i.i155.i = icmp ult i32 %i.oc, %.sroa.744.0.i
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1548.2.i, i64 %i.od
  %.0.i.i.i156.i = select i1 %.not.i.i.i155.i, ptr %i.oe, ptr @_hb_NullPool, !prof !54
  %i.of = load i32, ptr %.0.i.i.i156.i, align 4, !tbaa !59
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i157.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i157.i: ; preds = %bb.bc, %.lr.ph137.i
  %.0.i.i158.i = phi i32 [ %i.of, %bb.bc ], [ 0, %.lr.ph137.i ] ; 2 uses
  %i.og = add i32 %.057.in135.i, -107             ; 3 uses
  %i.oh = icmp slt i32 %i.og, %i.lb
  %i.oi = icmp sgt i32 %i.og, %i.ld
  %or.cond.i17.i159.i = or i1 %i.oh, %i.oi
  br i1 %or.cond.i17.i159.i, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i162.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i157.i
  %i.oj = sub i32 %i.og, %i.lb                    ; 2 uses
  %.not.i.i18.i160.i = icmp ult i32 %i.oj, %.sroa.744.0.i
  %i.ok = zext i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1548.2.i, i64 %i.ok
  %.0.i.i19.i161.i = select i1 %.not.i.i18.i160.i, ptr %i.ol, ptr @_hb_NullPool, !prof !54
  %i.om = load i32, ptr %.0.i.i19.i161.i, align 4, !tbaa !59
  %i.on = shl i32 %i.om, 1
  %i.oo = call i32 @llvm.umax.i32(i32 %.0.i.i158.i, i32 %i.on)
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i162.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i162.i: ; preds = %bb.bd, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i157.i
  %.0.i20.i163.i = phi i32 [ %i.oo, %bb.bd ], [ %.0.i.i158.i, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit.i157.i ] ; 2 uses
  %i.op = add i32 %.057.in135.i, -1131            ; 3 uses
  %i.oq = icmp slt i32 %i.op, %i.lb
  %i.or = icmp sgt i32 %i.op, %i.ld
  %or.cond.i22.i164.i = or i1 %i.oq, %i.or
  br i1 %or.cond.i22.i164.i, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i167.i, label %bb.be

bb.be:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i162.i
  %i.os = sub i32 %i.op, %i.lb                    ; 2 uses
  %.not.i.i23.i165.i = icmp ult i32 %i.os, %.sroa.744.0.i
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1548.2.i, i64 %i.ot
  %.0.i.i24.i166.i = select i1 %.not.i.i23.i165.i, ptr %i.ou, ptr @_hb_NullPool, !prof !54
  %i.ov = load i32, ptr %.0.i.i24.i166.i, align 4, !tbaa !59
  %i.ow = mul i32 %i.ov, 5
  %i.ox = call i32 @llvm.umax.i32(i32 %.0.i20.i163.i, i32 %i.ow)
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i167.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i167.i: ; preds = %bb.be, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i162.i
  %.0.i25.i168.i = phi i32 [ %i.ox, %bb.be ], [ %.0.i20.i163.i, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i162.i ]
  br i1 %or.cond.i.i154.i, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i173.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i167.i
  %i.oy = sub i32 %.057136.i, %i.lb               ; 2 uses
  %.not.i.i29.i171.i = icmp ult i32 %i.oy, %.sroa.7.0.i
  %i.oz = zext i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.oz
  %.0.i.i30.i172.i = select i1 %.not.i.i29.i171.i, ptr %i.pa, ptr @_hb_NullPool, !prof !54
  %i.pb = load i32, ptr %.0.i.i30.i172.i, align 4, !tbaa !59
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i173.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i173.i: ; preds = %bb.bf, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i167.i
  %.0.i31.i174.i = phi i32 [ %i.pb, %bb.bf ], [ 0, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i167.i ] ; 2 uses
  %i.pc = add i32 %.057.in135.i, 109              ; 3 uses
  %i.pd = icmp slt i32 %i.pc, %i.lb
  %i.pe = icmp sgt i32 %i.pc, %i.ld
  %or.cond.i33.i175.i = or i1 %i.pd, %i.pe
  br i1 %or.cond.i33.i175.i, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i178.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i173.i
  %i.pf = sub i32 %i.pc, %i.lb                    ; 2 uses
  %.not.i.i34.i176.i = icmp ult i32 %i.pf, %.sroa.7.0.i
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.pg
  %.0.i.i35.i177.i = select i1 %.not.i.i34.i176.i, ptr %i.ph, ptr @_hb_NullPool, !prof !54
  %i.pi = load i32, ptr %.0.i.i35.i177.i, align 4, !tbaa !59
  %i.pj = shl i32 %i.pi, 1
  %i.pk = call i32 @llvm.umax.i32(i32 %.0.i31.i174.i, i32 %i.pj)
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i178.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i178.i: ; preds = %bb.bg, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i173.i
  %.0.i36.i179.i = phi i32 [ %i.pk, %bb.bg ], [ %.0.i31.i174.i, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i173.i ] ; 2 uses
  %i.pl = add i32 %.057.in135.i, 1133             ; 3 uses
  %i.pm = icmp slt i32 %i.pl, %i.lb
  %i.pn = icmp sgt i32 %i.pl, %i.ld
  %or.cond.i39.i180.i = or i1 %i.pm, %i.pn
  br i1 %or.cond.i39.i180.i, label %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i", label %bb.bh

bb.bh:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i178.i
  %i.po = sub i32 %i.pl, %i.lb                    ; 2 uses
  %.not.i.i40.i181.i = icmp ult i32 %i.po, %.sroa.7.0.i
  %i.pp = zext i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2.i, i64 %i.pp
  %.0.i.i41.i182.i = select i1 %.not.i.i40.i181.i, ptr %i.pq, ptr @_hb_NullPool, !prof !54
  %i.pr = load i32, ptr %.0.i.i41.i182.i, align 4, !tbaa !59
  %i.ps = mul i32 %i.pr, 5
  %i.pt = call i32 @llvm.umax.i32(i32 %.0.i36.i179.i, i32 %i.ps)
  br label %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i"

"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i": ; preds = %bb.bh, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i178.i
  %.0.i42.i183.i = phi i32 [ %i.pt, %bb.bh ], [ %.0.i36.i179.i, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i178.i ]
  %.sroa.speculated54.i184.i = call noundef i32 @llvm.umax.i32(i32 %.0.i25.i168.i, i32 %.0.i42.i183.i)
  %i.pu = sub i32 %i.nz, %.sroa.speculated54.i184.i ; 2 uses
  %i.pv = icmp ult i32 %i.pu, %.058134.i
  %spec.select.i = select i1 %i.pv, i32 %.057136.i, i32 %.060133.i ; 6 uses
  %spec.select67.i = call i32 @llvm.umin.i32(i32 %i.pu, i32 %.058134.i)
  %.057.i = add i32 %.057136.i, 1                 ; 2 uses
  %.not65.i = icmp ugt i32 %.057.i, %i.ld
  br i1 %.not65.i, label %._crit_edge138.loopexit.i, label %.lr.ph137.i, !llvm.loop !82

bb.bi:                                            ; preds = %bb.cq
  call void @hb_free(ptr noundef %.sroa.15.2.i) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.cq, %bb.bi
  %i.pw = load i32, ptr %9, align 8, !tbaa !64
  %i.px = add i32 %i.pw, -1
  %spec.select.i.i.i187.i = icmp ult i32 %i.px, -2
  br i1 %spec.select.i.i.i187.i, label %bb.bj, label %_ZN11hb_vector_tIjLb0EED2Ev.exit188.i

bb.bj:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.py, align 4, !tbaa !66
  %i.pz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !65
  call void @hb_free(ptr noundef %i.qa) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit188.i

_ZN11hb_vector_tIjLb0EED2Ev.exit188.i:            ; preds = %bb.bj, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br i1 %.sroa.041.1.i, label %bb.bk, label %_ZN11hb_vector_tIjLb0EED2Ev.exit190.i

bb.bk:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit188.i
  call void @hb_free(ptr noundef %.sroa.1548.2.i) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit190.i

_ZN11hb_vector_tIjLb0EED2Ev.exit190.i:            ; preds = %bb.bk, %_ZN11hb_vector_tIjLb0EED2Ev.exit188.i
  %i.qb = load i32, ptr %8, align 8, !tbaa !64
  %i.qc = add i32 %i.qb, -1
  %spec.select.i.i.i191.i = icmp ult i32 %i.qc, -2
  br i1 %spec.select.i.i.i191.i, label %bb.bl, label %_ZN11hb_vector_tIjLb0EED2Ev.exit192.i

bb.bl:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit190.i
  store i32 0, ptr %i.bn, align 4, !tbaa !66
  %i.qd = load ptr, ptr %i.bp, align 8, !tbaa !65
  call void @hb_free(ptr noundef %i.qd) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit192.i

_ZN11hb_vector_tIjLb0EED2Ev.exit192.i:            ; preds = %bb.bl, %_ZN11hb_vector_tIjLb0EED2Ev.exit190.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  store atomic i32 -57005, ptr %7 monotonic, align 8
  %i.qe = load atomic ptr, ptr %i.ag acquire, align 8 ; 5 uses
  %.not.i.i.i193.i = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i193.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit192.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.qf, ptr noundef nonnull align 8 dereferenceable(56) %i.qe)
  %i.qg = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.qe) #16 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.qe) #16
  store atomic ptr null, ptr %i.ag monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.bm, %_ZN11hb_vector_tIjLb0EED2Ev.exit192.i
  %i.qh = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 2 uses
  %.not.i.i194.i = icmp eq ptr %i.qh, null
  br i1 %.not.i.i194.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.bn, !prof !57

bb.bn:                                            ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  call void @hb_free(ptr noundef nonnull %i.qh) #16
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.bn, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_.exit

bb.bo:                                            ; preds = %._crit_edge138.i
  br i1 %.not15.i.i.i.i.i.i, label %._crit_edge145.thread.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i: ; preds = %bb.bo, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i
  %.sroa.5.sroa.0.0.i.i = phi i32 [ %i.ql, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ], [ %i.nw, %bb.bo ] ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %i.qm, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ], [ %.val71.i, %bb.bo ] ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %i.qj = load i32, ptr %i.qi, align 4, !noalias !83
  %i.qk = trunc i32 %i.qj to i1
  br i1 %i.qk, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i
  %i.ql = add i32 %.sroa.5.sroa.0.0.i.i, -1       ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 12
  %i.qn = icmp eq i32 %i.ql, 0
  br i1 %i.qn, label %._crit_edge145.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i, !llvm.loop !92

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i
  %i.qo = zext i32 %.sroa.5.sroa.0.0.i.i to i64
  %.idx150.i = mul nuw nsw i64 %i.qo, 12
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 %.idx150.i
  br label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i"
  %.0143.i = phi i32 [ %.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i" ] ; 2 uses
  %.sroa.01.0142.i = phi ptr [ %.sroa.01.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i" ], [ %.sroa.02.0.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i" ] ; 3 uses
  %.sroa.72.0141.i = phi i32 [ %.sroa.72.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i" ], [ %.sroa.5.sroa.0.0.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i" ] ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.72.0141.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bp, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i", !prof !57

bb.bp:                                            ; preds = %.lr.ph144.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i": ; preds = %bb.bp, %.lr.ph144.i
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.bp ], [ %.sroa.01.0142.i, %.lr.ph144.i ] ; 2 uses
  %i.qq = load i32, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !93 ; 2 uses
  %i.qr = icmp eq i32 %.060.lcssa.i, %i.qq
  br i1 %i.qr, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i"
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !95
  %i.qu = sub nsw i32 %i.qq, %.060.lcssa.i
  %i.qv = call i32 @llvm.abs.i32(i32 %i.qu, i1 true) ; 2 uses
  %i.qw = icmp samesign ult i32 %i.qv, 108
  %i.qx = icmp samesign ult i32 %i.qv, 1132
  %..i.i = select i1 %i.qx, i32 2, i32 5
  %.0.i197.i = select i1 %i.qw, i32 1, i32 %..i.i
  %i.qy = mul i32 %i.qt, %.0.i197.i
  %i.qz = add i32 %i.qy, %.0143.i
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i"
  %.1.i = phi i32 [ %i.qz, %bb.bq ], [ %.0143.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i" ] ; 2 uses
  %i.ra = zext i32 %.sroa.72.0141.i to i64
  %i.rb = mul nuw nsw i64 %i.ra, 12
  %scevgep.i = getelementptr i8, ptr %.sroa.01.0142.i, i64 %i.rb
  %.not.i.i.i.i.i.i198.i1678 = icmp eq i32 %.sroa.72.0141.i, 0
  br i1 %.not.i.i.i.i.i.i198.i1678, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i, !prof !96

bb.bs:                                            ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i, !llvm.loop !97

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i: ; preds = %bb.br, %bb.bs
  %.sroa.01.1.i1680 = phi ptr [ %i.rd, %bb.bs ], [ %.sroa.01.0142.i, %bb.br ] ; 2 uses
  %.sroa.72.1.i1679 = phi i32 [ %i.rc, %bb.bs ], [ %.sroa.72.0141.i, %bb.br ]
  %i.rc = add i32 %.sroa.72.1.i1679, -1           ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i1680, i64 12 ; 3 uses
  %.not.i.i.i.i199.i = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i.i.i199.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i", label %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i"

"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i1680, i64 16
  %i.rf = load i32, ptr %i.re, align 4
  %i.rg = trunc i32 %i.rf to i1
  br i1 %i.rg, label %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i_crit_edge", label %bb.bs, !llvm.loop !97

"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i", !llvm.loop !97

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i, %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i_crit_edge", %bb.br
  %.sroa.72.2.i = phi i32 [ 0, %bb.br ], [ %i.rc, %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.01.2.i = phi ptr [ %scevgep.i, %bb.br ], [ %i.rd, %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i_crit_edge" ], [ %i.rd, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i196.i = icmp ne ptr %.sroa.01.2.i, %i.qp
  %i.rh = icmp ne i32 %.sroa.72.2.i, 0
  %i.ri = or i1 %i.rh, %.not.i.i.i196.i
  br i1 %i.ri, label %.lr.ph144.i, label %._crit_edge145.i

._crit_edge145.i:                                 ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i", %._crit_edge138.i
  %.2.i = phi i32 [ -1, %._crit_edge138.i ], [ %.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ] ; 4 uses
  %i.rj = icmp slt i32 %.pre-phi.i, %i.lb
  %i.rk = icmp sgt i32 %.pre-phi.i, %i.ld
  %or.cond.1.i = or i1 %i.rj, %i.rk
  br i1 %or.cond.1.i, label %bb.by, label %bb.bt

._crit_edge145.thread.i:                          ; preds = %bb.bo
  %i.rl = icmp slt i32 %.pre-phi.i, %i.lb
  %i.rm = icmp sgt i32 %.pre-phi.i, %i.ld
  %or.cond.1429.i = or i1 %i.rl, %i.rm
  br i1 %or.cond.1429.i, label %.thread433.i, label %._crit_edge145.1.i

bb.bt:                                            ; preds = %._crit_edge145.i
  br i1 %.not15.i.i.i.i.i.i, label %._crit_edge145.1.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i: ; preds = %bb.bt, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i
  %.sroa.5.sroa.0.0.i.1.i = phi i32 [ %i.rq, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i ], [ %i.nw, %bb.bt ] ; 3 uses
  %.sroa.02.0.i.1.i = phi ptr [ %i.rr, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i ], [ %.val71.i, %bb.bt ] ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.1.i, i64 4
  %i.ro = load i32, ptr %i.rn, align 4, !noalias !83
  %i.rp = trunc i32 %i.ro to i1
  br i1 %i.rp, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i
  %i.rq = add i32 %.sroa.5.sroa.0.0.i.1.i, -1     ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.1.i, i64 12
  %i.rs = icmp eq i32 %i.rq, 0
  br i1 %i.rs, label %._crit_edge145.1.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i, !llvm.loop !92

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i
  %i.rt = zext i32 %.sroa.5.sroa.0.0.i.1.i to i64
  %.idx150.1.i = mul nuw nsw i64 %i.rt, 12
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.1.i, i64 %.idx150.1.i
  br label %.lr.ph144.1.i

.lr.ph144.1.i:                                    ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.1.i", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i"
  %.0143.1.i = phi i32 [ %.1.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.1.i" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i" ] ; 2 uses
  %.sroa.01.0142.1.i = phi ptr [ %.sroa.01.2.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.1.i" ], [ %.sroa.02.0.i.1.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i" ] ; 3 uses
  %.sroa.72.0141.1.i = phi i32 [ %.sroa.72.2.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.1.i" ], [ %.sroa.5.sroa.0.0.i.1.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i" ] ; 4 uses
  %.not.i.i.i.i.i.i.1.i = icmp eq i32 %.sroa.72.0141.1.i, 0
  br i1 %.not.i.i.i.i.i.i.1.i, label %bb.bu, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.1.i", !prof !57

bb.bu:                                            ; preds = %.lr.ph144.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.1.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.1.i": ; preds = %bb.bu, %.lr.ph144.1.i
  %.0.i.i.i.i.i.i.1.i = phi ptr [ @_hb_CrapPool, %bb.bu ], [ %.sroa.01.0142.1.i, %.lr.ph144.1.i ] ; 2 uses
  %i.rv = load i32, ptr %.0.i.i.i.i.i.i.1.i, align 4, !tbaa !93 ; 2 uses
  %i.rw = icmp eq i32 %.pre-phi.i, %i.rv
  br i1 %i.rw, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.1.i"
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.1.i, i64 8
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !95
  %i.rz = sub nsw i32 %i.rv, %.060.lcssa.i
  %i.sa = call i32 @llvm.abs.i32(i32 %i.rz, i1 true) ; 2 uses
  %i.sb = icmp samesign ult i32 %i.sa, 108
  %i.sc = icmp samesign ult i32 %i.sa, 1132
  %..i.1.i = select i1 %i.sc, i32 2, i32 5
  %.0.i197.1.i = select i1 %i.sb, i32 1, i32 %..i.1.i
  %i.sd = mul i32 %i.ry, %.0.i197.1.i
  %i.se = add i32 %i.sd, %.0143.1.i
end_hunk_1
begin_hunk_2_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %i.ue = icmp eq i32 %i.uc, 0
  br i1 %i.ue, label %._crit_edge145.3.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.3.i, !llvm.loop !92

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.3.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.3.i
  %i.uf = zext i32 %.sroa.5.sroa.0.0.i.3.i to i64
  %.idx150.3.i = mul nuw nsw i64 %i.uf, 12
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.3.i, i64 %.idx150.3.i
  br label %.lr.ph144.3.i

.lr.ph144.3.i:                                    ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.3.i"
  %.0143.3.i = phi i32 [ %.1.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.3.i" ] ; 2 uses
  %.sroa.01.0142.3.i = phi ptr [ %.sroa.01.2.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i" ], [ %.sroa.02.0.i.3.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.3.i" ] ; 3 uses
  %.sroa.72.0141.3.i = phi i32 [ %.sroa.72.2.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i" ], [ %.sroa.5.sroa.0.0.i.3.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.3.i" ] ; 4 uses
  %.not.i.i.i.i.i.i.3.i = icmp eq i32 %.sroa.72.0141.3.i, 0
  br i1 %.not.i.i.i.i.i.i.3.i, label %bb.cg, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.3.i", !prof !57

bb.cg:                                            ; preds = %.lr.ph144.3.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.3.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.3.i": ; preds = %bb.cg, %.lr.ph144.3.i
  %.0.i.i.i.i.i.i.3.i = phi ptr [ @_hb_CrapPool, %bb.cg ], [ %.sroa.01.0142.3.i, %.lr.ph144.3.i ] ; 2 uses
  %i.uh = load i32, ptr %.0.i.i.i.i.i.i.3.i, align 4, !tbaa !93 ; 2 uses
  %i.ui = icmp eq i32 %.pre-phi182.i, %i.uh
  br i1 %i.ui, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.3.i"
  %i.uj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.3.i, i64 8
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !95
  %i.ul = sub nsw i32 %i.uh, %.060.lcssa.i
  %i.um = call i32 @llvm.abs.i32(i32 %i.ul, i1 true) ; 2 uses
  %i.un = icmp samesign ult i32 %i.um, 108
  %i.uo = icmp samesign ult i32 %i.um, 1132
  %..i.3.i = select i1 %i.uo, i32 2, i32 5
  %.0.i197.3.i = select i1 %i.un, i32 1, i32 %..i.3.i
  %i.up = mul i32 %i.uk, %.0.i197.3.i
  %i.uq = add i32 %i.up, %.0143.3.i
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.3.i"
  %.1.3.i = phi i32 [ %i.uq, %bb.ch ], [ %.0143.3.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.3.i" ] ; 2 uses
  %i.ur = zext i32 %.sroa.72.0141.3.i to i64
  %i.us = mul nuw nsw i64 %i.ur, 12
  %scevgep.3.i = getelementptr i8, ptr %.sroa.01.0142.3.i, i64 %i.us
  %.not.i.i.i.i.i.i198.3.i1704 = icmp eq i32 %.sroa.72.0141.3.i, 0
  br i1 %.not.i.i.i.i.i.i198.3.i1704, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.3.i, !prof !96

bb.cj:                                            ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.3.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.3.i, !llvm.loop !97

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.3.i: ; preds = %bb.ci, %bb.cj
  %.sroa.01.1.3.i1706 = phi ptr [ %i.uu, %bb.cj ], [ %.sroa.01.0142.3.i, %bb.ci ] ; 2 uses
  %.sroa.72.1.3.i1705 = phi i32 [ %i.ut, %bb.cj ], [ %.sroa.72.0141.3.i, %bb.ci ]
  %i.ut = add i32 %.sroa.72.1.3.i1705, -1         ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.01.1.3.i1706, i64 12 ; 3 uses
  %.not.i.i.i.i199.3.i = icmp eq i32 %i.ut, 0
  br i1 %.not.i.i.i.i199.3.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i", label %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.3.i"

"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.3.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.3.i
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.01.1.3.i1706, i64 16
  %i.uw = load i32, ptr %i.uv, align 4
  %i.ux = trunc i32 %i.uw to i1
  br i1 %i.ux, label %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.3.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i_crit_edge", label %bb.cj, !llvm.loop !97

"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.3.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i_crit_edge": ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.3.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i", !llvm.loop !97

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.3.i, %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.3.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i_crit_edge", %bb.ci
  %.sroa.72.2.3.i = phi i32 [ 0, %bb.ci ], [ %i.ut, %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.3.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.3.i ] ; 2 uses
  %.sroa.01.2.3.i = phi ptr [ %scevgep.3.i, %bb.ci ], [ %i.uu, %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.3.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i_crit_edge" ], [ %i.uu, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.3.i ] ; 2 uses
  %.not.i.i.i196.3.i = icmp ne ptr %.sroa.01.2.3.i, %i.ug
  %i.uy = icmp ne i32 %.sroa.72.2.3.i, 0
  %i.uz = or i1 %i.uy, %.not.i.i.i196.3.i
  br i1 %i.uz, label %.lr.ph144.3.i, label %._crit_edge145.3.i

._crit_edge145.3.i:                               ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i", %bb.cf, %.thread444.i
  %.256.2448454.i = phi i32 [ %.256.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i" ], [ %.256.2.i, %bb.cf ], [ %.060.lcssa.i, %.thread444.i ], [ %.256.2.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.3.i ]
  %.2.2449453.i = phi i32 [ %.2.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i" ], [ %.2.2.i, %bb.cf ], [ 0, %.thread444.i ], [ %.2.2.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.3.i ] ; 2 uses
  %.0.lcssa.3.i = phi i32 [ %.1.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.3.i" ], [ 0, %bb.cf ], [ 0, %.thread444.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.3.i ] ; 2 uses
  %i.va = icmp ult i32 %.0.lcssa.3.i, %.2.2449453.i
  %spec.select69.3.i = select i1 %i.va, i32 %.pre-phi182.i, i32 %.256.2448454.i
  %spec.select70.3.i = call i32 @llvm.umin.i32(i32 %.0.lcssa.3.i, i32 %.2.2449453.i)
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge145.3.i, %bb.ce
  %.256.3.i = phi i32 [ %spec.select69.3.i, %._crit_edge145.3.i ], [ %.256.2.i, %bb.ce ] ; 4 uses
  %.2.3.i = phi i32 [ %spec.select70.3.i, %._crit_edge145.3.i ], [ %.2.2.i, %bb.ce ] ; 3 uses
  %i.vb = icmp slt i32 %.pre-phi184.i, %i.lb
  %i.vc = icmp sgt i32 %.pre-phi184.i, %i.ld
  %or.cond.4.i = or i1 %i.vb, %i.vc
  br i1 %or.cond.4.i, label %bb.cq, label %bb.cl

.thread455.i:                                     ; preds = %.thread444.i
  %i.vd = icmp slt i32 %.pre-phi184.i, %i.lb
  %i.ve = icmp sgt i32 %.pre-phi184.i, %i.ld
  %or.cond.4458.i = or i1 %i.vd, %i.ve
  br i1 %or.cond.4458.i, label %bb.cq, label %._crit_edge145.4.i

bb.cl:                                            ; preds = %bb.ck
  br i1 %.not15.i.i.i.i.i.i, label %._crit_edge145.4.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.4.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.4.i: ; preds = %bb.cl, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.4.i
  %.sroa.5.sroa.0.0.i.4.i = phi i32 [ %i.vi, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.4.i ], [ %i.nw, %bb.cl ] ; 3 uses
  %.sroa.02.0.i.4.i = phi ptr [ %i.vj, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.4.i ], [ %.val71.i, %bb.cl ] ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.4.i, i64 4
  %i.vg = load i32, ptr %i.vf, align 4, !noalias !83
  %i.vh = trunc i32 %i.vg to i1
  br i1 %i.vh, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.4.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.4.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.4.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.4.i
  %i.vi = add i32 %.sroa.5.sroa.0.0.i.4.i, -1     ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.4.i, i64 12
  %i.vk = icmp eq i32 %i.vi, 0
  br i1 %i.vk, label %._crit_edge145.4.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.4.i, !llvm.loop !92

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.4.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.4.i
  %i.vl = zext i32 %.sroa.5.sroa.0.0.i.4.i to i64
  %.idx150.4.i = mul nuw nsw i64 %i.vl, 12
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.4.i, i64 %.idx150.4.i
  br label %.lr.ph144.4.i

.lr.ph144.4.i:                                    ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.4.i"
  %.0143.4.i = phi i32 [ %.1.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.4.i" ] ; 2 uses
  %.sroa.01.0142.4.i = phi ptr [ %.sroa.01.2.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i" ], [ %.sroa.02.0.i.4.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.4.i" ] ; 3 uses
  %.sroa.72.0141.4.i = phi i32 [ %.sroa.72.2.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i" ], [ %.sroa.5.sroa.0.0.i.4.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.4.i" ] ; 4 uses
  %.not.i.i.i.i.i.i.4.i = icmp eq i32 %.sroa.72.0141.4.i, 0
  br i1 %.not.i.i.i.i.i.i.4.i, label %bb.cm, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.4.i", !prof !57

bb.cm:                                            ; preds = %.lr.ph144.4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.4.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.4.i": ; preds = %bb.cm, %.lr.ph144.4.i
  %.0.i.i.i.i.i.i.4.i = phi ptr [ @_hb_CrapPool, %bb.cm ], [ %.sroa.01.0142.4.i, %.lr.ph144.4.i ] ; 2 uses
  %i.vn = load i32, ptr %.0.i.i.i.i.i.i.4.i, align 4, !tbaa !93 ; 2 uses
  %i.vo = icmp eq i32 %.pre-phi184.i, %i.vn
  br i1 %i.vo, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.4.i"
  %i.vp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.4.i, i64 8
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !95
  %i.vr = sub nsw i32 %i.vn, %.060.lcssa.i
  %i.vs = call i32 @llvm.abs.i32(i32 %i.vr, i1 true) ; 2 uses
  %i.vt = icmp samesign ult i32 %i.vs, 108
  %i.vu = icmp samesign ult i32 %i.vs, 1132
  %..i.4.i = select i1 %i.vu, i32 2, i32 5
  %.0.i197.4.i = select i1 %i.vt, i32 1, i32 %..i.4.i
  %i.vv = mul i32 %i.vq, %.0.i197.4.i
  %i.vw = add i32 %i.vv, %.0143.4.i
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.4.i"
  %.1.4.i = phi i32 [ %i.vw, %bb.cn ], [ %.0143.4.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.4.i" ] ; 2 uses
  %i.vx = zext i32 %.sroa.72.0141.4.i to i64
  %i.vy = mul nuw nsw i64 %i.vx, 12
  %scevgep.4.i = getelementptr i8, ptr %.sroa.01.0142.4.i, i64 %i.vy
  %.not.i.i.i.i.i.i198.4.i1713 = icmp eq i32 %.sroa.72.0141.4.i, 0
  br i1 %.not.i.i.i.i.i.i198.4.i1713, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.4.i, !prof !96

bb.cp:                                            ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.4.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.4.i, !llvm.loop !97

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.4.i: ; preds = %bb.co, %bb.cp
  %.sroa.01.1.4.i1715 = phi ptr [ %i.wa, %bb.cp ], [ %.sroa.01.0142.4.i, %bb.co ] ; 2 uses
  %.sroa.72.1.4.i1714 = phi i32 [ %i.vz, %bb.cp ], [ %.sroa.72.0141.4.i, %bb.co ]
  %i.vz = add i32 %.sroa.72.1.4.i1714, -1         ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.01.1.4.i1715, i64 12 ; 3 uses
  %.not.i.i.i.i199.4.i = icmp eq i32 %i.vz, 0
  br i1 %.not.i.i.i.i199.4.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i", label %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.4.i"

"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.4.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.4.i
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.01.1.4.i1715, i64 16
  %i.wc = load i32, ptr %i.wb, align 4
  %i.wd = trunc i32 %i.wc to i1
  br i1 %i.wd, label %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.4.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i_crit_edge", label %bb.cp, !llvm.loop !97

"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.4.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i_crit_edge": ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.4.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i", !llvm.loop !97

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.4.i, %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.4.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i_crit_edge", %bb.co
  %.sroa.72.2.4.i = phi i32 [ 0, %bb.co ], [ %i.vz, %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.4.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.4.i ] ; 2 uses
  %.sroa.01.2.4.i = phi ptr [ %scevgep.4.i, %bb.co ], [ %i.wa, %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.4.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i_crit_edge" ], [ %i.wa, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.4.i ] ; 2 uses
  %.not.i.i.i196.4.i = icmp ne ptr %.sroa.01.2.4.i, %i.vm
  %i.we = icmp ne i32 %.sroa.72.2.4.i, 0
  %i.wf = or i1 %i.we, %.not.i.i.i196.4.i
  br i1 %i.wf, label %.lr.ph144.4.i, label %._crit_edge145.4.i

._crit_edge145.4.i:                               ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i", %bb.cl, %.thread455.i
  %.256.3459465.i = phi i32 [ %.256.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i" ], [ %.256.3.i, %bb.cl ], [ %.060.lcssa.i, %.thread455.i ], [ %.256.3.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.4.i ]
  %.2.3460464.i = phi i32 [ %.2.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i" ], [ %.2.3.i, %bb.cl ], [ 0, %.thread455.i ], [ %.2.3.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.4.i ]
  %.0.lcssa.4.i = phi i32 [ %.1.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.4.i" ], [ 0, %bb.cl ], [ 0, %.thread455.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.4.i ]
  %i.wg = icmp ult i32 %.0.lcssa.4.i, %.2.3460464.i
  %spec.select69.4.i = select i1 %i.wg, i32 %.pre-phi184.i, i32 %.256.3459465.i
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge145.4.i, %.thread455.i, %bb.ck
  %.256.4.i = phi i32 [ %spec.select69.4.i, %._crit_edge145.4.i ], [ %.256.3.i, %bb.ck ], [ %.060.lcssa.i, %.thread455.i ]
  store i32 %.256.4.i, ptr %i.aa, align 8, !tbaa !59
  store i32 %.060.lcssa.i, ptr %i.ab, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br i1 %.sroa.0.1.i, label %bb.bi, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_.exit: ; preds = %bb.b, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.wh = phi ptr [ %i.ad, %bb.b ], [ %i.ab, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i ] ; 2 uses
  %i.wi = phi ptr [ %i.ae, %bb.b ], [ %i.aa, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i ] ; 2 uses
  %.sroa.0606.0.lcssa1406 = phi i32 [ %.sroa.0606.0.lcssa1407, %bb.b ], [ %.sroa.0606.3, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i ]
  %.sroa.18.0.lcssa1404 = phi ptr [ %.sroa.18.0.lcssa1405, %bb.b ], [ %.sroa.18.4, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i ]
  %i.wj = add i32 %.sroa.0606.0.lcssa1406, -1
  %spec.select.i.i.i224 = icmp ult i32 %i.wj, -2
  br i1 %spec.select.i.i.i224, label %bb.cr, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.cr:                                            ; preds = %_ZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_.exit
  call void @hb_free(ptr noundef %.sroa.18.0.lcssa1404) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_.exit, %bb.cr
  %i.wk = load i32, ptr %i.wi, align 8, !tbaa !98
  %i.wl = load i32, ptr %i.wh, align 4, !tbaa !99
  %i.wm = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) ; 0 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 4 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !100 ; 10 uses
  %i.wp = icmp slt i32 %i.wo, 0
  br i1 %i.wp, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread, label %bb.cs, !prof !57

bb.cs:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %.not.i142.not.i = icmp eq i32 %i.wo, 0         ; 4 uses
  br i1 %.not.i142.not.i, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.thread, label %.preheader.i143.i, !prof !54

.preheader.i143.i:                                ; preds = %bb.cs, %.preheader.i143.i
  %.043.i.i225 = phi i32 [ %i.ws, %.preheader.i143.i ], [ 0, %bb.cs ] ; 2 uses
  %i.wq = lshr i32 %.043.i.i225, 1
  %i.wr = add nuw i32 %.043.i.i225, 8
  %i.ws = add nuw i32 %i.wr, %i.wq                ; 8 uses
  %i.wt = icmp ugt i32 %i.wo, %i.ws
  br i1 %i.wt, label %.preheader.i143.i, label %.thread.i144.i, !llvm.loop !101

.thread.i144.i:                                   ; preds = %.preheader.i143.i
  %i.wu = icmp ugt i32 %i.ws, 268435455
  br i1 %i.wu, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread, label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.i.i, !prof !57

_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.i.i: ; preds = %.thread.i144.i
  %i.wv = shl nuw i32 %i.ws, 4
  %i.ww = zext i32 %i.wv to i64
  %i.wx = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ww) #16 ; 13 uses
  %.not22.i.i226 = icmp eq ptr %i.wx, null
  br i1 %.not22.i.i226, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread, label %bb.ct, !prof !58

bb.ct:                                            ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.i.i
  %22 = shl nuw i32 %i.wo, 4
  %23 = zext i32 %22 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.wx, i8 0, i64 %23, i1 false)
  %.pr462.i = load i32, ptr %i.wn, align 4, !tbaa !100
  %.not48284.not.i = icmp eq i32 %.pr462.i, 0
  br i1 %.not48284.not.i, label %..lr.ph.preheader.i.i_crit_edge, label %.lr.ph293.i

..lr.ph.preheader.i.i_crit_edge:                  ; preds = %bb.ct
  %.pre1092.a = zext nneg i32 %i.wo to i64
  br label %.lr.ph.preheader.i.i

.lr.ph293.i:                                      ; preds = %bb.ct
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.xc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 13 uses
  %i.xd = load i64, ptr @_hb_NullPool, align 16   ; 16 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 16 uses
  %i.xf = trunc i64 %i.xd to i8                   ; 5 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.xh = zext nneg i32 %i.wo to i64              ; 2 uses
  %.not47.i1413 = icmp eq i8 %i.xf, 11
  br label %bb.cu

bb.cu:                                            ; preds = %bb.iq, %.lr.ph293.i
  %indvars.iv328.i = phi i64 [ 0, %.lr.ph293.i ], [ %indvars.iv.next329.i, %bb.iq ] ; 15 uses
  %i.xi = load ptr, ptr %i.wy, align 8, !tbaa !102 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 40
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !103 ; 6 uses
  %.not.i.i = icmp eq ptr %i.xk, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.xl = trunc nuw i64 %indvars.iv328.i to i32
  %i.xm = mul i32 %i.xl, 506952113
  %i.xn = and i32 %i.xm, 1073741823
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xi, i64 32
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !106
  %i.xq = urem i32 %i.xn, %i.xp                   ; 3 uses
  %i.xr = zext nneg i32 %i.xq to i64              ; 2 uses
  %i.xs = getelementptr inbounds nuw [16 x i8], ptr %i.xk, i64 %i.xr ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  %i.xu = load i32, ptr %i.xt, align 4            ; 2 uses
  %i.xv = and i32 %i.xu, 2
  %.not15.i.i.i.i228 = icmp eq i32 %i.xv, 0
  br i1 %.not15.i.i.i.i228, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i, label %.lr.ph.i.i.i54.i

.lr.ph.i.i.i54.i:                                 ; preds = %bb.cv
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xi, i64 28
  %i.xx = load i32, ptr %i.xw, align 4            ; 2 uses
  %i.xy = load i32, ptr %i.xs, align 4, !tbaa !59
  %i.xz = zext i32 %i.xy to i64
  %i.ya = icmp eq i64 %indvars.iv328.i, %i.xz
  br i1 %i.ya, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread474.i, label %.lr.ph.i.i.i229

bb.cw:                                            ; preds = %.lr.ph.i.i.i229
  %i.yb = load i32, ptr %i.yi, align 4, !tbaa !59
  %i.yc = zext i32 %i.yb to i64
  %i.yd = icmp eq i64 %indvars.iv328.i, %i.yc
  br i1 %i.yd, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.i, label %.lr.ph.i.i.i229, !llvm.loop !107

.lr.ph.i.i.i229:                                  ; preds = %.lr.ph.i.i.i54.i, %bb.cw
  %.01016.i20.i.i.i = phi i32 [ %i.yg, %bb.cw ], [ %i.xq, %.lr.ph.i.i.i54.i ]
  %.017.i19.i.i.i = phi i32 [ %i.ye, %bb.cw ], [ 0, %.lr.ph.i.i.i54.i ]
  %i.ye = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.yf = add i32 %i.ye, %.01016.i20.i.i.i
  %i.yg = and i32 %i.yf, %i.xx                    ; 2 uses
  %i.yh = zext i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [16 x i8], ptr %i.xk, i64 %i.yh ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yk = load i32, ptr %i.yj, align 4            ; 2 uses
  %i.yl = and i32 %i.yk, 2
  %.not.i.i.i55.i = icmp eq i32 %i.yl, 0
  br i1 %.not.i.i.i55.i, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i, label %bb.cw, !llvm.loop !107

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.i: ; preds = %bb.cw
  %i.ym = trunc i32 %i.yk to i1
  br i1 %i.ym, label %.lr.ph.i.i60.i, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread474.i: ; preds = %.lr.ph.i.i.i54.i
  %i.yn = trunc i32 %i.xu to i1
  br i1 %i.yn, label %._crit_edge.i.i.i248.thread, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i

._crit_edge.i.i.i248.thread:                      ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread474.i
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.xk, i64 %i.xr
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i

bb.cx:                                            ; preds = %.lr.ph.i.i60.i
  %i.yq = load i32, ptr %i.yz, align 4, !tbaa !59
  %i.yr = zext i32 %i.yq to i64
  %i.ys = icmp eq i64 %indvars.iv328.i, %i.yr
  br i1 %i.ys, label %._crit_edge.i.i.i248, label %.lr.ph.i.i60.i, !llvm.loop !107

._crit_edge.i.i.i248:                             ; preds = %bb.cx
  %.pre1089.a = trunc i32 %.fr to i1
  %i.yt = getelementptr inbounds nuw [16 x i8], ptr %i.xk, i64 %i.yy
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %spec.select = select i1 %.pre1089.a, ptr %i.yu, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i

.lr.ph.i.i60.i:                                   ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.i, %bb.cx
  %.01016.i13.i.i.i246 = phi i32 [ %i.yx, %bb.cx ], [ %i.xq, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.i ]
  %.017.i12.i.i.i247 = phi i32 [ %i.yv, %bb.cx ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.i ]
  %i.yv = add i32 %.017.i12.i.i.i247, 1           ; 2 uses
  %i.yw = add i32 %i.yv, %.01016.i13.i.i.i246
  %i.yx = and i32 %i.yw, %i.xx                    ; 2 uses
  %i.yy = zext i32 %i.yx to i64                   ; 2 uses
  %i.yz = getelementptr inbounds nuw [16 x i8], ptr %i.xk, i64 %i.yy ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zb = load i32, ptr %i.za, align 4
  %.fr = freeze i32 %i.zb                         ; 2 uses
  %i.zc = and i32 %.fr, 2
  %.not.i.i.i61.i = icmp eq i32 %i.zc, 0
  br i1 %.not.i.i.i61.i, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i, label %bb.cx, !llvm.loop !107

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i: ; preds = %.lr.ph.i.i60.i, %._crit_edge.i.i.i248, %._crit_edge.i.i.i248.thread
  %.0.i62.i = phi ptr [ %i.yp, %._crit_edge.i.i.i248.thread ], [ %spec.select, %._crit_edge.i.i.i248 ], [ @_hb_NullPool, %.lr.ph.i.i60.i ]
  %i.zd = load i32, ptr %.0.i62.i, align 4, !tbaa !108
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i: ; preds = %.lr.ph.i.i.i229, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread474.i, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.i, %bb.cv, %bb.cu
  %.040.i = phi i32 [ %i.zd, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.i ], [ 0, %bb.cu ], [ 0, %bb.cv ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread474.i ], [ 0, %.lr.ph.i.i.i229 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %.not.i63.i = icmp samesign ult i64 %indvars.iv328.i, %i.xh ; 4 uses
  br i1 %.not.i63.i, label %bb.cz, label %bb.cy, !prof !54

bb.cy:                                            ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i

bb.cz:                                            ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i
  %i.ze = getelementptr inbounds nuw [16 x i8], ptr %i.wx, i64 %indvars.iv328.i
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i

_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i:       ; preds = %bb.cz, %bb.cy
  %.0.i64.i = phi ptr [ @_hb_CrapPool, %bb.cy ], [ %i.ze, %bb.cz ]
  store ptr %.0.i64.i, ptr %6, align 8, !tbaa !110
  %.not.i230 = icmp eq i32 %.040.i, %i.wk
  br i1 %.not.i230, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i
  %i.zf = sub nsw i32 %.040.i, %i.wl
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.zf)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i
  %i.zg = load i8, ptr %i.wz, align 8, !tbaa !111, !range !112, !noundef !113
  %i.zh = trunc nuw i8 %i.zg to i1
  br i1 %i.zh, label %bb.dc, label %bb.hz

bb.dc:                                            ; preds = %bb.db
  %i.zi = load i32, ptr %i.xa, align 4, !tbaa !114
  %i.zj = zext i32 %i.zi to i64
  %i.zk = icmp samesign ult i64 %indvars.iv328.i, %i.zj
  br i1 %i.zk, label %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit.i, label %bb.hz

_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit.i: ; preds = %bb.dc
  %i.zl = load ptr, ptr %i.xb, align 8, !tbaa !115
  %i.zm = getelementptr inbounds nuw [16 x i8], ptr %i.zl, i64 %indvars.iv328.i ; 13 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 4 ; 13 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !116 ; 2 uses
  %.not45.i = icmp eq i32 %i.zo, 0
  br i1 %.not45.i, label %bb.hz, label %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit69.i

_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit69.i: ; preds = %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.zp = shl i32 %i.zo, 1                        ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.zp, 0
  br i1 %.not.i.not.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.lr.ph.i.i.i, label %.preheader.i.i.i.i, !prof !54

.preheader.i.i.i.i:                               ; preds = %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit69.i, %.preheader.i.i.i.i
  %.039.i.i.i.i = phi i32 [ %i.zs, %.preheader.i.i.i.i ], [ 0, %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit69.i ] ; 2 uses
  %i.zq = lshr i32 %.039.i.i.i.i, 1
  %i.zr = add i32 %.039.i.i.i.i, 8
  %i.zs = add i32 %i.zr, %i.zq                    ; 6 uses
  %i.zt = icmp ugt i32 %i.zp, %i.zs
  br i1 %i.zt, label %.preheader.i.i.i.i, label %.thread.i.i.i.i, !llvm.loop !119

.thread.i.i.i.i:                                  ; preds = %.preheader.i.i.i.i
  %i.zu = icmp ugt i32 %i.zs, 107374182
  br i1 %i.zu, label %.sink.split.i.i.i.i, label %bb.dd, !prof !57

bb.dd:                                            ; preds = %.thread.i.i.i.i
  %i.zv = call noundef ptr @_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.zs) ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %i.zv, null
  br i1 %.not22.i.i.i.i, label %bb.de, label %bb.dg, !prof !57

bb.de:                                            ; preds = %bb.dd
  %i.zw = load i32, ptr %5, align 8, !tbaa !120   ; 2 uses
  %.not23.i.i.i.i = icmp ugt i32 %i.zs, %i.zw
  br i1 %.not23.i.i.i.i, label %bb.df, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.zx = xor i32 %i.zw, -1
  br label %.sink.split.i.i.i.i

bb.dg:                                            ; preds = %bb.dd
  store ptr %i.zv, ptr %i.xc, align 8, !tbaa !121
  br label %.sink.split.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !103 ; 5 uses
  %.not.i251 = icmp eq ptr %i.bee, null
  br i1 %.not.i251, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bef = mul i32 %storemerge940, 506952113
  %i.beg = and i32 %i.bef, 1073741823
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bec, i64 32
  %i.bei = load i32, ptr %i.beh, align 8, !tbaa !106
  %i.bej = urem i32 %i.beg, %i.bei                ; 3 uses
  %i.bek = zext nneg i32 %i.bej to i64            ; 2 uses
  %i.bel = getelementptr inbounds nuw [16 x i8], ptr %i.bee, i64 %i.bek ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 4
  %i.ben = load i32, ptr %i.bem, align 4          ; 3 uses
  %i.beo = and i32 %i.ben, 2
  %.not15.i.i.i = icmp eq i32 %i.beo, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i253

.lr.ph.i.i.i253:                                  ; preds = %bb.ji
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bec, i64 28
  %i.beq = load i32, ptr %i.bep, align 4          ; 2 uses
  %i.ber = load i32, ptr %i.bel, align 4, !tbaa !59
  %i.bes = icmp eq i32 %i.ber, %storemerge940
  br i1 %i.bes, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1425, label %.lr.ph.i.i254

bb.jj:                                            ; preds = %.lr.ph.i.i254
  %i.bet = load i32, ptr %i.bez, align 4, !tbaa !59
  %i.beu = icmp eq i32 %i.bet, %storemerge940
  br i1 %i.beu, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit, label %.lr.ph.i.i254, !llvm.loop !107

.lr.ph.i.i254:                                    ; preds = %.lr.ph.i.i.i253, %bb.jj
  %.01016.i20.i.i = phi i32 [ %i.bex, %bb.jj ], [ %i.bej, %.lr.ph.i.i.i253 ]
  %.017.i19.i.i = phi i32 [ %i.bev, %bb.jj ], [ 0, %.lr.ph.i.i.i253 ]
  %i.bev = add i32 %.017.i19.i.i, 1               ; 2 uses
  %i.bew = add i32 %i.bev, %.01016.i20.i.i
  %i.bex = and i32 %i.bew, %i.beq                 ; 2 uses
  %i.bey = zext i32 %i.bex to i64
  %i.bez = getelementptr inbounds nuw [16 x i8], ptr %i.bee, i64 %i.bey ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 4
  %i.bfb = load i32, ptr %i.bfa, align 4          ; 2 uses
  %i.bfc = and i32 %i.bfb, 2
  %.not.i.i.i255 = icmp eq i32 %i.bfc, 0
  br i1 %.not.i.i.i255, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, label %bb.jj, !llvm.loop !107

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit: ; preds = %bb.jj
  %i.bfd = trunc i32 %i.bfb to i1
  br i1 %i.bfd, label %.lr.ph.i.i260, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1425: ; preds = %.lr.ph.i.i.i253
  %i.bfe = trunc i32 %i.ben to i1
  br i1 %i.bfe, label %._crit_edge.i.i262, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread

bb.jk:                                            ; preds = %.lr.ph.i.i260
  %i.bff = load i32, ptr %i.bfp, align 4, !tbaa !59
  %i.bfg = icmp eq i32 %i.bff, %storemerge940
  br i1 %i.bfg, label %._crit_edge.i.i262, label %.lr.ph.i.i260, !llvm.loop !107

._crit_edge.i.i262:                               ; preds = %bb.jk, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1425
  %.lcssa10.i.i = phi i32 [ %i.ben, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1425 ], [ %i.bfr, %bb.jk ]
  %i.bfh = phi i64 [ %i.bek, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1425 ], [ %i.bfo, %bb.jk ]
  %i.bfi = getelementptr inbounds nuw [16 x i8], ptr %i.bee, i64 %i.bfh
  %i.bfj = trunc i32 %.lcssa10.i.i to i1
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfi, i64 8
  %spec.select.i.i = select i1 %i.bfj, ptr %i.bfk, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit

.lr.ph.i.i260:                                    ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit, %bb.jk
  %.01016.i13.i.i = phi i32 [ %i.bfn, %bb.jk ], [ %i.bej, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit ]
  %.017.i12.i.i = phi i32 [ %i.bfl, %bb.jk ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit ]
  %i.bfl = add i32 %.017.i12.i.i, 1               ; 2 uses
  %i.bfm = add i32 %i.bfl, %.01016.i13.i.i
  %i.bfn = and i32 %i.bfm, %i.beq                 ; 2 uses
  %i.bfo = zext i32 %i.bfn to i64                 ; 2 uses
  %i.bfp = getelementptr inbounds nuw [16 x i8], ptr %i.bee, i64 %i.bfo ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 4
  %i.bfr = load i32, ptr %i.bfq, align 4          ; 2 uses
  %i.bfs = and i32 %i.bfr, 2
  %.not.i.i.i261 = icmp eq i32 %i.bfs, 0
  br i1 %.not.i.i.i261, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit, label %bb.jk, !llvm.loop !107

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit: ; preds = %.lr.ph.i.i260, %._crit_edge.i.i262
  %.0.i263 = phi ptr [ %spec.select.i.i, %._crit_edge.i.i262 ], [ @_hb_NullPool, %.lr.ph.i.i260 ]
  %i.bft = load i32, ptr %.0.i263, align 4, !tbaa !108
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i254, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1425, %bb.ji, %bb.jh, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit
  %.0659 = phi i32 [ %i.bft, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit ], [ 0, %bb.jh ], [ 0, %bb.ji ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1425 ], [ 0, %.lr.ph.i.i254 ]
  %.not.i264 = icmp slt i32 %.sroa.11.0937, %.sroa.0606.0939
  %.pre1093 = add i32 %.sroa.11.0937, 1           ; 6 uses
  br i1 %.not.i264, label %.critedge.i267, label %bb.jl

bb.jl:                                            ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread
  %i.bfu = icmp slt i32 %.sroa.0606.0939, 0
  br i1 %i.bfu, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit484, label %bb.jm, !prof !57

bb.jm:                                            ; preds = %bb.jl
  %.not.i464 = icmp ugt i32 %.pre1093, %.sroa.0606.0939
  br i1 %.not.i464, label %.preheader.i466, label %.critedge.i267, !prof !57

.preheader.i466:                                  ; preds = %bb.jm, %.preheader.i466
  %.043.i467 = phi i32 [ %i.bfx, %.preheader.i466 ], [ %.sroa.0606.0939, %bb.jm ] ; 2 uses
  %i.bfv = lshr i32 %.043.i467, 1
  %i.bfw = add i32 %.043.i467, 8
  %i.bfx = add i32 %i.bfw, %i.bfv                 ; 8 uses
  %i.bfy = icmp ugt i32 %.pre1093, %i.bfx
  br i1 %i.bfy, label %.preheader.i466, label %.thread.i468, !llvm.loop !55

.thread.i468:                                     ; preds = %.preheader.i466
  %i.bfz = icmp ugt i32 %i.bfx, 1073741823
  br i1 %i.bfz, label %.critedge.i483, label %bb.jn, !prof !57

.critedge.i483:                                   ; preds = %.thread.i468
  %i.bga = xor i32 %.sroa.0606.0939, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit484

bb.jn:                                            ; preds = %.thread.i468
  %.not49.i470 = icmp eq i32 %.sroa.0606.0939, 0
  br i1 %.not49.i470, label %bb.jo, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i471

bb.jo:                                            ; preds = %bb.jn
  %.not9.i.i.i480 = icmp eq ptr %.sroa.18.0936, null
  br i1 %.not9.i.i.i480, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i471, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.bgb = shl nuw i32 %i.bfx, 2
  %i.bgc = zext i32 %i.bgb to i64
  %i.bgd = tail call ptr @hb_malloc(i64 noundef %i.bgc) #16 ; 4 uses
  %.not10.i.i.i481 = icmp eq ptr %i.bgd, null
  br i1 %.not10.i.i.i481, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i478, label %bb.jq, !prof !57

bb.jq:                                            ; preds = %bb.jp
  %.not.i.i.i.i482 = icmp eq i32 %.sroa.11.0937, 0
  br i1 %.not.i.i.i.i482, label %.critedge.i267, label %bb.jr, !prof !57

bb.jr:                                            ; preds = %bb.jq
  %i.bge = zext i32 %.sroa.11.0937 to i64
  %i.bgf = shl nuw nsw i64 %i.bge, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bgd, ptr nonnull readonly align 1 %.sroa.18.0936, i64 %i.bgf, i1 false), !alias.scope !242
  br label %.critedge.i267

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i471: ; preds = %bb.jo, %bb.jn
  %i.bgg = phi ptr [ null, %bb.jo ], [ %.sroa.18.0936, %bb.jn ]
  %i.bgh = shl nuw i32 %i.bfx, 2
  %i.bgi = zext i32 %i.bgh to i64
  %i.bgj = tail call ptr @hb_realloc(ptr noundef %i.bgg, i64 noundef %i.bgi) #16 ; 2 uses
  %.not22.i472 = icmp eq ptr %i.bgj, null
  br i1 %.not22.i472, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i478, label %.critedge.i267, !prof !58

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i478: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i471, %bb.jp
  %i.bgk = xor i32 %.sroa.0606.0939, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit484

_ZN11hb_vector_tIjLb0EE5allocEjb.exit484:         ; preds = %bb.jl, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i478, %.critedge.i483
  %.sroa.0606.4 = phi i32 [ %.sroa.0606.0939, %bb.jl ], [ %i.bgk, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i478 ], [ %i.bga, %.critedge.i483 ]
  store i32 %i.x, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i267:                                   ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, %bb.jq, %bb.jr, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i471, %bb.jm
  %.pre-phi1094 = phi i32 [ %.pre1093, %bb.jm ], [ 1, %bb.jq ], [ %.pre1093, %bb.jr ], [ %.pre1093, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i471 ], [ %.pre1093, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread ]
  %.sroa.18.3 = phi ptr [ %.sroa.18.0936, %bb.jm ], [ %i.bgd, %bb.jq ], [ %i.bgd, %bb.jr ], [ %i.bgj, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i471 ], [ %.sroa.18.0936, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread ] ; 2 uses
  %.sroa.0606.2 = phi i32 [ %.sroa.0606.0939, %bb.jm ], [ %i.bfx, %bb.jq ], [ %i.bfx, %bb.jr ], [ %i.bfx, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i471 ], [ %.sroa.0606.0939, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread ]
  %i.bgl = zext i32 %.sroa.11.0937 to i64
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.3, i64 %i.bgl
  store i32 %.0659, ptr %i.bgm, align 4, !tbaa !59
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit484, %.critedge.i267
  %.sroa.18.4 = phi ptr [ %.sroa.18.3, %.critedge.i267 ], [ %.sroa.18.0936, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit484 ] ; 6 uses
  %.sroa.11.1 = phi i32 [ %.pre-phi1094, %.critedge.i267 ], [ %.sroa.11.0937, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit484 ] ; 3 uses
  %.sroa.0606.3 = phi i32 [ %.sroa.0606.2, %.critedge.i267 ], [ %.sroa.0606.4, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit484 ] ; 3 uses
  %i.bgn = add nuw i32 %storemerge940, 1          ; 2 uses
  %i.bgo = load i32, ptr %i.l, align 8, !tbaa !8
  %i.bgp = icmp ult i32 %i.bgn, %i.bgo
  br i1 %i.bgp, label %bb.jh, label %._crit_edge, !llvm.loop !246

_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1423: ; preds = %.thread1415, %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i
  %i.bgq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bgr = load i32, ptr %i.bgq, align 8, !tbaa !247 ; 7 uses
  %i.bgs = icmp slt i32 %i.bgr, 0
  br i1 %i.bgs, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.js, !prof !57

bb.js:                                            ; preds = %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1423
  %.not.i485.not = icmp eq i32 %i.bgr, 0          ; 2 uses
  br i1 %.not.i485.not, label %bb.ju, label %.preheader.i487, !prof !54

.preheader.i487:                                  ; preds = %bb.js, %.preheader.i487
  %.043.i488 = phi i32 [ %i.bgv, %.preheader.i487 ], [ 0, %bb.js ] ; 2 uses
  %i.bgt = lshr i32 %.043.i488, 1
  %i.bgu = add nuw i32 %.043.i488, 8
  %i.bgv = add nuw i32 %i.bgu, %i.bgt             ; 4 uses
  %i.bgw = icmp ugt i32 %i.bgr, %i.bgv
  br i1 %i.bgw, label %.preheader.i487, label %.thread.i489, !llvm.loop !248

.thread.i489:                                     ; preds = %.preheader.i487
  %i.bgx = icmp ugt i32 %i.bgv, 357913941
  br i1 %i.bgx, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !57

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i489
  %i.bgy = zext nneg i32 %i.bgv to i64
  %i.bgz = mul nuw nsw i64 %i.bgy, 12
  %i.bha = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.bgz) #16 ; 3 uses
  %.not22.i492 = icmp eq ptr %i.bha, null
  br i1 %.not22.i492, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.jt, !prof !58

bb.jt:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %24 = mul nuw i32 %i.bgr, 12
  %i.bhb = zext i32 %24 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bha, i8 0, i64 %i.bhb, i1 false)
  br label %bb.ju

bb.ju:                                            ; preds = %bb.js, %bb.jt
  %.sroa.14587.0.ph = phi ptr [ null, %bb.js ], [ %i.bha, %bb.jt ] ; 3 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %3, i64 180 ; 2 uses
  %i.bhd = load i32, ptr %i.bhc, align 4, !tbaa !249 ; 2 uses
  %i.bhe = icmp slt i32 %i.bhd, 1
  br i1 %i.bhe, label %.thread724, label %.lr.ph947

.lr.ph947:                                        ; preds = %bb.ju
  %i.bhf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.bho = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bhp = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bhq = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bhr = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.sroa.2634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bhs = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.bht = getelementptr inbounds nuw i8, ptr %11, i64 2
  %i.bhu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bhv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bhw = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.bhx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bhy = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bia = getelementptr inbounds nuw i8, ptr %11, i64 56
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.bib = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bic = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.bid = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.big = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bih = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bii = zext nneg i32 %i.bhd to i64
  br label %bb.jv

bb.jv:                                            ; preds = %.lr.ph947, %_ZNK14hb_inc_bimap_t3hasEj.exit.thread
  %indvars.iv = phi i64 [ %i.bii, %.lr.ph947 ], [ %indvars.iv.next, %_ZNK14hb_inc_bimap_t3hasEj.exit.thread ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 12 uses
  %i.bij = load ptr, ptr %i.bhf, align 8, !tbaa !271 ; 3 uses
  %.not.i.i269 = icmp eq ptr %i.bij, null
  br i1 %.not.i.i269, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.bik = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bil = mul i32 %i.bik, 506952113
  %i.bim = and i32 %i.bil, 1073741823             ; 2 uses
  %i.bin = load i32, ptr %i.bhg, align 8, !tbaa !272
  %i.bio = urem i32 %i.bim, %i.bin                ; 2 uses
  %i.bip = zext nneg i32 %i.bio to i64
  %i.biq = getelementptr inbounds nuw [12 x i8], ptr %i.bij, i64 %i.bip ; 2 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 4
  %i.bis = load i32, ptr %i.bir, align 4          ; 2 uses
  %i.bit = and i32 %i.bis, 2
  %.not15.i.i.i.i270 = icmp eq i32 %i.bit, 0
  br i1 %.not15.i.i.i.i270, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i271

.lr.ph.i.i.i.i271:                                ; preds = %bb.jw
  %i.biu = load i32, ptr %i.bhh, align 4
  %i.biv = load i32, ptr %i.biq, align 4, !tbaa !59
  %i.biw = zext i32 %i.biv to i64
  %i.bix = icmp eq i64 %indvars.iv.next, %i.biw
  br i1 %i.bix, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i272

bb.jx:                                            ; preds = %.lr.ph.i.i.i272
  %i.biy = load i32, ptr %i.bjf, align 4, !tbaa !59
  %i.biz = zext i32 %i.biy to i64
  %i.bja = icmp eq i64 %indvars.iv.next, %i.biz
  br i1 %i.bja, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i272, !llvm.loop !273

.lr.ph.i.i.i272:                                  ; preds = %.lr.ph.i.i.i.i271, %bb.jx
  %.01016.i20.i.i.i273 = phi i32 [ %i.bjd, %bb.jx ], [ %i.bio, %.lr.ph.i.i.i.i271 ]
  %.017.i19.i.i.i274 = phi i32 [ %i.bjb, %bb.jx ], [ 0, %.lr.ph.i.i.i.i271 ]
  %i.bjb = add i32 %.017.i19.i.i.i274, 1          ; 2 uses
  %i.bjc = add i32 %i.bjb, %.01016.i20.i.i.i273
  %i.bjd = and i32 %i.bjc, %i.biu                 ; 2 uses
  %i.bje = zext i32 %i.bjd to i64
  %i.bjf = getelementptr inbounds nuw [12 x i8], ptr %i.bij, i64 %i.bje ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 4
  %i.bjh = load i32, ptr %i.bjg, align 4          ; 2 uses
  %i.bji = and i32 %i.bjh, 2
  %.not.i.i.i.i275 = icmp eq i32 %i.bji, 0
  br i1 %.not.i.i.i.i275, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.jx, !llvm.loop !273

_ZNK14hb_inc_bimap_t3hasEj.exit:                  ; preds = %bb.jx, %.lr.ph.i.i.i.i271
  %.lcssa17.i.i.i = phi i32 [ %i.bis, %.lr.ph.i.i.i.i271 ], [ %i.bjh, %bb.jx ]
  %i.bjj = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.bjj, label %bb.jy, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

bb.jy:                                            ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.bjk = load i32, ptr %i.bhi, align 4, !tbaa !274
  %i.bjl = zext i32 %i.bjk to i64
  %.not.i276 = icmp samesign ult i64 %indvars.iv.next, %i.bjl
  br i1 %.not.i276, label %bb.ka, label %bb.jz, !prof !54

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

bb.ka:                                            ; preds = %bb.jy
  %i.bjm = load ptr, ptr %i.bhj, align 8, !tbaa !275
  %i.bjn = getelementptr inbounds nuw [16 x i8], ptr %i.bjm, i64 %indvars.iv.next
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit: ; preds = %bb.jz, %bb.ka
  %.0.i277 = phi ptr [ @_hb_CrapPool, %bb.jz ], [ %i.bjn, %bb.ka ]
  %i.bjo = getelementptr inbounds nuw i8, ptr %.0.i277, i64 4
  %i.bjp = load i32, ptr %i.bjo, align 4, !tbaa !198
  %.not = icmp eq i32 %i.bjp, 0
  br i1 %.not, label %bb.kn, label %bb.kb

bb.kb:                                            ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %i.bjq = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.bjr = load i32, ptr %i.bhi, align 4, !tbaa !274
  %i.bjs = zext i32 %i.bjr to i64
  %.not.i278 = icmp samesign ult i64 %indvars.iv.next, %i.bjs
  br i1 %.not.i278, label %bb.kd, label %bb.kc, !prof !54

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit280

bb.kd:                                            ; preds = %bb.kb
  %i.bjt = load ptr, ptr %i.bhj, align 8, !tbaa !275
  %i.bju = getelementptr inbounds nuw [16 x i8], ptr %i.bjt, i64 %indvars.iv.next
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit280

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit280: ; preds = %bb.kc, %bb.kd
  %.0.i279 = phi ptr [ @_hb_CrapPool, %bb.kc ], [ %i.bju, %bb.kd ] ; 3 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %.0.i279, i64 4
  %.val.i.i = load i32, ptr %i.bjv, align 4, !tbaa !198 ; 2 uses
  %.not41.i.i281 = icmp eq i32 %.val.i.i, 0       ; 2 uses
  br i1 %.not41.i.i281, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit280._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i290_crit_edge, label %.lr.ph.preheader.i.i282

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit280._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i290_crit_edge: ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit280
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i279, i64 8
  %.val46.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !199
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i290

.lr.ph.preheader.i.i282:                          ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit280
  %.sroa.2.8.insert.ext.i.i.i.i.i.i283 = zext i32 %.val.i.i to i64 ; 3 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %.0.i279, i64 8
  %.val21.i.i = load ptr, ptr %i.bjw, align 8, !tbaa !199 ; 4 uses
  %i.bjx = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i283, 1152921504606846975
  %i.bjy = and i64 %i.bjx, 1152921504606846975    ; 2 uses
  %i.bjz = add nuw nsw i64 %i.bjy, 1              ; 2 uses
  %xtraiter1880 = and i64 %i.bjz, 7               ; 3 uses
  %i.bka = icmp samesign ult i64 %i.bjy, 7
  br i1 %i.bka, label %.lr.ph.i.i285.epil.preheader, label %.lr.ph.preheader.i.i282.new

.lr.ph.preheader.i.i282.new:                      ; preds = %.lr.ph.preheader.i.i282
  %unroll_iter1885 = and i64 %i.bjz, 2305843009213693944
  br label %.lr.ph.i.i285

.lr.ph.i.i285:                                    ; preds = %.lr.ph.i.i285, %.lr.ph.preheader.i.i282.new
  %.01644.i.i286 = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i282.new ], [ %i.bkr, %.lr.ph.i.i285 ] ; 9 uses
  %.01743.i.i287 = phi i32 [ 0, %.lr.ph.preheader.i.i282.new ], [ %i.bkq, %.lr.ph.i.i285 ]
  %niter1886 = phi i64 [ 0, %.lr.ph.preheader.i.i282.new ], [ %niter1886.next.7, %.lr.ph.i.i285 ]
  %i.bkb = getelementptr i8, ptr %.01644.i.i286, i64 4
  %.016.val.i.i288 = load i32, ptr %i.bkb, align 4, !tbaa !125
  %i.bkc = add i32 %.016.val.i.i288, %.01743.i.i287
  %i.bkd = getelementptr i8, ptr %.01644.i.i286, i64 20
  %.016.val.i.i288.1 = load i32, ptr %i.bkd, align 4, !tbaa !125
  %i.bke = add i32 %.016.val.i.i288.1, %i.bkc
  %i.bkf = getelementptr i8, ptr %.01644.i.i286, i64 36
  %.016.val.i.i288.2 = load i32, ptr %i.bkf, align 4, !tbaa !125
  %i.bkg = add i32 %.016.val.i.i288.2, %i.bke
  %i.bkh = getelementptr i8, ptr %.01644.i.i286, i64 52
  %.016.val.i.i288.3 = load i32, ptr %i.bkh, align 4, !tbaa !125
  %i.bki = add i32 %.016.val.i.i288.3, %i.bkg
  %i.bkj = getelementptr i8, ptr %.01644.i.i286, i64 68
  %.016.val.i.i288.4 = load i32, ptr %i.bkj, align 4, !tbaa !125
  %i.bkk = add i32 %.016.val.i.i288.4, %i.bki
  %i.bkl = getelementptr i8, ptr %.01644.i.i286, i64 84
  %.016.val.i.i288.5 = load i32, ptr %i.bkl, align 4, !tbaa !125
  %i.bkm = add i32 %.016.val.i.i288.5, %i.bkk
  %i.bkn = getelementptr i8, ptr %.01644.i.i286, i64 100
  %.016.val.i.i288.6 = load i32, ptr %i.bkn, align 4, !tbaa !125
  %i.bko = add i32 %.016.val.i.i288.6, %i.bkm
  %i.bkp = getelementptr i8, ptr %.01644.i.i286, i64 116
  %.016.val.i.i288.7 = load i32, ptr %i.bkp, align 4, !tbaa !125
  %i.bkq = add i32 %.016.val.i.i288.7, %i.bko     ; 3 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %.01644.i.i286, i64 128 ; 2 uses
  %niter1886.next.7 = add i64 %niter1886, 8       ; 2 uses
  %niter1886.ncmp.7 = icmp eq i64 %niter1886.next.7, %unroll_iter1885
  br i1 %niter1886.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i290.loopexit.unr-lcssa, label %.lr.ph.i.i285

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i290.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i285
  %lcmp.mod1882.not = icmp eq i64 %xtraiter1880, 0
  br i1 %lcmp.mod1882.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i290, label %.lr.ph.i.i285.epil.preheader

.lr.ph.i.i285.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i290.loopexit.unr-lcssa, %.lr.ph.preheader.i.i282
  %.01644.i.i286.epil.init = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i282 ], [ %i.bkr, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i290.loopexit.unr-lcssa ]
  %.01743.i.i287.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i282 ], [ %i.bkq, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i290.loopexit.unr-lcssa ]
  %lcmp.mod1884 = icmp ne i64 %xtraiter1880, 0
  call void @llvm.assume(i1 %lcmp.mod1884)
end_hunk_3
begin_hunk_4_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a

bb.ko:                                            ; preds = %bb.kp
  %indvars.iv.next.i302 = add nuw nsw i64 %indvars.iv.i300, 1 ; 2 uses
  %i.bmh = load i32, ptr %i.bme, align 4, !tbaa !300
  %i.bmi = zext i32 %i.bmh to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i302, %i.bmi
  br i1 %.not.not.i, label %bb.kp, label %.loopexit807, !llvm.loop !301

bb.kp:                                            ; preds = %bb.ko, %.lr.ph.i299
  %indvars.iv.i300 = phi i64 [ 0, %.lr.ph.i299 ], [ %indvars.iv.next.i302, %bb.ko ] ; 2 uses
  %i.bmj = load ptr, ptr %i.bmg, align 8
  %i.bmk = getelementptr inbounds nuw [16 x i8], ptr %i.bmj, i64 %indvars.iv.i300
  %i.bml = call noundef zeroext i1 @_ZNK33cff2_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(13) %i.bmk, i32 noundef %.1661)
  br i1 %i.bml, label %bb.ko, label %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit, !prof !54

.loopexit807:                                     ; preds = %bb.ko, %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store ptr %12, ptr %13, align 8, !tbaa !110
  %i.bmm = load i32, ptr %i.wi, align 8, !tbaa !98
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %i.bmm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 20, ptr %i.b, align 1, !tbaa !187
  %i.bmn = load ptr, ptr %13, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 4 ; 2 uses
  %i.bmp = load i32, ptr %i.bmo, align 4, !tbaa !125 ; 3 uses
  %i.bmq = load i32, ptr %i.bmn, align 8, !tbaa !122
  %i.bmr = icmp slt i32 %i.bmp, %i.bmq
  br i1 %i.bmr, label %bb.kq, label %bb.kr, !prof !54

bb.kq:                                            ; preds = %.loopexit807
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmn, i64 8
  %i.bmt = load ptr, ptr %i.bms, align 8, !tbaa !126
  %i.bmu = add nsw i32 %i.bmp, 1
  store i32 %i.bmu, ptr %i.bmo, align 4, !tbaa !125
  %i.bmv = zext i32 %i.bmp to i64
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmt, i64 %i.bmv
  store i8 20, ptr %i.bmw, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit

bb.kr:                                            ; preds = %.loopexit807
  %i.bmx = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bmn, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit

_ZN3CFF13str_encoder_t9encode_opEj.exit:          ; preds = %bb.kq, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bmy = load i32, ptr %i.wh, align 4, !tbaa !99
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %i.bmy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 21, ptr %i.a, align 1, !tbaa !187
  %i.bmz = load ptr, ptr %13, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 4 ; 2 uses
  %i.bnb = load i32, ptr %i.bna, align 4, !tbaa !125 ; 3 uses
  %i.bnc = load i32, ptr %i.bmz, align 8, !tbaa !122
  %i.bnd = icmp slt i32 %i.bnb, %i.bnc
  br i1 %i.bnd, label %bb.ks, label %bb.kt, !prof !54

bb.ks:                                            ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bmz, i64 8
  %i.bnf = load ptr, ptr %i.bne, align 8, !tbaa !126
  %i.bng = add nsw i32 %i.bnb, 1
  store i32 %i.bng, ptr %i.bna, align 4, !tbaa !125
  %i.bnh = zext i32 %i.bnb to i64
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnf, i64 %i.bnh
  store i8 21, ptr %i.bni, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit303

bb.kt:                                            ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit
  %i.bnj = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bmz, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit303

_ZN3CFF13str_encoder_t9encode_opEj.exit303:       ; preds = %bb.ks, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bnk = load ptr, ptr %13, align 8, !tbaa !188, !nonnull !113, !align !190
  %i.bnl = load i32, ptr %i.bnk, align 8, !tbaa !122
  %i.bnm = icmp slt i32 %i.bnl, 0
  br i1 %i.bnm, label %.critedge, label %bb.ku

bb.ku:                                            ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit303
  %i.bnn = load ptr, ptr %i.bid, align 8, !tbaa !126
  %i.bno = load i32, ptr %i.bie, align 4, !tbaa !125 ; 3 uses
  %i.bnp = zext i32 %i.bno to i64                 ; 3 uses
  %i.bnq = load i32, ptr %i.bhk, align 4, !tbaa !214
  %.not.i.i304 = icmp eq i32 %i.bnq, 0
  br i1 %.not.i.i304, label %bb.kv, label %.critedge, !prof !54

bb.kv:                                            ; preds = %bb.ku
  %i.bnr = icmp slt i32 %i.bno, 0
  br i1 %i.bnr, label %.critedge.i.i308, label %bb.kw, !prof !57

bb.kw:                                            ; preds = %bb.kv
  %i.bns = load ptr, ptr %i.bhl, align 8, !tbaa !226
  %i.bnt = load ptr, ptr %i.bhm, align 8, !tbaa !227 ; 4 uses
  %i.bnu = ptrtoint ptr %i.bns to i64
  %i.bnv = ptrtoint ptr %i.bnt to i64
  %i.bnw = sub i64 %i.bnu, %i.bnv
  %i.bnx = icmp slt i64 %i.bnw, %i.bnp
  br i1 %i.bnx, label %.critedge.i.i308, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i, !prof !57

.critedge.i.i308:                                 ; preds = %bb.kw, %bb.kv
  store i32 4, ptr %i.bhk, align 4, !tbaa !214
  br label %.critedge

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i: ; preds = %bb.kw
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnt, i64 %i.bnp
  store ptr %i.bny, ptr %i.bhm, align 8, !tbaa !227
  %.not.i307 = icmp eq ptr %i.bnt, null
  br i1 %.not.i307, label %.critedge, label %bb.kx, !prof !156

bb.kx:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i
  %.not.i7.i = icmp eq i32 %i.bno, 0
  br i1 %.not.i7.i, label %_ZN22hb_serialize_context_t5embedEPKcj.exit, label %bb.ky, !prof !57

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bnt, ptr readonly align 1 %i.bnn, i64 %i.bnp, i1 false), !alias.scope !302
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit

_ZN22hb_serialize_context_t5embedEPKcj.exit:      ; preds = %bb.ky, %bb.kx
  %i.bnz = load ptr, ptr %i.bhf, align 8, !tbaa !271 ; 4 uses
  %.not.i.i.i309 = icmp eq ptr %i.bnz, null
  br i1 %.not.i.i.i309, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.kz

bb.kz:                                            ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit
  %i.boa = load i32, ptr %i.bhg, align 8, !tbaa !272
  %i.bob = urem i32 %i.bim, %i.boa                ; 2 uses
  %i.boc = zext nneg i32 %i.bob to i64            ; 2 uses
  %i.bod = getelementptr inbounds nuw [12 x i8], ptr %i.bnz, i64 %i.boc ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 4
  %i.bof = load i32, ptr %i.boe, align 4          ; 2 uses
  %i.bog = and i32 %i.bof, 2
  %.not15.i.i.i.i.i310 = icmp eq i32 %i.bog, 0
  br i1 %.not15.i.i.i.i.i310, label %_ZNK14hb_inc_bimap_tixEj.exit, label %.lr.ph.i.i.i.i.i311

.lr.ph.i.i.i.i.i311:                              ; preds = %bb.kz
  %i.boh = load i32, ptr %i.bhh, align 4
  %i.boi = load i32, ptr %i.bod, align 4, !tbaa !59
  %i.boj = zext i32 %i.boi to i64
  %i.bok = icmp eq i64 %indvars.iv.next, %i.boj
  br i1 %i.bok, label %._crit_edge.i.i.i.i316, label %.lr.ph.i.i.i.i312

bb.la:                                            ; preds = %.lr.ph.i.i.i.i312
  %i.bol = load i32, ptr %i.bow, align 4, !tbaa !59
  %i.bom = zext i32 %i.bol to i64
  %i.bon = icmp eq i64 %indvars.iv.next, %i.bom
  br i1 %i.bon, label %._crit_edge.i.i.i.i316, label %.lr.ph.i.i.i.i312, !llvm.loop !273

._crit_edge.i.i.i.i316:                           ; preds = %bb.la, %.lr.ph.i.i.i.i.i311
  %.lcssa10.i.i.i.i317 = phi i32 [ %i.bof, %.lr.ph.i.i.i.i.i311 ], [ %i.boy, %bb.la ]
  %i.boo = phi i64 [ %i.boc, %.lr.ph.i.i.i.i.i311 ], [ %i.bov, %bb.la ]
  %i.bop = getelementptr inbounds nuw [12 x i8], ptr %i.bnz, i64 %i.boo
  %i.boq = trunc i32 %.lcssa10.i.i.i.i317 to i1
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bop, i64 8
  %spec.select.i.i.i.i318 = select i1 %i.boq, ptr %i.bor, ptr @minus_1
  br label %_ZNK14hb_inc_bimap_tixEj.exit

.lr.ph.i.i.i.i312:                                ; preds = %.lr.ph.i.i.i.i.i311, %bb.la
  %.01016.i13.i.i.i.i313 = phi i32 [ %i.bou, %bb.la ], [ %i.bob, %.lr.ph.i.i.i.i.i311 ]
  %.017.i12.i.i.i.i314 = phi i32 [ %i.bos, %bb.la ], [ 0, %.lr.ph.i.i.i.i.i311 ]
  %i.bos = add i32 %.017.i12.i.i.i.i314, 1        ; 2 uses
  %i.bot = add i32 %i.bos, %.01016.i13.i.i.i.i313
  %i.bou = and i32 %i.bot, %i.boh                 ; 2 uses
  %i.bov = zext i32 %i.bou to i64                 ; 2 uses
  %i.bow = getelementptr inbounds nuw [12 x i8], ptr %i.bnz, i64 %i.bov ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 4
  %i.boy = load i32, ptr %i.box, align 4          ; 2 uses
  %i.boz = and i32 %i.boy, 2
  %.not.i.i.i.i.i315 = icmp eq i32 %i.boz, 0
  br i1 %.not.i.i.i.i.i315, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.la, !llvm.loop !273

_ZNK14hb_inc_bimap_tixEj.exit:                    ; preds = %.lr.ph.i.i.i.i312, %_ZN22hb_serialize_context_t5embedEPKcj.exit, %bb.kz, %._crit_edge.i.i.i.i316
  %.0.i.i.i319 = phi ptr [ @minus_1, %_ZN22hb_serialize_context_t5embedEPKcj.exit ], [ %spec.select.i.i.i.i318, %._crit_edge.i.i.i.i316 ], [ @minus_1, %bb.kz ], [ @minus_1, %.lr.ph.i.i.i.i312 ]
  %i.bpa = load i32, ptr %.0.i.i.i319, align 4, !tbaa !59 ; 2 uses
  %i.bpb = load ptr, ptr %i.bif, align 8, !tbaa !229 ; 2 uses
  %.not.i320 = icmp eq ptr %i.bpb, null
  br i1 %.not.i320, label %_ZNK22hb_serialize_context_t6lengthEv.exit, label %bb.lb, !prof !57

bb.lb:                                            ; preds = %_ZNK14hb_inc_bimap_tixEj.exit
  %i.bpc = load ptr, ptr %i.bhm, align 8, !tbaa !227
  %i.bpd = load ptr, ptr %i.bpb, align 8, !tbaa !234
  %i.bpe = ptrtoint ptr %i.bpc to i64
  %i.bpf = ptrtoint ptr %i.bpd to i64
  %i.bpg = sub i64 %i.bpe, %i.bpf
  %i.bph = trunc i64 %i.bpg to i32
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit

_ZNK22hb_serialize_context_t6lengthEv.exit:       ; preds = %_ZNK14hb_inc_bimap_tixEj.exit, %bb.lb
  %.0.i321 = phi i32 [ %i.bph, %bb.lb ], [ 0, %_ZNK14hb_inc_bimap_tixEj.exit ] ; 2 uses
  %.not.i322 = icmp ult i32 %i.bpa, %i.bgr
  br i1 %.not.i322, label %bb.ld, label %bb.lc, !prof !54

bb.lc:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  store i32 %.0.i321, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 4), align 4, !tbaa !306
  %i.bpi = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit326

bb.ld:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  %i.bpj = zext nneg i32 %i.bpa to i64
  %i.bpk = getelementptr inbounds nuw [12 x i8], ptr %.sroa.14587.0.ph, i64 %i.bpj ; 2 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 4
  store i32 %.0.i321, ptr %i.bpl, align 4, !tbaa !306
  %i.bpm = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext true)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit326

_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit326: ; preds = %bb.lc, %bb.ld
  %i.bpn = phi i32 [ %i.bpi, %bb.lc ], [ %i.bpm, %bb.ld ]
  %.0.i325 = phi ptr [ @_hb_CrapPool, %bb.lc ], [ %i.bpk, %bb.ld ]
  %i.bpo = getelementptr inbounds nuw i8, ptr %.0.i325, i64 8
  store i32 %i.bpn, ptr %i.bpo, align 4, !tbaa !307
  br label %bb.le

.critedge:                                        ; preds = %bb.ku, %.critedge.i.i308, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i, %_ZN3CFF13str_encoder_t9encode_opEj.exit303
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.le

bb.le:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit326, %.critedge
  %i.bpp = phi i1 [ false, %.critedge ], [ true, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit326 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.bpq = load i32, ptr %12, align 8, !tbaa !122
  %i.bpr = add i32 %i.bpq, -1
  %spec.select.i.i.i327 = icmp ult i32 %i.bpr, -2
  br i1 %spec.select.i.i.i327, label %bb.lf, label %_ZN11hb_vector_tIhLb0EED2Ev.exit

bb.lf:                                            ; preds = %bb.le
  store i32 0, ptr %i.bie, align 4, !tbaa !125
  %i.bps = load ptr, ptr %i.bid, align 8, !tbaa !126
  call void @hb_free(ptr noundef %i.bps) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit

_ZN11hb_vector_tIhLb0EED2Ev.exit:                 ; preds = %bb.le, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.lg

_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit: ; preds = %bb.kp
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.lg

bb.lg:                                            ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit, %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit
  %.2176 = phi i1 [ %i.bpp, %_ZN11hb_vector_tIhLb0EED2Ev.exit ], [ false, %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit ]
  %i.bpt = load i32, ptr %i.bhy, align 8, !tbaa !308
  %i.bpu = add i32 %i.bpt, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.bpu, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  store i32 0, ptr %i.big, align 4, !tbaa !309
  %i.bpv = load ptr, ptr %i.bih, align 8, !tbaa !310
  call void @hb_free(ptr noundef %i.bpv) #16
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br i1 %.2176, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZNK14hb_inc_bimap_t3hasEj.exit.thread:           ; preds = %.lr.ph.i.i.i272, %bb.jw, %bb.jv, %bb.li, %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.bpw = icmp slt i64 %indvars.iv, 2
  br i1 %i.bpw, label %.thread724, label %bb.jv, !llvm.loop !311

.thread724:                                       ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, %bb.ju
  %i.bpx = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF7FDArrayIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.bpy = getelementptr inbounds nuw i8, ptr %3, i64 164 ; 2 uses
  %.val212 = load i32, ptr %i.bpy, align 4, !tbaa !312 ; 3 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %.val213 = load ptr, ptr %i.bpz, align 8, !tbaa !313 ; 4 uses
  %.not11.i.i.i = icmp eq i32 %.val212, 0
  br i1 %.not11.i.i.i, label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %.lr.ph.i.i.i335

.lr.ph.i.i.i335:                                  ; preds = %.thread724
  %i.bqa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !271, !noalias !314 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bqb, null
  %i.bqc = getelementptr inbounds nuw i8, ptr %1, i64 92
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.split.i.preheader.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i335
  %i.bqd = add i32 %.val212, -1
  %i.bqe = zext i32 %i.bqd to i64
  %i.bqf = mul nuw nsw i64 %i.bqe, 40
  %i.bqg = getelementptr i8, ptr %.val213, i64 %i.bqf
  %scevgep.i.i.i = getelementptr i8, ptr %i.bqg, i64 40
  br label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"

.lr.ph.split.split.i.preheader.i.i:               ; preds = %.lr.ph.i.i.i335
  %i.bqh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bqi = load i32, ptr %i.bqh, align 8, !tbaa !272, !noalias !314
  %i.bqj = ptrtoint ptr %.val213 to i64
  br label %.lr.ph.split.split.i.i.i

.lr.ph.split.split.i.i.i:                         ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, %.lr.ph.split.split.i.preheader.i.i
  %.sroa.7.sroa.0.0 = phi i32 [ %.val212, %.lr.ph.split.split.i.preheader.i.i ], [ %i.brk, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0556.0 = phi ptr [ %.val213, %.lr.ph.split.split.i.preheader.i.i ], [ %i.brl, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 3 uses
  %i.bqk = ptrtoint ptr %.sroa.0556.0 to i64
  %i.bql = sub i64 %i.bqk, %i.bqj
  %i.bqm = sdiv exact i64 %i.bql, 40
  %i.bqn = trunc i64 %i.bqm to i32                ; 3 uses
  %i.bqo = mul i32 %i.bqn, 506952113
  %i.bqp = and i32 %i.bqo, 1073741823
  %i.bqq = urem i32 %i.bqp, %i.bqi                ; 2 uses
  %i.bqr = zext nneg i32 %i.bqq to i64
  %i.bqs = getelementptr inbounds nuw [12 x i8], ptr %i.bqb, i64 %i.bqr ; 2 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 4
  %i.bqu = load i32, ptr %i.bqt, align 4, !noalias !314 ; 2 uses
  %i.bqv = and i32 %i.bqu, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bqv, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split.split.i.i.i
  %i.bqw = load i32, ptr %i.bqc, align 4, !noalias !314
  %i.bqx = load i32, ptr %i.bqs, align 4, !tbaa !59, !noalias !314
  %i.bqy = icmp eq i32 %i.bqx, %i.bqn
  br i1 %i.bqy, label %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.lj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bqz = load i32, ptr %i.brf, align 4, !tbaa !59, !noalias !314
  %i.bra = icmp eq i32 %i.bqz, %i.bqn
  br i1 %i.bra, label %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !273

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lj
  %.01016.i20.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.brd, %bb.lj ], [ %i.bqq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.brb, %bb.lj ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.brb = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.brc = add i32 %i.brb, %.01016.i20.i.i.i.i.i.i.i.i.i.i.i
  %i.brd = and i32 %i.brc, %i.bqw                 ; 2 uses
  %i.bre = zext i32 %i.brd to i64
  %i.brf = getelementptr inbounds nuw [12 x i8], ptr %i.bqb, i64 %i.bre ; 2 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 4
  %i.brh = load i32, ptr %i.brg, align 4, !noalias !314 ; 2 uses
  %i.bri = and i32 %i.brh, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bri, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, label %bb.lj, !llvm.loop !273

"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i": ; preds = %bb.lj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bqu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.brh, %bb.lj ]
  %i.brj = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.brj, label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i", %.lr.ph.split.split.i.i.i
  %i.brk = add i32 %.sroa.7.sroa.0.0, -1          ; 2 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %.sroa.0556.0, i64 40 ; 2 uses
  %.not.i.i.i336 = icmp eq i32 %i.brk, 0
  br i1 %.not.i.i.i336, label %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %.lr.ph.split.split.i.i.i, !llvm.loop !319

"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit": ; preds = %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i, %.thread724, %.lr.ph.split.us.i.i.i
  %.sroa.7.sroa.0.2 = phi i32 [ 0, %.thread724 ], [ 0, %.lr.ph.split.us.i.i.i ], [ %.sroa.7.sroa.0.0, %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0556.2 = phi ptr [ %.val213, %.thread724 ], [ %scevgep.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0556.0, %"_ZNK4$_25clIRZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS4_4cff220accelerator_subset_tEE3$_0RKNS1_23cff2_font_dict_values_tEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSK_OSL_.exit.i.i.i" ], [ %i.brl, %_ZNR9hb_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEERS3_EppEv.exit.i.i.i ]
  %i.brm = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) ; 0 uses
  %i.brn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 50 uses
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 2 uses
  %i.brp = icmp ne i32 %.sroa.7.sroa.0.2, 0
  %i.brq = icmp ne i32 %i.bgr, 0
  %spec.select.i.i.i.i48.i.i.i = and i1 %i.brq, %i.brp
  br i1 %spec.select.i.i.i.i48.i.i.i, label %.lr.ph.i.i.i345, label %"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1I_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1I_Efp_EEEOS1I_OS1N_.exit.i.thread"

"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1I_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1I_Efp_EEEOS1I_OS1N_.exit.i.thread": ; preds = %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"
  %i.brr = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) ; 0 uses
  br label %bb.na

.lr.ph.i.i.i345:                                  ; preds = %"_ZorI10hb_array_tIKN3CFF23cff2_font_dict_values_tEE24hb_filter_iter_factory_tIZNS1_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS1_22cff2_top_dict_values_tERKNS8_4cff220accelerator_subset_tEE3$_0RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"
  %i.brs = load i32, ptr @_hb_NullPool, align 16
  %i.brt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bru = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.brw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 11 uses
  %i.brx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br label %bb.lk

bb.lk:                                            ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i", %.lr.ph.i.i.i345
  %.sroa.15646.1 = phi ptr [ null, %.lr.ph.i.i.i345 ], [ %.sroa.15646.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 6 uses
  %.sroa.9644.1 = phi i32 [ 0, %.lr.ph.i.i.i345 ], [ %.sroa.9644.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 6 uses
  %.sroa.0640.1 = phi i32 [ 0, %.lr.ph.i.i.i345 ], [ %.sroa.0640.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 10 uses
  %i.brz = phi ptr [ %.sroa.14587.0.ph, %.lr.ph.i.i.i345 ], [ %i.cbi, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 3 uses
  %i.bsa = phi i32 [ %.sroa.7.sroa.0.2, %.lr.ph.i.i.i345 ], [ %i.cbg, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ]
  %.val14549.i.i.i = phi i32 [ %i.bgr, %.lr.ph.i.i.i345 ], [ %i.cbh, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ]
  %i.bsb = phi ptr [ %.sroa.0556.2, %.lr.ph.i.i.i345 ], [ %i.cbf, %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEppEv.exit.i.i.i" ] ; 3 uses
  %i.bsc = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 2 uses
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsb, i64 12 ; 2 uses
  %i.bse = load i32, ptr %i.bsd, align 4, !tbaa !300
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bse, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EElEdeEv.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i346

.lr.ph.i.i.i.i.i.i.i.i.i.i.i346:                  ; preds = %bb.lk
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bsb, i64 16
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.brz, i64 4
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.brz, i64 8
  br label %bb.ll

_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i351, %.preheader.i.i.i.i349, %bb.mm, %bb.lz
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bsi = load i32, ptr %i.bsd, align 4, !tbaa !300
  %i.bsj = zext i32 %i.bsi to i64
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.bsj
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ll, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !320

bb.ll:                                            ; preds = %_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i346
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i346 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i ] ; 2 uses
  %i.bsk = load ptr, ptr %i.bsf, align 8
  %i.bsl = getelementptr inbounds nuw [16 x i8], ptr %i.bsk, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 8 ; 2 uses
  %i.bsn = load i32, ptr %i.bsm, align 8, !tbaa !321
  %i.bso = icmp eq i32 %i.bsn, 18
  br i1 %i.bso, label %bb.lm, label %bb.mn

bb.lm:                                            ; preds = %bb.ll
  %i.bsp = load i32, ptr %i.bsg, align 4, !tbaa !306 ; 2 uses
  %i.bsq = load i32, ptr %i.brw, align 4, !tbaa !214
  %.not.i.i.i.i.i.i.i352 = icmp eq i32 %i.bsq, 0
  br i1 %.not.i.i.i.i.i.i.i352, label %bb.ln, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !54

bb.ln:                                            ; preds = %bb.lm
  %i.bsr = load ptr, ptr %i.brx, align 8, !tbaa !226
  %i.bss = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 2 uses
  %i.bst = ptrtoint ptr %i.bsr to i64
  %i.bsu = ptrtoint ptr %i.bss to i64
  %i.bsv = sub i64 %i.bst, %i.bsu
  %i.bsw = icmp slt i64 %i.bsv, 1
  br i1 %i.bsw, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i, !prof !57

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i: ; preds = %bb.ln
  store i8 0, ptr %i.bss, align 1
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 3 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 1
  store ptr %i.bsx, ptr %i.brn, align 8, !tbaa !227
  %.not.i.i.i.i.i.i353 = icmp eq ptr %.pre.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i353, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lo, !prof !156

bb.lo:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i.i
  store i8 28, ptr %.pre.i.i.i.i.i.i.i, align 1, !tbaa !187
  %i.bsy = load i32, ptr %i.brw, align 4, !tbaa !214
  %.not.i9.i.i.i.i.i.i = icmp eq i32 %i.bsy, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %bb.lp, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !54

bb.lp:                                            ; preds = %bb.lo
  %i.bsz = load ptr, ptr %i.brx, align 8, !tbaa !226
  %i.bta = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 2 uses
  %i.btb = ptrtoint ptr %i.bsz to i64
  %i.btc = ptrtoint ptr %i.bta to i64
  %i.btd = sub i64 %i.btb, %i.btc
  %i.bte = icmp slt i64 %i.btd, 2
  br i1 %i.bte, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i.i.i, !prof !57

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i.i.i: ; preds = %bb.lp
  store i16 0, ptr %i.bta, align 1
  %.pre.i11.i.i.i.i.i.i = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 3 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %.pre.i11.i.i.i.i.i.i, i64 2
  store ptr %i.btf, ptr %i.brn, align 8, !tbaa !227
  %.not8.i.i.i.i.i.i354 = icmp eq ptr %.pre.i11.i.i.i.i.i.i, null
  br i1 %.not8.i.i.i.i.i.i354, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lq, !prof !156

bb.lq:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EsLj2EEEEEPT_mb.exit.i.i.i.i.i.i
  %i.btg = trunc i32 %i.bsp to i16                ; 2 uses
  %i.bth = call i16 @llvm.bswap.i16(i16 %i.btg)
  store i16 %i.bth, ptr %.pre.i11.i.i.i.i.i.i, align 1, !tbaa !187
  %i.bti = sext i16 %i.btg to i64
  %i.btj = zext i32 %i.bsp to i64
  %.not.i.i.i.i.i.i.i.i355 = icmp eq i64 %i.bti, %i.btj
  br i1 %.not.i.i.i.i.i.i.i.i355, label %_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i.i.i.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.btk = load i32, ptr %i.brw, align 4, !tbaa !214
  %i.btl = or i32 %i.btk, 8
  br label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i

_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i.i.i.i: ; preds = %bb.lq
  %i.btm = load i32, ptr %i.bsm, align 8, !tbaa !321 ; 3 uses
  %i.btn = load i32, ptr %i.bsh, align 4, !tbaa !307 ; 2 uses
  %i.bto = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 3 uses
  %i.btp = load i32, ptr %i.brw, align 4, !tbaa !214
  %.not.i.i.i.i6.i.i.i = icmp eq i32 %i.btp, 0
  br i1 %.not.i.i.i.i6.i.i.i, label %bb.ls, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !54

bb.ls:                                            ; preds = %_ZN3CFF14UnsizedByteStr14serialize_int2IjEEbP22hb_serialize_context_tT_.exit.i.i.i.i
  %i.btq = load ptr, ptr %i.brx, align 8, !tbaa !226
  %i.btr = ptrtoint ptr %i.btq to i64
  %i.bts = ptrtoint ptr %i.bto to i64
  %i.btt = sub i64 %i.btr, %i.bts
  %i.btu = icmp slt i64 %i.btt, 1
  br i1 %i.btu, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i7.i.i.i, !prof !57

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i7.i.i.i: ; preds = %bb.ls
  store i8 0, ptr %i.bto, align 1
  %.pre.i.i.i.i8.i.i.i = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 3 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i8.i.i.i, i64 1
  store ptr %i.btv, ptr %i.brn, align 8, !tbaa !227
  %.not.i.i.i9.i.i.i = icmp eq ptr %.pre.i.i.i.i8.i.i.i, null
  br i1 %.not.i.i.i9.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lt, !prof !156

bb.lt:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i7.i.i.i
  store i8 29, ptr %.pre.i.i.i.i8.i.i.i, align 1, !tbaa !187
  %i.btw = load i32, ptr %i.brw, align 4, !tbaa !214
  %.not.i9.i.i.i10.i.i.i = icmp eq i32 %i.btw, 0
  br i1 %.not.i9.i.i.i10.i.i.i, label %bb.lu, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !54

bb.lu:                                            ; preds = %bb.lt
  %i.btx = load ptr, ptr %i.brx, align 8, !tbaa !226
  %i.bty = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 2 uses
  %i.btz = ptrtoint ptr %i.btx to i64
  %i.bua = ptrtoint ptr %i.bty to i64
  %i.bub = sub i64 %i.btz, %i.bua
  %i.buc = icmp slt i64 %i.bub, 4
  br i1 %i.buc, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i.i.i.i, !prof !57

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i.i.i.i: ; preds = %bb.lu
  store i32 0, ptr %i.bty, align 1
  %.pre.i11.i.i.i11.i.i.i = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 3 uses
  %i.bud = getelementptr inbounds nuw i8, ptr %.pre.i11.i.i.i11.i.i.i, i64 4
  store ptr %i.bud, ptr %i.brn, align 8, !tbaa !227
  %.not8.i.i.i12.i.i.i = icmp eq ptr %.pre.i11.i.i.i11.i.i.i, null
  br i1 %.not8.i.i.i12.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lv, !prof !156

bb.lv:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EiLj4EEEEEPT_mb.exit.i.i.i.i.i.i
  store i32 0, ptr %.pre.i11.i.i.i11.i.i.i, align 1, !tbaa !187
  %i.bue = icmp ugt i32 %i.btm, 255               ; 2 uses
  %i.buf = select i1 %i.bue, i64 2, i64 1         ; 2 uses
  %i.bug = load i32, ptr %i.brw, align 4, !tbaa !214
  %.not.i14.i.i.i.i.i = icmp eq i32 %i.bug, 0
  br i1 %.not.i14.i.i.i.i.i, label %bb.lw, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !prof !54

bb.lw:                                            ; preds = %bb.lv
  %i.buh = load ptr, ptr %i.brx, align 8, !tbaa !226
  %i.bui = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 6 uses
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = icmp slt i64 %i.bul, %i.buf
  br i1 %i.bum, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.sink.split.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i, !prof !57

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i: ; preds = %bb.lw
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bui, i64 %i.buf
  store ptr %i.bun, ptr %i.brn, align 8, !tbaa !227
  %.not.i.i13.i.i.i = icmp eq ptr %i.bui, null
  br i1 %.not.i.i13.i.i.i, label %_ZN3CFF4Dict9serializeINS_23cff2_font_dict_values_tENS_29cff_font_dict_op_serializer_tEJRKNS_12table_info_tEEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.lx, !prof !156

bb.lx:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i.i.i.i
  br i1 %i.bue, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  store i8 12, ptr %i.bui, align 1, !tbaa !187
  %i.buo = add i32 %i.btm, -256
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bui, i64 1
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lx
  %.013.i.i.i.i.i = phi i32 [ %i.buo, %bb.ly ], [ %i.btm, %bb.lx ]
  %.0.i.i.i.i.i = phi ptr [ %i.bup, %bb.ly ], [ %i.bui, %bb.lx ]
  %i.buq = trunc i32 %.013.i.i.i.i.i to i8
  store i8 %i.buq, ptr %.0.i.i.i.i.i, align 1, !tbaa !187
  %i.bur = getelementptr inbounds nuw i8, ptr %i.bto, i64 1
  %i.bus = load i32, ptr %i.brw, align 4, !tbaa !214
  %i.but = icmp ne i32 %i.bus, 0
  %i.buu = icmp eq i32 %i.btn, 0
  %or.cond.not.i.i.i.i.i = or i1 %i.buu, %i.but
  br i1 %or.cond.not.i.i.i.i.i, label %_ZNK3CFF29cff_font_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_12table_info_tE.exit.i.i.i, label %bb.ma, !prof !323

bb.ma:                                            ; preds = %bb.lz
  %i.buv = load ptr, ptr %i.bry, align 8, !tbaa !229 ; 5 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 20 ; 4 uses
  %i.bux = load i32, ptr %i.buw, align 4, !tbaa !324 ; 2 uses
  %i.buy = add i32 %i.bux, 1                      ; 6 uses
  %i.buz = icmp slt i32 %i.buy, 0
  br i1 %i.buz, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread19.i.i.i, label %bb.mb, !prof !57

bb.mb:                                            ; preds = %bb.ma
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buv, i64 16 ; 4 uses
  %i.bvb = load i32, ptr %i.bva, align 8, !tbaa !325 ; 5 uses
  %i.bvc = icmp slt i32 %i.bvb, 0
  br i1 %i.bvc, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread19.i.i.i, label %bb.mc, !prof !57

bb.mc:                                            ; preds = %bb.mb
  %.not.i14.i.i.i = icmp samesign ugt i32 %i.buy, %i.bvb
  br i1 %.not.i14.i.i.i, label %.preheader.i15.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread.i.i.i, !prof !57

end_hunk_4
begin_hunk_5_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a

.critedge.i.i444:                                 ; preds = %bb.pf, %bb.pe
  store i32 4, ptr %i.cec, align 4, !tbaa !214
  br label %.critedge14

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i441: ; preds = %bb.pf
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjs, i64 %i.cjo
  store ptr %i.cjx, ptr %i.brn, align 8, !tbaa !227
  %.not.i442 = icmp eq ptr %i.cjs, null
  br i1 %.not.i442, label %.critedge14, label %bb.pg, !prof !156

bb.pg:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i441
  %.not.i7.i443 = icmp eq i32 %i.cjn, 0
  br i1 %.not.i7.i443, label %_ZN22hb_serialize_context_t5embedEPKcj.exit445, label %bb.ph, !prof !57

bb.ph:                                            ; preds = %bb.pg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cjs, ptr readonly align 1 %i.cjl, i64 %i.cjo, i1 false), !alias.scope !394
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit445

.critedge14:                                      ; preds = %bb.pd, %.critedge.i.i444, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i441, %bb.pc
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit445

_ZN22hb_serialize_context_t5embedEPKcj.exit445:   ; preds = %bb.ph, %bb.pg, %.critedge14
  %cond6 = phi i1 [ false, %.critedge14 ], [ true, %bb.pg ], [ true, %bb.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.cjy = load i32, ptr %18, align 8, !tbaa !122
  %i.cjz = add i32 %i.cjy, -1
  %spec.select.i.i.i446 = icmp ult i32 %i.cjz, -2
  br i1 %spec.select.i.i.i446, label %bb.pi, label %_ZN11hb_vector_tIhLb0EED2Ev.exit447

bb.pi:                                            ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit445
  %i.cka = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 0, ptr %i.cka, align 4, !tbaa !125
  %i.ckb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ckc = load ptr, ptr %i.ckb, align 8, !tbaa !126
  call void @hb_free(ptr noundef %i.ckc) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit447

_ZN11hb_vector_tIhLb0EED2Ev.exit447:              ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit445, %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br i1 %cond6, label %bb.pj, label %.thread788

bb.pj:                                            ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit447
  %.not207 = icmp eq i32 %.0658, 0
  br i1 %.not207, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ckd = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %0, i32 noundef 15, i32 noundef %.0658, i32 noundef 2)
  br i1 %i.ckd, label %bb.pl, label %.thread788.sink.split, !prof !54

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %i.cke = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ckf = load i32, ptr %i.cke, align 8, !tbaa !367 ; 2 uses
  %.not208 = icmp eq i32 %i.ckf, 0
  br i1 %.not208, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.ckg = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %0, i32 noundef 293, i32 noundef %i.ckf, i32 noundef 2)
  br i1 %i.ckg, label %bb.pn, label %.thread788.sink.split, !prof !54

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %i.ckh = load i32, ptr %i.cbu, align 4, !tbaa !346 ; 2 uses
  %.not209 = icmp eq i32 %i.ckh, 0
  br i1 %.not209, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.cki = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %0, i32 noundef 292, i32 noundef %i.ckh, i32 noundef 2)
  br i1 %i.cki, label %bb.pp, label %.thread788.sink.split, !prof !54

bb.pp:                                            ; preds = %bb.po, %bb.pn
  %i.ckj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ckk = load ptr, ptr %i.ckj, align 8, !tbaa !398 ; 2 uses
  %i.ckl = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ckm = load i32, ptr %i.ckl, align 4, !tbaa !399 ; 2 uses
  %i.ckn = zext i32 %i.ckm to i64
  %.idx = shl nuw nsw i64 %i.ckn, 4
  %i.cko = getelementptr inbounds nuw i8, ptr %i.ckk, i64 %.idx
  %.not210949 = icmp eq i32 %i.ckm, 0
  br i1 %.not210949, label %._crit_edge953, label %.lr.ph952

.lr.ph952:                                        ; preds = %bb.pp
  %i.ckp = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.pq

bb.pq:                                            ; preds = %.lr.ph952, %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread
  %.0192950 = phi ptr [ %i.ckk, %.lr.ph952 ], [ %i.clo, %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread ] ; 4 uses
  %i.ckq = getelementptr inbounds nuw i8, ptr %.0192950, i64 8
  %i.ckr = load i32, ptr %i.ckq, align 8, !tbaa !321
  switch i32 %i.ckr, label %bb.pr [
    i32 24, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread
    i32 17, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit
    i32 292, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread
    i32 293, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread
  ]

bb.pr:                                            ; preds = %bb.pq
  %i.cks = getelementptr inbounds nuw i8, ptr %.0192950, i64 12 ; 3 uses
  %i.ckt = load i8, ptr %i.cks, align 4, !tbaa !335 ; 2 uses
  %i.cku = zext i8 %i.ckt to i64                  ; 3 uses
  %i.ckv = load i32, ptr %i.cec, align 4, !tbaa !214
  %.not.i.i.i449 = icmp eq i32 %i.ckv, 0
  br i1 %.not.i.i.i449, label %bb.ps, label %.thread788.sink.split, !prof !54

bb.ps:                                            ; preds = %bb.pr
  %i.ckw = load ptr, ptr %i.cgq, align 8, !tbaa !226
  %i.ckx = load ptr, ptr %i.brn, align 8, !tbaa !227 ; 3 uses
  %i.cky = ptrtoint ptr %i.ckw to i64
  %i.ckz = ptrtoint ptr %i.ckx to i64
  %i.cla = sub i64 %i.cky, %i.ckz
  %i.clb = icmp slt i64 %i.cla, %i.cku
  br i1 %i.clb, label %.critedge.i.i.i457, label %bb.pt, !prof !57

.critedge.i.i.i457:                               ; preds = %bb.ps
  store i32 4, ptr %i.cec, align 4, !tbaa !214
  br label %.thread788.sink.split

bb.pt:                                            ; preds = %bb.ps
  %.not.i.i.not.i.i = icmp eq i8 %i.ckt, 0
  br i1 %.not.i.i.not.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i451, label %bb.pu, !prof !323

bb.pu:                                            ; preds = %bb.pt
  call void @llvm.memset.p0.i64(ptr align 1 %i.ckx, i8 0, i64 %i.cku, i1 false)
  %.pre.i.i.i450 = load ptr, ptr %i.brn, align 8, !tbaa !227
  br label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i451

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i451: ; preds = %bb.pu, %bb.pt
  %i.clc = phi ptr [ %.pre.i.i.i450, %bb.pu ], [ %i.ckx, %bb.pt ] ; 3 uses
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 %i.cku
  store ptr %i.cld, ptr %i.brn, align 8, !tbaa !227
  %.not.i.i452 = icmp eq ptr %i.clc, null
  br i1 %.not.i.i452, label %.thread788.sink.split, label %.preheader.i.i453, !prof !156

.preheader.i.i453:                                ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i451
  %i.cle = load i8, ptr %i.cks, align 4, !tbaa !335
  %.not15.i.i = icmp eq i8 %i.cle, 0
  br i1 %.not15.i.i, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, label %.lr.ph.i.i454

.lr.ph.i.i454:                                    ; preds = %.preheader.i.i453, %.lr.ph.i.i454
  %indvars.iv.i.i455 = phi i64 [ %indvars.iv.next.i.i456, %.lr.ph.i.i454 ], [ 0, %.preheader.i.i453 ] ; 3 uses
  %i.clf = load ptr, ptr %.0192950, align 8, !tbaa !336
  %i.clg = getelementptr inbounds nuw i8, ptr %i.clf, i64 %indvars.iv.i.i455
  %i.clh = load i8, ptr %i.clg, align 1, !tbaa !187
  %i.cli = getelementptr inbounds nuw i8, ptr %i.clc, i64 %indvars.iv.i.i455
  store i8 %i.clh, ptr %i.cli, align 1, !tbaa !187
  %indvars.iv.next.i.i456 = add nuw nsw i64 %indvars.iv.i.i455, 1 ; 2 uses
  %i.clj = load i8, ptr %i.cks, align 4, !tbaa !335
  %i.clk = zext i8 %i.clj to i64
  %i.cll = icmp samesign ult i64 %indvars.iv.next.i.i456, %i.clk
  br i1 %i.cll, label %.lr.ph.i.i454, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, !llvm.loop !400

_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit: ; preds = %bb.pq
  %i.clm = load i32, ptr %i.ckp, align 8, !tbaa !240
  %i.cln = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %0, i32 noundef 17, i32 noundef %i.clm, i32 noundef 2)
  br i1 %i.cln, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, label %.thread788.sink.split, !prof !401

_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread: ; preds = %.lr.ph.i.i454, %.preheader.i.i453, %bb.pq, %bb.pq, %bb.pq, %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit
  %i.clo = getelementptr inbounds nuw i8, ptr %.0192950, i64 16 ; 2 uses
  %.not210 = icmp eq ptr %i.clo, %i.cko
  br i1 %.not210, label %._crit_edge953, label %bb.pq

._crit_edge953:                                   ; preds = %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, %bb.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.clp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.clq = load ptr, ptr %i.clp, align 8, !tbaa !229 ; 2 uses
  %.not.i458 = icmp eq ptr %i.clq, null
  br i1 %.not.i458, label %_ZNK22hb_serialize_context_t6lengthEv.exit460, label %bb.pv, !prof !57

bb.pv:                                            ; preds = %._crit_edge953
  %i.clr = load ptr, ptr %i.brn, align 8, !tbaa !227
  %i.cls = load ptr, ptr %i.clq, align 8, !tbaa !234
  %i.clt = ptrtoint ptr %i.clr to i64
  %i.clu = ptrtoint ptr %i.cls to i64
  %i.clv = sub i64 %i.clt, %i.clu
  %i.clw = trunc i64 %i.clv to i32
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit460

_ZNK22hb_serialize_context_t6lengthEv.exit460:    ; preds = %._crit_edge953, %bb.pv
  %.0.i459 = phi i32 [ %i.clw, %bb.pv ], [ 0, %._crit_edge953 ] ; 2 uses
  store i32 %.0.i459, ptr %i.k, align 4, !tbaa !59
  %i.clx = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) ; 0 uses
  %i.cly = load ptr, ptr %i.brn, align 8, !tbaa !227
  %i.clz = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS8_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.cly, ptr noundef nonnull %0, ptr nonnull %i.k, i64 1, i32 noundef %.0.i459, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

.thread788.sink.split:                            ; preds = %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i451, %bb.pr, %.critedge.i.i.i457, %bb.po, %bb.pm, %bb.pk, %bb.pb
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %.thread788

.thread788:                                       ; preds = %.thread788.sink.split, %_ZN11hb_vector_tIhLb0EED2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit: ; preds = %bb.li, %.thread721, %_ZNK22hb_serialize_context_t6lengthEv.exit460, %bb.ot, %.critedge.i.i425, %bb.ns, %bb.np, %bb.nm, %bb.nj, %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit, %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit, %bb.oo, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit, %_ZN22hb_serialize_context_t5embedEPKcj.exit435.thread768, %.thread788, %bb.nd, %bb.ng
  %.25 = phi i1 [ false, %.critedge.i.i425 ], [ false, %bb.ns ], [ false, %bb.ng ], [ %i.clz, %_ZNK22hb_serialize_context_t6lengthEv.exit460 ], [ false, %bb.nd ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit ], [ false, %.thread788 ], [ false, %_ZN22hb_serialize_context_t5embedEPKcj.exit435.thread768 ], [ false, %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit ], [ false, %bb.oo ], [ false, %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit ], [ false, %bb.ot ], [ false, %bb.nj ], [ false, %bb.nm ], [ false, %bb.np ], [ false, %.thread721 ], [ false, %bb.li ] ; 2 uses
  br i1 %.not.i485.not, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.pw

bb.pw:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit
  call void @hb_free(ptr noundef %.sroa.14587.0.ph) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit: ; preds = %bb.je, %.thread.i489, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1423, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %bb.pw, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread, %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i
  %.26 = phi i1 [ false, %.thread.i489 ], [ false, %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i ], [ false, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread ], [ %.25, %bb.pw ], [ %.25, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit ], [ false, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ false, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1423 ], [ false, %bb.je ]
  ret i1 %.26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !64     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !57

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !55

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !57

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #16 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !57

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !66   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !57

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !402
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #16 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !58

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !64    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !65
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
end_hunk_5
begin_hunk_6_@_ZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff2_subset_planE10hb_array_tIiE:bb.a
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa, label %.lr.ph.i.i

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.01644.i.i.epil.init = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i ], [ %i.z, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ]
  %.01743.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.y, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ]
  %lcmp.mod595 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod595)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.01644.i.i.epil = phi ptr [ %i.ac, %.lr.ph.i.i.epil ], [ %.01644.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01743.i.i.epil = phi i32 [ %i.ab, %.lr.ph.i.i.epil ], [ %.01743.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aa = getelementptr i8, ptr %.01644.i.i.epil, i64 4
  %.016.val.i.i.epil = load i32, ptr %i.aa, align 4, !tbaa !125
  %i.ab = add i32 %.016.val.i.i.epil, %.01743.i.i.epil ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01644.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !440

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i: ; preds = %.lr.ph.i.i.epil, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa
  %.lcssa593 = phi i32 [ %i.y, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ], [ %i.ab, %.lr.ph.i.i.epil ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !214
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, !prof !54

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !214
  %.not.i10.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i10.i, label %.thread.i, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, !prof !54

bb.b:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i
  %i.ah = add i32 %.lcssa593, 5
  %i.ai = add i32 %.lcssa593, 1
  %i.aj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 false)
  %i.ak = sub nuw nsw i32 39, %i.aj
  %i.al = lshr i32 %i.ak, 3
  %.sroa.speculated.i.i = tail call i32 @llvm.umax.i32(i32 %i.c, i32 %i.al)
  %i.am = add i32 %.val.i.i, 1
  %i.an = mul i32 %.sroa.speculated.i.i, %i.am
  %i.ao = add i32 %i.ah, %i.an                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = icmp slt i32 %i.ao, 0
  br i1 %i.aq, label %.critedge.i.i, label %.thread.i, !prof !441

.thread.i:                                        ; preds = %bb.b, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i
  %.01116.i = phi i32 [ %.lcssa593, %bb.b ], [ 0, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 4 uses
  %.0.i1215.i = phi i64 [ %i.ap, %bb.b ], [ 4, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 2 uses
  %i.ar = phi ptr [ %i.ad, %bb.b ], [ %i.af, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !226 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 38 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !227 ; 2 uses
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp slt i64 %i.ay, %.0.i1215.i
  br i1 %i.az, label %.critedge.i.i, label %bb.c, !prof !57

.critedge.i.i:                                    ; preds = %.thread.i, %bb.b
  %i.ba = phi ptr [ %i.ar, %.thread.i ], [ %i.ad, %bb.b ]
  store i32 4, ptr %i.ba, align 4, !tbaa !214
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

bb.c:                                             ; preds = %.thread.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.av, ptr %i.bb, align 8, !tbaa !228
  %i.bc = sub nsw i64 0, %.0.i1215.i
  %i.bd = getelementptr inbounds i8, ptr %i.at, i64 %i.bc ; 4 uses
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !227
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !229 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !230
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !234
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.val46.i.i = load ptr, ptr %i.bh, align 8, !tbaa !199 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i16.i = zext i32 %.val.i.i to i64 ; 2 uses
  %i.bi = tail call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(6) %i.bd, ptr noundef nonnull %1, ptr %.val46.i.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i16.i, i32 noundef %.01116.i, i32 noundef %i.c)
  br i1 %i.bi, label %bb.d, label %bb.m, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.bj = zext i32 %.01116.i to i64               ; 2 uses
  %i.bk = load i32, ptr %i.ar, align 4, !tbaa !214
  %.not.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.m, !prof !54

bb.e:                                             ; preds = %bb.d
  %i.bl = icmp slt i32 %.01116.i, 0
  br i1 %i.bl, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.f, !prof !57

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !226
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !227 ; 4 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp slt i64 %i.bq, %i.bj
  br i1 %i.br, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, !prof !57

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i: ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bj
  store ptr %i.bs, ptr %i.au, align 8, !tbaa !227
  %.not43.i.i = icmp eq ptr %i.bn, null
  br i1 %.not43.i.i, label %bb.m, label %bb.g, !prof !156

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i
  %.idx.i17.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i16.i, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 %.idx.i17.i
  br i1 %.not41.i.i, label %.loopexit337, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %bb.g, %bb.l
  %.082.i.i = phi ptr [ %i.cg, %bb.l ], [ %.val46.i.i, %bb.g ] ; 3 uses
  %.03481.i.i = phi i32 [ %.1.ph.i.i, %bb.l ], [ %.01116.i, %bb.g ] ; 3 uses
  %.03580.i.i = phi ptr [ %.136.ph.i.i, %bb.l ], [ %i.bn, %bb.g ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !125 ; 5 uses
  %.not45.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not45.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i18.i
  %i.bw = icmp ugt i32 %i.bv, %.03481.i.i
  br i1 %i.bw, label %bb.i, label %bb.j, !prof !57

bb.i:                                             ; preds = %bb.h
  %i.bx = load i32, ptr %i.ar, align 4, !tbaa !214
  %.not.i.i53.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i53.not.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.m, !prof !197

bb.j:                                             ; preds = %bb.h
  %i.by = sub nuw nsw i32 %.03481.i.i, %i.bv      ; 2 uses
  %i.bz = icmp eq i32 %i.bv, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !126 ; 2 uses
  br i1 %i.bz, label %bb.k, label %_ZL9hb_memcpyPvPKvm.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !187
  %i.cd = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 1
  store i8 %i.cc, ptr %.03580.i.i, align 1, !tbaa !187
  br label %bb.l

_ZL9hb_memcpyPvPKvm.exit.i.i:                     ; preds = %bb.j
  %i.ce = zext nneg i32 %i.bv to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i.i, ptr readonly align 1 %i.cb, i64 %i.ce, i1 false), !alias.scope !442
  %i.cf = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 %i.ce
  br label %bb.l

bb.l:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i, %bb.k, %.lr.ph.i18.i
  %.136.ph.i.i = phi ptr [ %.03580.i.i, %.lr.ph.i18.i ], [ %i.cf, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.cd, %bb.k ]
  %.1.ph.i.i = phi i32 [ %.03481.i.i, %.lr.ph.i18.i ], [ %i.by, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.by, %bb.k ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 16 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.cg, %i.bt
  br i1 %.not44.i.i, label %.loopexit337, label %.lr.ph.i18.i

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i: ; preds = %bb.i, %bb.f, %bb.e
  %.sink.i.i = phi i32 [ 4, %bb.e ], [ 4, %bb.f ], [ 8, %bb.i ]
  store i32 %.sink.i.i, ptr %i.ar, align 4, !tbaa !214
  br label %bb.m

bb.m:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, %bb.i, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, %bb.d, %bb.c
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

.loopexit337:                                     ; preds = %bb.l, %bb.g
  %i.ch = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false)
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !240
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !247 ; 7 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.n, !prof !57

bb.n:                                             ; preds = %.loopexit337
  %.not.i215.not = icmp eq i32 %i.ck, 0           ; 2 uses
  br i1 %.not.i215.not, label %bb.p, label %.preheader.i, !prof !54

.preheader.i:                                     ; preds = %bb.n, %.preheader.i
  %.043.i = phi i32 [ %i.co, %.preheader.i ], [ 0, %bb.n ] ; 2 uses
  %i.cm = lshr i32 %.043.i, 1
  %i.cn = add nuw i32 %.043.i, 8
  %i.co = add nuw i32 %i.cn, %i.cm                ; 4 uses
  %i.cp = icmp ugt i32 %i.ck, %i.co
  br i1 %i.cp, label %.preheader.i, label %.thread.i216, !llvm.loop !248

.thread.i216:                                     ; preds = %.preheader.i
  %i.cq = icmp ugt i32 %i.co, 357913941
  br i1 %i.cq, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !57

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i216
  %i.cr = zext nneg i32 %i.co to i64
  %i.cs = mul nuw nsw i64 %i.cr, 12
  %i.ct = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.cs) #16 ; 3 uses
  %.not22.i = icmp eq ptr %i.ct, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.o, !prof !58

bb.o:                                             ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %7 = mul nuw i32 %i.ck, 12
  %i.cu = zext i32 %7 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ct, i8 0, i64 %i.cu, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.14262.0.ph = phi ptr [ null, %bb.n ], [ %i.ct, %bb.o ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !249 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 1
  br i1 %i.cx, label %.critedge99, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 177
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 178
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dy = load ptr, ptr %i.cy, align 8, !tbaa !271 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.critedge99, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ea = add nsw i32 %i.cw, -1
  %i.eb = zext nneg i32 %i.ea to i64
  br label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.pr = load ptr, ptr %i.cy, align 8, !tbaa !271
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %i.ec = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.dy, %.lr.ph.split.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ %i.eb, %.lr.ph.split.preheader ] ; 13 uses
  %.not.i.i111 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i111, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split
  %i.ed = trunc nuw nsw i64 %indvars.iv to i32
  %i.ee = mul i32 %i.ed, 506952113
  %i.ef = and i32 %i.ee, 1073741823               ; 2 uses
  %i.eg = load i32, ptr %i.cz, align 8, !tbaa !272
  %i.eh = urem i32 %i.ef, %i.eg                   ; 2 uses
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.ec, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %i.em = and i32 %i.el, 2
  %.not15.i.i.i.i = icmp eq i32 %i.em, 0
  br i1 %.not15.i.i.i.i, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.en = load i32, ptr %i.da, align 4
  %i.eo = load i32, ptr %i.ej, align 4, !tbaa !59
  %i.ep = zext i32 %i.eo to i64
  %i.eq = icmp eq i64 %indvars.iv, %i.ep
  br i1 %i.eq, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.er = load i32, ptr %i.ey, align 4, !tbaa !59
  %i.es = zext i32 %i.er to i64
  %i.et = icmp eq i64 %indvars.iv, %i.es
  br i1 %i.et, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i, !llvm.loop !273

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.r
  %.01016.i20.i.i.i = phi i32 [ %i.ew, %bb.r ], [ %i.eh, %.lr.ph.i.i.i.i ]
  %.017.i19.i.i.i = phi i32 [ %i.eu, %bb.r ], [ 0, %.lr.ph.i.i.i.i ]
  %i.eu = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.ev = add i32 %i.eu, %.01016.i20.i.i.i
  %i.ew = and i32 %i.ev, %i.en                    ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %i.ec, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4            ; 2 uses
  %i.fb = and i32 %i.fa, 2
  %.not.i.i.i.i112 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i.i.i112, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.r, !llvm.loop !273

_ZNK14hb_inc_bimap_t3hasEj.exit:                  ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.lcssa17.i.i.i = phi i32 [ %i.el, %.lr.ph.i.i.i.i ], [ %i.fa, %bb.r ]
  %i.fc = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.fc, label %bb.s, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

bb.s:                                             ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.fd = load i32, ptr %i.db, align 4, !tbaa !274
  %i.fe = zext i32 %i.fd to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.fe
  br i1 %.not.i, label %bb.u, label %bb.t, !prof !54

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

bb.u:                                             ; preds = %bb.s
  %i.ff = load ptr, ptr %i.dc, align 8, !tbaa !275
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit: ; preds = %bb.t, %bb.u
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.t ], [ %i.fg, %bb.u ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !198
  %.not = icmp eq i32 %i.fi, 0
  br i1 %.not, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %i.fj = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.fk = load i32, ptr %i.db, align 4, !tbaa !274
  %i.fl = zext i32 %i.fk to i64
  %.not.i113 = icmp samesign ult i64 %indvars.iv, %i.fl
  br i1 %.not.i113, label %bb.x, label %bb.w, !prof !54

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115

bb.x:                                             ; preds = %bb.v
  %i.fm = load ptr, ptr %i.dc, align 8, !tbaa !275
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115: ; preds = %bb.w, %bb.x
  %.0.i114 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.fn, %bb.x ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i114, i64 4
  %.val.i.i116 = load i32, ptr %i.fo, align 4, !tbaa !198 ; 2 uses
  %.not41.i.i117 = icmp eq i32 %.val.i.i116, 0    ; 2 uses
  br i1 %.not41.i.i117, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge, label %.lr.ph.preheader.i.i118

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge: ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i114, i64 8
  %.val46.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !199
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127

.lr.ph.preheader.i.i118:                          ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115
  %.sroa.2.8.insert.ext.i.i.i.i.i.i119 = zext i32 %.val.i.i116 to i64 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i114, i64 8
  %.val21.i.i120 = load ptr, ptr %i.fp, align 8, !tbaa !199 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i119, 1152921504606846975
  %i.fr = and i64 %i.fq, 1152921504606846975      ; 2 uses
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %xtraiter596 = and i64 %i.fs, 7                 ; 3 uses
  %i.ft = icmp samesign ult i64 %i.fr, 7
  br i1 %i.ft, label %.lr.ph.i.i122.epil.preheader, label %.lr.ph.preheader.i.i118.new

.lr.ph.preheader.i.i118.new:                      ; preds = %.lr.ph.preheader.i.i118
  %unroll_iter601 = and i64 %i.fs, 2305843009213693944
  br label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122, %.lr.ph.preheader.i.i118.new
  %.01644.i.i123 = phi ptr [ %.val21.i.i120, %.lr.ph.preheader.i.i118.new ], [ %i.gk, %.lr.ph.i.i122 ] ; 9 uses
  %.01743.i.i124 = phi i32 [ 0, %.lr.ph.preheader.i.i118.new ], [ %i.gj, %.lr.ph.i.i122 ]
  %niter602 = phi i64 [ 0, %.lr.ph.preheader.i.i118.new ], [ %niter602.next.7, %.lr.ph.i.i122 ]
  %i.fu = getelementptr i8, ptr %.01644.i.i123, i64 4
  %.016.val.i.i125 = load i32, ptr %i.fu, align 4, !tbaa !125
  %i.fv = add i32 %.016.val.i.i125, %.01743.i.i124
  %i.fw = getelementptr i8, ptr %.01644.i.i123, i64 20
  %.016.val.i.i125.1 = load i32, ptr %i.fw, align 4, !tbaa !125
  %i.fx = add i32 %.016.val.i.i125.1, %i.fv
  %i.fy = getelementptr i8, ptr %.01644.i.i123, i64 36
  %.016.val.i.i125.2 = load i32, ptr %i.fy, align 4, !tbaa !125
  %i.fz = add i32 %.016.val.i.i125.2, %i.fx
  %i.ga = getelementptr i8, ptr %.01644.i.i123, i64 52
  %.016.val.i.i125.3 = load i32, ptr %i.ga, align 4, !tbaa !125
  %i.gb = add i32 %.016.val.i.i125.3, %i.fz
  %i.gc = getelementptr i8, ptr %.01644.i.i123, i64 68
  %.016.val.i.i125.4 = load i32, ptr %i.gc, align 4, !tbaa !125
  %i.gd = add i32 %.016.val.i.i125.4, %i.gb
  %i.ge = getelementptr i8, ptr %.01644.i.i123, i64 84
  %.016.val.i.i125.5 = load i32, ptr %i.ge, align 4, !tbaa !125
  %i.gf = add i32 %.016.val.i.i125.5, %i.gd
  %i.gg = getelementptr i8, ptr %.01644.i.i123, i64 100
  %.016.val.i.i125.6 = load i32, ptr %i.gg, align 4, !tbaa !125
  %i.gh = add i32 %.016.val.i.i125.6, %i.gf
  %i.gi = getelementptr i8, ptr %.01644.i.i123, i64 116
  %.016.val.i.i125.7 = load i32, ptr %i.gi, align 4, !tbaa !125
  %i.gj = add i32 %.016.val.i.i125.7, %i.gh       ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.01644.i.i123, i64 128 ; 2 uses
  %niter602.next.7 = add i64 %niter602, 8         ; 2 uses
  %niter602.ncmp.7 = icmp eq i64 %niter602.next.7, %unroll_iter601
  br i1 %niter602.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa, label %.lr.ph.i.i122

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i122
  %lcmp.mod598.not = icmp eq i64 %xtraiter596, 0
  br i1 %lcmp.mod598.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127, label %.lr.ph.i.i122.epil.preheader
end_hunk_6
