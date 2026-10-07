Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.02?download=true
inline.NumInlined: 475
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBX_7NodeRefNtNtBX_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1u_4LeafENtB1u_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3X_13OccupiedEntryB1K_B25_E9remove_kv0NtNtBb_5alloc6GlobalEB2d_:bb.a
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fd
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !492, !nonnull !9, !noundef !9 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 880
  store ptr %i.ca, ptr %i.fn, align 8, !noalias !492
  %i.fo = trunc nuw nsw i64 %i.fd to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 1152
  store i16 %i.fo, ptr %i.fp, align 8, !noalias !492
  %exitcond.not.i.i.3 = icmp eq i64 %i.fj, %i.dh
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %._crit_edge103.thread
  %i.fq = load i16, ptr %i.dg, align 2, !noalias !492, !noundef !9
  %i.fr = add i16 %i.fq, -1
  store i16 %i.fr, ptr %i.dg, align 2, !noalias !492
  %i.fs = icmp ugt i64 %i.cb, 1
  br i1 %i.fs, label %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i, label %.noexc28

_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i: ; preds = %_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dd, i64 1160 ; 6 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.pre-phi110129
  %i.fv = getelementptr inbounds nuw i8, ptr %i.de, i64 1160
  %i.fw = shl nuw nsw i64 %.pre-phi108130, 3
  %i.fx = add nuw nsw i64 %i.fw, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fu, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fv, i64 %i.fx, i1 false), !alias.scope !501, !noalias !492
  %i.fy = add nuw nsw i64 %.pre-phi112128, 1
  %i.fz = sub nsw i64 %i.fy, %.pre-phi110129
  %i.ga = sub nsw i64 %.pre-phi112128, %.pre-phi110129
  %xtraiter162 = and i64 %i.fz, 3                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i, %.lr.ph.i8.i.prol
  %.sroa.0.06.i9.i.prol = phi i64 [ %i.gb, %.lr.ph.i8.i.prol ], [ %.pre-phi110129, %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i ] ; 4 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %.lr.ph.i8.i.prol ], [ 0, %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i ]
  %i.gb = add nuw nsw i64 %.sroa.0.06.i9.i.prol, 1 ; 2 uses
  %i.gc = icmp samesign ult i64 %.sroa.0.06.i9.i.prol, 12
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.sroa.0.06.i9.i.prol
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !492, !nonnull !9, !noundef !9 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 880
  store ptr %i.dd, ptr %i.gf, align 8, !noalias !492
  %i.gg = trunc nuw nsw i64 %.sroa.0.06.i9.i.prol to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1152
  store i16 %i.gg, ptr %i.gh, align 8, !noalias !492
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !476

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i
  %.sroa.0.06.i9.i.unr = phi i64 [ %.pre-phi110129, %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i ], [ %i.gb, %.lr.ph.i8.i.prol ]
  %i.gi = icmp ult i64 %i.ga, 3
  br i1 %i.gi, label %.noexc28, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.sroa.0.06.i9.i = phi i64 [ %i.hb, %.lr.ph.i8.i ], [ %.sroa.0.06.i9.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 7 uses
  %i.gj = add nuw nsw i64 %.sroa.0.06.i9.i, 1     ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.sroa.0.06.i9.i
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !492, !nonnull !9, !noundef !9 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 880
  store ptr %i.dd, ptr %i.gm, align 8, !noalias !492
  %i.gn = trunc nuw nsw i64 %.sroa.0.06.i9.i to i16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 1152
  store i16 %i.gn, ptr %i.go, align 8, !noalias !492
  %i.gp = add nuw nsw i64 %.sroa.0.06.i9.i, 2     ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gj
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !492, !nonnull !9, !noundef !9 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 880
  store ptr %i.dd, ptr %i.gs, align 8, !noalias !492
  %i.gt = trunc nuw nsw i64 %i.gj to i16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 1152
  store i16 %i.gt, ptr %i.gu, align 8, !noalias !492
  %i.gv = add nuw nsw i64 %.sroa.0.06.i9.i, 3     ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gp
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !492, !nonnull !9, !noundef !9 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 880
  store ptr %i.dd, ptr %i.gy, align 8, !noalias !492
  %i.gz = trunc nuw nsw i64 %i.gp to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 1152
  store i16 %i.gz, ptr %i.ha, align 8, !noalias !492
  %i.hb = add nuw nsw i64 %.sroa.0.06.i9.i, 4
  %i.hc = icmp ult i64 %.sroa.0.06.i9.i, 9
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gv
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !492, !nonnull !9, !noundef !9 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 880
  store ptr %i.dd, ptr %i.hf, align 8, !noalias !492
  %i.hg = trunc nuw nsw i64 %i.gv to i16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 1152
  store i16 %i.hg, ptr %i.hh, align 8, !noalias !492
  %exitcond.not.i10.i.3 = icmp eq i64 %i.gv, %.pre-phi112128
  br i1 %exitcond.not.i10.i.3, label %.noexc28, label %.lr.ph.i8.i

.noexc28:                                         ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i, %_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i
  %.sink.i29 = phi i64 [ 1160, %_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i ], [ 1256, %.lr.ph.i8.i ], [ 1256, %.lr.ph.i8.i.prol.loopexit ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %.sink.i29, i64 noundef 8) #22, !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.hi = load i16, ptr %i.dg, align 2, !noalias !489, !noundef !9 ; 2 uses
  %i.hj = icmp ugt i16 %i.hi, 4
  br i1 %i.hj, label %.thread, label %.lr.ph

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 1, ptr %2, align 1, !alias.scope !502
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %.thread, %bb.m
  %.sink.ph = phi ptr [ %i.e, %bb.m ], [ %i.i, %.thread ], [ %i.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.a
  %.sink = phi ptr [ %i.e, %bb.a ], [ %.sink.ph, %.sink.split ]
  %.sroa.0.0.sink = phi ptr [ %i.j, %bb.a ], [ %i.bn, %.sink.split ]
  %.sroa.7.0.sink = phi i64 [ %i.ab, %bb.a ], [ %i.bm, %.sink.split ]
  %.sroa.11.0.sink = phi i64 [ %i.p, %bb.a ], [ %i.bp, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %.sink, i64 104, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.0.sink, ptr %i.hk, align 8
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx5, align 8
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.11.0.sink, ptr %.sroa.11.0..sroa_idx11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ac:                                            ; preds = %bb.e
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ad:                                            ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB1h_14LeafOrInternalE11search_treeB1x_ECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val51 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val52 = load i64, ptr %i.b, align 8           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.e ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 360 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 626
  %i.e = load i16, ptr %i.d, align 2, !noundef !9 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i84, i64 24 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.8.0.i83, 1
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.01.i84 = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i83 = phi i64 [ %i.j, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.0.01.i84, i64 8
  %.val7.i = load ptr, ptr %i.l, align 8, !nonnull !9, !noundef !9
  %i.m = getelementptr i8, ptr %.sroa.0.01.i84, i64 16
  %.val8.i = load i64, ptr %i.m, align 8, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val52, i64 range(i64 0, -9223372036854775808) %.val8.i)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val51, ptr nonnull readonly %.val7.i, i64 %spec.store.select.i.i.i.i), !alias.scope !506 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub nsw i64 %.val52, %.val8.i
  %spec.select.i.i.i.i = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  switch i8 %i.r, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i83, %.lr.ph ] ; 3 uses
  %i.s = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.s, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i83, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.t, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 632
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.0.i.ph
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !9, !noundef !9
  %i.y = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1h_14LeafOrInternalE11search_treeB1x_EB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val51 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val52 = load i64, ptr %i.b, align 8           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.e ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 888 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1154
  %i.e = load i16, ptr %i.d, align 2, !noundef !9 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i84, i64 24 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.8.0.i83, 1
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.01.i84 = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i83 = phi i64 [ %i.j, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.0.01.i84, i64 8
  %.val7.i = load ptr, ptr %i.l, align 8, !nonnull !9, !noundef !9
  %i.m = getelementptr i8, ptr %.sroa.0.01.i84, i64 16
  %.val8.i = load i64, ptr %i.m, align 8, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val52, i64 range(i64 0, -9223372036854775808) %.val8.i)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val51, ptr nonnull readonly %.val7.i, i64 %spec.store.select.i.i.i.i), !alias.scope !510 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub nsw i64 %.val52, %.val8.i
  %spec.select.i.i.i.i = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  switch i8 %i.r, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i83, %.lr.ph ] ; 3 uses
  %i.s = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.s, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i83, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.t, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1160
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.0.i.ph
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !9, !noundef !9
  %i.y = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1h_14LeafOrInternalE11search_treeeEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.e ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 888 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1154
  %i.c = load i16, ptr %i.b, align 2, !noalias !516, !noundef !9 ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.f = icmp eq i16 %i.c, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i82, i64 24 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.0.i81, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i82 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.8.0.i81 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.0.01.i82, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !516, !nonnull !9, !noundef !9
  %i.k = getelementptr i8, ptr %.sroa.0.01.i82, i64 16
  %.val6.i = load i64, ptr %i.k, align 8, !noalias !516, !noundef !9 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %4, i64 %.val6.i)
  %i.l = tail call i32 @memcmp(ptr nonnull readonly %3, ptr nonnull readonly %.val.i, i64 %spec.store.select.i.i), !alias.scope !517 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  %i.o = sub i64 %4, %.val6.i
  %spec.select.i.i = select i1 %i.n, i64 %i.o, i64 %i.m
  %i.p = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  switch i8 %i.p, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i81, %.lr.ph ] ; 3 uses
  %i.q = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.q, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i81, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.r, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1160
  %i.t = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.4.0.i.ph
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1h_14LeafOrInternalE11search_treeeEB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.e ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 888 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1154
  %i.c = load i16, ptr %i.b, align 2, !noalias !523, !noundef !9 ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.f = icmp eq i16 %i.c, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i82, i64 24 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.0.i81, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i82 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.8.0.i81 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.0.01.i82, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !523, !nonnull !9, !noundef !9
  %i.k = getelementptr i8, ptr %.sroa.0.01.i82, i64 16
  %.val6.i = load i64, ptr %i.k, align 8, !noalias !523, !noundef !9 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %4, i64 %.val6.i)
  %i.l = tail call i32 @memcmp(ptr nonnull readonly %3, ptr nonnull readonly %.val.i, i64 %spec.store.select.i.i), !alias.scope !524 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  %i.o = sub i64 %4, %.val6.i
  %spec.select.i.i = select i1 %i.n, i64 %i.o, i64 %i.m
  %i.p = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  switch i8 %i.p, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i81, %.lr.ph ] ; 3 uses
  %i.q = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.q, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i81, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.r, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1160
  %i.t = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.4.0.i.ph
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1D_INtNtNtCsgxBkk5gSRhY_4core3ops5range9RangeFromB1D_EEB26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0.i = phi ptr [ %1, %bb.a ], [ %i.x, %bb.d ] ; 7 uses
  %.sroa.647.1.i = phi ptr [ undef, %bb.a ], [ %i.o, %bb.d ]
  %.sroa.045.1.i = phi i64 [ 2, %bb.a ], [ %i.n, %bb.d ]
  %.sroa.643.1.i = phi ptr [ %3, %bb.a ], [ %i.l, %bb.d ]
  %.sroa.041.1.i = phi i64 [ 0, %bb.a ], [ %i.k, %bb.d ]
  %i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !528
  call fastcc void @_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB23_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr nonnull %.sroa.0.0.i, i64 noundef %.sroa.041.1.i, ptr %.sroa.643.1.i), !noalias !529
  %i.j = load i64, ptr %i.b, align 8, !noalias !528, !noundef !9 ; 6 uses
  %i.k = load i64, ptr %i.e, align 8, !range !530, !noalias !528, !noundef !9 ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8, !noalias !528 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !528
  call fastcc void @_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB23_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr nonnull %.sroa.0.0.i, i64 noundef %.sroa.045.1.i, ptr %.sroa.647.1.i, i64 noundef %i.j), !noalias !529
  %i.m = load i64, ptr %i.a, align 8, !noalias !528, !noundef !9 ; 3 uses
  %i.n = load i64, ptr %i.g, align 8, !range !530, !noalias !528, !noundef !9 ; 2 uses
  %i.o = load ptr, ptr %i.h, align 8, !noalias !528 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !528
  %i.p = icmp ult i64 %i.j, %i.m
  %.not119 = icmp eq i64 %i.i, 0                  ; 2 uses
  br i1 %i.p, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  br i1 %.not119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %.not119, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1160
  %i.v = icmp ult i64 %i.j, 12
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j
  %i.x = load ptr, ptr %i.w, align 8, !noalias !529, !nonnull !9, !noundef !9
  %i.y = add i64 %i.i, -1
  br label %bb.b

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.z, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_3ops5range9RangeFromNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.aa, %bb.f ]
  resume { ptr, i32 } %common.resume.op

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %.sroa.066.0.lcssa = phi ptr [ %.sroa.0.0.i, %.preheader ], [ %i.ai, %bb.j ]
  %.sroa.072.0.lcssa = phi i64 [ %i.j, %.preheader ], [ %i.ak, %bb.j ]
  %.sroa.075.0.lcssa = phi ptr [ %.sroa.0.0.i, %.preheader ], [ %i.aq, %bb.j ]
  %.sroa.081.0.lcssa = phi i64 [ %i.m, %.preheader ], [ %i.ar, %bb.j ]
  store ptr %.sroa.066.0.lcssa, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.072.0.lcssa, ptr %.sroa.536.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.075.0.lcssa, ptr %i.ac, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.081.0.lcssa, ptr %.sroa.539.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_3ops5range9RangeFromNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_3ops5range9RangeFromNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %._crit_edge, %bb.e
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
  ret void

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %.sroa.384.0129 = phi ptr [ %i.o, %.lr.ph ], [ %i.at, %bb.j ]
  %.sroa.083.0128 = phi i64 [ %i.n, %.lr.ph ], [ %i.as, %bb.j ]
  %.sroa.081.0127 = phi i64 [ %i.m, %.lr.ph ], [ %i.ar, %bb.j ] ; 2 uses
  %.sroa.078.0126 = phi i64 [ %i.i, %.lr.ph ], [ %i.aj, %bb.j ]
  %.sroa.075.0125 = phi ptr [ %.sroa.0.0.i, %.lr.ph ], [ %i.aq, %bb.j ]
  %.sroa.3.0124 = phi ptr [ %i.l, %.lr.ph ], [ %i.am, %bb.j ]
  %.sroa.074.0123 = phi i64 [ %i.k, %.lr.ph ], [ %i.al, %bb.j ]
  %.sroa.072.0122 = phi i64 [ %i.j, %.lr.ph ], [ %i.ak, %bb.j ] ; 2 uses
  %.sroa.066.0120 = phi ptr [ %.sroa.0.0.i, %.lr.ph ], [ %i.ai, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.066.0120, i64 1160
  %i.ag = icmp ult i64 %.sroa.072.0122, 12
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.072.0122
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.aj = add i64 %.sroa.078.0126, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB23_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr nonnull %i.ai, i64 noundef %.sroa.074.0123, ptr %.sroa.3.0124)
  %i.ak = load i64, ptr %i.d, align 8, !noundef !9 ; 2 uses
  %i.al = load i64, ptr %i.q, align 8, !range !530, !noundef !9
  %i.am = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.075.0125, i64 1160
  %i.ao = icmp ult i64 %.sroa.081.0127, 12
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.081.0127
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB23_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr nonnull %i.aq, i64 noundef %.sroa.083.0128, ptr %.sroa.384.0129, i64 noundef 0)
  %i.ar = load i64, ptr %i.c, align 8, !noundef !9 ; 2 uses
  %i.as = load i64, ptr %i.s, align 8, !range !530, !noundef !9
  %i.at = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %._crit_edge, label %bb.j
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBc_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8, !noalias !535, !noundef !9 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.e, null
  br i1 %.not.i.i6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.0.08 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.07 = phi i64 [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %.sroa.3.07, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.07, 0
  %..i = select i1 %.not.i, i64 632, i64 728
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.08, i64 noundef range(i64 1, -9223372036854775808) %..i, i64 noundef 8) #22, !noalias !536
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !noalias !535, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.g, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.f, %.lr.ph ]
  %.not.i4 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i5 = select i1 %.not.i4, i64 632, i64 728
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef range(i64 1, -9223372036854775808) %..i5, i64 noundef 8) #22, !noalias !536
  ret void
}
end_hunk_0
