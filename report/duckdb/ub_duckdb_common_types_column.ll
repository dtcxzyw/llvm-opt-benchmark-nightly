Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types_column?download=true
inline.NumInlined: 5544
inline.NumDeleted: 2532
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6duckdbL14ColumnDataCopyIdEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  %.sroa.038.0.copyload39.i = load i64, ptr %i.gk, align 8, !tbaa !215
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i, %.loopexit.i
  %.sroa.038.1.i = phi i64 [ %.sroa.038.0.copyload39.i, %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i ], [ %.sroa.038.0111.i, %.loopexit.i ]
  %i.gl = load ptr, ptr %i.l, align 8, !tbaa !181 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.gm, align 8, !tbaa !183
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !184
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !179
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #24, !inline_history !1180
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !179
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #24, !inline_history !1180
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !171
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gy = add nsw i32 %i.gp, -1
  store i32 %i.gy, ptr %i.gm, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gz = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gp, %bb.ah ], [ %i.gz, %bb.ai ]
  %i.ha = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ha, label %bb.aj, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, !prof !185

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #24
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.not70.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyIdEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %bb.b, !llvm.loop !1181

_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyIdEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL14ColumnDataCopyINS_10interval_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 !guid !1202 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"struct.duckdb::ValidityMask", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !467, !nonnull !188, !align !210 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !468, !nonnull !188, !align !210 ; 2 uses
  %.not113.i = icmp eq i64 %4, 0
  br i1 %.not113.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyINS_10interval_tEEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.038.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !215
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %.lr.ph119.i
  %.0116.i = phi i64 [ %3, %.lr.ph119.i ], [ %i.gh, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 5 uses
  %.sroa.038.0115.i = phi i64 [ %.sroa.038.0.copyload.i, %.lr.ph119.i ], [ %.sroa.038.1.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 4 uses
  %.069114.i = phi i64 [ %4, %.lr.ph119.i ], [ %i.gi, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0115.i) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !472
  %i.s = zext i16 %i.r to i64
  %i.t = sub nsw i64 2048, %i.s
  %i.u = and i64 %i.t, 4294967295                 ; 2 uses
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.069114.i) ; 16 uses
  %i.w = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.x = load i8, ptr %i.w, align 8, !tbaa !169
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.p, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !265
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ae = zext i32 %i.ad to i64
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !215
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !248
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !252
  %i.ak = zext i32 %i.ac to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.al, %bb.d ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32768 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.am, ptr %6, align 8, !tbaa !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.j, align 8, !tbaa !453
  %i.an = load i16, ptr %i.q, align 8, !tbaa !472 ; 9 uses
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, label %bb.e

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.am, i8 -1, i64 256, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !290
  %.not.i.i = icmp eq ptr %i.ap, null
  %.not121.i = icmp eq i64 %i.u, 0                ; 2 uses
  br i1 %.not.i.i, label %.preheader.i, label %.preheader106.i

.preheader106.i:                                  ; preds = %bb.e
  br i1 %.not121.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.e
  br i1 %.not121.i, label %.loopexit.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.preheader.i
  %i.aq = load ptr, ptr %1, align 8, !tbaa !462
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !463 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !474 ; 7 uses
  %i.at = zext i16 %i.an to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [16 x i8], ptr %.0.i.i, i64 %i.at ; 13 uses
  br i1 %.not.i72.i, label %.lr.ph112.split.us.preheader.i, label %.lr.ph112.split.preheader.i

.lr.ph112.split.preheader.i:                      ; preds = %.lr.ph112.i
  %invariant.gep143.i = getelementptr [4 x i8], ptr %i.ar, i64 %.0116.i ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.au = icmp eq i64 %i.v, 1
  br i1 %i.au, label %.lr.ph112.split.i.epil.preheader, label %.lr.ph112.split.preheader.i.new

.lr.ph112.split.preheader.i.new:                  ; preds = %.lr.ph112.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967294
  br label %.lr.ph112.split.i

.lr.ph112.split.us.preheader.i:                   ; preds = %.lr.ph112.i
  %invariant.gep145.i = getelementptr [16 x i8], ptr %i.as, i64 %.0116.i ; 10 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 34
  br i1 %min.iters.check, label %.lr.ph112.split.us.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph112.split.us.preheader.i
  %i.av = add nsw i64 %i.v, -1                    ; 2 uses
  %mul.result = shl nsw i64 %i.av, 4              ; 2 uses
  %mul.overflow = icmp ugt i64 %i.av, 1152921504606846975
  %i.aw = getelementptr i8, ptr %invariant.gep.i, i64 %mul.result
  %i.ax = icmp ult ptr %i.aw, %invariant.gep.i
  %i.ay = getelementptr i8, ptr %invariant.gep145.i, i64 %mul.result
  %i.az = icmp ult ptr %i.ay, %invariant.gep145.i
  %i.ba = or i1 %i.az, %mul.overflow
  %i.bb = or i1 %i.ax, %i.ba
  br i1 %i.bb, label %.lr.ph112.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bc = shl nuw nsw i64 %i.v, 4                 ; 2 uses
  %i.bd = shl nuw nsw i64 %i.at, 4                ; 2 uses
  %i.be = add nuw nsw i64 %i.bc, %i.bd            ; 2 uses
  %i.bf = getelementptr i8, ptr %.0.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = shl i64 %.0116.i, 4                     ; 2 uses
  %i.bi = add i64 %i.bh, %i.bc                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.as, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %bound0 = icmp ult ptr %invariant.gep.i, %i.bk
  %bound1 = icmp ult ptr %invariant.gep145.i, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  %i.bl = getelementptr i8, ptr %.0.i.i, i64 %i.bd
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = getelementptr i8, ptr %.0.i.i, i64 %i.be
  %7 = getelementptr i8, ptr %i.as, i64 %i.bh
  %8 = getelementptr i8, ptr %7, i64 8
  %9 = getelementptr i8, ptr %i.as, i64 %i.bi
  %bound034 = icmp ult ptr %i.bm, %9
  %bound135 = icmp ult ptr %8, %i.bn
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  br i1 %conflict.rdx, label %.lr.ph112.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967294               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bo = or disjoint i64 %index, 1               ; 2 uses
  %i.bp = getelementptr [16 x i8], ptr %invariant.gep145.i, i64 %index
  %i.bq = getelementptr [16 x i8], ptr %invariant.gep145.i, i64 %i.bo
  %wide.load = load <2 x i64>, ptr %i.bp, align 8
  %wide.load37 = load <2 x i64>, ptr %i.bq, align 8
  %i.br = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %index
  %i.bs = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bo
  store <2 x i64> %wide.load, ptr %i.br, align 8
  store <2 x i64> %wide.load37, ptr %i.bs, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph112.split.us.i.preheader

.lr.ph112.split.us.i.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph112.split.us.preheader.i, %middle.block
  %.066111.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph112.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.bu = sub nsw i64 %i.v, %.066111.us.i.ph
  %xtraiter42 = and i64 %i.bu, 3                  ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph112.split.us.i.prol.loopexit, label %.lr.ph112.split.us.i.prol

.lr.ph112.split.us.i.prol:                        ; preds = %.lr.ph112.split.us.i.preheader, %.lr.ph112.split.us.i.prol
  %.066111.us.i.prol = phi i64 [ %i.bw, %.lr.ph112.split.us.i.prol ], [ %.066111.us.i.ph, %.lr.ph112.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph112.split.us.i.prol ], [ 0, %.lr.ph112.split.us.i.preheader ]
  %gep146.i.prol = getelementptr [16 x i8], ptr %invariant.gep145.i, i64 %.066111.us.i.prol
  %gep.us.i.prol = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066111.us.i.prol
  %i.bv = load <2 x i64>, ptr %gep146.i.prol, align 8, !tbaa !171
  store <2 x i64> %i.bv, ptr %gep.us.i.prol, align 8, !tbaa !171
  %i.bw = add nuw nsw i64 %.066111.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter42
  br i1 %prol.iter.cmp.not, label %.lr.ph112.split.us.i.prol.loopexit, label %.lr.ph112.split.us.i.prol, !llvm.loop !1188

.lr.ph112.split.us.i.prol.loopexit:               ; preds = %.lr.ph112.split.us.i.prol, %.lr.ph112.split.us.i.preheader
  %.066111.us.i.unr = phi i64 [ %.066111.us.i.ph, %.lr.ph112.split.us.i.preheader ], [ %i.bw, %.lr.ph112.split.us.i.prol ]
  %i.bx = sub nsw i64 %.066111.us.i.ph, %i.v
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %.loopexit.i, label %.lr.ph112.split.us.i

.lr.ph112.split.us.i:                             ; preds = %.lr.ph112.split.us.i.prol.loopexit, %.lr.ph112.split.us.i
  %.066111.us.i = phi i64 [ %i.cg, %.lr.ph112.split.us.i ], [ %.066111.us.i.unr, %.lr.ph112.split.us.i.prol.loopexit ] ; 6 uses
  %gep146.i = getelementptr [16 x i8], ptr %invariant.gep145.i, i64 %.066111.us.i
  %gep.us.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066111.us.i
  %i.bz = load <2 x i64>, ptr %gep146.i, align 8, !tbaa !171
  store <2 x i64> %i.bz, ptr %gep.us.i, align 8, !tbaa !171
  %i.ca = add nuw nsw i64 %.066111.us.i, 1        ; 2 uses
  %gep146.i.1 = getelementptr [16 x i8], ptr %invariant.gep145.i, i64 %i.ca
  %gep.us.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.ca
  %i.cb = load <2 x i64>, ptr %gep146.i.1, align 8, !tbaa !171
  store <2 x i64> %i.cb, ptr %gep.us.i.1, align 8, !tbaa !171
  %i.cc = add nuw nsw i64 %.066111.us.i, 2        ; 2 uses
  %gep146.i.2 = getelementptr [16 x i8], ptr %invariant.gep145.i, i64 %i.cc
  %gep.us.i.2 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.cc
  %i.cd = load <2 x i64>, ptr %gep146.i.2, align 8, !tbaa !171
  store <2 x i64> %i.cd, ptr %gep.us.i.2, align 8, !tbaa !171
  %i.ce = add nuw nsw i64 %.066111.us.i, 3        ; 2 uses
  %gep146.i.3 = getelementptr [16 x i8], ptr %invariant.gep145.i, i64 %i.ce
  %gep.us.i.3 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.ce
  %i.cf = load <2 x i64>, ptr %gep146.i.3, align 8, !tbaa !171
  store <2 x i64> %i.cf, ptr %gep.us.i.3, align 8, !tbaa !171
  %i.cg = add nuw nsw i64 %.066111.us.i, 4        ; 2 uses
  %exitcond129.not.i.3 = icmp eq i64 %i.cg, %i.v
  br i1 %exitcond129.not.i.3, label %.loopexit.i, label %.lr.ph112.split.us.i, !llvm.loop !1189

.lr.ph112.split.i:                                ; preds = %.lr.ph112.split.i, %.lr.ph112.split.preheader.i.new
  %.066111.i = phi i64 [ 0, %.lr.ph112.split.preheader.i.new ], [ %i.cq, %.lr.ph112.split.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph112.split.preheader.i.new ], [ %niter.next.1, %.lr.ph112.split.i ]
  %gep144.i = getelementptr [4 x i8], ptr %invariant.gep143.i, i64 %.066111.i
  %i.ch = load i32, ptr %gep144.i, align 4, !tbaa !59
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ci
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066111.i
  %i.ck = load <2 x i64>, ptr %i.cj, align 8, !tbaa !171
  store <2 x i64> %i.ck, ptr %gep.i, align 8, !tbaa !171
  %i.cl = or disjoint i64 %.066111.i, 1           ; 2 uses
  %gep144.i.1 = getelementptr [4 x i8], ptr %invariant.gep143.i, i64 %i.cl
  %i.cm = load i32, ptr %gep144.i.1, align 4, !tbaa !59
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.cn
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.cl
  %i.cp = load <2 x i64>, ptr %i.co, align 8, !tbaa !171
  store <2 x i64> %i.cp, ptr %gep.i.1, align 8, !tbaa !171
  %i.cq = add nuw nsw i64 %.066111.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit38.unr-lcssa, label %.lr.ph112.split.i, !llvm.loop !1190

.lr.ph.i:                                         ; preds = %.preheader106.i, %bb.aa
  %i.cr = phi ptr [ %i.fy, %bb.aa ], [ %i.am, %.preheader106.i ] ; 3 uses
  %.065110.i = phi i64 [ %i.fz, %bb.aa ], [ 0, %.preheader106.i ] ; 4 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !462
  %i.ct = add i64 %.065110.i, %.0116.i            ; 2 uses
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !463 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cu, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !59
  %i.cx = zext i32 %i.cw to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.f, %.lr.ph.i
  %i.cy = phi i64 [ %i.cx, %bb.f ], [ %i.ct, %.lr.ph.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !290 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cz, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !472
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.da = lshr i64 %i.cy, 6
  %i.db = and i64 %i.cy, 63
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !215
  %i.de = shl nuw i64 1, %i.db
  %i.df = and i64 %i.dd, %i.de
  %.not104.i = icmp eq i64 %i.df, 0
  %.pre130.i = load i16, ptr %i.q, align 8, !tbaa !472 ; 2 uses
  br i1 %.not104.i, label %bb.g, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.dg = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre130.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !474
  %i.di = zext i16 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.cy
  %i.dk = getelementptr [16 x i8], ptr %.0.i.i, i64 %.065110.i
  %i.dl = getelementptr [16 x i8], ptr %i.dk, i64 %i.di
  %i.dm = load <2 x i64>, ptr %i.dj, align 8, !tbaa !171
  store <2 x i64> %i.dm, ptr %i.dl, align 8, !tbaa !171
  br label %bb.aa

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i, %bb.ac
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dy, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.y ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %eh.lpad-body.i

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dn = zext i16 %.pre130.i to i64
  %i.do = add nuw i64 %.065110.i, %i.dn           ; 2 uses
  %.not.i81.i = icmp eq ptr %i.cr, null
  br i1 %.not.i81.i, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.dp = load i64, ptr %i.j, align 8, !tbaa !453
  %i.dq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc96.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc96.i:                                       ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 7 uses
  store i32 1, ptr %i.dr, align 8, !tbaa !183, !noalias !1203
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 2 uses
  store i32 1, ptr %i.ds, align 4, !tbaa !184, !noalias !1203
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dq, align 8, !tbaa !179, !noalias !1203
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 4 uses
  store ptr null, ptr %i.dt, align 8, !tbaa !494, !noalias !1203
  %i.du = add i64 %i.dp, 63
  %i.dv = lshr i64 %i.du, 6                       ; 2 uses
  %i.dw = shl nuw nsw i64 %i.dv, 3                ; 2 uses
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #28
          to label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !1203 ; 2 uses

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc96.i
  store ptr %i.dx, ptr %i.dt, align 8, !tbaa !402, !noalias !1203
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dx, i8 -1, i64 %i.dw, i1 false), !tbaa !215, !noalias !1203
  br label %bb.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc96.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dq) #25, !noalias !1203
  br label %.body.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !171, !noalias !1204
end_hunk_0
