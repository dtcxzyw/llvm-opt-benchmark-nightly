inline.NumInlined: 12080
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 418
loop-unroll.NumUnrolled: 430
begin_hunk_0_@_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm:bb.a

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i12.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i15.i = load ptr, ptr %i.z, align 8, !tbaa !66
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, %.lr.ph.i
  %.019.i = phi i64 [ 0, %.lr.ph.i ], [ %i.du, %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.019.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !5327 ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i15.i, i64 %.019.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5327 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !5329, !range !489, !noundef !133
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !5329, !range !489, !noundef !133
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !5274, !nonnull !133, !align !134
  %i.am = load i64, ptr %i.ac, align 8, !tbaa !5333 ; 2 uses
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !5333
  %i.an = shl i64 %i.am, 2
  %i.ao = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.al, i64 noundef %i.an) ; 2 uses
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !5333
  %i.aq = shl i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !5334
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.as, align 8, !tbaa !5335
  store i8 1, ptr %i.ai, align 8, !tbaa !5329
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !5333
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !5333
  %.not.i.i = icmp eq i64 %i.at, %i.au
  br i1 %.not.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ae unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume.sink.split.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.ay) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !5335 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !5334
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.ae, align 8, !tbaa !5333
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !5334 ; 17 uses
  %.pre.i = load i64, ptr %i.bf, align 8, !tbaa !5335
  br label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i, %.lr.ph.i.i.i
  %i.bj = phi i64 [ %i.bc, %.lr.ph.i.i.i ], [ %i.dq, %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i ]
  %i.bk = phi i64 [ %.pre.i, %.lr.ph.i.i.i ], [ %i.dr, %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i ] ; 16 uses
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ds, %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.06.i.i.i ; 3 uses
  %i.bm = icmp ult i64 %i.bk, %i.bg
  br i1 %i.bm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bn = add nuw i64 %i.bk, 1                    ; 5 uses
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !5335
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk
  %i.bp = load i32, ptr %i.bl, align 4, !tbaa !3  ; 5 uses
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !5336
  %i.bq = icmp sgt i64 %i.bn, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %.sink.split.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %.01316.i.i.i.i = phi i64 [ %.017.i67.i.i.i, %bb.w ], [ %i.bk, %bb.v ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i67.i.i.i = lshr i64 %.017.in.i.i.i.i, 1  ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.017.i67.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3  ; 2 uses
  %i.bt = icmp sgt i32 %i.bp, %i.bs
  br i1 %i.bt, label %bb.w, label %.sink.split.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01316.i.i.i.i
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !3
  %.not.i.i16.i = icmp eq i64 %.017.i67.i.i.i, 0
  br i1 %.not.i.i16.i, label %.sink.split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5338

bb.x:                                             ; preds = %bb.u
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 2 uses
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !3  ; 3 uses
  %i.bx = icmp sgt i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.y, label %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk
  %i.bz = icmp ugt i64 %i.bk, 1
  %i.ca = getelementptr i8, ptr %i.by, i64 -4     ; 4 uses
  br i1 %i.bz, label %bb.z, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i

_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i: ; preds = %bb.y
  store i32 %i.bw, ptr %i.ca, align 4, !tbaa !5336
  %i.cb = add nsw i64 %i.bk, -1
  br label %.sink.split.i.i

bb.z:                                             ; preds = %bb.y
  %.sroa.02.0.copyload.i.i.i.i = load i32, ptr %i.ca, align 4, !tbaa !3 ; 2 uses
  store i32 %i.bv, ptr %i.ca, align 4, !tbaa !3
  %.idx22.i.i = shl nuw nsw i64 %i.bk, 2
  %i.cc = add nsw i64 %.idx22.i.i, -4             ; 2 uses
  %i.cd = ashr exact i64 %i.cc, 2                 ; 3 uses
  %i.ce = add nsw i64 %i.cd, -1
  %10 = sdiv i64 %i.ce, 2
  %i.cf = icmp sgt i64 %i.cd, 2
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %.031.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.z ] ; 2 uses
  %i.cg = shl i64 %.031.i.i.i.i.i, 1              ; 3 uses
  %i.ch = add i64 %i.cg, 2                        ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = getelementptr [4 x i8], ptr %i.bi, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.cn = icmp sgt i32 %i.cl, %i.cm
  %i.co = or disjoint i64 %i.cg, 1
  %spec.select.i.i.i.i.i = select i1 %i.cn, i64 %i.co, i64 %i.ch ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %spec.select.i.i.i.i.i
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.031.i.i.i.i.i
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !3
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !3
  %i.cs = icmp slt i64 %spec.select.i.i.i.i.i, %10
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !5339

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.z
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.z ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.ct = and i64 %i.cc, 4
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.cv = add nsw i64 %i.cd, -2
  %i.cw = ashr exact i64 %i.cv, 1
  %i.cx = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.cw
  br i1 %i.cx, label %.thread.i.i.i.i, label %bb.ab

.thread.i.i.i.i:                                  ; preds = %bb.aa
  %i.cy = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.cz = or disjoint i64 %i.cy, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cz
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.0.lcssa.i.i.i.i.i
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !3
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ab, %.thread.i.i.i.i
  %.01316.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i, %bb.ab ], [ %i.cz, %.thread.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ac
  %.01316.i.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i.i, %bb.ac ], [ %.01316.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i.i, -1
  %.017.i.i910.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.017.i.i910.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3  ; 2 uses
  %i.df = icmp sgt i32 %.sroa.02.0.copyload.i.i.i.i, %i.de
  br i1 %i.df, label %bb.ac, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.01316.i.i.i.i.i.i
  store i32 %i.de, ptr %i.dg, align 4, !tbaa !3
  %.not11.i.i.i.i = icmp eq i64 %.017.i.i910.i.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5338

_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i, %bb.ab
  %.013.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.ab ], [ 0, %bb.ac ], [ %.01316.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.013.lcssa.i.i.i.i.i.i
  store i32 %.sroa.02.0.copyload.i.i.i.i, ptr %i.dh, align 4, !tbaa !3
  %.pre.i.i = load i32, ptr %i.bl, align 4, !tbaa !3 ; 5 uses
  store i32 %.pre.i.i, ptr %i.ca, align 4, !tbaa !5336
  %i.di = add nsw i64 %i.bk, -1                   ; 2 uses
  %i.dj = icmp sgt i64 %i.bk, 1
  br i1 %i.dj, label %.lr.ph.i.i8.i.i, label %.sink.split.i.i

.lr.ph.i.i8.i.i:                                  ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, %bb.ad
  %.01316.i.i9.i.i = phi i64 [ %.017.i67.i11.i.i, %bb.ad ], [ %i.di, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ] ; 3 uses
  %.017.in.i.i10.i.i = add nsw i64 %.01316.i.i9.i.i, -1
  %.017.i67.i11.i.i = lshr i64 %.017.in.i.i10.i.i, 1 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.017.i67.i11.i.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3  ; 2 uses
  %i.dm = icmp sgt i32 %.pre.i.i, %i.dl
  br i1 %i.dm, label %bb.ad, label %.sink.split.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i8.i.i
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.01316.i.i9.i.i
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !3
  %.not.i15.i.i = icmp eq i64 %.017.i67.i11.i.i, 0
  br i1 %.not.i15.i.i, label %.sink.split.i.i, label %.lr.ph.i.i8.i.i, !llvm.loop !5338

.sink.split.i.i:                                  ; preds = %bb.ad, %.lr.ph.i.i8.i.i, %bb.w, %.lr.ph.i.i.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i, %bb.v
  %i.do = phi i64 [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i ], [ %i.bn, %bb.v ], [ %i.bn, %bb.w ], [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.bk, %.lr.ph.i.i8.i.i ], [ %i.bk, %bb.ad ]
  %.013.lcssa.i.i7.sink.i.i = phi i64 [ %i.cb, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i ], [ %i.bk, %bb.v ], [ 0, %bb.w ], [ %i.di, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.ad ], [ %.01316.i.i9.i.i, %.lr.ph.i.i8.i.i ]
  %.sink.i.i = phi i32 [ %i.bw, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i ], [ %i.bp, %bb.v ], [ %i.bp, %bb.w ], [ %.pre.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %i.bp, %.lr.ph.i.i.i.i ], [ %.pre.i.i, %.lr.ph.i.i8.i.i ], [ %.pre.i.i, %bb.ad ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.013.lcssa.i.i7.sink.i.i
  store i32 %.sink.i.i, ptr %i.dp, align 4, !tbaa !3
  %.pre22.i = load i64, ptr %i.bb, align 8, !tbaa !5335
  br label %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i

_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i: ; preds = %.sink.split.i.i, %bb.x
  %i.dq = phi i64 [ %i.bj, %bb.x ], [ %.pre22.i, %.sink.split.i.i ] ; 2 uses
  %i.dr = phi i64 [ %i.bk, %bb.x ], [ %i.do, %.sink.split.i.i ]
  %i.ds = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dq
  br i1 %i.dt, label %bb.u, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, !llvm.loop !5340

bb.ae:                                            ; preds = %bb.r
  unreachable

_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i, %bb.t, %bb.l
  %i.du = add nuw i64 %.019.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.du, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit, label %bb.l, !llvm.loop !5341

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !214
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = load i8, ptr %i.c, align 1, !tbaa !214
  store i8 %i.g, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.j = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb16MinMaxNOperation8FinalizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEEEEvRNS_6VectorERNS_18AggregateInputDataES9_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !5283
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !486
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.g unwind label %bb.h
end_hunk_0
begin_hunk_1_@_ZN6duckdb16MinMaxNOperation8FinalizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEEEEvRNS_6VectorERNS_18AggregateInputDataES9_mm:bb.a
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !5327
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !5335
  %i.bf = add i64 %i.be, %.06496.epil             ; 2 uses
  %i.bg = add nuw i64 %.06595.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !5344

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil, %.preheader91
  %.064.lcssa = phi i64 [ 0, %.preheader91 ], [ %i.aw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ct, %._crit_edge.loopexit131.unr-lcssa ], [ %i.bf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ]
  %i.bh = add i64 %.064.lcssa, %i.p
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.bh)
          to label %bb.p unwind label %bb.r

bb.m:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06496 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.ct, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %.06595 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !5327
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !5335
  %i.bs = add i64 %i.br, %.06496
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !5327
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !5335
  %i.cb = add i64 %i.ca, %i.bs
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !5327
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !5335
  %i.ck = add i64 %i.cj, %i.cb
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !5327
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !5335
  %i.ct = add i64 %i.cs, %i.ck                    ; 3 uses
  %i.cu = add nuw i64 %.06595, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !5342

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66
  %i.cx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.t ; 2 uses

.preheader:                                       ; preds = %bb.q
  br i1 %.not104, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 9 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.u

._crit_edge102:                                   ; preds = %.loopexit, %.preheader
  %.066.lcssa = phi i64 [ %i.p, %.preheader ], [ %.268, %.loopexit ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.066.lcssa)
          to label %bb.ak unwind label %bb.ay

bb.r:                                             ; preds = %._crit_edge
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.lr.ph101, %.loopexit
  %.066100 = phi i64 [ %i.p, %.lr.ph101 ], [ %.268, %.loopexit ] ; 7 uses
  %.06999 = phi i64 [ 0, %.lr.ph101 ], [ %i.hq, %.loopexit ] ; 4 uses
  %i.de = add i64 %.06999, %4                     ; 3 uses
  %i.df = load ptr, ptr %9, align 8, !tbaa !87
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !464 ; 2 uses
  %.not.i84 = icmp eq ptr %i.dg, null
  br i1 %.not.i84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit85, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.06999
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit85

_ZNK6duckdb15SelectionVector9get_indexEm.exit85:  ; preds = %bb.v, %bb.u
  %i.dk = phi i64 [ %i.dj, %bb.v ], [ %.06999, %bb.u ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !5327 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !5329, !range !489, !noundef !133
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit85
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !5335 ; 10 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit85
  %i.dt = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %.not.i86 = icmp eq ptr %i.dt, null
  br i1 %.not.i86, label %bb.y, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.y:                                             ; preds = %bb.x
  %i.du = load i64, ptr %i.da, align 8, !tbaa !5287
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.du)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.y
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !67
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.x, %.noexc
  %i.dv = phi ptr [ %.pre.i, %.noexc ], [ %i.dt, %bb.x ]
  %i.dw = lshr i64 %i.de, 6
  %i.dx = and i64 %i.de, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = xor i64 %i.dy, -1
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !51
  %i.ec = and i64 %i.eb, %i.dz
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !51
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.de ; 2 uses
  store i64 %.066100, ptr %i.ee, align 8, !tbaa !5288
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %i.dr, ptr %i.ef, align 8, !tbaa !5290
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !5334 ; 18 uses
  %i.ei = ptrtoint ptr %i.eh to i64               ; 2 uses
  %.not90 = icmp eq i64 %i.dr, 1
  br i1 %.not90, label %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.dr
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, %.lr.ph.i.i.preheader.i
  %.07.i.i.i = phi ptr [ %i.ek, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i ], [ %i.ej, %.lr.ph.i.i.preheader.i ]
  %i.ek = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -4 ; 4 uses
  %.sroa.02.0.copyload.i.i.i.i = load i32, ptr %i.ek, align 4, !tbaa !3 ; 2 uses
  %i.el = load i32, ptr %i.eh, align 4, !tbaa !3
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !3
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.em, %i.ei                    ; 3 uses
  %i.eo = ashr exact i64 %i.en, 2                 ; 3 uses
  %i.ep = add nsw i64 %i.eo, -1
  %10 = sdiv i64 %i.ep, 2
  %i.eq = icmp sgt i64 %i.eo, 2
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i
  %.031.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.er = shl i64 %.031.i.i.i.i.i, 1              ; 3 uses
  %i.es = add i64 %i.er, 2                        ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.es
  %i.eu = getelementptr [4 x i8], ptr %i.eh, i64 %i.er
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ey = icmp sgt i32 %i.ew, %i.ex
  %i.ez = or disjoint i64 %i.er, 1
  %spec.select.i.i.i.i.i = select i1 %i.ey, i64 %i.ez, i64 %i.es ; 4 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %spec.select.i.i.i.i.i
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.031.i.i.i.i.i
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !3
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !3
  %i.fd = icmp slt i64 %spec.select.i.i.i.i.i, %10
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !5339

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.fe = and i64 %i.en, 4
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.fg = add nsw i64 %i.eo, -2
  %i.fh = ashr exact i64 %i.fg, 1
  %i.fi = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.fh
  br i1 %i.fi, label %.thread.i.i.i.i, label %bb.ac

.thread.i.i.i.i:                                  ; preds = %bb.ab
  %i.fj = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.fk = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fk
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.0.lcssa.i.i.i.i.i
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !3
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ac, %.thread.i.i.i.i
  %.01316.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i, %bb.ac ], [ %i.fk, %.thread.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ad
  %.01316.i.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i.i, %bb.ad ], [ %.01316.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i.i, -1
  %.017.i.i910.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.017.i.i910.i.i.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3  ; 2 uses
  %i.fq = icmp sgt i32 %.sroa.02.0.copyload.i.i.i.i, %i.fp
  br i1 %i.fq, label %bb.ad, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.01316.i.i.i.i.i.i
  store i32 %i.fp, ptr %i.fr, align 4, !tbaa !3
  %.not11.i.i.i.i = icmp eq i64 %.017.i.i910.i.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5338

_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i, %bb.ac
  %.013.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %.01316.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ad ]
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.013.lcssa.i.i.i.i.i.i
  store i32 %.sroa.02.0.copyload.i.i.i.i, ptr %i.fs, align 4, !tbaa !3
  %i.ft = icmp sgt i64 %i.en, 4
  br i1 %i.ft, label %.lr.ph.i.i.i, label %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit, !llvm.loop !5345

_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, %bb.aa
  %i.fu = load i8, ptr %i.cy, align 1, !tbaa !214
  %i.fv = icmp eq i8 %i.fu, 7
  br i1 %i.fv, label %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit.split, label %bb.ae

_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit.split: ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit
  %i.fw = load ptr, ptr %i.cz, align 8, !tbaa !66 ; 7 uses
  %min.iters.check = icmp ult i64 %i.dr, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit.split
  %i.fx = ptrtoaddr ptr %i.fw to i64
  %i.fy = shl i64 %.066100, 2
  %i.fz = add i64 %i.fy, %i.fx
  %i.ga = sub i64 %i.ei, %i.fz
  %diff.check = icmp ugt i64 %i.ga, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, -8                      ; 4 uses
  %i.gb = add i64 %.066100, %n.vec                ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %i.fw, i64 %.066100
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load = load <4 x i32>, ptr %i.gd, align 4, !tbaa !3
  %wide.load128 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !3
  %i.gf = getelementptr [4 x i8], ptr %i.gc, i64 %index ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <4 x i32> %wide.load, ptr %i.gf, align 4, !tbaa !3
  store <4 x i32> %wide.load128, ptr %i.gg, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !5346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit.split, %middle.block
  %.098.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit.split ], [ %n.vec, %middle.block ] ; 3 uses
  %.16797.ph = phi i64 [ %.066100, %vector.memcheck ], [ %.066100, %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit.split ], [ %i.gb, %middle.block ] ; 2 uses
  %xtraiter142 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.098.prol = phi i64 [ %i.gm, %scalar.ph.prol ], [ %.098.ph, %scalar.ph.preheader ] ; 2 uses
  %.16797.prol = phi i64 [ %i.gl, %scalar.ph.prol ], [ %.16797.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098.prol
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.16797.prol
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !3
  %i.gl = add i64 %.16797.prol, 1                 ; 3 uses
  %i.gm = add nuw i64 %.098.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter142
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5347

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.gl, %scalar.ph.prol ]
  %.098.unr = phi i64 [ %.098.ph, %scalar.ph.preheader ], [ %i.gm, %scalar.ph.prol ]
  %.16797.unr = phi i64 [ %.16797.ph, %scalar.ph.preheader ], [ %i.gl, %scalar.ph.prol ]
  %i.gn = sub i64 %.098.ph, %i.dr
  %i.go = icmp ugt i64 %i.gn, -4
  br i1 %i.go, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.098 = phi i64 [ %i.hi, %scalar.ph ], [ %.098.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.16797 = phi i64 [ %i.hh, %scalar.ph ], [ %.16797.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.16797
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !3
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = getelementptr [4 x i8], ptr %i.fw, i64 %.16797
  %i.gw = getelementptr i8, ptr %i.gv, i64 4
  store i32 %i.gu, ptr %i.gw, align 4, !tbaa !3
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = getelementptr [4 x i8], ptr %i.fw, i64 %.16797
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  store i32 %i.gz, ptr %i.hb, align 4, !tbaa !3
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = getelementptr [4 x i8], ptr %i.fw, i64 %.16797
  %i.hg = getelementptr i8, ptr %i.hf, i64 12
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !3
  %i.hh = add i64 %.16797, 4                      ; 2 uses
  %i.hi = add nuw i64 %.098, 4                    ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %i.hi, %i.dr
  br i1 %exitcond110.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !5348

bb.ae:                                            ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE14SortAndGetHeapEv.exit
  %i.hj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 7, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.hk = load i8, ptr %i.cy, align 1, !tbaa !214
  store i8 %i.hk, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.hj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.aj unwind label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ae
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i = phi i1 [ false, %bb.ag ], [ true, %bb.af ] ; 2 uses
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.hn = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.hn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i, label %bb.ai, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i, label %bb.ai, label %.body

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.hj) #22
  br label %.body

bb.aj:                                            ; preds = %bb.ag
  unreachable

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %.268 = phi i64 [ %.066100, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ %i.gb, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.hh, %scalar.ph ] ; 2 uses
  %i.hq = add nuw i64 %.06999, 1                  ; 2 uses
  %exitcond111.not = icmp eq i64 %i.hq, %3
  br i1 %exitcond111.not, label %._crit_edge102, label %bb.u, !llvm.loop !5349

bb.ak:                                            ; preds = %._crit_edge102
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3)
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m:bb.a
  %i.fs = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.fs) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.034, label %bb.bo, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.034, label %bb.bo, label %.body

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.pn57110 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  call void @__cxa_free_exception(ptr %i.fo) #22
  br label %.body

bb.bp:                                            ; preds = %bb.bi
  %i.fv = icmp samesign ugt i64 %i.fm, 999999
  br i1 %i.fv, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.fw = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.br unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_mE5MAX_N)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cd unwind label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.bq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0 = phi i1 [ false, %bb.bs ], [ true, %bb.br ] ; 2 uses
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fz = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.fz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn55113 = phi { ptr, i32 } [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  call void @__cxa_free_exception(ptr %i.fw) #22
  br label %.body

bb.bv:                                            ; preds = %bb.bp
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  store i64 %i.fm, ptr %i.en, align 8, !tbaa !5333
  %i.gd = shl nuw nsw i64 %i.fm, 2
  %i.ge = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i64 noundef %i.gd)
          to label %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit unwind label %bb.bm ; 2 uses

_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit: ; preds = %bb.bv
  %i.gf = load i64, ptr %i.en, align 8, !tbaa !5333
  %i.gg = shl i64 %i.gf, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.gg, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !5334
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 0, ptr %i.gi, align 8, !tbaa !5335
  store i8 1, ptr %i.eo, align 8, !tbaa !5329
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.dy
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3
  store i32 %i.gl, ptr %i.b, align 4, !tbaa !3
  %i.gm = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  invoke void @_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.by
  %i.gn = add nuw i64 %.052115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !5350

bb.ca:                                            ; preds = %bb.bw, %bb.bx
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.bo, %bb.bm, %bb.ca, %bb.ax
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ax ], [ %i.fp, %bb.bm ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.go, %bb.ca ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn107, %bb.bh ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57110, %bb.bo ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn55113, %bb.bu ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #22
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.aw
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %.body ], [ %i.dr, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.av
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.cb ], [ %i.dq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.bs, %bb.bl, %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18UnaryAggregateHeapIiNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5335 ; 11 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !5333
  %i.d = icmp ult i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5334 ; 17 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.b, 1                      ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !5335
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.i = load i32, ptr %2, align 4, !tbaa !3      ; 5 uses
  store i32 %i.i, ptr %i.h, align 4, !tbaa !5336
  %i.j = icmp sgt i64 %i.g, 1
  br i1 %i.j, label %.lr.ph.i.i, label %.sink.split

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01316.i.i = phi i64 [ %.017.i67.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i67.i = lshr i64 %.017.in.i.i, 1          ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.i67.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 2 uses
  %i.m = icmp sgt i32 %i.i, %i.l
  br i1 %i.m, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01316.i.i
  store i32 %i.l, ptr %i.n, align 4, !tbaa !3
  %.not.i = icmp eq i64 %.017.i67.i, 0
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i.i, !llvm.loop !5338

bb.d:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !3      ; 3 uses
  %i.q = icmp sgt i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b ; 2 uses
  %i.s = icmp ugt i64 %i.b, 1
  %i.t = getelementptr i8, ptr %i.r, i64 -4       ; 3 uses
  br i1 %i.s, label %bb.f, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread

_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread: ; preds = %bb.e
  store i32 %i.p, ptr %i.t, align 4, !tbaa !5336
  %i.u = add nsw i64 %i.b, -1
  br label %.sink.split

bb.f:                                             ; preds = %bb.e
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.t, align 4, !tbaa !3 ; 2 uses
  store i32 %i.o, ptr %i.t, align 4, !tbaa !3
  %.idx22 = shl nuw nsw i64 %i.b, 2
  %i.v = add nsw i64 %.idx22, -4                  ; 2 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 3 uses
  %i.x = add nsw i64 %i.w, -1
  %3 = sdiv i64 %i.x, 2
  %i.y = icmp sgt i64 %i.w, 2
  br i1 %i.y, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.031.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.z = shl i64 %.031.i.i.i, 1                   ; 3 uses
  %i.aa = add i64 %i.z, 2                         ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aa
  %i.ac = getelementptr [4 x i8], ptr %i.f, i64 %i.z
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ag = icmp sgt i32 %i.ae, %i.af
  %i.ah = or disjoint i64 %i.z, 1
  %spec.select.i.i.i = select i1 %i.ag, i64 %i.ah, i64 %i.aa ; 4 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.f, i64 %spec.select.i.i.i
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.031.i.i.i
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp slt i64 %spec.select.i.i.i, %3
  br i1 %i.al, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5339

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.am = and i64 %i.v, 4
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = add nsw i64 %i.w, -2
  %i.ap = ashr exact i64 %i.ao, 1
  %i.aq = icmp eq i64 %.0.lcssa.i.i.i, %i.ap
  br i1 %i.aq, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g
  %i.ar = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.as = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.0.lcssa.i.i.i
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3
  store i32 %i.av, ptr %i.au, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h, %.thread.i.i
  %.01316.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.h ], [ %i.as, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i910.i.i, %bb.i ], [ %.01316.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i910.i.i = lshr i64 %.017.in.i.i.i.i, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.i.i910.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = icmp sgt i32 %.sroa.02.0.copyload.i.i, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.01316.i.i.i.i
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !3
  %.not11.i.i = icmp eq i64 %.017.i.i910.i.i, 0
  br i1 %.not11.i.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5338

_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i, %bb.h
  %.013.lcssa.i.i.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.i ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.013.lcssa.i.i.i.i
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.ba, align 4, !tbaa !3
  %.pre = load i32, ptr %2, align 4, !tbaa !3     ; 5 uses
  %i.bb = getelementptr i8, ptr %i.r, i64 -4
  store i32 %.pre, ptr %i.bb, align 4, !tbaa !5336
  %i.bc = add nsw i64 %i.b, -1                    ; 2 uses
  %i.bd = icmp sgt i64 %i.b, 1
  br i1 %i.bd, label %.lr.ph.i.i8, label %.sink.split

.lr.ph.i.i8:                                      ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.j
  %.01316.i.i9 = phi i64 [ %.017.i67.i11, %bb.j ], [ %i.bc, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit ] ; 3 uses
  %.017.in.i.i10 = add nsw i64 %.01316.i.i9, -1
  %.017.i67.i11 = lshr i64 %.017.in.i.i10, 1      ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.i67.i11
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3  ; 2 uses
  %i.bg = icmp sgt i32 %.pre, %i.bf
  br i1 %i.bg, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %.lr.ph.i.i8
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.01316.i.i9
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !3
  %.not.i15 = icmp eq i64 %.017.i67.i11, 0
  br i1 %.not.i15, label %.sink.split, label %.lr.ph.i.i8, !llvm.loop !5338

.sink.split:                                      ; preds = %bb.j, %.lr.ph.i.i8, %bb.c, %.lr.ph.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread, %bb.b
  %.013.lcssa.i.i7.sink = phi i64 [ %i.u, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread ], [ %i.b, %bb.b ], [ %.01316.i.i, %.lr.ph.i.i ], [ %i.bc, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ 0, %bb.c ], [ 0, %bb.j ], [ %.01316.i.i9, %.lr.ph.i.i8 ]
  %.sink = phi i32 [ %i.p, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread ], [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %.pre, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %i.i, %.lr.ph.i.i ], [ %.pre, %.lr.ph.i.i8 ], [ %.pre, %bb.j ]
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.013.lcssa.i.i7.sink
  store i32 %.sink, ptr %i.bi, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #17 align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEENS_16MinMaxNOperationELNS_23AggregateDestructorTypeE1EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !214
  store i8 %i.i, ptr %i.d, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !214
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !214
  store i8 %i.t, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i12.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i15.i = load ptr, ptr %i.z, align 8, !tbaa !66
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, %.lr.ph.i
  %.019.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dw, %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.019.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !5351 ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i15.i, i64 %.019.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5351 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !5353, !range !489, !noundef !133
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !5353, !range !489, !noundef !133
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !5274, !nonnull !133, !align !134
  %i.am = load i64, ptr %i.ac, align 8, !tbaa !5357 ; 2 uses
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !5357
  %i.an = shl i64 %i.am, 3
  %i.ao = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.al, i64 noundef %i.an) ; 2 uses
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !5357
  %i.aq = shl i64 %i.ap, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !5358
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.as, align 8, !tbaa !5359
  store i8 1, ptr %i.ai, align 8, !tbaa !5353
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !5357
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !5357
  %.not.i.i = icmp eq i64 %i.at, %i.au
  br i1 %.not.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ae unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume.sink.split.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.ay) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !5359 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !5358
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !5358 ; 18 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i, %.lr.ph.i.i.i
  %i.bi = phi i64 [ %i.bc, %.lr.ph.i.i.i ], [ %i.dt, %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i ]
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.du, %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.06.i.i.i ; 3 uses
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !5359 ; 9 uses
  %i.bl = load i64, ptr %i.ae, align 8, !tbaa !5357
  %i.bm = icmp ult i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bn = add nuw i64 %i.bk, 1                    ; 2 uses
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !5359
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bk
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !51 ; 5 uses
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !5360
  %i.bq = icmp sgt i64 %i.bn, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %.sink.split.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %.01316.i.i.i.i = phi i64 [ %.017.i67.i.i.i, %bb.w ], [ %i.bk, %bb.v ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i67.i.i.i = lshr i64 %.017.in.i.i.i.i, 1  ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.017.i67.i.i.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !51 ; 2 uses
  %i.bt = icmp sgt i64 %i.bp, %i.bs
  br i1 %i.bt, label %bb.w, label %.sink.split.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.01316.i.i.i.i
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !51
  %.not.i.i16.i = icmp eq i64 %.017.i67.i.i.i, 0
  br i1 %.not.i.i16.i, label %.sink.split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5362

bb.x:                                             ; preds = %bb.u
  %i.bv = load i64, ptr %i.bh, align 8, !tbaa !51 ; 2 uses
  %i.bw = load i64, ptr %i.bj, align 8, !tbaa !51 ; 2 uses
  %i.bx = icmp sgt i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.y, label %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i

bb.y:                                             ; preds = %bb.x
  %i.by = icmp ugt i64 %i.bk, 1
  br i1 %i.by, label %bb.z, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bk
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  store i64 %i.bv, ptr %i.ca, align 8, !tbaa !51
  %.idx.i.i = shl nuw nsw i64 %i.bk, 3
  %i.cb = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.cc = ashr exact i64 %i.cb, 3                 ; 3 uses
  %i.cd = add nsw i64 %i.cc, -1
  %10 = sdiv i64 %i.cd, 2
  %i.ce = icmp sgt i64 %i.cc, 2
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %.031.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.z ] ; 2 uses
  %i.cf = shl i64 %.031.i.i.i.i.i, 1              ; 3 uses
  %i.cg = add i64 %i.cf, 2                        ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cg
  %i.ci = getelementptr [8 x i8], ptr %i.bh, i64 %i.cf
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !51
  %i.cl = load i64, ptr %i.ch, align 8, !tbaa !51
  %i.cm = icmp sgt i64 %i.ck, %i.cl
  %i.cn = or disjoint i64 %i.cf, 1
  %spec.select.i.i.i.i.i = select i1 %i.cm, i64 %i.cn, i64 %i.cg ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %spec.select.i.i.i.i.i
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.031.i.i.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !51
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !51
  %i.cr = icmp slt i64 %spec.select.i.i.i.i.i, %10
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !5363

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.z
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.z ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.cs = and i64 %i.cb, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.cu = add nsw i64 %i.cc, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i.i, label %bb.ab

.thread.i.i.i.i:                                  ; preds = %bb.aa
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.0.lcssa.i.i.i.i.i
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !51
  store i64 %i.db, ptr %i.da, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ab, %.thread.i.i.i.i
  %.01316.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i, %bb.ab ], [ %i.cy, %.thread.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ac
  %.01316.i.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i.i, %bb.ac ], [ %.01316.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i.i, -1
  %.017.i.i910.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.017.i.i910.i.i.i.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !51 ; 2 uses
  %i.de = icmp sgt i64 %.sroa.02.0.copyload.i.i.i.i, %i.dd
  br i1 %i.de, label %bb.ac, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.df = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.01316.i.i.i.i.i.i
  store i64 %i.dd, ptr %i.df, align 8, !tbaa !51
  %.not11.i.i.i.i = icmp eq i64 %.017.i.i910.i.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5362

_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i, %bb.ab
  %.013.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.ab ], [ 0, %bb.ac ], [ %.01316.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.013.lcssa.i.i.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.dg, align 8, !tbaa !51
  %.pre.i.i = load i64, ptr %i.bf, align 8, !tbaa !5359
  %.pre24.i.i = load i64, ptr %i.bj, align 8, !tbaa !51
  br label %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i

_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, %bb.y
  %i.dh = phi i64 [ %i.bw, %bb.y ], [ %.pre24.i.i, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i ] ; 5 uses
  %i.di = phi i64 [ %i.bk, %bb.y ], [ %.pre.i.i, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i ] ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.bh, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8
  store i64 %i.dh, ptr %i.dk, align 8, !tbaa !5360
  %.idx22.i.i = shl i64 %i.di, 3
  %i.dl = ashr exact i64 %.idx22.i.i, 3           ; 2 uses
  %i.dm = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.dn = icmp sgt i64 %i.dl, 1
  br i1 %i.dn, label %.lr.ph.i.i8.i.i, label %.sink.split.i.i

.lr.ph.i.i8.i.i:                                  ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, %bb.ad
  %.01316.i.i9.i.i = phi i64 [ %.017.i67.i11.i.i, %bb.ad ], [ %i.dm, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ] ; 3 uses
  %.017.in.i.i10.i.i = add nsw i64 %.01316.i.i9.i.i, -1
  %.017.i67.i11.i.i = lshr i64 %.017.in.i.i10.i.i, 1 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.017.i67.i11.i.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !51 ; 2 uses
  %i.dq = icmp sgt i64 %i.dh, %i.dp
  br i1 %i.dq, label %bb.ad, label %.sink.split.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i8.i.i
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.01316.i.i9.i.i
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !51
  %.not.i15.i.i = icmp eq i64 %.017.i67.i11.i.i, 0
  br i1 %.not.i15.i.i, label %.sink.split.i.i, label %.lr.ph.i.i8.i.i, !llvm.loop !5362

.sink.split.i.i:                                  ; preds = %bb.ad, %.lr.ph.i.i8.i.i, %bb.w, %.lr.ph.i.i.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, %bb.v
  %.013.lcssa.i.i7.sink.i.i = phi i64 [ %i.dm, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %i.bk, %bb.v ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.w ], [ 0, %bb.ad ], [ %.01316.i.i9.i.i, %.lr.ph.i.i8.i.i ]
  %.sink.i.i = phi i64 [ %i.dh, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %i.bp, %bb.v ], [ %i.bp, %bb.w ], [ %i.bp, %.lr.ph.i.i.i.i ], [ %i.dh, %.lr.ph.i.i8.i.i ], [ %i.dh, %bb.ad ]
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.013.lcssa.i.i7.sink.i.i
  store i64 %.sink.i.i, ptr %i.ds, align 8, !tbaa !51
  %.pre.i = load i64, ptr %i.bb, align 8, !tbaa !5359
  br label %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i

_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i: ; preds = %.sink.split.i.i, %bb.x
  %i.dt = phi i64 [ %i.bi, %bb.x ], [ %.pre.i, %.sink.split.i.i ] ; 2 uses
  %i.du = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  br i1 %i.dv, label %bb.u, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, !llvm.loop !5364

bb.ae:                                            ; preds = %bb.r
  unreachable

_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i, %bb.t, %bb.l
  %i.dw = add nuw i64 %.019.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dw, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit, label %bb.l, !llvm.loop !5365

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !214
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = load i8, ptr %i.c, align 1, !tbaa !214
  store i8 %i.g, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.j = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb16MinMaxNOperation8FinalizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEvRNS_6VectorERNS_18AggregateInputDataES9_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !5283
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !486
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
end_hunk_2
begin_hunk_3_@_ZN6duckdb16MinMaxNOperation8FinalizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEvRNS_6VectorERNS_18AggregateInputDataES9_mm:bb.a
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !5351
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !5359
  %i.bf = add i64 %i.be, %.06496.epil             ; 2 uses
  %i.bg = add nuw i64 %.06595.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !5368

._crit_edge:                                      ; preds = %._crit_edge.loopexit132.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil, %.preheader91
  %.064.lcssa = phi i64 [ 0, %.preheader91 ], [ %i.aw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ct, %._crit_edge.loopexit132.unr-lcssa ], [ %i.bf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ]
  %i.bh = add i64 %.064.lcssa, %i.p
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.bh)
          to label %bb.p unwind label %bb.r

bb.m:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06496 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.ct, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %.06595 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !5351
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !5359
  %i.bs = add i64 %i.br, %.06496
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !5351
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !5359
  %i.cb = add i64 %i.ca, %i.bs
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !5351
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !5359
  %i.ck = add i64 %i.cj, %i.cb
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !5351
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !5359
  %i.ct = add i64 %i.cs, %i.ck                    ; 3 uses
  %i.cu = add nuw i64 %.06595, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit132.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !5366

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66
  %i.cx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.t ; 2 uses

.preheader:                                       ; preds = %bb.q
  br i1 %.not106, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 9 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.u

._crit_edge104:                                   ; preds = %.loopexit, %.preheader
  %.066.lcssa = phi i64 [ %i.p, %.preheader ], [ %.268, %.loopexit ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.066.lcssa)
          to label %bb.al unwind label %bb.az

bb.r:                                             ; preds = %._crit_edge
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.lr.ph103, %.loopexit
  %.066102 = phi i64 [ %i.p, %.lr.ph103 ], [ %.268, %.loopexit ] ; 4 uses
  %.069101 = phi i64 [ 0, %.lr.ph103 ], [ %i.gm, %.loopexit ] ; 4 uses
  %i.de = add i64 %.069101, %4                    ; 3 uses
  %i.df = load ptr, ptr %9, align 8, !tbaa !87
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !464 ; 2 uses
  %.not.i84 = icmp eq ptr %i.dg, null
  br i1 %.not.i84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit85, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.069101
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit85

_ZNK6duckdb15SelectionVector9get_indexEm.exit85:  ; preds = %bb.v, %bb.u
  %i.dk = phi i64 [ %i.dj, %bb.v ], [ %.069101, %bb.u ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !5351 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !5353, !range !489, !noundef !133
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit85
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !5359 ; 4 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit85
  %i.dt = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %.not.i86 = icmp eq ptr %i.dt, null
  br i1 %.not.i86, label %bb.y, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.y:                                             ; preds = %bb.x
  %i.du = load i64, ptr %i.da, align 8, !tbaa !5287
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.du)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.y
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !67
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.x, %.noexc
  %i.dv = phi ptr [ %.pre.i, %.noexc ], [ %i.dt, %bb.x ]
  %i.dw = lshr i64 %i.de, 6
  %i.dx = and i64 %i.de, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = xor i64 %i.dy, -1
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !51
  %i.ec = and i64 %i.eb, %i.dz
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !51
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.de ; 2 uses
  store i64 %.066102, ptr %i.ee, align 8, !tbaa !5288
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %i.dr, ptr %i.ef, align 8, !tbaa !5290
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !5358 ; 13 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %.not90 = icmp eq i64 %i.dr, 1
  br i1 %.not90, label %.lr.ph99, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, %.lr.ph.i.i.preheader.i
  %.07.i.i.i = phi ptr [ %i.ek, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i ], [ %i.ej, %.lr.ph.i.i.preheader.i ]
  %i.ek = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.ek, align 8, !tbaa !51 ; 2 uses
  %i.el = load i64, ptr %i.eh, align 8, !tbaa !51
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !51
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.em, %i.ei                    ; 3 uses
  %i.eo = ashr exact i64 %i.en, 3                 ; 3 uses
  %i.ep = add nsw i64 %i.eo, -1
  %10 = sdiv i64 %i.ep, 2
  %i.eq = icmp sgt i64 %i.eo, 2
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i
  %.031.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.er = shl i64 %.031.i.i.i.i.i, 1              ; 3 uses
  %i.es = add i64 %i.er, 2                        ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.es
  %i.eu = getelementptr [8 x i8], ptr %i.eh, i64 %i.er
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !51
  %i.ex = load i64, ptr %i.et, align 8, !tbaa !51
  %i.ey = icmp sgt i64 %i.ew, %i.ex
  %i.ez = or disjoint i64 %i.er, 1
  %spec.select.i.i.i.i.i = select i1 %i.ey, i64 %i.ez, i64 %i.es ; 4 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %spec.select.i.i.i.i.i
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.031.i.i.i.i.i
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !51
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !51
  %i.fd = icmp slt i64 %spec.select.i.i.i.i.i, %10
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !5363

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.fe = and i64 %i.en, 8
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.fg = add nsw i64 %i.eo, -2
  %i.fh = ashr exact i64 %i.fg, 1
  %i.fi = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.fh
  br i1 %i.fi, label %.thread.i.i.i.i, label %bb.ac

.thread.i.i.i.i:                                  ; preds = %bb.ab
  %i.fj = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.fk = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fk
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.0.lcssa.i.i.i.i.i
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !51
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ac, %.thread.i.i.i.i
  %.01316.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i, %bb.ac ], [ %i.fk, %.thread.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ad
  %.01316.i.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i.i, %bb.ad ], [ %.01316.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i.i, -1
  %.017.i.i910.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.017.i.i910.i.i.i.i
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !51 ; 2 uses
  %i.fq = icmp sgt i64 %.sroa.02.0.copyload.i.i.i.i, %i.fp
  br i1 %i.fq, label %bb.ad, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.01316.i.i.i.i.i.i
  store i64 %i.fp, ptr %i.fr, align 8, !tbaa !51
  %.not11.i.i.i.i = icmp eq i64 %.017.i.i910.i.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5362

_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i, %bb.ac
  %.013.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %.01316.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ad ]
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.013.lcssa.i.i.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.fs, align 8, !tbaa !51
  %i.ft = icmp sgt i64 %i.en, 8
  br i1 %i.ft, label %.lr.ph.i.i.i, label %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE14SortAndGetHeapEv.exit, !llvm.loop !5369

_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE14SortAndGetHeapEv.exit: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i
  %.pre = load i64, ptr %i.dq, align 8, !tbaa !5359
  %i.fu = icmp eq i64 %.pre, 0
  br i1 %i.fu, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.aa, %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE14SortAndGetHeapEv.exit
  %i.fv = load i8, ptr %i.cy, align 1, !tbaa !214
  %i.fw = icmp eq i8 %i.fv, 9
  br i1 %i.fw, label %.lr.ph99.split, label %bb.af

.lr.ph99.split:                                   ; preds = %.lr.ph99
  %i.fx = load ptr, ptr %i.cz, align 8, !tbaa !66
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph99.split, %bb.ae
  %.098 = phi i64 [ 0, %.lr.ph99.split ], [ %i.gc, %bb.ae ] ; 2 uses
  %.16797 = phi i64 [ %.066102, %.lr.ph99.split ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.098
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !51
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.16797
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !51
  %i.gb = add i64 %.16797, 1                      ; 2 uses
  %i.gc = add nuw i64 %.098, 1                    ; 2 uses
  %i.gd = load i64, ptr %i.dq, align 8, !tbaa !5359
  %i.ge = icmp ult i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.ae, label %.loopexit, !llvm.loop !5370

bb.af:                                            ; preds = %.lr.ph99
  %i.gf = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 9, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.gg = load i8, ptr %i.cy, align 1, !tbaa !214
  store i8 %i.gg, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ak unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.af
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.gj = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.gj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i, label %bb.aj, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i, label %bb.aj, label %.body

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.gf) #22
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  unreachable

.loopexit:                                        ; preds = %bb.ae, %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE14SortAndGetHeapEv.exit, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %.268 = phi i64 [ %.066102, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ %.066102, %_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE14SortAndGetHeapEv.exit ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.gm = add nuw i64 %.069101, 1                 ; 2 uses
  %exitcond113.not = icmp eq i64 %i.gm, %3
  br i1 %exitcond113.not, label %._crit_edge104, label %bb.u, !llvm.loop !5371

bb.al:                                            ; preds = %._crit_edge104
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3)
          to label %bb.am unwind label %bb.az

bb.am:                                            ; preds = %bb.al
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 4 uses
  %i.gq = load atomic i64, ptr %i.gp acquire, align 8 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 4294967297
  %i.gs = trunc i64 %i.gq to i32                  ; 2 uses
  br i1 %i.gr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.gp, align 8, !tbaa !96
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store i32 0, ptr %i.gt, align 4, !tbaa !98
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !99
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #22, !inline_history !101
  %i.gx = load ptr, ptr %i.go, align 8, !tbaa !99
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #22, !inline_history !101
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hb = add nsw i32 %i.gs, -1
  store i32 %i.hb, ptr %i.gp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.hc = atomicrmw volatile add ptr %i.gp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gs, %bb.aq ], [ %i.hc, %bb.ar ]
  %i.hd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.hd, label %bb.as, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !102

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ao, %bb.am
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %i.hh = load atomic i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 4294967297
  %i.hj = trunc i64 %i.hh to i32                  ; 2 uses
  br i1 %i.hi, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.hg, align 8, !tbaa !96
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 0, ptr %i.hk, align 4, !tbaa !98
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !99
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #22, !inline_history !103
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !99
end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m:bb.a

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.034 = phi i1 [ false, %bb.bl ], [ true, %bb.bk ] ; 2 uses
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fs = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.fs) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.034, label %bb.bo, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.034, label %bb.bo, label %.body

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.pn57110 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  call void @__cxa_free_exception(ptr %i.fo) #22
  br label %.body

bb.bp:                                            ; preds = %bb.bi
  %i.fv = icmp samesign ugt i64 %i.fm, 999999
  br i1 %i.fv, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.fw = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.br unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_mE5MAX_N)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cd unwind label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.bq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0 = phi i1 [ false, %bb.bs ], [ true, %bb.br ] ; 2 uses
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fz = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.fz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn55113 = phi { ptr, i32 } [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  call void @__cxa_free_exception(ptr %i.fw) #22
  br label %.body

bb.bv:                                            ; preds = %bb.bp
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  store i64 %i.fm, ptr %i.en, align 8, !tbaa !5357
  %i.gd = shl nuw nsw i64 %i.fm, 3
  %i.ge = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i64 noundef %i.gd)
          to label %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit unwind label %bb.bm ; 2 uses

_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit: ; preds = %bb.bv
  %i.gf = load i64, ptr %i.en, align 8, !tbaa !5357
  %i.gg = shl i64 %i.gf, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.gg, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !5358
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 0, ptr %i.gi, align 8, !tbaa !5359
  store i8 1, ptr %i.eo, align 8, !tbaa !5353
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dy
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !51
  store i64 %i.gl, ptr %i.b, align 8, !tbaa !51
  %i.gm = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  invoke void @_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKl(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.by
  %i.gn = add nuw i64 %.052115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !5372

bb.ca:                                            ; preds = %bb.bw, %bb.bx
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.bo, %bb.bm, %bb.ca, %bb.ax
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ax ], [ %i.fp, %bb.bm ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.go, %bb.ca ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn107, %bb.bh ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57110, %bb.bo ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn55113, %bb.bu ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #22
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.aw
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %.body ], [ %i.dr, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.av
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.cb ], [ %i.dq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.bs, %bb.bl, %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18UnaryAggregateHeapIlNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5359 ; 9 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !5357
  %i.d = icmp ult i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5358 ; 18 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.b, 1                      ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !5359
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.i = load i64, ptr %2, align 8, !tbaa !51     ; 5 uses
  store i64 %i.i, ptr %i.h, align 8, !tbaa !5360
  %i.j = icmp sgt i64 %i.g, 1
  br i1 %i.j, label %.lr.ph.i.i, label %.sink.split

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01316.i.i = phi i64 [ %.017.i67.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i67.i = lshr i64 %.017.in.i.i, 1          ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.017.i67.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %i.m = icmp sgt i64 %i.i, %i.l
  br i1 %i.m, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01316.i.i
  store i64 %i.l, ptr %i.n, align 8, !tbaa !51
  %.not.i = icmp eq i64 %.017.i67.i, 0
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i.i, !llvm.loop !5362

bb.d:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.p = load i64, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.q = icmp sgt i64 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %i.b, 1
  br i1 %i.r, label %bb.f, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.t, align 8, !tbaa !51 ; 2 uses
  store i64 %i.o, ptr %i.t, align 8, !tbaa !51
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.u = add nsw i64 %.idx, -8                    ; 2 uses
  %i.v = ashr exact i64 %i.u, 3                   ; 3 uses
  %i.w = add nsw i64 %i.v, -1
  %3 = sdiv i64 %i.w, 2
  %i.x = icmp sgt i64 %i.v, 2
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.031.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.y = shl i64 %.031.i.i.i, 1                   ; 3 uses
  %i.z = add i64 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.z
  %i.ab = getelementptr [8 x i8], ptr %i.f, i64 %i.y
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !51
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !51
  %i.af = icmp sgt i64 %i.ad, %i.ae
  %i.ag = or disjoint i64 %i.y, 1
  %spec.select.i.i.i = select i1 %i.af, i64 %i.ag, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.f, i64 %spec.select.i.i.i
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.031.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !51
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !51
  %i.ak = icmp slt i64 %spec.select.i.i.i, %3
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5363

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.al = and i64 %i.u, 8
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.an = add nsw i64 %i.v, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i, %i.ao
  br i1 %i.ap, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g
  %i.aq = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.0.lcssa.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !51
  store i64 %i.au, ptr %i.at, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h, %.thread.i.i
  %.01316.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.h ], [ %i.ar, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i910.i.i, %bb.i ], [ %.01316.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i910.i.i = lshr i64 %.017.in.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.017.i.i910.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !51 ; 2 uses
  %i.ax = icmp sgt i64 %.sroa.02.0.copyload.i.i, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.01316.i.i.i.i
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !51
  %.not11.i.i = icmp eq i64 %.017.i.i910.i.i, 0
  br i1 %.not11.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !5362

_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.i, %bb.h
  %.013.lcssa.i.i.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.i ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.az = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.013.lcssa.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.az, align 8, !tbaa !51
  %.pre = load i64, ptr %i.a, align 8, !tbaa !5359
  %.pre24 = load i64, ptr %2, align 8, !tbaa !51
  br label %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.e, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i
  %i.ba = phi i64 [ %i.p, %bb.e ], [ %.pre24, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 5 uses
  %i.bb = phi i64 [ %i.b, %bb.e ], [ %.pre, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.f, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  store i64 %i.ba, ptr %i.bd, align 8, !tbaa !5360
  %.idx22 = shl i64 %i.bb, 3
  %i.be = ashr exact i64 %.idx22, 3               ; 2 uses
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bg = icmp sgt i64 %i.be, 1
  br i1 %i.bg, label %.lr.ph.i.i8, label %.sink.split

.lr.ph.i.i8:                                      ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.j
  %.01316.i.i9 = phi i64 [ %.017.i67.i11, %bb.j ], [ %i.bf, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit ] ; 3 uses
  %.017.in.i.i10 = add nsw i64 %.01316.i.i9, -1
  %.017.i67.i11 = lshr i64 %.017.in.i.i10, 1      ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.017.i67.i11
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !51 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, %i.bi
  br i1 %i.bj, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %.lr.ph.i.i8
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.01316.i.i9
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !51
  %.not.i15 = icmp eq i64 %.017.i67.i11, 0
  br i1 %.not.i15, label %.sink.split, label %.lr.ph.i.i8, !llvm.loop !5362

.sink.split:                                      ; preds = %bb.j, %.lr.ph.i.i8, %bb.c, %.lr.ph.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.b
  %.013.lcssa.i.i7.sink = phi i64 [ %i.bf, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %i.b, %bb.b ], [ %.01316.i.i, %.lr.ph.i.i ], [ 0, %bb.c ], [ 0, %bb.j ], [ %.01316.i.i9, %.lr.ph.i.i8 ]
  %.sink = phi i64 [ %i.ba, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %.lr.ph.i.i ], [ %i.ba, %.lr.ph.i.i8 ], [ %i.ba, %bb.j ]
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.013.lcssa.i.i7.sink
  store i64 %.sink, ptr %i.bl, align 8, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #17 align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEEENS_16MinMaxNOperationELNS_23AggregateDestructorTypeE1EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !214
  store i8 %i.i, ptr %i.d, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !214
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !214
  store i8 %i.t, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i
end_hunk_4
begin_hunk_5_@_ZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m:bb.a

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.pn57110 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  call void @__cxa_free_exception(ptr %i.fo) #22
  br label %.body

bb.bp:                                            ; preds = %bb.bi
  %i.fv = icmp samesign ugt i64 %i.fm, 999999
  br i1 %i.fv, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.fw = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.br unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_mE5MAX_N)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cd unwind label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.bq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0 = phi i1 [ false, %bb.bs ], [ true, %bb.br ] ; 2 uses
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fz = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.fz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn55113 = phi { ptr, i32 } [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  call void @__cxa_free_exception(ptr %i.fw) #22
  br label %.body

bb.bv:                                            ; preds = %bb.bp
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  store i64 %i.fm, ptr %i.en, align 8, !tbaa !5379
  %i.gd = shl nuw nsw i64 %i.fm, 2
  %i.ge = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i64 noundef %i.gd)
          to label %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit unwind label %bb.bm ; 2 uses

_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit: ; preds = %bb.bv
  %i.gf = load i64, ptr %i.en, align 8, !tbaa !5379
  %i.gg = shl i64 %i.gf, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.gg, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !5380
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 0, ptr %i.gi, align 8, !tbaa !5381
  store i8 1, ptr %i.eo, align 8, !tbaa !5375
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.dy
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !1173
  store float %i.gl, ptr %i.b, align 4, !tbaa !1173
  %i.gm = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  invoke void @_ZN6duckdb18UnaryAggregateHeapIfNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKf(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.by
  %i.gn = add nuw i64 %.052115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !5391

bb.ca:                                            ; preds = %bb.bw, %bb.bx
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.bo, %bb.bm, %bb.ca, %bb.ax
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ax ], [ %i.fp, %bb.bm ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.go, %bb.ca ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn107, %bb.bh ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57110, %bb.bo ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn55113, %bb.bu ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #22
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.aw
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %.body ], [ %i.dr, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.av
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.cb ], [ %i.dq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.bs, %bb.bl, %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18UnaryAggregateHeapIfNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::HeapEntry.269", align 4 ; 5 uses
  %4 = alloca %"struct.duckdb::HeapEntry.269", align 4 ; 7 uses
  %5 = alloca %"struct.duckdb::HeapEntry.269", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5381 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !5379
  %i.d = icmp ult i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5380 ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.b, 1                      ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !5381
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.i = load float, ptr %2, align 4, !tbaa !1173 ; 3 uses
  store float %i.i, ptr %i.h, align 4, !tbaa !5392
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store float %i.i, ptr %5, align 4
  %i.j = icmp sgt i64 %i.g, 1
  %i.k = bitcast float %i.i to i32
  br i1 %i.j, label %.lr.ph.i.i, label %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01316.i.i = phi i64 [ %.017.i67.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i67.i = lshr i64 %.017.in.i.i, 1          ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.i67.i ; 2 uses
  %i.m = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  br i1 %i.m, label %bb.c, label %.critedge.loopexit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01316.i.i
  %i.o = load i32, ptr %i.l, align 4, !tbaa !1173
  store i32 %i.o, ptr %i.n, align 4, !tbaa !1173
  %.not.i = icmp eq i64 %.017.i67.i, 0
  br i1 %.not.i, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5394

.critedge.loopexit.i.i:                           ; preds = %bb.c, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.pre.i.i = load i32, ptr %5, align 4, !tbaa !1173
  br label %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.b, %.critedge.loopexit.i.i
  %i.p = phi i32 [ %i.k, %bb.b ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %i.b, %bb.b ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.013.lcssa.i.i
  store i32 %i.p, ptr %i.q, align 4, !tbaa !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br i1 %i.r, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !5380 ; 12 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !5381 ; 4 uses
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %.sroa.02.0.copyload.i.i = load float, ptr %i.w, align 4, !tbaa !1173 ; 3 uses
  %i.x = load i32, ptr %i.s, align 4, !tbaa !1173
  store i32 %i.x, ptr %i.w, align 4, !tbaa !1173
  %.idx = shl nuw nsw i64 %i.t, 2
  %i.y = add nsw i64 %.idx, -4                    ; 2 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = add nsw i64 %i.z, -1
  %6 = sdiv i64 %i.aa, 2
  %i.ab = icmp sgt i64 %i.z, 2
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.031.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ac = shl i64 %.031.i.i.i, 1                  ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = getelementptr [4 x i8], ptr %i.s, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = tail call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.ae)
  %i.ai = or disjoint i64 %i.ac, 1
  %spec.select.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ad ; 4 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %spec.select.i.i.i
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.031.i.i.i
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !1173
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !1173
  %i.am = icmp slt i64 %spec.select.i.i.i, %6
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5395

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.an = and i64 %i.y, 4
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add nsw i64 %i.z, -2
  %i.aq = ashr exact i64 %i.ap, 1
  %i.ar = icmp eq i64 %.0.lcssa.i.i.i, %i.aq
  br i1 %i.ar, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g
  %i.as = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.at = or disjoint i64 %i.as, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.at
  %i.av = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.0.lcssa.i.i.i
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !1173
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store float %.sroa.02.0.copyload.i.i, ptr %4, align 4
  br label %.lr.ph.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store float %.sroa.02.0.copyload.i.i, ptr %4, align 4
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  %i.ax = bitcast float %.sroa.02.0.copyload.i.i to i32
  br i1 %.not.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h, %.thread.i.i
  %.01316.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.h ], [ %i.at, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i910.i.i, %bb.i ], [ %.01316.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i910.i.i = lshr i64 %.017.in.i.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.017.i.i910.i.i ; 2 uses
  %i.az = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ay)
  br i1 %i.az, label %bb.i, label %.critedge.loopexit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.01316.i.i.i.i
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !1173
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !1173
  %.not11.i.i = icmp eq i64 %.017.i.i910.i.i, 0
  br i1 %.not11.i.i, label %.critedge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5394

.critedge.loopexit.i.i.i.i:                       ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.013.lcssa.ph.i.i.i.i = phi i64 [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.i ]
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !1173
  br label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i

_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i: ; preds = %.critedge.loopexit.i.i.i.i, %bb.h
  %i.bc = phi i32 [ %i.ax, %bb.h ], [ %.pre.i.i.i.i, %.critedge.loopexit.i.i.i.i ]
  %.013.lcssa.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.013.lcssa.ph.i.i.i.i, %.critedge.loopexit.i.i.i.i ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.013.lcssa.i.i.i.i
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !5380
  %.pre19 = load i64, ptr %i.a, align 8, !tbaa !5381
  br label %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.e, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i
  %i.be = phi i64 [ %i.t, %bb.e ], [ %.pre19, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %i.s, %bb.e ], [ %.pre, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 4 uses
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.be
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load float, ptr %2, align 4, !tbaa !1173 ; 3 uses
  store float %i.bi, ptr %i.bh, align 4, !tbaa !5392
  %.idx17 = shl i64 %i.be, 2
  %i.bj = ashr exact i64 %.idx17, 2               ; 2 uses
  %i.bk = add nsw i64 %i.bj, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store float %i.bi, ptr %3, align 4
  %i.bl = icmp sgt i64 %i.bj, 1
  %i.bm = bitcast float %i.bi to i32
  br i1 %i.bl, label %.lr.ph.i.i8, label %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit16

.lr.ph.i.i8:                                      ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.j
  %.01316.i.i9 = phi i64 [ %.017.i67.i11, %bb.j ], [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit ] ; 3 uses
  %.017.in.i.i10 = add nsw i64 %.01316.i.i9, -1
  %.017.i67.i11 = lshr i64 %.017.in.i.i10, 1      ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.017.i67.i11 ; 2 uses
  %i.bo = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bn)
  br i1 %i.bo, label %bb.j, label %.critedge.loopexit.i.i12

bb.j:                                             ; preds = %.lr.ph.i.i8
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %.01316.i.i9
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !1173
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !1173
  %.not.i15 = icmp eq i64 %.017.i67.i11, 0
  br i1 %.not.i15, label %.critedge.loopexit.i.i12, label %.lr.ph.i.i8, !llvm.loop !5394

.critedge.loopexit.i.i12:                         ; preds = %bb.j, %.lr.ph.i.i8
  %.013.lcssa.ph.i.i13 = phi i64 [ %.01316.i.i9, %.lr.ph.i.i8 ], [ 0, %bb.j ]
  %.pre.i.i14 = load i32, ptr %3, align 4, !tbaa !1173
  br label %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit16

_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit16: ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit, %.critedge.loopexit.i.i12
  %i.br = phi i32 [ %i.bm, %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %.pre.i.i14, %.critedge.loopexit.i.i12 ]
  %.013.lcssa.i.i7 = phi i64 [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %.013.lcssa.ph.i.i13, %.critedge.loopexit.i.i12 ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %.013.lcssa.i.i7
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit16, %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6duckdb18UnaryAggregateHeapIfNS_8LessThanEE14SortAndGetHeapEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::HeapEntry.269", align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5380 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !5381 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = icmp ugt i64 %i.d, 1
  br i1 %i.f, label %.lr.ph.i.i.preheader, label %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i ], [ %i.g, %.lr.ph.i.i.preheader ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %.sroa.02.0.copyload.i.i.i = load float, ptr %i.h, align 4, !tbaa !1173 ; 3 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !1173
  store i32 %i.i, ptr %i.h, align 4, !tbaa !1173
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %2 = sdiv i64 %i.m, 2
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.p
  %i.r = getelementptr [4 x i8], ptr %i.b, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
  %i.u = or disjoint i64 %i.o, 1
  %spec.select.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.p ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.b, i64 %spec.select.i.i.i.i
  %i.w = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.031.i.i.i.i
  %i.x = load i32, ptr %i.v, align 4, !tbaa !1173
  store i32 %i.x, ptr %i.w, align 4, !tbaa !1173
  %i.y = icmp slt i64 %spec.select.i.i.i.i, %2
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5395

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.z = and i64 %i.k, 4
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add nsw i64 %i.l, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ac
  br i1 %i.ad, label %.thread.i.i.i, label %bb.c

.thread.i.i.i:                                    ; preds = %bb.b
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.0.lcssa.i.i.i.i
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !1173
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store float %.sroa.02.0.copyload.i.i.i, ptr %1, align 4
  br label %.lr.ph.i.i.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store float %.sroa.02.0.copyload.i.i.i, ptr %1, align 4
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  %i.aj = bitcast float %.sroa.02.0.copyload.i.i.i to i32
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c, %.thread.i.i.i
  %.01316.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.c ], [ %i.af, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.d ], [ %.01316.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.017.i.i910.i.i.i ; 2 uses
  %i.al = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ak)
  br i1 %i.al, label %bb.d, label %.critedge.loopexit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.01316.i.i.i.i.i
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !1173
  store i32 %i.an, ptr %i.am, align 4, !tbaa !1173
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5394

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.d ]
  %.pre.i.i.i.i.i = load i32, ptr %1, align 4, !tbaa !1173
  br label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i

_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.c
  %i.ao = phi i32 [ %i.aj, %bb.c ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aq = icmp sgt i64 %i.k, 4
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit, !llvm.loop !5396

_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !5380
  br label %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit, %bb.a
  %i.ar = phi ptr [ %.pre, %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit ], [ %i.b, %bb.a ]
  ret ptr %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #17 align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEEENS_16MinMaxNOperationELNS_23AggregateDestructorTypeE1EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !214
  store i8 %i.i, ptr %i.d, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !214
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !214
  store i8 %i.t, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i12.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

end_hunk_5
begin_hunk_6_@_ZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m:bb.a

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.pn57110 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  call void @__cxa_free_exception(ptr %i.fo) #22
  br label %.body

bb.bp:                                            ; preds = %bb.bi
  %i.fv = icmp samesign ugt i64 %i.fm, 999999
  br i1 %i.fv, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.fw = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.br unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_mE5MAX_N)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cd unwind label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.bq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0 = phi i1 [ false, %bb.bs ], [ true, %bb.br ] ; 2 uses
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fz = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.fz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn55113 = phi { ptr, i32 } [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  call void @__cxa_free_exception(ptr %i.fw) #22
  br label %.body

bb.bv:                                            ; preds = %bb.bp
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  store i64 %i.fm, ptr %i.en, align 8, !tbaa !5403
  %i.gd = shl nuw nsw i64 %i.fm, 3
  %i.ge = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i64 noundef %i.gd)
          to label %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit unwind label %bb.bm ; 2 uses

_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit: ; preds = %bb.bv
  %i.gf = load i64, ptr %i.en, align 8, !tbaa !5403
  %i.gg = shl i64 %i.gf, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.gg, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !5404
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 0, ptr %i.gi, align 8, !tbaa !5405
  store i8 1, ptr %i.eo, align 8, !tbaa !5399
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_8LessThanEE10InitializeERNS_14ArenaAllocatorEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dy
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !1235
  store double %i.gl, ptr %i.b, align 8, !tbaa !1235
  %i.gm = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  invoke void @_ZN6duckdb18UnaryAggregateHeapIdNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKd(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.by
  %i.gn = add nuw i64 %.052115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !5415

bb.ca:                                            ; preds = %bb.bw, %bb.bx
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.bo, %bb.bm, %bb.ca, %bb.ax
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ax ], [ %i.fp, %bb.bm ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.go, %bb.ca ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn107, %bb.bh ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57110, %bb.bo ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn55113, %bb.bu ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #22
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.aw
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %.body ], [ %i.dr, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.av
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.cb ], [ %i.dq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.bs, %bb.bl, %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18UnaryAggregateHeapIdNS_8LessThanEE6InsertERNS_14ArenaAllocatorERKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::HeapEntry.275", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::HeapEntry.275", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::HeapEntry.275", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5405 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !5403
  %i.d = icmp ult i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5404 ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.b, 1                      ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !5405
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.i = load double, ptr %2, align 8, !tbaa !1235 ; 3 uses
  store double %i.i, ptr %i.h, align 8, !tbaa !5416
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store double %i.i, ptr %5, align 8
  %i.j = icmp sgt i64 %i.g, 1
  %i.k = bitcast double %i.i to i64
  br i1 %i.j, label %.lr.ph.i.i, label %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01316.i.i = phi i64 [ %.017.i67.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i67.i = lshr i64 %.017.in.i.i, 1          ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.017.i67.i ; 2 uses
  %i.m = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br i1 %i.m, label %bb.c, label %.critedge.loopexit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01316.i.i
  %i.o = load i64, ptr %i.l, align 8, !tbaa !1235
  store i64 %i.o, ptr %i.n, align 8, !tbaa !1235
  %.not.i = icmp eq i64 %.017.i67.i, 0
  br i1 %.not.i, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5418

.critedge.loopexit.i.i:                           ; preds = %bb.c, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.pre.i.i = load i64, ptr %5, align 8, !tbaa !1235
  br label %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.b, %.critedge.loopexit.i.i
  %i.p = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %i.b, %bb.b ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.q = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.013.lcssa.i.i
  store i64 %i.p, ptr %i.q, align 8, !tbaa !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.r, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !5404 ; 12 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !5405 ; 4 uses
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  %.sroa.02.0.copyload.i.i = load double, ptr %i.w, align 8, !tbaa !1235 ; 3 uses
  %i.x = load i64, ptr %i.s, align 8, !tbaa !1235
  store i64 %i.x, ptr %i.w, align 8, !tbaa !1235
  %.idx = shl nuw nsw i64 %i.t, 3
  %i.y = add nsw i64 %.idx, -8                    ; 2 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 3 uses
  %i.aa = add nsw i64 %i.z, -1
  %6 = sdiv i64 %i.aa, 2
  %i.ab = icmp sgt i64 %i.z, 2
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.031.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ac = shl i64 %.031.i.i.i, 1                  ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ad
  %i.af = getelementptr [8 x i8], ptr %i.s, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = tail call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ai = or disjoint i64 %i.ac, 1
  %spec.select.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ad ; 4 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %spec.select.i.i.i
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.031.i.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !1235
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !1235
  %i.am = icmp slt i64 %spec.select.i.i.i, %6
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5419

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.an = and i64 %i.y, 8
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add nsw i64 %i.z, -2
  %i.aq = ashr exact i64 %i.ap, 1
  %i.ar = icmp eq i64 %.0.lcssa.i.i.i, %i.aq
  br i1 %i.ar, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g
  %i.as = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.at = or disjoint i64 %i.as, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.0.lcssa.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !1235
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !1235
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store double %.sroa.02.0.copyload.i.i, ptr %4, align 8
  br label %.lr.ph.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store double %.sroa.02.0.copyload.i.i, ptr %4, align 8
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  %i.ax = bitcast double %.sroa.02.0.copyload.i.i to i64
  br i1 %.not.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h, %.thread.i.i
  %.01316.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.h ], [ %i.at, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i910.i.i, %bb.i ], [ %.01316.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i910.i.i = lshr i64 %.017.in.i.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.017.i.i910.i.i ; 2 uses
  %i.az = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  br i1 %i.az, label %bb.i, label %.critedge.loopexit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.01316.i.i.i.i
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !1235
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !1235
  %.not11.i.i = icmp eq i64 %.017.i.i910.i.i, 0
  br i1 %.not11.i.i, label %.critedge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5418

.critedge.loopexit.i.i.i.i:                       ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.013.lcssa.ph.i.i.i.i = phi i64 [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.i ]
  %.pre.i.i.i.i = load i64, ptr %4, align 8, !tbaa !1235
  br label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i

_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i: ; preds = %.critedge.loopexit.i.i.i.i, %bb.h
  %i.bc = phi i64 [ %i.ax, %bb.h ], [ %.pre.i.i.i.i, %.critedge.loopexit.i.i.i.i ]
  %.013.lcssa.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.013.lcssa.ph.i.i.i.i, %.critedge.loopexit.i.i.i.i ]
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.013.lcssa.i.i.i.i
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !5404
  %.pre19 = load i64, ptr %i.a, align 8, !tbaa !5405
  br label %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.e, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i
  %i.be = phi i64 [ %i.t, %bb.e ], [ %.pre19, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %i.s, %bb.e ], [ %.pre, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 4 uses
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load double, ptr %2, align 8, !tbaa !1235 ; 3 uses
  store double %i.bi, ptr %i.bh, align 8, !tbaa !5416
  %.idx17 = shl i64 %i.be, 3
  %i.bj = ashr exact i64 %.idx17, 3               ; 2 uses
  %i.bk = add nsw i64 %i.bj, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store double %i.bi, ptr %3, align 8
  %i.bl = icmp sgt i64 %i.bj, 1
  %i.bm = bitcast double %i.bi to i64
  br i1 %i.bl, label %.lr.ph.i.i8, label %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit16

.lr.ph.i.i8:                                      ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.j
  %.01316.i.i9 = phi i64 [ %.017.i67.i11, %bb.j ], [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit ] ; 3 uses
  %.017.in.i.i10 = add nsw i64 %.01316.i.i9, -1
  %.017.i67.i11 = lshr i64 %.017.in.i.i10, 1      ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.017.i67.i11 ; 2 uses
  %i.bo = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
  br i1 %i.bo, label %bb.j, label %.critedge.loopexit.i.i12

bb.j:                                             ; preds = %.lr.ph.i.i8
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %.01316.i.i9
  %i.bq = load i64, ptr %i.bn, align 8, !tbaa !1235
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !1235
  %.not.i15 = icmp eq i64 %.017.i67.i11, 0
  br i1 %.not.i15, label %.critedge.loopexit.i.i12, label %.lr.ph.i.i8, !llvm.loop !5418

.critedge.loopexit.i.i12:                         ; preds = %bb.j, %.lr.ph.i.i8
  %.013.lcssa.ph.i.i13 = phi i64 [ %.01316.i.i9, %.lr.ph.i.i8 ], [ 0, %bb.j ]
  %.pre.i.i14 = load i64, ptr %3, align 8, !tbaa !1235
  br label %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit16

_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit16: ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit, %.critedge.loopexit.i.i12
  %i.br = phi i64 [ %i.bm, %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %.pre.i.i14, %.critedge.loopexit.i.i12 ]
  %.013.lcssa.i.i7 = phi i64 [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %.013.lcssa.ph.i.i13, %.critedge.loopexit.i.i12 ]
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %.013.lcssa.i.i7
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit16, %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6duckdb18UnaryAggregateHeapIdNS_8LessThanEE14SortAndGetHeapEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::HeapEntry.275", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5404 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !5405 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = icmp ugt i64 %i.d, 1
  br i1 %i.f, label %.lr.ph.i.i.preheader, label %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i ], [ %i.g, %.lr.ph.i.i.preheader ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i.i.i = load double, ptr %i.h, align 8, !tbaa !1235 ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1235
  store i64 %i.i, ptr %i.h, align 8, !tbaa !1235
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %2 = sdiv i64 %i.m, 2
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.p
  %i.r = getelementptr [8 x i8], ptr %i.b, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.u = or disjoint i64 %i.o, 1
  %spec.select.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.p ; 4 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.b, i64 %spec.select.i.i.i.i
  %i.w = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.031.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1235
  store i64 %i.x, ptr %i.w, align 8, !tbaa !1235
  %i.y = icmp slt i64 %spec.select.i.i.i.i, %2
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5419

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.z = and i64 %i.k, 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add nsw i64 %i.l, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ac
  br i1 %i.ad, label %.thread.i.i.i, label %bb.c

.thread.i.i.i:                                    ; preds = %bb.b
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.0.lcssa.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !1235
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !1235
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store double %.sroa.02.0.copyload.i.i.i, ptr %1, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store double %.sroa.02.0.copyload.i.i.i, ptr %1, align 8
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  %i.aj = bitcast double %.sroa.02.0.copyload.i.i.i to i64
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c, %.thread.i.i.i
  %.01316.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.c ], [ %i.af, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.d ], [ %.01316.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.017.i.i910.i.i.i ; 2 uses
  %i.al = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
  br i1 %i.al, label %bb.d, label %.critedge.loopexit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.01316.i.i.i.i.i
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !1235
  store i64 %i.an, ptr %i.am, align 8, !tbaa !1235
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5418

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.d ]
  %.pre.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !1235
  br label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i

_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.c
  %i.ao = phi i64 [ %i.aj, %bb.c ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aq = icmp sgt i64 %i.k, 8
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit, !llvm.loop !5420

_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !5404
  br label %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit, %bb.a
  %i.ar = phi ptr [ %.pre, %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit ], [ %i.b, %bb.a ]
  ret ptr %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_8LessThanEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #17 align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_8LessThanEEENS_16MinMaxNOperationELNS_23AggregateDestructorTypeE1EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_8LessThanEEENS_16MinMaxNOperationEEEvRNS_6VectorES9_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !214
  store i8 %i.i, ptr %i.d, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !214
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_8LessThanEEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !214
  store i8 %i.t, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i12.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

end_hunk_6
begin_hunk_7_@_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm:bb.a

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i12.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i15.i = load ptr, ptr %i.z, align 8, !tbaa !66
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, %.lr.ph.i
  %.019.i = phi i64 [ 0, %.lr.ph.i ], [ %i.du, %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.019.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !5453 ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i15.i, i64 %.019.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5453 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !5455, !range !489, !noundef !133
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !5455, !range !489, !noundef !133
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !5274, !nonnull !133, !align !134
  %i.am = load i64, ptr %i.ac, align 8, !tbaa !5458 ; 2 uses
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !5458
  %i.an = shl i64 %i.am, 2
  %i.ao = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.al, i64 noundef %i.an) ; 2 uses
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !5458
  %i.aq = shl i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !5459
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.as, align 8, !tbaa !5460
  store i8 1, ptr %i.ai, align 8, !tbaa !5455
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !5458
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !5458
  %.not.i.i = icmp eq i64 %i.at, %i.au
  br i1 %.not.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ae unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume.sink.split.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.ay) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !5460 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !5459
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.ae, align 8, !tbaa !5458
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !5459 ; 17 uses
  %.pre.i = load i64, ptr %i.bf, align 8, !tbaa !5460
  br label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i, %.lr.ph.i.i.i
  %i.bj = phi i64 [ %i.bc, %.lr.ph.i.i.i ], [ %i.dq, %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i ]
  %i.bk = phi i64 [ %.pre.i, %.lr.ph.i.i.i ], [ %i.dr, %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i ] ; 16 uses
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ds, %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.06.i.i.i ; 3 uses
  %i.bm = icmp ult i64 %i.bk, %i.bg
  br i1 %i.bm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bn = add nuw i64 %i.bk, 1                    ; 5 uses
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !5460
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk
  %i.bp = load i32, ptr %i.bl, align 4, !tbaa !3  ; 5 uses
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !5336
  %i.bq = icmp sgt i64 %i.bn, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %.sink.split.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %.01316.i.i.i.i = phi i64 [ %.017.i67.i.i.i, %bb.w ], [ %i.bk, %bb.v ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i67.i.i.i = lshr i64 %.017.in.i.i.i.i, 1  ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.017.i67.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, %i.bp
  br i1 %i.bt, label %bb.w, label %.sink.split.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01316.i.i.i.i
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !3
  %.not.i.i16.i = icmp eq i64 %.017.i67.i.i.i, 0
  br i1 %.not.i.i16.i, label %.sink.split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5338

bb.x:                                             ; preds = %bb.u
  %i.bv = load i32, ptr %i.bl, align 4, !tbaa !3  ; 3 uses
  %i.bw = load i32, ptr %i.bi, align 4, !tbaa !3  ; 2 uses
  %i.bx = icmp sgt i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.y, label %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk
  %i.bz = icmp ugt i64 %i.bk, 1
  %i.ca = getelementptr i8, ptr %i.by, i64 -4     ; 4 uses
  br i1 %i.bz, label %bb.z, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i

_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i: ; preds = %bb.y
  store i32 %i.bv, ptr %i.ca, align 4, !tbaa !5336
  %i.cb = add nsw i64 %i.bk, -1
  br label %.sink.split.i.i

bb.z:                                             ; preds = %bb.y
  %.sroa.02.0.copyload.i.i.i.i = load i32, ptr %i.ca, align 4, !tbaa !3 ; 2 uses
  store i32 %i.bw, ptr %i.ca, align 4, !tbaa !3
  %.idx22.i.i = shl nuw nsw i64 %i.bk, 2
  %i.cc = add nsw i64 %.idx22.i.i, -4             ; 2 uses
  %i.cd = ashr exact i64 %i.cc, 2                 ; 3 uses
  %i.ce = add nsw i64 %i.cd, -1
  %10 = sdiv i64 %i.ce, 2
  %i.cf = icmp sgt i64 %i.cd, 2
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %.031.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.z ] ; 2 uses
  %i.cg = shl i64 %.031.i.i.i.i.i, 1              ; 3 uses
  %i.ch = add i64 %i.cg, 2                        ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = getelementptr [4 x i8], ptr %i.bi, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cn = icmp sgt i32 %i.cl, %i.cm
  %i.co = or disjoint i64 %i.cg, 1
  %spec.select.i.i.i.i.i = select i1 %i.cn, i64 %i.co, i64 %i.ch ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %spec.select.i.i.i.i.i
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.031.i.i.i.i.i
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !3
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !3
  %i.cs = icmp slt i64 %spec.select.i.i.i.i.i, %10
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !5339

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.z
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.z ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.ct = and i64 %i.cc, 4
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.cv = add nsw i64 %i.cd, -2
  %i.cw = ashr exact i64 %i.cv, 1
  %i.cx = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.cw
  br i1 %i.cx, label %.thread.i.i.i.i, label %bb.ab

.thread.i.i.i.i:                                  ; preds = %bb.aa
  %i.cy = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.cz = or disjoint i64 %i.cy, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cz
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.0.lcssa.i.i.i.i.i
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !3
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ab, %.thread.i.i.i.i
  %.01316.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i, %bb.ab ], [ %i.cz, %.thread.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ac
  %.01316.i.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i.i, %bb.ac ], [ %.01316.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i.i, -1
  %.017.i.i910.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.017.i.i910.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3  ; 2 uses
  %i.df = icmp sgt i32 %i.de, %.sroa.02.0.copyload.i.i.i.i
  br i1 %i.df, label %bb.ac, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.01316.i.i.i.i.i.i
  store i32 %i.de, ptr %i.dg, align 4, !tbaa !3
  %.not11.i.i.i.i = icmp eq i64 %.017.i.i910.i.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5338

_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i, %bb.ab
  %.013.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.ab ], [ 0, %bb.ac ], [ %.01316.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.013.lcssa.i.i.i.i.i.i
  store i32 %.sroa.02.0.copyload.i.i.i.i, ptr %i.dh, align 4, !tbaa !3
  %.pre.i.i = load i32, ptr %i.bl, align 4, !tbaa !3 ; 5 uses
  store i32 %.pre.i.i, ptr %i.ca, align 4, !tbaa !5336
  %i.di = add nsw i64 %i.bk, -1                   ; 2 uses
  %i.dj = icmp sgt i64 %i.bk, 1
  br i1 %i.dj, label %.lr.ph.i.i8.i.i, label %.sink.split.i.i

.lr.ph.i.i8.i.i:                                  ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, %bb.ad
  %.01316.i.i9.i.i = phi i64 [ %.017.i67.i11.i.i, %bb.ad ], [ %i.di, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ] ; 3 uses
  %.017.in.i.i10.i.i = add nsw i64 %.01316.i.i9.i.i, -1
  %.017.i67.i11.i.i = lshr i64 %.017.in.i.i10.i.i, 1 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.017.i67.i11.i.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3  ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, %.pre.i.i
  br i1 %i.dm, label %bb.ad, label %.sink.split.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i8.i.i
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.01316.i.i9.i.i
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !3
  %.not.i15.i.i = icmp eq i64 %.017.i67.i11.i.i, 0
  br i1 %.not.i15.i.i, label %.sink.split.i.i, label %.lr.ph.i.i8.i.i, !llvm.loop !5338

.sink.split.i.i:                                  ; preds = %bb.ad, %.lr.ph.i.i8.i.i, %bb.w, %.lr.ph.i.i.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i, %bb.v
  %i.do = phi i64 [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i ], [ %i.bn, %bb.v ], [ %i.bn, %bb.w ], [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.bk, %.lr.ph.i.i8.i.i ], [ %i.bk, %bb.ad ]
  %.013.lcssa.i.i7.sink.i.i = phi i64 [ %i.cb, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i ], [ %i.bk, %bb.v ], [ 0, %bb.w ], [ %i.di, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.ad ], [ %.01316.i.i9.i.i, %.lr.ph.i.i8.i.i ]
  %.sink.i.i = phi i32 [ %i.bv, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread.i.i ], [ %i.bp, %bb.v ], [ %i.bp, %bb.w ], [ %.pre.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %i.bp, %.lr.ph.i.i.i.i ], [ %.pre.i.i, %.lr.ph.i.i8.i.i ], [ %.pre.i.i, %bb.ad ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.013.lcssa.i.i7.sink.i.i
  store i32 %.sink.i.i, ptr %i.dp, align 4, !tbaa !3
  %.pre22.i = load i64, ptr %i.bb, align 8, !tbaa !5460
  br label %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i

_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i: ; preds = %.sink.split.i.i, %bb.x
  %i.dq = phi i64 [ %i.bj, %bb.x ], [ %.pre22.i, %.sink.split.i.i ] ; 2 uses
  %i.dr = phi i64 [ %i.bk, %bb.x ], [ %i.do, %.sink.split.i.i ]
  %i.ds = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dq
  br i1 %i.dt, label %bb.u, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, !llvm.loop !5461

bb.ae:                                            ; preds = %bb.r
  unreachable

_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi.exit.i, %bb.t, %bb.l
  %i.du = add nuw i64 %.019.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.du, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit, label %bb.l, !llvm.loop !5462

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !214
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = load i8, ptr %i.c, align 1, !tbaa !214
  store i8 %i.g, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.j = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb16MinMaxNOperation8FinalizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEEEEvRNS_6VectorERNS_18AggregateInputDataES9_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !5283
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !486
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.g unwind label %bb.h
end_hunk_7
begin_hunk_8_@_ZN6duckdb16MinMaxNOperation8FinalizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEEEEvRNS_6VectorERNS_18AggregateInputDataES9_mm:bb.a
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !5453
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !5460
  %i.bf = add i64 %i.be, %.06496.epil             ; 2 uses
  %i.bg = add nuw i64 %.06595.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !5465

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil, %.preheader91
  %.064.lcssa = phi i64 [ 0, %.preheader91 ], [ %i.aw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ct, %._crit_edge.loopexit131.unr-lcssa ], [ %i.bf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ]
  %i.bh = add i64 %.064.lcssa, %i.p
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.bh)
          to label %bb.p unwind label %bb.r

bb.m:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06496 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.ct, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %.06595 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !5453
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !5460
  %i.bs = add i64 %i.br, %.06496
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !5453
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !5460
  %i.cb = add i64 %i.ca, %i.bs
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !5453
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !5460
  %i.ck = add i64 %i.cj, %i.cb
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !5453
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !5460
  %i.ct = add i64 %i.cs, %i.ck                    ; 3 uses
  %i.cu = add nuw i64 %.06595, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !5463

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66
  %i.cx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.t ; 2 uses

.preheader:                                       ; preds = %bb.q
  br i1 %.not104, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 9 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.u

._crit_edge102:                                   ; preds = %.loopexit, %.preheader
  %.066.lcssa = phi i64 [ %i.p, %.preheader ], [ %.268, %.loopexit ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.066.lcssa)
          to label %bb.ak unwind label %bb.ay

bb.r:                                             ; preds = %._crit_edge
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.lr.ph101, %.loopexit
  %.066100 = phi i64 [ %i.p, %.lr.ph101 ], [ %.268, %.loopexit ] ; 7 uses
  %.06999 = phi i64 [ 0, %.lr.ph101 ], [ %i.hq, %.loopexit ] ; 4 uses
  %i.de = add i64 %.06999, %4                     ; 3 uses
  %i.df = load ptr, ptr %9, align 8, !tbaa !87
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !464 ; 2 uses
  %.not.i84 = icmp eq ptr %i.dg, null
  br i1 %.not.i84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit85, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.06999
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit85

_ZNK6duckdb15SelectionVector9get_indexEm.exit85:  ; preds = %bb.v, %bb.u
  %i.dk = phi i64 [ %i.dj, %bb.v ], [ %.06999, %bb.u ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !5453 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !5455, !range !489, !noundef !133
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit85
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !5460 ; 10 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit85
  %i.dt = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %.not.i86 = icmp eq ptr %i.dt, null
  br i1 %.not.i86, label %bb.y, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.y:                                             ; preds = %bb.x
  %i.du = load i64, ptr %i.da, align 8, !tbaa !5287
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.du)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.y
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !67
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.x, %.noexc
  %i.dv = phi ptr [ %.pre.i, %.noexc ], [ %i.dt, %bb.x ]
  %i.dw = lshr i64 %i.de, 6
  %i.dx = and i64 %i.de, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = xor i64 %i.dy, -1
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !51
  %i.ec = and i64 %i.eb, %i.dz
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !51
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.de ; 2 uses
  store i64 %.066100, ptr %i.ee, align 8, !tbaa !5288
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %i.dr, ptr %i.ef, align 8, !tbaa !5290
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !5459 ; 18 uses
  %i.ei = ptrtoint ptr %i.eh to i64               ; 2 uses
  %.not90 = icmp eq i64 %i.dr, 1
  br i1 %.not90, label %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.dr
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, %.lr.ph.i.i.preheader.i
  %.07.i.i.i = phi ptr [ %i.ek, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i ], [ %i.ej, %.lr.ph.i.i.preheader.i ]
  %i.ek = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -4 ; 4 uses
  %.sroa.02.0.copyload.i.i.i.i = load i32, ptr %i.ek, align 4, !tbaa !3 ; 2 uses
  %i.el = load i32, ptr %i.eh, align 4, !tbaa !3
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !3
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.em, %i.ei                    ; 3 uses
  %i.eo = ashr exact i64 %i.en, 2                 ; 3 uses
  %i.ep = add nsw i64 %i.eo, -1
  %10 = sdiv i64 %i.ep, 2
  %i.eq = icmp sgt i64 %i.eo, 2
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i
  %.031.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.er = shl i64 %.031.i.i.i.i.i, 1              ; 3 uses
  %i.es = add i64 %i.er, 2                        ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.es
  %i.eu = getelementptr [4 x i8], ptr %i.eh, i64 %i.er
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %i.ew = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ey = icmp sgt i32 %i.ew, %i.ex
  %i.ez = or disjoint i64 %i.er, 1
  %spec.select.i.i.i.i.i = select i1 %i.ey, i64 %i.ez, i64 %i.es ; 4 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %spec.select.i.i.i.i.i
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.031.i.i.i.i.i
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !3
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !3
  %i.fd = icmp slt i64 %spec.select.i.i.i.i.i, %10
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !5339

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.fe = and i64 %i.en, 4
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.fg = add nsw i64 %i.eo, -2
  %i.fh = ashr exact i64 %i.fg, 1
  %i.fi = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.fh
  br i1 %i.fi, label %.thread.i.i.i.i, label %bb.ac

.thread.i.i.i.i:                                  ; preds = %bb.ab
  %i.fj = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.fk = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fk
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.0.lcssa.i.i.i.i.i
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !3
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ac, %.thread.i.i.i.i
  %.01316.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i, %bb.ac ], [ %i.fk, %.thread.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ad
  %.01316.i.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i.i, %bb.ad ], [ %.01316.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i.i, -1
  %.017.i.i910.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.017.i.i910.i.i.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3  ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, %.sroa.02.0.copyload.i.i.i.i
  br i1 %i.fq, label %bb.ad, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.01316.i.i.i.i.i.i
  store i32 %i.fp, ptr %i.fr, align 4, !tbaa !3
  %.not11.i.i.i.i = icmp eq i64 %.017.i.i910.i.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5338

_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i, %bb.ac
  %.013.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %.01316.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ad ]
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.013.lcssa.i.i.i.i.i.i
  store i32 %.sroa.02.0.copyload.i.i.i.i, ptr %i.fs, align 4, !tbaa !3
  %i.ft = icmp sgt i64 %i.en, 4
  br i1 %i.ft, label %.lr.ph.i.i.i, label %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit, !llvm.loop !5345

_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIiEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, %bb.aa
  %i.fu = load i8, ptr %i.cy, align 1, !tbaa !214
  %i.fv = icmp eq i8 %i.fu, 7
  br i1 %i.fv, label %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit.split, label %bb.ae

_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit.split: ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit
  %i.fw = load ptr, ptr %i.cz, align 8, !tbaa !66 ; 7 uses
  %min.iters.check = icmp ult i64 %i.dr, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit.split
  %i.fx = ptrtoaddr ptr %i.fw to i64
  %i.fy = shl i64 %.066100, 2
  %i.fz = add i64 %i.fy, %i.fx
  %i.ga = sub i64 %i.ei, %i.fz
  %diff.check = icmp ugt i64 %i.ga, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, -8                      ; 4 uses
  %i.gb = add i64 %.066100, %n.vec                ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %i.fw, i64 %.066100
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load = load <4 x i32>, ptr %i.gd, align 4, !tbaa !3
  %wide.load128 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !3
  %i.gf = getelementptr [4 x i8], ptr %i.gc, i64 %index ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <4 x i32> %wide.load, ptr %i.gf, align 4, !tbaa !3
  store <4 x i32> %wide.load128, ptr %i.gg, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !5466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit.split, %middle.block
  %.098.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit.split ], [ %n.vec, %middle.block ] ; 3 uses
  %.16797.ph = phi i64 [ %.066100, %vector.memcheck ], [ %.066100, %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit.split ], [ %i.gb, %middle.block ] ; 2 uses
  %xtraiter142 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.098.prol = phi i64 [ %i.gm, %scalar.ph.prol ], [ %.098.ph, %scalar.ph.preheader ] ; 2 uses
  %.16797.prol = phi i64 [ %i.gl, %scalar.ph.prol ], [ %.16797.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098.prol
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.16797.prol
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !3
  %i.gl = add i64 %.16797.prol, 1                 ; 3 uses
  %i.gm = add nuw i64 %.098.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter142
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5467

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.gl, %scalar.ph.prol ]
  %.098.unr = phi i64 [ %.098.ph, %scalar.ph.preheader ], [ %i.gm, %scalar.ph.prol ]
  %.16797.unr = phi i64 [ %.16797.ph, %scalar.ph.preheader ], [ %i.gl, %scalar.ph.prol ]
  %i.gn = sub i64 %.098.ph, %i.dr
  %i.go = icmp ugt i64 %i.gn, -4
  br i1 %i.go, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.098 = phi i64 [ %i.hi, %scalar.ph ], [ %.098.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.16797 = phi i64 [ %i.hh, %scalar.ph ], [ %.16797.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.16797
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !3
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = getelementptr [4 x i8], ptr %i.fw, i64 %.16797
  %i.gw = getelementptr i8, ptr %i.gv, i64 4
  store i32 %i.gu, ptr %i.gw, align 4, !tbaa !3
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = getelementptr [4 x i8], ptr %i.fw, i64 %.16797
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  store i32 %i.gz, ptr %i.hb, align 4, !tbaa !3
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.098
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = getelementptr [4 x i8], ptr %i.fw, i64 %.16797
  %i.hg = getelementptr i8, ptr %i.hf, i64 12
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !3
  %i.hh = add i64 %.16797, 4                      ; 2 uses
  %i.hi = add nuw i64 %.098, 4                    ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %i.hi, %i.dr
  br i1 %exitcond110.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !5468

bb.ae:                                            ; preds = %_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE14SortAndGetHeapEv.exit
  %i.hj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 7, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.hk = load i8, ptr %i.cy, align 1, !tbaa !214
  store i8 %i.hk, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.hj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.aj unwind label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ae
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i = phi i1 [ false, %bb.ag ], [ true, %bb.af ] ; 2 uses
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.hn = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.hn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i, label %bb.ai, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i, label %bb.ai, label %.body

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.hj) #22
  br label %.body

bb.aj:                                            ; preds = %bb.ag
  unreachable

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %.268 = phi i64 [ %.066100, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ %i.gb, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.hh, %scalar.ph ] ; 2 uses
  %i.hq = add nuw i64 %.06999, 1                  ; 2 uses
  %exitcond111.not = icmp eq i64 %i.hq, %3
  br i1 %exitcond111.not, label %._crit_edge102, label %bb.u, !llvm.loop !5469

bb.ak:                                            ; preds = %._crit_edge102
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3)
end_hunk_8
begin_hunk_9_@_ZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m:bb.a
  %i.fs = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.fs) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.034, label %bb.bo, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.034, label %bb.bo, label %.body

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.pn57110 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  call void @__cxa_free_exception(ptr %i.fo) #22
  br label %.body

bb.bp:                                            ; preds = %bb.bi
  %i.fv = icmp samesign ugt i64 %i.fm, 999999
  br i1 %i.fv, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.fw = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.br unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_mE5MAX_N)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cd unwind label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.bq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0 = phi i1 [ false, %bb.bs ], [ true, %bb.br ] ; 2 uses
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fz = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.fz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn55113 = phi { ptr, i32 } [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  call void @__cxa_free_exception(ptr %i.fw) #22
  br label %.body

bb.bv:                                            ; preds = %bb.bp
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  store i64 %i.fm, ptr %i.en, align 8, !tbaa !5458
  %i.gd = shl nuw nsw i64 %i.fm, 2
  %i.ge = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i64 noundef %i.gd)
          to label %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit unwind label %bb.bm ; 2 uses

_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit: ; preds = %bb.bv
  %i.gf = load i64, ptr %i.en, align 8, !tbaa !5458
  %i.gg = shl i64 %i.gf, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.gg, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !5459
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 0, ptr %i.gi, align 8, !tbaa !5460
  store i8 1, ptr %i.eo, align 8, !tbaa !5455
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIiEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.dy
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3
  store i32 %i.gl, ptr %i.b, align 4, !tbaa !3
  %i.gm = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  invoke void @_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.by
  %i.gn = add nuw i64 %.052115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !5470

bb.ca:                                            ; preds = %bb.bw, %bb.bx
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.bo, %bb.bm, %bb.ca, %bb.ax
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ax ], [ %i.fp, %bb.bm ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.go, %bb.ca ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn107, %bb.bh ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57110, %bb.bo ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn55113, %bb.bu ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #22
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.aw
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %.body ], [ %i.dr, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.av
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.cb ], [ %i.dq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.bs, %bb.bl, %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18UnaryAggregateHeapIiNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5460 ; 11 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !5458
  %i.d = icmp ult i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5459 ; 17 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.b, 1                      ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !5460
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.i = load i32, ptr %2, align 4, !tbaa !3      ; 5 uses
  store i32 %i.i, ptr %i.h, align 4, !tbaa !5336
  %i.j = icmp sgt i64 %i.g, 1
  br i1 %i.j, label %.lr.ph.i.i, label %.sink.split

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01316.i.i = phi i64 [ %.017.i67.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i67.i = lshr i64 %.017.in.i.i, 1          ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.i67.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 2 uses
  %i.m = icmp sgt i32 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01316.i.i
  store i32 %i.l, ptr %i.n, align 4, !tbaa !3
  %.not.i = icmp eq i64 %.017.i67.i, 0
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i.i, !llvm.loop !5338

bb.d:                                             ; preds = %bb.a
  %i.o = load i32, ptr %2, align 4, !tbaa !3      ; 3 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.q = icmp sgt i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b ; 2 uses
  %i.s = icmp ugt i64 %i.b, 1
  %i.t = getelementptr i8, ptr %i.r, i64 -4       ; 3 uses
  br i1 %i.s, label %bb.f, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread

_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread: ; preds = %bb.e
  store i32 %i.o, ptr %i.t, align 4, !tbaa !5336
  %i.u = add nsw i64 %i.b, -1
  br label %.sink.split

bb.f:                                             ; preds = %bb.e
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.t, align 4, !tbaa !3 ; 2 uses
  store i32 %i.p, ptr %i.t, align 4, !tbaa !3
  %.idx22 = shl nuw nsw i64 %i.b, 2
  %i.v = add nsw i64 %.idx22, -4                  ; 2 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 3 uses
  %i.x = add nsw i64 %i.w, -1
  %3 = sdiv i64 %i.x, 2
  %i.y = icmp sgt i64 %i.w, 2
  br i1 %i.y, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.031.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.z = shl i64 %.031.i.i.i, 1                   ; 3 uses
  %i.aa = add i64 %i.z, 2                         ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aa
  %i.ac = getelementptr [4 x i8], ptr %i.f, i64 %i.z
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = icmp sgt i32 %i.ae, %i.af
  %i.ah = or disjoint i64 %i.z, 1
  %spec.select.i.i.i = select i1 %i.ag, i64 %i.ah, i64 %i.aa ; 4 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.f, i64 %spec.select.i.i.i
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.031.i.i.i
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp slt i64 %spec.select.i.i.i, %3
  br i1 %i.al, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5339

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.am = and i64 %i.v, 4
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = add nsw i64 %i.w, -2
  %i.ap = ashr exact i64 %i.ao, 1
  %i.aq = icmp eq i64 %.0.lcssa.i.i.i, %i.ap
  br i1 %i.aq, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g
  %i.ar = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.as = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.0.lcssa.i.i.i
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3
  store i32 %i.av, ptr %i.au, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h, %.thread.i.i
  %.01316.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.h ], [ %i.as, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i910.i.i, %bb.i ], [ %.01316.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i910.i.i = lshr i64 %.017.in.i.i.i.i, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.i.i910.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, %.sroa.02.0.copyload.i.i
  br i1 %i.ay, label %bb.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.01316.i.i.i.i
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !3
  %.not11.i.i = icmp eq i64 %.017.i.i910.i.i, 0
  br i1 %.not11.i.i, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5338

_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i, %bb.h
  %.013.lcssa.i.i.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.i ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.013.lcssa.i.i.i.i
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.ba, align 4, !tbaa !3
  %.pre = load i32, ptr %2, align 4, !tbaa !3     ; 5 uses
  %i.bb = getelementptr i8, ptr %i.r, i64 -4
  store i32 %.pre, ptr %i.bb, align 4, !tbaa !5336
  %i.bc = add nsw i64 %i.b, -1                    ; 2 uses
  %i.bd = icmp sgt i64 %i.b, 1
  br i1 %i.bd, label %.lr.ph.i.i8, label %.sink.split

.lr.ph.i.i8:                                      ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.j
  %.01316.i.i9 = phi i64 [ %.017.i67.i11, %bb.j ], [ %i.bc, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit ] ; 3 uses
  %.017.in.i.i10 = add nsw i64 %.01316.i.i9, -1
  %.017.i67.i11 = lshr i64 %.017.in.i.i10, 1      ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.i67.i11
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3  ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %.pre
  br i1 %i.bg, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %.lr.ph.i.i8
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.01316.i.i9
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !3
  %.not.i15 = icmp eq i64 %.017.i67.i11, 0
  br i1 %.not.i15, label %.sink.split, label %.lr.ph.i.i8, !llvm.loop !5338

.sink.split:                                      ; preds = %bb.j, %.lr.ph.i.i8, %bb.c, %.lr.ph.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread, %bb.b
  %.013.lcssa.i.i7.sink = phi i64 [ %i.u, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread ], [ %i.b, %bb.b ], [ %.01316.i.i, %.lr.ph.i.i ], [ %i.bc, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ 0, %bb.c ], [ 0, %bb.j ], [ %.01316.i.i9, %.lr.ph.i.i8 ]
  %.sink = phi i32 [ %i.o, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit.thread ], [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %.pre, %_ZSt8pop_heapIPN6duckdb9HeapEntryIiEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %i.i, %.lr.ph.i.i ], [ %.pre, %.lr.ph.i.i8 ], [ %.pre, %bb.j ]
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.013.lcssa.i.i7.sink
  store i32 %.sink, ptr %i.bi, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #17 align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEENS_16MinMaxNOperationELNS_23AggregateDestructorTypeE1EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !214
  store i8 %i.i, ptr %i.d, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !214
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !214
  store i8 %i.t, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i12.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i15.i = load ptr, ptr %i.z, align 8, !tbaa !66
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, %.lr.ph.i
  %.019.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dw, %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.019.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !5471 ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i15.i, i64 %.019.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5471 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !5473, !range !489, !noundef !133
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !5473, !range !489, !noundef !133
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !5274, !nonnull !133, !align !134
  %i.am = load i64, ptr %i.ac, align 8, !tbaa !5476 ; 2 uses
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !5476
  %i.an = shl i64 %i.am, 3
  %i.ao = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.al, i64 noundef %i.an) ; 2 uses
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !5476
  %i.aq = shl i64 %i.ap, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !5477
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.as, align 8, !tbaa !5478
  store i8 1, ptr %i.ai, align 8, !tbaa !5473
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !5476
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !5476
  %.not.i.i = icmp eq i64 %i.at, %i.au
  br i1 %.not.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ae unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume.sink.split.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.ay) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !5478 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !5477
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !5477 ; 18 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i, %.lr.ph.i.i.i
  %i.bi = phi i64 [ %i.bc, %.lr.ph.i.i.i ], [ %i.dt, %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i ]
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.du, %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.06.i.i.i ; 3 uses
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !5478 ; 9 uses
  %i.bl = load i64, ptr %i.ae, align 8, !tbaa !5476
  %i.bm = icmp ult i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bn = add nuw i64 %i.bk, 1                    ; 2 uses
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !5478
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bk
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !51 ; 5 uses
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !5360
  %i.bq = icmp sgt i64 %i.bn, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %.sink.split.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %.01316.i.i.i.i = phi i64 [ %.017.i67.i.i.i, %bb.w ], [ %i.bk, %bb.v ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i67.i.i.i = lshr i64 %.017.in.i.i.i.i, 1  ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.017.i67.i.i.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !51 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, %i.bp
  br i1 %i.bt, label %bb.w, label %.sink.split.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.01316.i.i.i.i
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !51
  %.not.i.i16.i = icmp eq i64 %.017.i67.i.i.i, 0
  br i1 %.not.i.i16.i, label %.sink.split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5362

bb.x:                                             ; preds = %bb.u
  %i.bv = load i64, ptr %i.bj, align 8, !tbaa !51 ; 2 uses
  %i.bw = load i64, ptr %i.bh, align 8, !tbaa !51 ; 2 uses
  %i.bx = icmp sgt i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.y, label %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i

bb.y:                                             ; preds = %bb.x
  %i.by = icmp ugt i64 %i.bk, 1
  br i1 %i.by, label %bb.z, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bk
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  store i64 %i.bw, ptr %i.ca, align 8, !tbaa !51
  %.idx.i.i = shl nuw nsw i64 %i.bk, 3
  %i.cb = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.cc = ashr exact i64 %i.cb, 3                 ; 3 uses
  %i.cd = add nsw i64 %i.cc, -1
  %10 = sdiv i64 %i.cd, 2
  %i.ce = icmp sgt i64 %i.cc, 2
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %.031.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.z ] ; 2 uses
  %i.cf = shl i64 %.031.i.i.i.i.i, 1              ; 3 uses
  %i.cg = add i64 %i.cf, 2                        ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cg
  %i.ci = getelementptr [8 x i8], ptr %i.bh, i64 %i.cf
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.ch, align 8, !tbaa !51
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !51
  %i.cm = icmp sgt i64 %i.ck, %i.cl
  %i.cn = or disjoint i64 %i.cf, 1
  %spec.select.i.i.i.i.i = select i1 %i.cm, i64 %i.cn, i64 %i.cg ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %spec.select.i.i.i.i.i
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.031.i.i.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !51
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !51
  %i.cr = icmp slt i64 %spec.select.i.i.i.i.i, %10
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !5363

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.z
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.z ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.cs = and i64 %i.cb, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.cu = add nsw i64 %i.cc, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i.i, label %bb.ab

.thread.i.i.i.i:                                  ; preds = %bb.aa
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.0.lcssa.i.i.i.i.i
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !51
  store i64 %i.db, ptr %i.da, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ab, %.thread.i.i.i.i
  %.01316.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i, %bb.ab ], [ %i.cy, %.thread.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ac
  %.01316.i.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i.i, %bb.ac ], [ %.01316.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i.i, -1
  %.017.i.i910.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.017.i.i910.i.i.i.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !51 ; 2 uses
  %i.de = icmp sgt i64 %i.dd, %.sroa.02.0.copyload.i.i.i.i
  br i1 %i.de, label %bb.ac, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.df = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.01316.i.i.i.i.i.i
  store i64 %i.dd, ptr %i.df, align 8, !tbaa !51
  %.not11.i.i.i.i = icmp eq i64 %.017.i.i910.i.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5362

_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i, %bb.ab
  %.013.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.ab ], [ 0, %bb.ac ], [ %.01316.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.013.lcssa.i.i.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.dg, align 8, !tbaa !51
  %.pre.i.i = load i64, ptr %i.bf, align 8, !tbaa !5478
  %.pre24.i.i = load i64, ptr %i.bj, align 8, !tbaa !51
  br label %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i

_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, %bb.y
  %i.dh = phi i64 [ %i.bv, %bb.y ], [ %.pre24.i.i, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i ] ; 5 uses
  %i.di = phi i64 [ %i.bk, %bb.y ], [ %.pre.i.i, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i ] ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.bh, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8
  store i64 %i.dh, ptr %i.dk, align 8, !tbaa !5360
  %.idx22.i.i = shl i64 %i.di, 3
  %i.dl = ashr exact i64 %.idx22.i.i, 3           ; 2 uses
  %i.dm = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.dn = icmp sgt i64 %i.dl, 1
  br i1 %i.dn, label %.lr.ph.i.i8.i.i, label %.sink.split.i.i

.lr.ph.i.i8.i.i:                                  ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, %bb.ad
  %.01316.i.i9.i.i = phi i64 [ %.017.i67.i11.i.i, %bb.ad ], [ %i.dm, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ] ; 3 uses
  %.017.in.i.i10.i.i = add nsw i64 %.01316.i.i9.i.i, -1
  %.017.i67.i11.i.i = lshr i64 %.017.in.i.i10.i.i, 1 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.017.i67.i11.i.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !51 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, %i.dh
  br i1 %i.dq, label %bb.ad, label %.sink.split.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i8.i.i
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.01316.i.i9.i.i
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !51
  %.not.i15.i.i = icmp eq i64 %.017.i67.i11.i.i, 0
  br i1 %.not.i15.i.i, label %.sink.split.i.i, label %.lr.ph.i.i8.i.i, !llvm.loop !5362

.sink.split.i.i:                                  ; preds = %bb.ad, %.lr.ph.i.i8.i.i, %bb.w, %.lr.ph.i.i.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i, %bb.v
  %.013.lcssa.i.i7.sink.i.i = phi i64 [ %i.dm, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %i.bk, %bb.v ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.w ], [ 0, %bb.ad ], [ %.01316.i.i9.i.i, %.lr.ph.i.i8.i.i ]
  %.sink.i.i = phi i64 [ %i.dh, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit.i.i ], [ %i.bp, %bb.v ], [ %i.bp, %bb.w ], [ %i.bp, %.lr.ph.i.i.i.i ], [ %i.dh, %.lr.ph.i.i8.i.i ], [ %i.dh, %bb.ad ]
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.013.lcssa.i.i7.sink.i.i
  store i64 %.sink.i.i, ptr %i.ds, align 8, !tbaa !51
  %.pre.i = load i64, ptr %i.bb, align 8, !tbaa !5478
  br label %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i

_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i: ; preds = %.sink.split.i.i, %bb.x
  %i.dt = phi i64 [ %i.bi, %bb.x ], [ %.pre.i, %.sink.split.i.i ] ; 2 uses
  %i.du = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  br i1 %i.dv, label %bb.u, label %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, !llvm.loop !5479

bb.ae:                                            ; preds = %bb.r
  unreachable

_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKl.exit.i, %bb.t, %bb.l
  %i.dw = add nuw i64 %.019.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dw, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit, label %bb.l, !llvm.loop !5480

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb16MinMaxNOperation7CombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEES0_EEvRKT_RS8_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !214
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = load i8, ptr %i.c, align 1, !tbaa !214
  store i8 %i.g, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.j = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb16MinMaxNOperation8FinalizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEvRNS_6VectorERNS_18AggregateInputDataES9_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !5283
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !486
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
end_hunk_9
begin_hunk_10_@_ZN6duckdb16MinMaxNOperation8FinalizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEvRNS_6VectorERNS_18AggregateInputDataES9_mm:bb.a
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !5471
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !5478
  %i.bf = add i64 %i.be, %.06496.epil             ; 2 uses
  %i.bg = add nuw i64 %.06595.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !5483

._crit_edge:                                      ; preds = %._crit_edge.loopexit132.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil, %.preheader91
  %.064.lcssa = phi i64 [ 0, %.preheader91 ], [ %i.aw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ct, %._crit_edge.loopexit132.unr-lcssa ], [ %i.bf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ]
  %i.bh = add i64 %.064.lcssa, %i.p
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.bh)
          to label %bb.p unwind label %bb.r

bb.m:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06496 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.ct, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %.06595 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !5471
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !5478
  %i.bs = add i64 %i.br, %.06496
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !5471
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !5478
  %i.cb = add i64 %i.ca, %i.bs
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !5471
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !5478
  %i.ck = add i64 %i.cj, %i.cb
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06595
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !5471
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !5478
  %i.ct = add i64 %i.cs, %i.ck                    ; 3 uses
  %i.cu = add nuw i64 %.06595, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit132.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !5481

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66
  %i.cx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.t ; 2 uses

.preheader:                                       ; preds = %bb.q
  br i1 %.not106, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 9 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.u

._crit_edge104:                                   ; preds = %.loopexit, %.preheader
  %.066.lcssa = phi i64 [ %i.p, %.preheader ], [ %.268, %.loopexit ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.066.lcssa)
          to label %bb.al unwind label %bb.az

bb.r:                                             ; preds = %._crit_edge
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.lr.ph103, %.loopexit
  %.066102 = phi i64 [ %i.p, %.lr.ph103 ], [ %.268, %.loopexit ] ; 4 uses
  %.069101 = phi i64 [ 0, %.lr.ph103 ], [ %i.gm, %.loopexit ] ; 4 uses
  %i.de = add i64 %.069101, %4                    ; 3 uses
  %i.df = load ptr, ptr %9, align 8, !tbaa !87
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !464 ; 2 uses
  %.not.i84 = icmp eq ptr %i.dg, null
  br i1 %.not.i84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit85, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.069101
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit85

_ZNK6duckdb15SelectionVector9get_indexEm.exit85:  ; preds = %bb.v, %bb.u
  %i.dk = phi i64 [ %i.dj, %bb.v ], [ %.069101, %bb.u ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !5471 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !5473, !range !489, !noundef !133
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit85
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !5478 ; 4 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit85
  %i.dt = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %.not.i86 = icmp eq ptr %i.dt, null
  br i1 %.not.i86, label %bb.y, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.y:                                             ; preds = %bb.x
  %i.du = load i64, ptr %i.da, align 8, !tbaa !5287
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.du)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.y
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !67
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.x, %.noexc
  %i.dv = phi ptr [ %.pre.i, %.noexc ], [ %i.dt, %bb.x ]
  %i.dw = lshr i64 %i.de, 6
  %i.dx = and i64 %i.de, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = xor i64 %i.dy, -1
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !51
  %i.ec = and i64 %i.eb, %i.dz
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !51
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.de ; 2 uses
  store i64 %.066102, ptr %i.ee, align 8, !tbaa !5288
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %i.dr, ptr %i.ef, align 8, !tbaa !5290
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !5477 ; 13 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %.not90 = icmp eq i64 %i.dr, 1
  br i1 %.not90, label %.lr.ph99, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, %.lr.ph.i.i.preheader.i
  %.07.i.i.i = phi ptr [ %i.ek, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i ], [ %i.ej, %.lr.ph.i.i.preheader.i ]
  %i.ek = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.ek, align 8, !tbaa !51 ; 2 uses
  %i.el = load i64, ptr %i.eh, align 8, !tbaa !51
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !51
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.em, %i.ei                    ; 3 uses
  %i.eo = ashr exact i64 %i.en, 3                 ; 3 uses
  %i.ep = add nsw i64 %i.eo, -1
  %10 = sdiv i64 %i.ep, 2
  %i.eq = icmp sgt i64 %i.eo, 2
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i
  %.031.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.er = shl i64 %.031.i.i.i.i.i, 1              ; 3 uses
  %i.es = add i64 %i.er, 2                        ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.es
  %i.eu = getelementptr [8 x i8], ptr %i.eh, i64 %i.er
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %i.ew = load i64, ptr %i.et, align 8, !tbaa !51
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !51
  %i.ey = icmp sgt i64 %i.ew, %i.ex
  %i.ez = or disjoint i64 %i.er, 1
  %spec.select.i.i.i.i.i = select i1 %i.ey, i64 %i.ez, i64 %i.es ; 4 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %spec.select.i.i.i.i.i
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.031.i.i.i.i.i
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !51
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !51
  %i.fd = icmp slt i64 %spec.select.i.i.i.i.i, %10
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !5363

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.fe = and i64 %i.en, 8
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.fg = add nsw i64 %i.eo, -2
  %i.fh = ashr exact i64 %i.fg, 1
  %i.fi = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.fh
  br i1 %i.fi, label %.thread.i.i.i.i, label %bb.ac

.thread.i.i.i.i:                                  ; preds = %bb.ab
  %i.fj = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.fk = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fk
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.0.lcssa.i.i.i.i.i
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !51
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ac, %.thread.i.i.i.i
  %.01316.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i, %bb.ac ], [ %i.fk, %.thread.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ad
  %.01316.i.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i.i, %bb.ad ], [ %.01316.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i.i, -1
  %.017.i.i910.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.017.i.i910.i.i.i.i
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !51 ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, %.sroa.02.0.copyload.i.i.i.i
  br i1 %i.fq, label %bb.ad, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.01316.i.i.i.i.i.i
  store i64 %i.fp, ptr %i.fr, align 8, !tbaa !51
  %.not11.i.i.i.i = icmp eq i64 %.017.i.i910.i.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5362

_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i, %bb.ac
  %.013.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %.01316.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ad ]
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.013.lcssa.i.i.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.fs, align 8, !tbaa !51
  %i.ft = icmp sgt i64 %i.en, 8
  br i1 %i.ft, label %.lr.ph.i.i.i, label %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE14SortAndGetHeapEv.exit, !llvm.loop !5369

_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE14SortAndGetHeapEv.exit: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i.i
  %.pre = load i64, ptr %i.dq, align 8, !tbaa !5478
  %i.fu = icmp eq i64 %.pre, 0
  br i1 %i.fu, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.aa, %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE14SortAndGetHeapEv.exit
  %i.fv = load i8, ptr %i.cy, align 1, !tbaa !214
  %i.fw = icmp eq i8 %i.fv, 9
  br i1 %i.fw, label %.lr.ph99.split, label %bb.af

.lr.ph99.split:                                   ; preds = %.lr.ph99
  %i.fx = load ptr, ptr %i.cz, align 8, !tbaa !66
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph99.split, %bb.ae
  %.098 = phi i64 [ 0, %.lr.ph99.split ], [ %i.gc, %bb.ae ] ; 2 uses
  %.16797 = phi i64 [ %.066102, %.lr.ph99.split ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.098
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !51
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.16797
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !51
  %i.gb = add i64 %.16797, 1                      ; 2 uses
  %i.gc = add nuw i64 %.098, 1                    ; 2 uses
  %i.gd = load i64, ptr %i.dq, align 8, !tbaa !5478
  %i.ge = icmp ult i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.ae, label %.loopexit, !llvm.loop !5484

bb.af:                                            ; preds = %.lr.ph99
  %i.gf = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 9, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.gg = load i8, ptr %i.cy, align 1, !tbaa !214
  store i8 %i.gg, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ak unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.af
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.gj = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.gj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i, label %bb.aj, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i, label %bb.aj, label %.body

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.gf) #22
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  unreachable

.loopexit:                                        ; preds = %bb.ae, %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE14SortAndGetHeapEv.exit, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %.268 = phi i64 [ %.066102, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ %.066102, %_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE14SortAndGetHeapEv.exit ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.gm = add nuw i64 %.069101, 1                 ; 2 uses
  %exitcond113.not = icmp eq i64 %i.gm, %3
  br i1 %exitcond113.not, label %._crit_edge104, label %bb.u, !llvm.loop !5485

bb.al:                                            ; preds = %._crit_edge104
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3)
          to label %bb.am unwind label %bb.az

bb.am:                                            ; preds = %bb.al
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 4 uses
  %i.gq = load atomic i64, ptr %i.gp acquire, align 8 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 4294967297
  %i.gs = trunc i64 %i.gq to i32                  ; 2 uses
  br i1 %i.gr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.gp, align 8, !tbaa !96
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store i32 0, ptr %i.gt, align 4, !tbaa !98
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !99
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #22, !inline_history !101
  %i.gx = load ptr, ptr %i.go, align 8, !tbaa !99
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #22, !inline_history !101
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hb = add nsw i32 %i.gs, -1
  store i32 %i.hb, ptr %i.gp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.hc = atomicrmw volatile add ptr %i.gp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gs, %bb.aq ], [ %i.hc, %bb.ar ]
  %i.hd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.hd, label %bb.as, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !102

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ao, %bb.am
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %i.hh = load atomic i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 4294967297
  %i.hj = trunc i64 %i.hh to i32                  ; 2 uses
  br i1 %i.hi, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.hg, align 8, !tbaa !96
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 0, ptr %i.hk, align 4, !tbaa !98
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !99
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #22, !inline_history !103
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !99
end_hunk_10
begin_hunk_11_@_ZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m:bb.a

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.034 = phi i1 [ false, %bb.bl ], [ true, %bb.bk ] ; 2 uses
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fs = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.fs) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.034, label %bb.bo, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.034, label %bb.bo, label %.body

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.pn57110 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  call void @__cxa_free_exception(ptr %i.fo) #22
  br label %.body

bb.bp:                                            ; preds = %bb.bi
  %i.fv = icmp samesign ugt i64 %i.fm, 999999
  br i1 %i.fv, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.fw = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.br unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_mE5MAX_N)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cd unwind label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.bq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0 = phi i1 [ false, %bb.bs ], [ true, %bb.br ] ; 2 uses
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fz = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.fz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn55113 = phi { ptr, i32 } [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  call void @__cxa_free_exception(ptr %i.fw) #22
  br label %.body

bb.bv:                                            ; preds = %bb.bp
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  store i64 %i.fm, ptr %i.en, align 8, !tbaa !5476
  %i.gd = shl nuw nsw i64 %i.fm, 3
  %i.ge = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i64 noundef %i.gd)
          to label %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit unwind label %bb.bm ; 2 uses

_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit: ; preds = %bb.bv
  %i.gf = load i64, ptr %i.en, align 8, !tbaa !5476
  %i.gg = shl i64 %i.gf, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.gg, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !5477
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 0, ptr %i.gi, align 8, !tbaa !5478
  store i8 1, ptr %i.eo, align 8, !tbaa !5473
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIlEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dy
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !51
  store i64 %i.gl, ptr %i.b, align 8, !tbaa !51
  %i.gm = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  invoke void @_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKl(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.by
  %i.gn = add nuw i64 %.052115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !5486

bb.ca:                                            ; preds = %bb.bw, %bb.bx
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.bo, %bb.bm, %bb.ca, %bb.ax
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ax ], [ %i.fp, %bb.bm ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.go, %bb.ca ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn107, %bb.bh ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57110, %bb.bo ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn55113, %bb.bu ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #22
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.aw
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %.body ], [ %i.dr, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.av
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.cb ], [ %i.dq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.bs, %bb.bl, %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18UnaryAggregateHeapIlNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5478 ; 9 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !5476
  %i.d = icmp ult i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5477 ; 18 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.b, 1                      ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !5478
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.i = load i64, ptr %2, align 8, !tbaa !51     ; 5 uses
  store i64 %i.i, ptr %i.h, align 8, !tbaa !5360
  %i.j = icmp sgt i64 %i.g, 1
  br i1 %i.j, label %.lr.ph.i.i, label %.sink.split

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01316.i.i = phi i64 [ %.017.i67.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i67.i = lshr i64 %.017.in.i.i, 1          ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.017.i67.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %i.m = icmp sgt i64 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01316.i.i
  store i64 %i.l, ptr %i.n, align 8, !tbaa !51
  %.not.i = icmp eq i64 %.017.i67.i, 0
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i.i, !llvm.loop !5362

bb.d:                                             ; preds = %bb.a
  %i.o = load i64, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.q = icmp sgt i64 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %i.b, 1
  br i1 %i.r, label %bb.f, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.t, align 8, !tbaa !51 ; 2 uses
  store i64 %i.p, ptr %i.t, align 8, !tbaa !51
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.u = add nsw i64 %.idx, -8                    ; 2 uses
  %i.v = ashr exact i64 %i.u, 3                   ; 3 uses
  %i.w = add nsw i64 %i.v, -1
  %3 = sdiv i64 %i.w, 2
  %i.x = icmp sgt i64 %i.v, 2
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.031.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.y = shl i64 %.031.i.i.i, 1                   ; 3 uses
  %i.z = add i64 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.z
  %i.ab = getelementptr [8 x i8], ptr %i.f, i64 %i.y
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !51
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !51
  %i.af = icmp sgt i64 %i.ad, %i.ae
  %i.ag = or disjoint i64 %i.y, 1
  %spec.select.i.i.i = select i1 %i.af, i64 %i.ag, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.f, i64 %spec.select.i.i.i
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.031.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !51
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !51
  %i.ak = icmp slt i64 %spec.select.i.i.i, %3
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5363

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.al = and i64 %i.u, 8
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.an = add nsw i64 %i.v, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i, %i.ao
  br i1 %i.ap, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g
  %i.aq = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.0.lcssa.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !51
  store i64 %i.au, ptr %i.at, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h, %.thread.i.i
  %.01316.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.h ], [ %i.ar, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i910.i.i, %bb.i ], [ %.01316.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i910.i.i = lshr i64 %.017.in.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.017.i.i910.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !51 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %.sroa.02.0.copyload.i.i
  br i1 %i.ax, label %bb.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.01316.i.i.i.i
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !51
  %.not11.i.i = icmp eq i64 %.017.i.i910.i.i, 0
  br i1 %.not11.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !5362

_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.i, %bb.h
  %.013.lcssa.i.i.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.i ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.az = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.013.lcssa.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.az, align 8, !tbaa !51
  %.pre = load i64, ptr %i.a, align 8, !tbaa !5478
  %.pre24 = load i64, ptr %2, align 8, !tbaa !51
  br label %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.e, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i
  %i.ba = phi i64 [ %i.o, %bb.e ], [ %.pre24, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 5 uses
  %i.bb = phi i64 [ %i.b, %bb.e ], [ %.pre, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIlEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.f, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  store i64 %i.ba, ptr %i.bd, align 8, !tbaa !5360
  %.idx22 = shl i64 %i.bb, 3
  %i.be = ashr exact i64 %.idx22, 3               ; 2 uses
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bg = icmp sgt i64 %i.be, 1
  br i1 %i.bg, label %.lr.ph.i.i8, label %.sink.split

.lr.ph.i.i8:                                      ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.j
  %.01316.i.i9 = phi i64 [ %.017.i67.i11, %bb.j ], [ %i.bf, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit ] ; 3 uses
  %.017.in.i.i10 = add nsw i64 %.01316.i.i9, -1
  %.017.i67.i11 = lshr i64 %.017.in.i.i10, 1      ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.017.i67.i11
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !51 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, %i.ba
  br i1 %i.bj, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %.lr.ph.i.i8
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.01316.i.i9
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !51
  %.not.i15 = icmp eq i64 %.017.i67.i11, 0
  br i1 %.not.i15, label %.sink.split, label %.lr.ph.i.i8, !llvm.loop !5362

.sink.split:                                      ; preds = %bb.j, %.lr.ph.i.i8, %bb.c, %.lr.ph.i.i, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.b
  %.013.lcssa.i.i7.sink = phi i64 [ %i.bf, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %i.b, %bb.b ], [ %.01316.i.i, %.lr.ph.i.i ], [ 0, %bb.c ], [ 0, %bb.j ], [ %.01316.i.i9, %.lr.ph.i.i8 ]
  %.sink = phi i64 [ %i.ba, %_ZSt8pop_heapIPN6duckdb9HeapEntryIlEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %.lr.ph.i.i ], [ %i.ba, %.lr.ph.i.i8 ], [ %i.ba, %bb.j ]
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.013.lcssa.i.i7.sink
  store i64 %.sink, ptr %i.bl, align 8, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #17 align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEEENS_16MinMaxNOperationELNS_23AggregateDestructorTypeE1EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !214
  store i8 %i.i, ptr %i.d, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !214
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !214
  store i8 %i.t, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i
end_hunk_11
begin_hunk_12_@_ZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m:bb.a

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.pn57110 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  call void @__cxa_free_exception(ptr %i.fo) #22
  br label %.body

bb.bp:                                            ; preds = %bb.bi
  %i.fv = icmp samesign ugt i64 %i.fm, 999999
  br i1 %i.fv, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.fw = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.br unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_mE5MAX_N)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cd unwind label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.bq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0 = phi i1 [ false, %bb.bs ], [ true, %bb.br ] ; 2 uses
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fz = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.fz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn55113 = phi { ptr, i32 } [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  call void @__cxa_free_exception(ptr %i.fw) #22
  br label %.body

bb.bv:                                            ; preds = %bb.bp
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  store i64 %i.fm, ptr %i.en, align 8, !tbaa !5492
  %i.gd = shl nuw nsw i64 %i.fm, 2
  %i.ge = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i64 noundef %i.gd)
          to label %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit unwind label %bb.bm ; 2 uses

_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit: ; preds = %bb.bv
  %i.gf = load i64, ptr %i.en, align 8, !tbaa !5492
  %i.gg = shl i64 %i.gf, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.gg, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !5493
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 0, ptr %i.gi, align 8, !tbaa !5494
  store i8 1, ptr %i.eo, align 8, !tbaa !5489
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIfEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.dy
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !1173
  store float %i.gl, ptr %i.b, align 4, !tbaa !1173
  %i.gm = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  invoke void @_ZN6duckdb18UnaryAggregateHeapIfNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKf(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.by
  %i.gn = add nuw i64 %.052115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !5504

bb.ca:                                            ; preds = %bb.bw, %bb.bx
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.bo, %bb.bm, %bb.ca, %bb.ax
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ax ], [ %i.fp, %bb.bm ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.go, %bb.ca ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn107, %bb.bh ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57110, %bb.bo ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn55113, %bb.bu ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #22
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.aw
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %.body ], [ %i.dr, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.av
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.cb ], [ %i.dq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.bs, %bb.bl, %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18UnaryAggregateHeapIfNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::HeapEntry.269", align 4 ; 5 uses
  %4 = alloca %"struct.duckdb::HeapEntry.269", align 4 ; 7 uses
  %5 = alloca %"struct.duckdb::HeapEntry.269", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5494 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !5492
  %i.d = icmp ult i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5493 ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.b, 1                      ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !5494
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.i = load float, ptr %2, align 4, !tbaa !1173 ; 3 uses
  store float %i.i, ptr %i.h, align 4, !tbaa !5392
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store float %i.i, ptr %5, align 4
  %i.j = icmp sgt i64 %i.g, 1
  %i.k = bitcast float %i.i to i32
  br i1 %i.j, label %.lr.ph.i.i, label %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01316.i.i = phi i64 [ %.017.i67.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i67.i = lshr i64 %.017.in.i.i, 1          ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.i67.i ; 2 uses
  %i.m = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br i1 %i.m, label %bb.c, label %.critedge.loopexit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01316.i.i
  %i.o = load i32, ptr %i.l, align 4, !tbaa !1173
  store i32 %i.o, ptr %i.n, align 4, !tbaa !1173
  %.not.i = icmp eq i64 %.017.i67.i, 0
  br i1 %.not.i, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5394

.critedge.loopexit.i.i:                           ; preds = %bb.c, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.pre.i.i = load i32, ptr %5, align 4, !tbaa !1173
  br label %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.b, %.critedge.loopexit.i.i
  %i.p = phi i32 [ %i.k, %bb.b ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %i.b, %bb.b ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.013.lcssa.i.i
  store i32 %i.p, ptr %i.q, align 4, !tbaa !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  br i1 %i.r, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !5493 ; 12 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !5494 ; 4 uses
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %.sroa.02.0.copyload.i.i = load float, ptr %i.w, align 4, !tbaa !1173 ; 3 uses
  %i.x = load i32, ptr %i.s, align 4, !tbaa !1173
  store i32 %i.x, ptr %i.w, align 4, !tbaa !1173
  %.idx = shl nuw nsw i64 %i.t, 2
  %i.y = add nsw i64 %.idx, -4                    ; 2 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = add nsw i64 %i.z, -1
  %6 = sdiv i64 %i.aa, 2
  %i.ab = icmp sgt i64 %i.z, 2
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.031.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ac = shl i64 %.031.i.i.i, 1                  ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = getelementptr [4 x i8], ptr %i.s, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = tail call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.ag)
  %i.ai = or disjoint i64 %i.ac, 1
  %spec.select.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ad ; 4 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %spec.select.i.i.i
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.031.i.i.i
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !1173
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !1173
  %i.am = icmp slt i64 %spec.select.i.i.i, %6
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5395

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.an = and i64 %i.y, 4
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add nsw i64 %i.z, -2
  %i.aq = ashr exact i64 %i.ap, 1
  %i.ar = icmp eq i64 %.0.lcssa.i.i.i, %i.aq
  br i1 %i.ar, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g
  %i.as = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.at = or disjoint i64 %i.as, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.at
  %i.av = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.0.lcssa.i.i.i
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !1173
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store float %.sroa.02.0.copyload.i.i, ptr %4, align 4
  br label %.lr.ph.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store float %.sroa.02.0.copyload.i.i, ptr %4, align 4
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  %i.ax = bitcast float %.sroa.02.0.copyload.i.i to i32
  br i1 %.not.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h, %.thread.i.i
  %.01316.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.h ], [ %i.at, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i910.i.i, %bb.i ], [ %.01316.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i910.i.i = lshr i64 %.017.in.i.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.017.i.i910.i.i ; 2 uses
  %i.az = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br i1 %i.az, label %bb.i, label %.critedge.loopexit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.01316.i.i.i.i
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !1173
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !1173
  %.not11.i.i = icmp eq i64 %.017.i.i910.i.i, 0
  br i1 %.not11.i.i, label %.critedge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5394

.critedge.loopexit.i.i.i.i:                       ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.013.lcssa.ph.i.i.i.i = phi i64 [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.i ]
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !1173
  br label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i

_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i: ; preds = %.critedge.loopexit.i.i.i.i, %bb.h
  %i.bc = phi i32 [ %i.ax, %bb.h ], [ %.pre.i.i.i.i, %.critedge.loopexit.i.i.i.i ]
  %.013.lcssa.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.013.lcssa.ph.i.i.i.i, %.critedge.loopexit.i.i.i.i ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.013.lcssa.i.i.i.i
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !5493
  %.pre19 = load i64, ptr %i.a, align 8, !tbaa !5494
  br label %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.e, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i
  %i.be = phi i64 [ %i.t, %bb.e ], [ %.pre19, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %i.s, %bb.e ], [ %.pre, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 4 uses
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.be
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load float, ptr %2, align 4, !tbaa !1173 ; 3 uses
  store float %i.bi, ptr %i.bh, align 4, !tbaa !5392
  %.idx17 = shl i64 %i.be, 2
  %i.bj = ashr exact i64 %.idx17, 2               ; 2 uses
  %i.bk = add nsw i64 %i.bj, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store float %i.bi, ptr %3, align 4
  %i.bl = icmp sgt i64 %i.bj, 1
  %i.bm = bitcast float %i.bi to i32
  br i1 %i.bl, label %.lr.ph.i.i8, label %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit16

.lr.ph.i.i8:                                      ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.j
  %.01316.i.i9 = phi i64 [ %.017.i67.i11, %bb.j ], [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit ] ; 3 uses
  %.017.in.i.i10 = add nsw i64 %.01316.i.i9, -1
  %.017.i67.i11 = lshr i64 %.017.in.i.i10, 1      ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.017.i67.i11 ; 2 uses
  %i.bo = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.bo, label %bb.j, label %.critedge.loopexit.i.i12

bb.j:                                             ; preds = %.lr.ph.i.i8
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %.01316.i.i9
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !1173
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !1173
  %.not.i15 = icmp eq i64 %.017.i67.i11, 0
  br i1 %.not.i15, label %.critedge.loopexit.i.i12, label %.lr.ph.i.i8, !llvm.loop !5394

.critedge.loopexit.i.i12:                         ; preds = %bb.j, %.lr.ph.i.i8
  %.013.lcssa.ph.i.i13 = phi i64 [ %.01316.i.i9, %.lr.ph.i.i8 ], [ 0, %bb.j ]
  %.pre.i.i14 = load i32, ptr %3, align 4, !tbaa !1173
  br label %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit16

_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit16: ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit, %.critedge.loopexit.i.i12
  %i.br = phi i32 [ %i.bm, %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %.pre.i.i14, %.critedge.loopexit.i.i12 ]
  %.013.lcssa.i.i7 = phi i64 [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %.013.lcssa.ph.i.i13, %.critedge.loopexit.i.i12 ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %.013.lcssa.i.i7
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit16, %_ZSt9push_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6duckdb18UnaryAggregateHeapIfNS_11GreaterThanEE14SortAndGetHeapEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::HeapEntry.269", align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5493 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !5494 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = icmp ugt i64 %i.d, 1
  br i1 %i.f, label %.lr.ph.i.i.preheader, label %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i ], [ %i.g, %.lr.ph.i.i.preheader ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %.sroa.02.0.copyload.i.i.i = load float, ptr %i.h, align 4, !tbaa !1173 ; 3 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !1173
  store i32 %i.i, ptr %i.h, align 4, !tbaa !1173
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %2 = sdiv i64 %i.m, 2
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.p
  %i.r = getelementptr [4 x i8], ptr %i.b, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.s)
  %i.u = or disjoint i64 %i.o, 1
  %spec.select.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.p ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.b, i64 %spec.select.i.i.i.i
  %i.w = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.031.i.i.i.i
  %i.x = load i32, ptr %i.v, align 4, !tbaa !1173
  store i32 %i.x, ptr %i.w, align 4, !tbaa !1173
  %i.y = icmp slt i64 %spec.select.i.i.i.i, %2
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5395

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.z = and i64 %i.k, 4
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add nsw i64 %i.l, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ac
  br i1 %i.ad, label %.thread.i.i.i, label %bb.c

.thread.i.i.i:                                    ; preds = %bb.b
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.0.lcssa.i.i.i.i
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !1173
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store float %.sroa.02.0.copyload.i.i.i, ptr %1, align 4
  br label %.lr.ph.i.i.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store float %.sroa.02.0.copyload.i.i.i, ptr %1, align 4
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  %i.aj = bitcast float %.sroa.02.0.copyload.i.i.i to i32
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c, %.thread.i.i.i
  %.01316.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.c ], [ %i.af, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.d ], [ %.01316.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.017.i.i910.i.i.i ; 2 uses
  %i.al = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br i1 %i.al, label %bb.d, label %.critedge.loopexit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.01316.i.i.i.i.i
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !1173
  store i32 %i.an, ptr %i.am, align 4, !tbaa !1173
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5394

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.d ]
  %.pre.i.i.i.i.i = load i32, ptr %1, align 4, !tbaa !1173
  br label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i

_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.c
  %i.ao = phi i32 [ %i.aj, %bb.c ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aq = icmp sgt i64 %i.k, 4
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit, !llvm.loop !5396

_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIfEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !5493
  br label %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit, %bb.a
  %i.ar = phi ptr [ %.pre, %_ZSt9sort_heapIPN6duckdb9HeapEntryIfEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit ], [ %i.b, %bb.a ]
  ret ptr %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #17 align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEEENS_16MinMaxNOperationELNS_23AggregateDestructorTypeE1EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !214
  store i8 %i.i, ptr %i.d, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !214
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !214
  store i8 %i.t, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i12.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

end_hunk_12
begin_hunk_13_@_ZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m:bb.a

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.pn57110 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  call void @__cxa_free_exception(ptr %i.fo) #22
  br label %.body

bb.bp:                                            ; preds = %bb.bi
  %i.fv = icmp samesign ugt i64 %i.fm, 999999
  br i1 %i.fv, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.fw = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.br unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN6duckdb12_GLOBAL__N_113MinMaxNUpdateINS0_12MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_mE5MAX_N)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cd unwind label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.bq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0 = phi i1 [ false, %bb.bs ], [ true, %bb.br ] ; 2 uses
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fz = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.fz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0, label %bb.bu, label %.body

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn55113 = phi { ptr, i32 } [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  call void @__cxa_free_exception(ptr %i.fw) #22
  br label %.body

bb.bv:                                            ; preds = %bb.bp
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  store i64 %i.fm, ptr %i.en, align 8, !tbaa !5510
  %i.gd = shl nuw nsw i64 %i.fm, 3
  %i.ge = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i64 noundef %i.gd)
          to label %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit unwind label %bb.bm ; 2 uses

_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit: ; preds = %bb.bv
  %i.gf = load i64, ptr %i.en, align 8, !tbaa !5510
  %i.gg = shl i64 %i.gf, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.gg, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !5511
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 0, ptr %i.gi, align 8, !tbaa !5512
  store i8 1, ptr %i.eo, align 8, !tbaa !5507
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_112MinMaxNStateINS_16MinMaxFixedValueIdEENS_11GreaterThanEE10InitializeERNS_14ArenaAllocatorEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dy
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !1235
  store double %i.gl, ptr %i.b, align 8, !tbaa !1235
  %i.gm = load ptr, ptr %i.q, align 8, !tbaa !5274, !nonnull !133, !align !134
  invoke void @_ZN6duckdb18UnaryAggregateHeapIdNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKd(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.by
  %i.gn = add nuw i64 %.052115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !5522

bb.ca:                                            ; preds = %bb.bw, %bb.bx
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.bo, %bb.bm, %bb.ca, %bb.ax
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ax ], [ %i.fp, %bb.bm ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.go, %bb.ca ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn107, %bb.bh ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57110, %bb.bo ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn55113, %bb.bu ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #22
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.aw
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %.body ], [ %i.dr, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.av
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.cb ], [ %i.dq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.bs, %bb.bl, %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18UnaryAggregateHeapIdNS_11GreaterThanEE6InsertERNS_14ArenaAllocatorERKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::HeapEntry.275", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::HeapEntry.275", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::HeapEntry.275", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5512 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !5510
  %i.d = icmp ult i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5511 ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.b, 1                      ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !5512
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.i = load double, ptr %2, align 8, !tbaa !1235 ; 3 uses
  store double %i.i, ptr %i.h, align 8, !tbaa !5416
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store double %i.i, ptr %5, align 8
  %i.j = icmp sgt i64 %i.g, 1
  %i.k = bitcast double %i.i to i64
  br i1 %i.j, label %.lr.ph.i.i, label %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01316.i.i = phi i64 [ %.017.i67.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i67.i = lshr i64 %.017.in.i.i, 1          ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.017.i67.i ; 2 uses
  %i.m = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.m, label %bb.c, label %.critedge.loopexit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01316.i.i
  %i.o = load i64, ptr %i.l, align 8, !tbaa !1235
  store i64 %i.o, ptr %i.n, align 8, !tbaa !1235
  %.not.i = icmp eq i64 %.017.i67.i, 0
  br i1 %.not.i, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5418

.critedge.loopexit.i.i:                           ; preds = %bb.c, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.pre.i.i = load i64, ptr %5, align 8, !tbaa !1235
  br label %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.b, %.critedge.loopexit.i.i
  %i.p = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %i.b, %bb.b ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.q = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.013.lcssa.i.i
  store i64 %i.p, ptr %i.q, align 8, !tbaa !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.r, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !5511 ; 12 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !5512 ; 4 uses
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  %.sroa.02.0.copyload.i.i = load double, ptr %i.w, align 8, !tbaa !1235 ; 3 uses
  %i.x = load i64, ptr %i.s, align 8, !tbaa !1235
  store i64 %i.x, ptr %i.w, align 8, !tbaa !1235
  %.idx = shl nuw nsw i64 %i.t, 3
  %i.y = add nsw i64 %.idx, -8                    ; 2 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 3 uses
  %i.aa = add nsw i64 %i.z, -1
  %6 = sdiv i64 %i.aa, 2
  %i.ab = icmp sgt i64 %i.z, 2
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.031.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ac = shl i64 %.031.i.i.i, 1                  ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ad
  %i.af = getelementptr [8 x i8], ptr %i.s, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = tail call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ai = or disjoint i64 %i.ac, 1
  %spec.select.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ad ; 4 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %spec.select.i.i.i
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.031.i.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !1235
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !1235
  %i.am = icmp slt i64 %spec.select.i.i.i, %6
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5419

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.an = and i64 %i.y, 8
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add nsw i64 %i.z, -2
  %i.aq = ashr exact i64 %i.ap, 1
  %i.ar = icmp eq i64 %.0.lcssa.i.i.i, %i.aq
  br i1 %i.ar, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g
  %i.as = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.at = or disjoint i64 %i.as, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.0.lcssa.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !1235
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !1235
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store double %.sroa.02.0.copyload.i.i, ptr %4, align 8
  br label %.lr.ph.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store double %.sroa.02.0.copyload.i.i, ptr %4, align 8
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  %i.ax = bitcast double %.sroa.02.0.copyload.i.i to i64
  br i1 %.not.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h, %.thread.i.i
  %.01316.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.h ], [ %i.at, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i910.i.i, %bb.i ], [ %.01316.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i910.i.i = lshr i64 %.017.in.i.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.017.i.i910.i.i ; 2 uses
  %i.az = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.az, label %bb.i, label %.critedge.loopexit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.01316.i.i.i.i
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !1235
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !1235
  %.not11.i.i = icmp eq i64 %.017.i.i910.i.i, 0
  br i1 %.not11.i.i, label %.critedge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5418

.critedge.loopexit.i.i.i.i:                       ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.013.lcssa.ph.i.i.i.i = phi i64 [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.i ]
  %.pre.i.i.i.i = load i64, ptr %4, align 8, !tbaa !1235
  br label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i

_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i: ; preds = %.critedge.loopexit.i.i.i.i, %bb.h
  %i.bc = phi i64 [ %i.ax, %bb.h ], [ %.pre.i.i.i.i, %.critedge.loopexit.i.i.i.i ]
  %.013.lcssa.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.013.lcssa.ph.i.i.i.i, %.critedge.loopexit.i.i.i.i ]
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.013.lcssa.i.i.i.i
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !5511
  %.pre19 = load i64, ptr %i.a, align 8, !tbaa !5512
  br label %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.e, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i
  %i.be = phi i64 [ %i.t, %bb.e ], [ %.pre19, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %i.s, %bb.e ], [ %.pre, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i ] ; 4 uses
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load double, ptr %2, align 8, !tbaa !1235 ; 3 uses
  store double %i.bi, ptr %i.bh, align 8, !tbaa !5416
  %.idx17 = shl i64 %i.be, 3
  %i.bj = ashr exact i64 %.idx17, 3               ; 2 uses
  %i.bk = add nsw i64 %i.bj, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store double %i.bi, ptr %3, align 8
  %i.bl = icmp sgt i64 %i.bj, 1
  %i.bm = bitcast double %i.bi to i64
  br i1 %i.bl, label %.lr.ph.i.i8, label %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit16

.lr.ph.i.i8:                                      ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit, %bb.j
  %.01316.i.i9 = phi i64 [ %.017.i67.i11, %bb.j ], [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit ] ; 3 uses
  %.017.in.i.i10 = add nsw i64 %.01316.i.i9, -1
  %.017.i67.i11 = lshr i64 %.017.in.i.i10, 1      ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.017.i67.i11 ; 2 uses
  %i.bo = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.bo, label %bb.j, label %.critedge.loopexit.i.i12

bb.j:                                             ; preds = %.lr.ph.i.i8
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %.01316.i.i9
  %i.bq = load i64, ptr %i.bn, align 8, !tbaa !1235
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !1235
  %.not.i15 = icmp eq i64 %.017.i67.i11, 0
  br i1 %.not.i15, label %.critedge.loopexit.i.i12, label %.lr.ph.i.i8, !llvm.loop !5418

.critedge.loopexit.i.i12:                         ; preds = %bb.j, %.lr.ph.i.i8
  %.013.lcssa.ph.i.i13 = phi i64 [ %.01316.i.i9, %.lr.ph.i.i8 ], [ 0, %bb.j ]
  %.pre.i.i14 = load i64, ptr %3, align 8, !tbaa !1235
  br label %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit16

_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit16: ; preds = %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit, %.critedge.loopexit.i.i12
  %i.br = phi i64 [ %i.bm, %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %.pre.i.i14, %.critedge.loopexit.i.i12 ]
  %.013.lcssa.i.i7 = phi i64 [ %i.bk, %_ZSt8pop_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit ], [ %.013.lcssa.ph.i.i13, %.critedge.loopexit.i.i12 ]
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %.013.lcssa.i.i7
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit16, %_ZSt9push_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6duckdb18UnaryAggregateHeapIdNS_11GreaterThanEE14SortAndGetHeapEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::HeapEntry.275", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5511 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !5512 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = icmp ugt i64 %i.d, 1
  br i1 %i.f, label %.lr.ph.i.i.preheader, label %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i ], [ %i.g, %.lr.ph.i.i.preheader ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i.i.i = load double, ptr %i.h, align 8, !tbaa !1235 ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1235
  store i64 %i.i, ptr %i.h, align 8, !tbaa !1235
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %2 = sdiv i64 %i.m, 2
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.p
  %i.r = getelementptr [8 x i8], ptr %i.b, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = or disjoint i64 %i.o, 1
  %spec.select.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.p ; 4 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.b, i64 %spec.select.i.i.i.i
  %i.w = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.031.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1235
  store i64 %i.x, ptr %i.w, align 8, !tbaa !1235
  %i.y = icmp slt i64 %spec.select.i.i.i.i, %2
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5419

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.z = and i64 %i.k, 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add nsw i64 %i.l, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ac
  br i1 %i.ad, label %.thread.i.i.i, label %bb.c

.thread.i.i.i:                                    ; preds = %bb.b
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.0.lcssa.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !1235
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !1235
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store double %.sroa.02.0.copyload.i.i.i, ptr %1, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store double %.sroa.02.0.copyload.i.i.i, ptr %1, align 8
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  %i.aj = bitcast double %.sroa.02.0.copyload.i.i.i to i64
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c, %.thread.i.i.i
  %.01316.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.c ], [ %i.af, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.d ], [ %.01316.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.017.i.i910.i.i.i ; 2 uses
  %i.al = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.al, label %bb.d, label %.critedge.loopexit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.01316.i.i.i.i.i
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !1235
  store i64 %i.an, ptr %i.am, align 8, !tbaa !1235
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5418

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.d ]
  %.pre.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !1235
  br label %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i

_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.c
  %i.ao = phi i64 [ %i.aj, %bb.c ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aq = icmp sgt i64 %i.k, 8
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit, !llvm.loop !5420

_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit: ; preds = %_ZSt10__pop_heapIPN6duckdb9HeapEntryIdEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !5511
  br label %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit, %bb.a
  %i.ar = phi ptr [ %.pre, %_ZSt9sort_heapIPN6duckdb9HeapEntryIdEEPFbRKS2_S5_EEvT_S8_T0_.exit.loopexit ], [ %i.b, %bb.a ]
  ret ptr %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_11GreaterThanEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #17 align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_11GreaterThanEEENS_16MinMaxNOperationELNS_23AggregateDestructorTypeE1EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_11GreaterThanEEENS_16MinMaxNOperationEEEvRNS_6VectorES9_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !214
  store i8 %i.i, ptr %i.d, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !214
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_112MinMaxNStateINS_19MinMaxFallbackValueENS_11GreaterThanEEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !214
  store i8 %i.t, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i12.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

end_hunk_13
