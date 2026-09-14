Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
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
  %i.lp = icmp sgt i32 %i.ln, %i.ld
  %or.cond.i22.i.i = or i1 %i.lo, %i.lp
  br i1 %or.cond.i22.i.i, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i.i, label %bb.av

bb.av:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i.i
  %.not.i.i23.i.i = icmp ugt i32 %.sroa.744.0.i, -1132
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.1548.2.i, i64 17179864656
  %.0.i.i24.i.i = select i1 %.not.i.i23.i.i, ptr %i.lq, ptr @_hb_NullPool, !prof !97
  %i.lr = load i32, ptr %.0.i.i24.i.i, align 4, !tbaa !101
  %i.ls = mul i32 %i.lr, 5
  %i.lt = call i32 @llvm.umax.i32(i32 %.0.i20.i.i, i32 %i.ls)
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i.i: ; preds = %bb.av, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i.i
  %.0.i25.i.i = phi i32 [ %i.lt, %bb.av ], [ %.0.i20.i.i, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit21.i.i ]
  br i1 %i.le, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i.i
  %.not.i.i29.i.not.i = icmp eq i32 %.sroa.7.0.i, 0
  %.0.i.i30.i.i = select i1 %.not.i.i29.i.not.i, ptr @_hb_NullPool, ptr %.sroa.15.2.i, !prof !99
  %i.lu = load i32, ptr %.0.i.i30.i.i, align 4, !tbaa !101
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i.i: ; preds = %bb.aw, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i.i
  %.0.i31.i.i = phi i32 [ %i.lu, %bb.aw ], [ 0, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit26.i.i ] ; 2 uses
  %i.lv = add i32 %i.lb, 108                      ; 2 uses
  %i.lw = icmp sgt i32 %i.lb, 2147483539
  %i.lx = icmp sgt i32 %i.lv, %i.ld
  %or.cond.i33.i.i = or i1 %i.lw, %i.lx
  br i1 %or.cond.i33.i.i, label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i.i
  %.not.i.i34.i.i = icmp ugt i32 %.sroa.7.0.i, 108
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.15.2.i, i64 432
  %.0.i.i35.i.i = select i1 %.not.i.i34.i.i, ptr %i.ly, ptr @_hb_NullPool, !prof !97
  %i.lz = load i32, ptr %.0.i.i35.i.i, align 4, !tbaa !101
  %i.ma = shl i32 %i.lz, 1
  %i.mb = call i32 @llvm.umax.i32(i32 %.0.i31.i.i, i32 %i.ma)
  br label %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i.i

_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i.i: ; preds = %bb.ax, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i.i
  %.0.i36.i.i = phi i32 [ %i.mb, %bb.ax ], [ %.0.i31.i.i, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit32.i.i ] ; 2 uses
  %i.mc = add i32 %i.lb, 1132                     ; 2 uses
  %i.md = icmp sgt i32 %i.lb, 2147482515
  %i.me = icmp sgt i32 %i.mc, %i.ld
  %or.cond.i39.i.i = or i1 %i.md, %i.me
  br i1 %or.cond.i39.i.i, label %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i", label %bb.ay

bb.ay:                                            ; preds = %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i.i
  %.not.i.i40.i.i = icmp ugt i32 %.sroa.7.0.i, 1132
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.15.2.i, i64 4528
  %.0.i.i41.i.i = select i1 %.not.i.i40.i.i, ptr %i.mf, ptr @_hb_NullPool, !prof !97
  %i.mg = load i32, ptr %.0.i.i41.i.i, align 4, !tbaa !101
  %i.mh = mul i32 %i.mg, 5
  %i.mi = call i32 @llvm.umax.i32(i32 %.0.i36.i.i, i32 %i.mh)
  br label %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i"

"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i": ; preds = %bb.ay, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i.i
  %.0.i42.i.i = phi i32 [ %i.mi, %bb.ay ], [ %.0.i36.i.i, %_ZN3CFFL8safe_getERK11hb_vector_tIjLb0EEijj.exit37.i.i ]
  %.057131.i = add i32 %i.lb, 1                   ; 2 uses
  %.not65132.i = icmp ugt i32 %.057131.i, %i.ld
  br i1 %.not65132.i, label %._crit_edge138.i, label %.lr.ph137.preheader.i

.lr.ph137.preheader.i:                            ; preds = %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i"
  %.sroa.speculated54.i.i = call noundef i32 @llvm.umax.i32(i32 %.0.i25.i.i, i32 %.0.i42.i.i)
  %i.mj = sub i32 %i.lc, %.sroa.speculated54.i.i
  br label %.lr.ph137.i

bb.az:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i, %.lr.ph.i
  %.062130.i = phi ptr [ %.sroa.18.4, %.lr.ph.i ], [ %i.nv, %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.mk = load i32, ptr %.062130.i, align 4, !tbaa !101 ; 5 uses
  store i32 %i.mk, ptr %i.h, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.ml = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 4 uses
  %.not.i145.i = icmp eq ptr %i.ml, null
  br i1 %.not.i145.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mm = mul i32 %i.mk, 506952113
  %i.mn = and i32 %i.mm, 1073741823
  %i.mo = load i32, ptr %i.an, align 8, !tbaa !109
  %i.mp = urem i32 %i.mn, %i.mo                   ; 2 uses
  %i.mq = zext nneg i32 %i.mp to i64              ; 2 uses
  %i.mr = getelementptr inbounds nuw [12 x i8], ptr %i.ml, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mt = load i32, ptr %i.ms, align 4            ; 2 uses
  %i.mu = and i32 %i.mt, 2
  %.not15.i.i.i.i = icmp eq i32 %i.mu, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i, label %.lr.ph.i.i.i146.i

.lr.ph.i.i.i146.i:                                ; preds = %bb.ba
  %i.mv = load i32, ptr %i.ao, align 4
  %i.mw = load i32, ptr %i.mr, align 4, !tbaa !101
  %i.mx = icmp eq i32 %i.mw, %i.mk
  br i1 %i.mx, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.bb:                                            ; preds = %.lr.ph.i.i.i
  %i.my = load i32, ptr %i.ni, align 4, !tbaa !101
  %i.mz = icmp eq i32 %i.my, %i.mk
  br i1 %i.mz, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %bb.bb, %.lr.ph.i.i.i146.i
  %.lcssa10.i.i.i = phi i32 [ %i.mt, %.lr.ph.i.i.i146.i ], [ %i.nk, %bb.bb ]
  %i.na = phi i64 [ %i.mq, %.lr.ph.i.i.i146.i ], [ %i.nh, %bb.bb ]
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.ml, i64 %i.na
  %i.nc = trunc i32 %.lcssa10.i.i.i to i1
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
  br i1 %.not.i.i.i147.i, label %_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i, label %bb.bb, !llvm.loop !1

_ZNK12hb_hashmap_tIjjLb0EE3getERKj.exit.i:        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.ba, %bb.az
  %.0.i148.i = phi ptr [ @_hb_NullPool, %bb.az ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @_hb_NullPool, %bb.ba ], [ @_hb_NullPool, %.lr.ph.i.i.i ]
  %i.nm = load i32, ptr %.0.i148.i, align 4, !tbaa !101
  %i.nn = add i32 %i.nm, 1
  store i32 %i.nn, ptr %i.i, align 4, !tbaa !101
  %i.no = mul i32 %i.mk, -1640531535
  %i.np = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.no, ptr noundef nonnull align 4 dereferenceable(4) %i.i, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  %i.nq = load i32, ptr %i.f, align 4, !tbaa !101
  %i.nr = load i32, ptr %i.h, align 4, !tbaa !101 ; 2 uses
  %i.ns = call i32 @llvm.umin.i32(i32 %i.nq, i32 %i.nr) ; 6 uses
  store i32 %i.ns, ptr %i.f, align 4, !tbaa !101
  %i.nt = load i32, ptr %i.g, align 4, !tbaa !101
  %i.nu = call i32 @llvm.umax.i32(i32 %i.nt, i32 %i.nr) ; 4 uses
  store i32 %i.nu, ptr %i.g, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  %i.nv = getelementptr inbounds nuw i8, ptr %.062130.i, i64 4 ; 2 uses
  %.not.i222 = icmp eq ptr %i.nv, %i.am
  br i1 %.not.i222, label %._crit_edge.i, label %bb.az

._crit_edge138.loopexit.i:                        ; preds = %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit185.i"
  %.pre180.i = add nsw i32 %spec.select.i, -108
  %.pre181.i = add nsw i32 %spec.select.i, -1132
  %.pre183.i = add nsw i32 %spec.select.i, 108
  %.pre185.i = add nsw i32 %spec.select.i, 1132
  br label %._crit_edge138.i

._crit_edge138.i:                                 ; preds = %._crit_edge138.loopexit.i, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i"
  %.pre-phi186.i = phi i32 [ %.pre185.i, %._crit_edge138.loopexit.i ], [ %i.mc, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i" ] ; 6 uses
  %.pre-phi184.i = phi i32 [ %.pre183.i, %._crit_edge138.loopexit.i ], [ %i.lv, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i" ] ; 6 uses
  %.pre-phi182.i = phi i32 [ %.pre181.i, %._crit_edge138.loopexit.i ], [ %i.ln, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i" ] ; 6 uses
  %.pre-phi.i = phi i32 [ %.pre180.i, %._crit_edge138.loopexit.i ], [ %i.lg, %"_ZZN3CFFL15optimize_widthsERK11hb_vector_tIjLb0EERjS4_ENK3$_1clEj.exit.i" ] ; 6 uses
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
  %.0.i.i.i156.i = select i1 %.not.i.i.i155.i, ptr %i.oe, ptr @_hb_NullPool, !prof !97
  %i.of = load i32, ptr %.0.i.i.i156.i, align 4, !tbaa !101
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
  %.0.i.i19.i161.i = select i1 %.not.i.i18.i160.i, ptr %i.ol, ptr @_hb_NullPool, !prof !97
  %i.om = load i32, ptr %.0.i.i19.i161.i, align 4, !tbaa !101
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
  %.0.i.i24.i166.i = select i1 %.not.i.i23.i165.i, ptr %i.ou, ptr @_hb_NullPool, !prof !97
  %i.ov = load i32, ptr %.0.i.i24.i166.i, align 4, !tbaa !101
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
  %.0.i.i30.i172.i = select i1 %.not.i.i29.i171.i, ptr %i.pa, ptr @_hb_NullPool, !prof !97
  %i.pb = load i32, ptr %.0.i.i30.i172.i, align 4, !tbaa !101
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
  %.0.i.i35.i177.i = select i1 %.not.i.i34.i176.i, ptr %i.ph, ptr @_hb_NullPool, !prof !97
  %i.pi = load i32, ptr %.0.i.i35.i177.i, align 4, !tbaa !101
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
  %.0.i.i41.i182.i = select i1 %.not.i.i40.i181.i, ptr %i.pq, ptr @_hb_NullPool, !prof !97
  %i.pr = load i32, ptr %.0.i.i41.i182.i, align 4, !tbaa !101
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
  br i1 %.not65.i, label %._crit_edge138.loopexit.i, label %.lr.ph137.i, !llvm.loop !644

bb.bi:                                            ; preds = %bb.cq
  call void @hb_free(ptr noundef %.sroa.15.2.i) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.cq, %bb.bi
  %i.pw = load i32, ptr %9, align 8, !tbaa !106
  %i.px = add i32 %i.pw, -1
  %spec.select.i.i.i187.i = icmp ult i32 %i.px, -2
  br i1 %spec.select.i.i.i187.i, label %bb.bj, label %_ZN11hb_vector_tIjLb0EED2Ev.exit188.i

bb.bj:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.py, align 4, !tbaa !108
  %i.pz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !107
  call void @hb_free(ptr noundef %i.qa) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit188.i

_ZN11hb_vector_tIjLb0EED2Ev.exit188.i:            ; preds = %bb.bj, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br i1 %.sroa.041.1.i, label %bb.bk, label %_ZN11hb_vector_tIjLb0EED2Ev.exit190.i

bb.bk:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit188.i
  call void @hb_free(ptr noundef %.sroa.1548.2.i) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit190.i

_ZN11hb_vector_tIjLb0EED2Ev.exit190.i:            ; preds = %bb.bk, %_ZN11hb_vector_tIjLb0EED2Ev.exit188.i
  %i.qb = load i32, ptr %8, align 8, !tbaa !106
  %i.qc = add i32 %i.qb, -1
  %spec.select.i.i.i191.i = icmp ult i32 %i.qc, -2
  br i1 %spec.select.i.i.i191.i, label %bb.bl, label %_ZN11hb_vector_tIjLb0EED2Ev.exit192.i

bb.bl:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit190.i
  store i32 0, ptr %i.bn, align 4, !tbaa !108
  %i.qd = load ptr, ptr %i.bp, align 8, !tbaa !107
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
  %i.qh = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %.not.i.i194.i = icmp eq ptr %i.qh, null
  br i1 %.not.i.i194.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.bn, !prof !99

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
  %i.qj = load i32, ptr %i.qi, align 4, !noalias !755
  %i.qk = trunc i32 %i.qj to i1
  br i1 %i.qk, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i
  %i.ql = add i32 %.sroa.5.sroa.0.0.i.i, -1       ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 12
  %i.qn = icmp eq i32 %i.ql, 0
  br i1 %i.qn, label %._crit_edge145.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i, !llvm.loop !653

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i
  %i.qo = zext i32 %.sroa.5.sroa.0.0.i.i to i64
  %.idx152.i = mul nuw nsw i64 %i.qo, 12
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 %.idx152.i
  br label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i"
  %.0143.i = phi i32 [ %.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i" ] ; 2 uses
  %.sroa.01.0142.i = phi ptr [ %.sroa.01.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i" ], [ %.sroa.02.0.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i" ] ; 3 uses
  %.sroa.72.0141.i = phi i32 [ %.sroa.72.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i" ], [ %.sroa.5.sroa.0.0.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.i" ] ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.72.0141.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bp, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i", !prof !99

bb.bp:                                            ; preds = %.lr.ph144.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i": ; preds = %bb.bp, %.lr.ph144.i
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.bp ], [ %.sroa.01.0142.i, %.lr.ph144.i ] ; 2 uses
  %i.qq = load i32, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !113 ; 2 uses
  %i.qr = icmp eq i32 %.060.lcssa.i, %i.qq
  br i1 %i.qr, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.i"
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !114
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
  %.not.i.i.i.i.i.i198.i1672 = icmp eq i32 %.sroa.72.0141.i, 0
  br i1 %.not.i.i.i.i.i.i198.i1672, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i, !prof !115

bb.bs:                                            ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i, !llvm.loop !654

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i: ; preds = %bb.br, %bb.bs
  %.sroa.01.1.i1674 = phi ptr [ %i.rd, %bb.bs ], [ %.sroa.01.0142.i, %bb.br ] ; 2 uses
  %.sroa.72.1.i1673 = phi i32 [ %i.rc, %bb.bs ], [ %.sroa.72.0141.i, %bb.br ]
  %i.rc = add i32 %.sroa.72.1.i1673, -1           ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i1674, i64 12 ; 3 uses
  %.not.i.i.i.i199.i = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i.i.i199.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i", label %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i"

"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.i.i.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i1674, i64 16
  %i.rf = load i32, ptr %i.re, align 4
  %i.rg = trunc i32 %i.rf to i1
  br i1 %i.rg, label %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i_crit_edge", label %bb.bs, !llvm.loop !654

"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIjjLb0EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i", !llvm.loop !654

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
  %or.cond.1427.i = or i1 %i.rl, %i.rm
  br i1 %or.cond.1427.i, label %.thread431.i, label %._crit_edge145.1.i

bb.bt:                                            ; preds = %._crit_edge145.i
  br i1 %.not15.i.i.i.i.i.i, label %._crit_edge145.1.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i: ; preds = %bb.bt, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i
  %.sroa.5.sroa.0.0.i.1.i = phi i32 [ %i.rq, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i ], [ %i.nw, %bb.bt ] ; 3 uses
  %.sroa.02.0.i.1.i = phi ptr [ %i.rr, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i ], [ %.val71.i, %bb.bt ] ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.1.i, i64 4
  %i.ro = load i32, ptr %i.rn, align 4, !noalias !755
  %i.rp = trunc i32 %i.ro to i1
  br i1 %i.rp, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.1.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i
  %i.rq = add i32 %.sroa.5.sroa.0.0.i.1.i, -1     ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.1.i, i64 12
  %i.rs = icmp eq i32 %i.rq, 0
  br i1 %i.rs, label %._crit_edge145.1.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i, !llvm.loop !653

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.1.i
  %i.rt = zext i32 %.sroa.5.sroa.0.0.i.1.i to i64
  %.idx152.1.i = mul nuw nsw i64 %i.rt, 12
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.1.i, i64 %.idx152.1.i
  br label %.lr.ph144.1.i

.lr.ph144.1.i:                                    ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.1.i", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i"
  %.0143.1.i = phi i32 [ %.1.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.1.i" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i" ] ; 2 uses
  %.sroa.01.0142.1.i = phi ptr [ %.sroa.01.2.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.1.i" ], [ %.sroa.02.0.i.1.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i" ] ; 3 uses
  %.sroa.72.0141.1.i = phi i32 [ %.sroa.72.2.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.1.i" ], [ %.sroa.5.sroa.0.0.i.1.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.1.i" ] ; 4 uses
end_hunk_0
