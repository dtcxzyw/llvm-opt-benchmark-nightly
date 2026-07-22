inline.NumInlined: 6990
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_119StringSplitFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 1)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %i.d, align 8, !tbaa !30
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef 0)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.n = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.l unwind label %bb.s       ; 6 uses

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i unwind label %bb.t

_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i: ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.p = load i64, ptr %i.d, align 8, !tbaa !30
  %.not45.i = icmp eq i64 %i.p, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 9 ; 2 uses
  %.sroa.4.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 4
  %.sroa.4.i121.i.4.i121.i.4.i121.i.4.i121.4.i121.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i121.i, i64 4
  %.sroa.4.i132.i.4.i132.i.4.i132.i.4.i132.4.i132.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i132.i, i64 4
  %.sroa.4.i110.i.4.i110.i.4.i110.i.4.i110.4.i110.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i110.i, i64 4
  br label %bb.u

._crit_edge.i:                                    ; preds = %bb.bd, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i
  %.065.lcssa.i = phi i64 [ 0, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i ], [ %.267.i, %bb.bd ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.065.lcssa.i)
          to label %bb.be unwind label %bb.bh

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.n:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.o:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.p:                                             ; preds = %bb.f, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.q:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.r:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.s:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.t:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.u:                                             ; preds = %bb.bd, %.lr.ph.i
  %.06544.i = phi i64 [ 0, %.lr.ph.i ], [ %.267.i, %bb.bd ] ; 9 uses
  %.06842.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fa, %bb.bd ] ; 8 uses
  %i.ah = load ptr, ptr %7, align 8, !tbaa !98
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !107 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.06842.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = zext i32 %i.ak to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.v, %bb.u
  %i.am = phi i64 [ %i.al, %bb.v ], [ %.06842.i, %bb.u ] ; 4 uses
  %i.an = load ptr, ptr %8, align 8, !tbaa !98
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !107 ; 2 uses
  %.not.i83.i = icmp eq ptr %i.ao, null
  br i1 %.not.i83.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.06842.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = zext i32 %i.aq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i: ; preds = %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.as = phi i64 [ %i.ar, %bb.w ], [ %.06842.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 3 uses
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !68  ; 2 uses
  %.not.i85.i = icmp eq ptr %i.at, null
  br i1 %.not.i85.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i
  %i.au = lshr i64 %i.am, 6
  %i.av = and i64 %i.am, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !69
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %bb.x, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !68  ; 2 uses
  %.not.i86.i = icmp eq ptr %i.ba, null
  br i1 %.not.i86.i, label %bb.y, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.y:                                             ; preds = %bb.x
  %i.bb = load i64, ptr %i.r, align 8, !tbaa !84
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.bb)
          to label %.noexc.i unwind label %bb.z

.noexc.i:                                         ; preds = %bb.y
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !68
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %.noexc.i, %bb.x
  %i.bc = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.ba, %bb.x ]
  %i.bd = lshr i64 %.06842.i, 6
  %i.be = and i64 %.06842.i, 63
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = xor i64 %i.bf, -1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !69
  %i.bj = and i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !69
  br label %bb.bd

bb.z:                                             ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !68  ; 2 uses
  %.not.i87.i = icmp eq ptr %i.bl, null
  br i1 %.not.i87.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bm = lshr i64 %i.as, 6
  %i.bn = and i64 %i.as, 63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !69
  %i.bq = shl nuw i64 1, %i.bn
  %i.br = and i64 %i.bp, %i.bq
  %.not24.i = icmp eq i64 %i.br, 0
  br i1 %.not24.i, label %bb.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i

bb.aa:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.am ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !7  ; 4 uses
  %i.bu = icmp ult i32 %i.bt, 13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = zext nneg i32 %i.bt to i64
  %i.bz = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc91.i unwind label %bb.ag

.noexc91.i:                                       ; preds = %bb.aa
  %.not.i90.i = icmp ult i64 %.06544.i, %i.bz
  br i1 %.not.i90.i, label %.noexc94.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc91.i
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.06544.i)
          to label %.noexc92.i unwind label %bb.ag

.noexc92.i:                                       ; preds = %bb.ab
  %i.ca = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc93.i unwind label %bb.ag

.noexc93.i:                                       ; preds = %.noexc92.i
  %i.cb = shl i64 %i.ca, 1
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.cb)
          to label %.noexc94.i unwind label %bb.ag

.noexc94.i:                                       ; preds = %.noexc93.i, %.noexc91.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  br i1 %i.bu, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.noexc94.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i.i, i8 0, i64 12, i1 false)
  %i.cc = icmp eq i32 %i.bt, 0
  br i1 %i.cc, label %_ZN6duckdb8string_tC2EPKcj.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.i.i, ptr nonnull align 1 %i.bv, i64 %i.by, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

bb.ae:                                            ; preds = %.noexc94.i
  %i.cd = load i32, ptr %i.bx, align 1
  store i32 %i.cd, ptr %.sroa.4.i.i, align 4
  store ptr %i.bx, ptr %.sroa.4.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !7
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

_ZN6duckdb8string_tC2EPKcj.exit.i.i:              ; preds = %bb.ae, %bb.ad, %bb.ac
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.06544.i ; 2 uses
  store i32 %i.bt, ptr %i.cf, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i.i, i64 12, i1 false), !tbaa.struct !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %bb.bc

bb.ag:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i, %.noexc93.i, %.noexc92.i, %bb.ab, %bb.aa
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.am ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.ch, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !7 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.as ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ci, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.01.0.copyload.i, ptr %5, align 8
  store ptr %.sroa.22.0.copyload.i, ptr %i.u, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.v, align 8
  %i.cj = trunc i64 %.sroa.01.0.copyload.i to i32 ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 13
  %i.cl = select i1 %i.ck, ptr %i.w, ptr %.sroa.22.0.copyload.i ; 3 uses
  %i.cm = and i64 %.sroa.01.0.copyload.i, 4294967295 ; 3 uses
  %i.cn = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.co = icmp ult i32 %i.cn, 13
  %i.cp = select i1 %i.co, ptr %i.x, ptr %.sroa.2.0.copyload.i
  %i.cq = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not11.i.i, label %.thread.i.i, label %.lr.ph16.i.i

.lr.ph16.i.i:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i
  %i.cr = icmp eq i32 %i.cn, 0
  br i1 %i.cr, label %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.us.us.i.i, label %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.i.i

_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.us.us.i.i: ; preds = %.lr.ph16.i.i, %.noexc97.i
  %.03414.us.us.i.i = phi i64 [ %i.dj, %.noexc97.i ], [ 0, %.lr.ph16.i.i ] ; 4 uses
  %.03613.us.us.i.i = phi ptr [ %i.dk, %.noexc97.i ], [ %i.cl, %.lr.ph16.i.i ] ; 7 uses
  %.03912.us.us.i.i = phi i64 [ %i.dl, %.noexc97.i ], [ %i.cm, %.lr.ph16.i.i ] ; 6 uses
  %i.cs = icmp ugt i64 %.03912.us.us.i.i, 1
  br i1 %i.cs, label %.lr.ph.us.us.i.i, label %._crit_edge.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.us.us.i.i, %bb.ah
  %.0338.us.us.i.i = phi i64 [ %i.cw, %bb.ah ], [ 1, %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.us.us.i.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.03613.us.us.i.i, i64 %.0338.us.us.i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !7
  %i.cv = icmp sgt i8 %i.cu, -65
  br i1 %i.cv, label %._crit_edge.us.us.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.us.us.i.i
  %i.cw = add nuw i64 %.0338.us.us.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cw, %.03912.us.us.i.i
  br i1 %exitcond.not.i.i, label %.thread.i.i, label %.lr.ph.us.us.i.i, !llvm.loop !1933

._crit_edge.us.us.i.i:                            ; preds = %.lr.ph.us.us.i.i, %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.us.us.i.i
  %.033.lcssa.us.us.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.us.us.i.i ], [ %.0338.us.us.i.i, %.lr.ph.us.us.i.i ] ; 5 uses
  %i.cx = icmp eq i64 %.033.lcssa.us.us.i.i, %.03912.us.us.i.i
  br i1 %i.cx, label %.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.us.us.i.i
  %i.cy = add i64 %.03414.us.us.i.i, %.06544.i    ; 3 uses
  %i.cz = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc137.i unwind label %.loopexit.i

.noexc137.i:                                      ; preds = %bb.ai
  %.not.i133.i = icmp ult i64 %i.cy, %i.cz
  br i1 %.not.i133.i, label %.noexc140.i, label %bb.aj

bb.aj:                                            ; preds = %.noexc137.i
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.cy)
          to label %.noexc138.i unwind label %.loopexit.i

.noexc138.i:                                      ; preds = %bb.aj
  %i.da = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc139.i unwind label %.loopexit.i

.noexc139.i:                                      ; preds = %.noexc138.i
  %i.db = shl i64 %i.da, 1
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.db)
          to label %.noexc140.i unwind label %.loopexit.i

.noexc140.i:                                      ; preds = %.noexc139.i, %.noexc137.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i132.i)
  %i.dc = trunc i64 %.033.lcssa.us.us.i.i to i32  ; 3 uses
  %i.dd = icmp ult i32 %i.dc, 13
  br i1 %i.dd, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.noexc140.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i132.i, i8 0, i64 12, i1 false)
  %i.de = icmp eq i32 %i.dc, 0
  br i1 %i.de, label %_ZN6duckdb8string_tC2EPKcj.exit.i135.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = and i64 %.033.lcssa.us.us.i.i, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.i132.i, ptr align 1 %.03613.us.us.i.i, i64 %i.df, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i135.i

bb.am:                                            ; preds = %.noexc140.i
  %i.dg = load i32, ptr %.03613.us.us.i.i, align 1
  store i32 %i.dg, ptr %.sroa.4.i132.i, align 4
  store ptr %.03613.us.us.i.i, ptr %.sroa.4.i132.i.4.i132.i.4.i132.i.4.i132.4.i132.4..sroa_idx, align 4, !tbaa !7
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i135.i

_ZN6duckdb8string_tC2EPKcj.exit.i135.i:           ; preds = %bb.am, %bb.al, %bb.ak
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %.noexc97.i unwind label %.loopexit.i

.noexc97.i:                                       ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i135.i
  %i.dh = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.cy ; 2 uses
  store i32 %i.dc, ptr %i.di, align 8
  %.sroa.4.0..sroa_idx.i136.i = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx.i136.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i132.i, i64 12, i1 false), !tbaa.struct !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i132.i)
  %i.dj = add i64 %.03414.us.us.i.i, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.03613.us.us.i.i, i64 %.033.lcssa.us.us.i.i
  %i.dl = sub i64 %.03912.us.us.i.i, %.033.lcssa.us.us.i.i
  br label %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.us.us.i.i

_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.i.i: ; preds = %.lr.ph16.i.i, %.noexc98.i
  %.03414.i.i = phi i64 [ %i.ei, %.noexc98.i ], [ 0, %.lr.ph16.i.i ] ; 3 uses
  %.03613.i.i = phi ptr [ %i.ek, %.noexc98.i ], [ %i.cl, %.lr.ph16.i.i ] ; 6 uses
  %.03912.i.i = phi i64 [ %i.el, %.noexc98.i ], [ %i.cm, %.lr.ph16.i.i ] ; 4 uses
  %i.dm = call noundef i64 @_ZN6duckdb12FindStrInStrEPKhmS1_m(ptr noundef readonly %.03613.i.i, i64 noundef range(i64 1, 0) %.03912.i.i, ptr noundef readonly %i.cp, i64 noundef %i.cq) ; 4 uses
  %i.dn = icmp ugt i64 %i.dm, %.03912.i.i
  br i1 %i.dn, label %.thread.i.i, label %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.i.i

_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.i.i
  %i.do = add i64 %.03414.i.i, %.06544.i          ; 3 uses
  %i.dp = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc126.i unwind label %.loopexit.split-lp.loopexit.i

.noexc126.i:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_118RegularStringSplit4FindEPKcmS3_mRmPv.exit.thread.i.i
  %.not.i122.i = icmp ult i64 %i.do, %i.dp
  br i1 %.not.i122.i, label %.noexc129.i, label %bb.an

bb.an:                                            ; preds = %.noexc126.i
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.do)
          to label %.noexc127.i unwind label %.loopexit.split-lp.loopexit.i

.noexc127.i:                                      ; preds = %bb.an
  %i.dq = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc128.i unwind label %.loopexit.split-lp.loopexit.i

.noexc128.i:                                      ; preds = %.noexc127.i
  %i.dr = shl i64 %i.dq, 1
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.dr)
          to label %.noexc129.i unwind label %.loopexit.split-lp.loopexit.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_124StringSplitRegexFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %15)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 1)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.n, align 8, !tbaa !30
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i64 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(73) %15)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %15)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef 0)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.v = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.m unwind label %bb.t       ; 5 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i unwind label %bb.u

_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i: ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !30
  %.not34.i = icmp eq i64 %i.x, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.4.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 4
  %.sroa.4.i121.i.4.i121.i.4.i121.i.4.i121.4.i121.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i121.i, i64 4
  %.sroa.4.i110.i.4.i110.i.4.i110.i.4.i110.4.i110.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i110.i, i64 4
  br label %bb.v

._crit_edge.i:                                    ; preds = %bb.av, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i
  %.065.lcssa.i = phi i64 [ 0, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i ], [ %.267.i, %bb.av ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.065.lcssa.i)
          to label %bb.aw unwind label %bb.az

bb.n:                                             ; preds = %bb.c, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.o:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.p:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.q:                                             ; preds = %bb.g, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.r:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.s:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.t:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.u:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.v:                                             ; preds = %bb.av, %.lr.ph.i
  %.06533.i = phi i64 [ 0, %.lr.ph.i ], [ %.267.i, %bb.av ] ; 8 uses
  %.06831.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ek, %bb.av ] ; 8 uses
  %i.ao = load ptr, ptr %14, align 8, !tbaa !98
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.06831.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.w, %bb.v
  %i.at = phi i64 [ %i.as, %bb.w ], [ %.06831.i, %bb.v ] ; 4 uses
  %i.au = load ptr, ptr %15, align 8, !tbaa !98
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %.not.i83.i = icmp eq ptr %i.av, null
  br i1 %.not.i83.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.06831.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i: ; preds = %bb.x, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.az = phi i64 [ %i.ay, %bb.x ], [ %.06831.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 2 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %.not.i85.i = icmp eq ptr %i.ba, null
  br i1 %.not.i85.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i
  %i.bb = lshr i64 %i.at, 6
  %i.bc = and i64 %i.at, 63
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !69
  %i.bf = shl nuw i64 1, %i.bc
  %i.bg = and i64 %i.be, %i.bf
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %bb.y, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

bb.y:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.bh = load ptr, ptr %i.w, align 8, !tbaa !68  ; 2 uses
  %.not.i86.i = icmp eq ptr %i.bh, null
  br i1 %.not.i86.i, label %bb.z, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.z:                                             ; preds = %bb.y
  %i.bi = load i64, ptr %i.z, align 8, !tbaa !84
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef %i.bi)
          to label %.noexc.i unwind label %bb.aa

.noexc.i:                                         ; preds = %bb.z
  %.pre.i.i = load ptr, ptr %i.w, align 8, !tbaa !68
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %.noexc.i, %bb.y
  %i.bj = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.bh, %bb.y ]
  %i.bk = lshr i64 %.06831.i, 6
  %i.bl = and i64 %.06831.i, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, -1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !69
  %i.bq = and i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !69
  br label %bb.av

bb.aa:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i
  %i.bs = load ptr, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %.not.i87.i = icmp eq ptr %i.bs, null
  br i1 %.not.i87.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bt = lshr i64 %i.az, 6
  %i.bu = and i64 %i.az, 63
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !69
  %i.bx = shl nuw i64 1, %i.bu
  %i.by = and i64 %i.bw, %i.bx
  %.not18.i = icmp eq i64 %i.by, 0
  br i1 %.not18.i, label %bb.ab, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i

bb.ab:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.at ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !7  ; 4 uses
  %i.cb = icmp ult i32 %i.ca, 13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = zext nneg i32 %i.ca to i64
  %i.cg = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc91.i unwind label %bb.ah

.noexc91.i:                                       ; preds = %bb.ab
  %.not.i90.i = icmp ult i64 %.06533.i, %i.cg
  br i1 %.not.i90.i, label %.noexc94.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc91.i
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.06533.i)
          to label %.noexc92.i unwind label %bb.ah

.noexc92.i:                                       ; preds = %bb.ac
  %i.ch = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc93.i unwind label %bb.ah

.noexc93.i:                                       ; preds = %.noexc92.i
  %i.ci = shl i64 %i.ch, 1
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ci)
          to label %.noexc94.i unwind label %bb.ah

.noexc94.i:                                       ; preds = %.noexc93.i, %.noexc91.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  br i1 %i.cb, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.noexc94.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i.i, i8 0, i64 12, i1 false)
  %i.cj = icmp eq i32 %i.ca, 0
  br i1 %i.cj, label %_ZN6duckdb8string_tC2EPKcj.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.i.i, ptr nonnull align 1 %i.cc, i64 %i.cf, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

bb.af:                                            ; preds = %.noexc94.i
  %i.ck = load i32, ptr %i.ce, align 1
  store i32 %i.ck, ptr %.sroa.4.i.i, align 4
  store ptr %i.ce, ptr %.sroa.4.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !7
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

_ZN6duckdb8string_tC2EPKcj.exit.i.i:              ; preds = %bb.af, %bb.ae, %bb.ad
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.v)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.06533.i ; 2 uses
  store i32 %i.ca, ptr %i.cm, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i.i, i64 12, i1 false), !tbaa.struct !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %bb.au

bb.ah:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i, %.noexc93.i, %.noexc92.i, %bb.ac, %bb.ab
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.at ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.co, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i64 %.sroa.01.0.copyload.i, ptr %13, align 8
  store ptr %.sroa.22.0.copyload.i, ptr %i.ac, align 8
  %i.cp = trunc i64 %.sroa.01.0.copyload.i to i32 ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 13
  %i.cr = select i1 %i.cq, ptr %i.ad, ptr %.sroa.22.0.copyload.i ; 2 uses
  %i.cs = and i64 %.sroa.01.0.copyload.i, 4294967295 ; 2 uses
  %.not54.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not54.i.i, label %.thread.i.i, label %_ZN6duckdb12_GLOBAL__N_125ConstantRegexpStringSplit4FindEPKcmS3_mRmPv.exit.i.i

_ZN6duckdb12_GLOBAL__N_125ConstantRegexpStringSplit4FindEPKcmS3_mRmPv.exit.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i, %.noexc98.i
  %.03457.i.i = phi i64 [ %i.ds, %.noexc98.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i ] ; 5 uses
  %.03656.i.i = phi ptr [ %i.du, %.noexc98.i ], [ %i.cr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i ] ; 10 uses
  %.03955.i.i = phi i64 [ %i.dv, %.noexc98.i ], [ %i.cs, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store ptr %.03656.i.i, ptr %12, align 8, !tbaa !1078
  store i64 %.03955.i.i, ptr %i.ae, align 8, !tbaa !1080
  %i.ct = invoke noundef zeroext i1 @_ZNK10duckdb_re23RE25MatchERKNS_11StringPieceEmmNS0_6AnchorEPS1_i(ptr noundef nonnull align 8 dereferenceable(148) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0, i64 noundef range(i64 1, 0) %.03955.i.i, i32 noundef 0, ptr noundef nonnull %11, i32 noundef 1)
          to label %.noexc97.i unwind label %.loopexit.i ; 2 uses

.noexc97.i:                                       ; preds = %_ZN6duckdb12_GLOBAL__N_125ConstantRegexpStringSplit4FindEPKcmS3_mRmPv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.cu = load i64, ptr %i.af, align 8
  %i.cv = load ptr, ptr %11, align 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %.03656.i.i to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %.046.i.i = select i1 %i.ct, i64 %i.cu, i64 0   ; 2 uses
  %.0.i.i.i = select i1 %i.ct, i64 %i.cy, i64 -1  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.cz = icmp ugt i64 %.0.i.i.i, %.03955.i.i
  br i1 %i.cz, label %.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc97.i
  %i.da = or i64 %.0.i.i.i, %.046.i.i
  %or.cond.i.i = icmp eq i64 %i.da, 0
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.ak

.preheader.i.i:                                   ; preds = %bb.ai
  %i.db = icmp ugt i64 %.03955.i.i, 1
  br i1 %i.db, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.aj
  %.03351.i.i = phi i64 [ %i.df, %bb.aj ], [ 1, %.preheader.i.i ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.03656.i.i, i64 %.03351.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !7
  %i.de = icmp sgt i8 %i.dd, -65
  br i1 %i.de, label %._crit_edge.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.df = add nuw i64 %.03351.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.df, %.03955.i.i
  br i1 %exitcond.not.i.i, label %.thread.i.i, label %.lr.ph.i.i, !llvm.loop !1937

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.033.lcssa.i.i = phi i64 [ 1, %.preheader.i.i ], [ %.03351.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.dg = icmp eq i64 %.033.lcssa.i.i, %.03955.i.i
  br i1 %i.dg, label %.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i, %bb.ai
  %.1.i.i = phi i64 [ %.033.lcssa.i.i, %._crit_edge.i.i ], [ %.0.i.i.i, %bb.ai ] ; 3 uses
  %i.dh = add i64 %.03457.i.i, %.06533.i          ; 3 uses
  %i.di = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc126.i unwind label %.loopexit.i

.noexc126.i:                                      ; preds = %bb.ak
  %.not.i122.i = icmp ult i64 %i.dh, %i.di
  br i1 %.not.i122.i, label %.noexc129.i, label %bb.al

bb.al:                                            ; preds = %.noexc126.i
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.dh)
          to label %.noexc127.i unwind label %.loopexit.i

.noexc127.i:                                      ; preds = %bb.al
  %i.dj = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc128.i unwind label %.loopexit.i

.noexc128.i:                                      ; preds = %.noexc127.i
  %i.dk = shl i64 %i.dj, 1
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.dk)
          to label %.noexc129.i unwind label %.loopexit.i

.noexc129.i:                                      ; preds = %.noexc128.i, %.noexc126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i121.i)
  %i.dl = trunc i64 %.1.i.i to i32                ; 3 uses
  %i.dm = icmp ult i32 %i.dl, 13
  br i1 %i.dm, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.noexc129.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i121.i, i8 0, i64 12, i1 false)
  %i.dn = icmp eq i32 %i.dl, 0
  br i1 %i.dn, label %_ZN6duckdb8string_tC2EPKcj.exit.i124.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = and i64 %.1.i.i, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.i121.i, ptr align 1 %.03656.i.i, i64 %i.do, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i124.i

bb.ao:                                            ; preds = %.noexc129.i
  %i.dp = load i32, ptr %.03656.i.i, align 1
  store i32 %i.dp, ptr %.sroa.4.i121.i, align 4
  store ptr %.03656.i.i, ptr %.sroa.4.i121.i.4.i121.i.4.i121.i.4.i121.4.i121.4..sroa_idx, align 4, !tbaa !7
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i124.i

_ZN6duckdb8string_tC2EPKcj.exit.i124.i:           ; preds = %bb.ao, %bb.an, %bb.am
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.v)
          to label %.noexc98.i unwind label %.loopexit.i

.noexc98.i:                                       ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i124.i
  %i.dq = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dh ; 2 uses
  store i32 %i.dl, ptr %i.dr, align 8
  %.sroa.4.0..sroa_idx.i125.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx.i125.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i121.i, i64 12, i1 false), !tbaa.struct !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i121.i)
  %i.ds = add i64 %.03457.i.i, 1                  ; 2 uses
  %i.dt = add i64 %.1.i.i, %.046.i.i              ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.03656.i.i, i64 %i.dt ; 2 uses
  %i.dv = sub i64 %.03955.i.i, %i.dt              ; 2 uses
  %.not.i96.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i96.i, label %.thread.i.i, label %_ZN6duckdb12_GLOBAL__N_125ConstantRegexpStringSplit4FindEPKcmS3_mRmPv.exit.i.i

.thread.i.i:                                      ; preds = %.noexc98.i, %._crit_edge.i.i, %.noexc97.i, %bb.aj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i
  %.039.lcssa.i.i = phi i64 [ %i.cs, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i ], [ %.03955.i.i, %bb.aj ], [ %.03955.i.i, %._crit_edge.i.i ], [ %.03955.i.i, %.noexc97.i ], [ 0, %.noexc98.i ] ; 2 uses
  %.036.lcssa.i.i = phi ptr [ %i.cr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i ], [ %.03656.i.i, %bb.aj ], [ %.03656.i.i, %._crit_edge.i.i ], [ %.03656.i.i, %.noexc97.i ], [ %i.du, %.noexc98.i ] ; 3 uses
  %.034.lcssa.i.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i ], [ %.03457.i.i, %bb.aj ], [ %.03457.i.i, %._crit_edge.i.i ], [ %.03457.i.i, %.noexc97.i ], [ %i.ds, %.noexc98.i ] ; 2 uses
  %i.dw = add i64 %.034.lcssa.i.i, %.06533.i      ; 3 uses
  %i.dx = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc115.i unwind label %.loopexit.split-lp.i

.noexc115.i:                                      ; preds = %.thread.i.i
  %.not.i111.i = icmp ult i64 %i.dw, %i.dx
  br i1 %.not.i111.i, label %.noexc118.i, label %bb.ap

bb.ap:                                            ; preds = %.noexc115.i
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.dw)
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_124StringSplitRegexFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
          to label %bb.cj unwind label %bb.ct

bb.cj:                                            ; preds = %bb.ci
  %i.hm = load i64, ptr %i.hh, align 8, !tbaa !30
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.hl, i64 noundef %i.hm, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.ck unwind label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.cl unwind label %bb.cu

bb.cl:                                            ; preds = %bb.ck
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !89
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.cm unwind label %bb.cu

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef 0)
          to label %bb.cn unwind label %bb.cu

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.co unwind label %bb.cv

bb.co:                                            ; preds = %bb.cn
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !67
  %i.hr = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.cp unwind label %bb.cw     ; 5 uses

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i17 unwind label %bb.cx

_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i17: ; preds = %bb.cp
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ht = load i64, ptr %i.hh, align 8, !tbaa !30
  %.not42.i = icmp eq i64 %i.ht, 0
  br i1 %.not42.i, label %._crit_edge.i66, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i17
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.i.i13.4.i.i13.4.i.i13.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i13, i64 4
  %.sroa.4.i121.i11.4.i121.i11.4.i121.i11.4.i121.4.i121.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i121.i11, i64 4
  %.sroa.4.i110.i12.4.i110.i12.4.i110.i12.4.i110.4.i110.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i110.i12, i64 4
  br label %bb.cy

._crit_edge.i66:                                  ; preds = %bb.ee, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i17
  %.065.lcssa.i67 = phi i64 [ 0, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i17 ], [ %.267.i65, %bb.ee ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.065.lcssa.i67)
          to label %bb.ef unwind label %bb.ei

bb.cq:                                            ; preds = %bb.cf, %bb.ce
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.cr:                                            ; preds = %bb.cg
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.cs:                                            ; preds = %bb.ch
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.ct:                                            ; preds = %bb.cj, %bb.ci
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cu:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cv:                                            ; preds = %bb.cn
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cw:                                            ; preds = %bb.co
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cx:                                            ; preds = %bb.cp
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cy:                                            ; preds = %bb.ee, %.lr.ph.i18
  %.06541.i = phi i64 [ 0, %.lr.ph.i18 ], [ %.267.i65, %bb.ee ] ; 8 uses
  %.06839.i = phi i64 [ 0, %.lr.ph.i18 ], [ %i.mw, %bb.ee ] ; 8 uses
  %i.io = load ptr, ptr %9, align 8, !tbaa !98
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !107 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i22, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i23, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.06839.i
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.is = zext i32 %i.ir to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i23

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i23: ; preds = %bb.cz, %bb.cy
  %i.it = phi i64 [ %i.is, %bb.cz ], [ %.06839.i, %bb.cy ] ; 4 uses
  %i.iu = load ptr, ptr %10, align 8, !tbaa !98
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !107 ; 2 uses
  %.not.i83.i24 = icmp eq ptr %i.iv, null
  br i1 %.not.i83.i24, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i25, label %bb.da

bb.da:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i23
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.06839.i
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = zext i32 %i.ix to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i25

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i25: ; preds = %bb.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i23
  %i.iz = phi i64 [ %i.iy, %bb.da ], [ %.06839.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i23 ] ; 3 uses
  %i.ja = load ptr, ptr %i.hu, align 8, !tbaa !68 ; 2 uses
  %.not.i85.i26 = icmp eq ptr %i.ja, null
  br i1 %.not.i85.i26, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i29, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i27

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i27: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i25
  %i.jb = lshr i64 %i.it, 6
  %i.jc = and i64 %i.it, 63
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jb
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !69
  %i.jf = shl nuw i64 1, %i.jc
  %i.jg = and i64 %i.je, %i.jf
  %.not.i28 = icmp eq i64 %i.jg, 0
  br i1 %.not.i28, label %bb.db, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i29

bb.db:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i27
  %i.jh = load ptr, ptr %i.hs, align 8, !tbaa !68 ; 2 uses
  %.not.i86.i99 = icmp eq ptr %i.jh, null
  br i1 %.not.i86.i99, label %bb.dc, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i100

bb.dc:                                            ; preds = %bb.db
  %i.ji = load i64, ptr %i.hv, align 8, !tbaa !84
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i64 noundef %i.ji)
          to label %.noexc.i101 unwind label %bb.dd

.noexc.i101:                                      ; preds = %bb.dc
  %.pre.i.i102 = load ptr, ptr %i.hs, align 8, !tbaa !68
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i100

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i100: ; preds = %.noexc.i101, %bb.db
  %i.jj = phi ptr [ %.pre.i.i102, %.noexc.i101 ], [ %i.jh, %bb.db ]
  %i.jk = lshr i64 %.06839.i, 6
  %i.jl = and i64 %.06839.i, 63
  %i.jm = shl nuw i64 1, %i.jl
  %i.jn = xor i64 %i.jm, -1
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jk ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !69
  %i.jq = and i64 %i.jp, %i.jn
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !69
  br label %bb.ee

bb.dd:                                            ; preds = %bb.dc
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i29: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i25
  %i.js = load ptr, ptr %i.hw, align 8, !tbaa !68 ; 2 uses
  %.not.i87.i30 = icmp eq ptr %i.js, null
  br i1 %.not.i87.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i33, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i31

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i31: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i29
  %i.jt = lshr i64 %i.iz, 6
  %i.ju = and i64 %i.iz, 63
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jt
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !69
  %i.jx = shl nuw i64 1, %i.ju
  %i.jy = and i64 %i.jw, %i.jx
  %.not18.i32 = icmp eq i64 %i.jy, 0
  br i1 %.not18.i32, label %bb.de, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i33

bb.de:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i31
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.it ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !7  ; 4 uses
  %i.kb = icmp ult i32 %i.ka, 13
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8            ; 2 uses
  %i.kf = zext nneg i32 %i.ka to i64
  %i.kg = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc91.i92 unwind label %bb.dk

.noexc91.i92:                                     ; preds = %bb.de
  %.not.i90.i93 = icmp ult i64 %.06541.i, %i.kg
  br i1 %.not.i90.i93, label %.noexc94.i96, label %bb.df

bb.df:                                            ; preds = %.noexc91.i92
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.06541.i)
          to label %.noexc92.i94 unwind label %bb.dk

.noexc92.i94:                                     ; preds = %bb.df
  %i.kh = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc93.i95 unwind label %bb.dk

.noexc93.i95:                                     ; preds = %.noexc92.i94
  %i.ki = shl i64 %i.kh, 1
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ki)
          to label %.noexc94.i96 unwind label %bb.dk

.noexc94.i96:                                     ; preds = %.noexc93.i95, %.noexc91.i92
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i13)
  br i1 %i.kb, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %.noexc94.i96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i.i13, i8 0, i64 12, i1 false)
  %i.kj = icmp eq i32 %i.ka, 0
  br i1 %i.kj, label %_ZN6duckdb8string_tC2EPKcj.exit.i.i97, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.i.i13, ptr nonnull align 1 %i.kc, i64 %i.kf, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i97

bb.di:                                            ; preds = %.noexc94.i96
  %i.kk = load i32, ptr %i.ke, align 1
  store i32 %i.kk, ptr %.sroa.4.i.i13, align 4
  store ptr %i.ke, ptr %.sroa.4.i.i13.4.i.i13.4.i.i13.4.i.4.i.4..sroa_idx, align 4, !tbaa !7
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i97

_ZN6duckdb8string_tC2EPKcj.exit.i.i97:            ; preds = %bb.di, %bb.dh, %bb.dg
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.hr)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i97
  %i.kl = load ptr, ptr %i.hx, align 8, !tbaa !67
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %.06541.i ; 2 uses
  store i32 %i.ka, ptr %i.km, align 8
  %.sroa.4.0..sroa_idx.i.i98 = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx.i.i98, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i.i13, i64 12, i1 false), !tbaa.struct !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i13)
  br label %bb.ed

bb.dk:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i97, %.noexc93.i95, %.noexc92.i94, %bb.df, %bb.de
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i33: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.i31, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i29
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.it ; 2 uses
  %.sroa.01.0.copyload.i34 = load i64, ptr %i.ko, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %.sroa.22.0.copyload.i36 = load ptr, ptr %.sroa.22.0..sroa_idx.i35, align 8, !tbaa !7 ; 2 uses
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.iz ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.kp, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.01.0.copyload.i34, ptr %7, align 8
  store ptr %.sroa.22.0.copyload.i36, ptr %i.hy, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.hz, align 8
  %i.kq = trunc i64 %.sroa.01.0.copyload.i34 to i32 ; 2 uses
  %i.kr = icmp ult i32 %i.kq, 13
  %i.ks = select i1 %i.kr, ptr %i.ia, ptr %.sroa.22.0.copyload.i36 ; 2 uses
  %i.kt = and i64 %.sroa.01.0.copyload.i34, 4294967295 ; 2 uses
  %i.ku = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.kv = icmp ult i32 %i.ku, 13
  %i.kw = select i1 %i.kv, ptr %i.ib, ptr %.sroa.2.0.copyload.i
  %i.kx = and i64 %.sroa.0.0.copyload.i, 4294967295
  %.not16.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not16.i.i, label %.thread.i.i51, label %.lr.ph21.i.i

.lr.ph21.i.i:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i33, %.noexc98.i48
  %.03419.i.i = phi i64 [ %i.me, %.noexc98.i48 ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i33 ] ; 5 uses
  %.03618.i.i = phi ptr [ %i.mg, %.noexc98.i48 ], [ %i.ks, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i33 ] ; 10 uses
  %.03917.i.i = phi i64 [ %i.mh, %.noexc98.i48 ], [ %i.kt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit89.thread.i33 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.kw, ptr %6, align 8, !tbaa !1078
  store i64 %i.kx, ptr %i.ic, align 8, !tbaa !1080
  invoke void @_ZN10duckdb_re23RE2C1ERKNS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc97.i39 unwind label %.loopexit.i37

.noexc97.i39:                                     ; preds = %.lr.ph21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ky = load i32, ptr %i.id, align 4
  %i.kz = and i32 %i.ky, 536870911
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %.noexc97.i39
  %i.lb = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !1083
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull align 8 dereferenceable(32) %i.ld)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  invoke void @__cxa_throw(ptr nonnull %i.lb, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.dq unwind label %.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %bb.do
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit.split-lp.i.i:                           ; preds = %bb.dm
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lb) #28
  br label %bb.dp

bb.do:                                            ; preds = %.noexc97.i39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %.03618.i.i, ptr %4, align 8, !tbaa !1078
  store i64 %.03917.i.i, ptr %i.ie, align 8, !tbaa !1080
  %i.lf = invoke noundef zeroext i1 @_ZNK10duckdb_re23RE25MatchERKNS_11StringPieceEmmNS0_6AnchorEPS1_i(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0, i64 noundef range(i64 1, 0) %.03917.i.i, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 1)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.lg = load i64, ptr %i.if, align 8
  %i.lh = load ptr, ptr %3, align 8
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %.03618.i.i to i64
  %i.lk = sub i64 %i.li, %i.lj
  %.02.i.i = select i1 %i.lf, i64 %i.lg, i64 0    ; 2 uses
  %.0.i.i.i.i = select i1 %i.lf, i64 %i.lk, i64 -1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN10duckdb_re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ll = icmp ugt i64 %.0.i.i.i.i, %.03917.i.i
  br i1 %i.ll, label %.thread.i.i51, label %bb.dr

bb.dp:                                            ; preds = %bb.dn, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.le, %bb.dn ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @_ZN10duckdb_re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body.i

bb.dq:                                            ; preds = %bb.dm
  unreachable

bb.dr:                                            ; preds = %.noexc.i.i.i
  %i.lm = or i64 %.0.i.i.i.i, %.02.i.i
  %or.cond.i.i40 = icmp eq i64 %i.lm, 0
  br i1 %or.cond.i.i40, label %.preheader.i.i87, label %bb.dt

.preheader.i.i87:                                 ; preds = %bb.dr
  %i.ln = icmp ugt i64 %.03917.i.i, 1
  br i1 %i.ln, label %.lr.ph.i.i90, label %._crit_edge.i.i88

.lr.ph.i.i90:                                     ; preds = %.preheader.i.i87, %bb.ds
  %.03313.i.i = phi i64 [ %i.lr, %bb.ds ], [ 1, %.preheader.i.i87 ] ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.03618.i.i, i64 %.03313.i.i
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !7
  %i.lq = icmp sgt i8 %i.lp, -65
  br i1 %i.lq, label %._crit_edge.i.i88, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i90
  %i.lr = add nuw i64 %.03313.i.i, 1              ; 2 uses
  %exitcond.not.i.i91 = icmp eq i64 %i.lr, %.03917.i.i
  br i1 %exitcond.not.i.i91, label %.thread.i.i51, label %.lr.ph.i.i90, !llvm.loop !1941

._crit_edge.i.i88:                                ; preds = %.lr.ph.i.i90, %.preheader.i.i87
  %.033.lcssa.i.i89 = phi i64 [ 1, %.preheader.i.i87 ], [ %.03313.i.i, %.lr.ph.i.i90 ] ; 2 uses
  %i.ls = icmp eq i64 %.033.lcssa.i.i89, %.03917.i.i
  br i1 %i.ls, label %.thread.i.i51, label %bb.dt

bb.dt:                                            ; preds = %._crit_edge.i.i88, %bb.dr
  %.1.i.i41 = phi i64 [ %.033.lcssa.i.i89, %._crit_edge.i.i88 ], [ %.0.i.i.i.i, %bb.dr ] ; 3 uses
  %i.lt = add i64 %.03419.i.i, %.06541.i          ; 3 uses
  %i.lu = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc126.i42 unwind label %.loopexit.i37

.noexc126.i42:                                    ; preds = %bb.dt
  %.not.i122.i43 = icmp ult i64 %i.lt, %i.lu
  br i1 %.not.i122.i43, label %.noexc129.i46, label %bb.du

bb.du:                                            ; preds = %.noexc126.i42
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.lt)
          to label %.noexc127.i44 unwind label %.loopexit.i37
end_hunk_2
