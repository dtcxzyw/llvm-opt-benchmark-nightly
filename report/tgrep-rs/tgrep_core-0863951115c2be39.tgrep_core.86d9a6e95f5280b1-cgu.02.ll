Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.02?download=true
inline.NumInlined: 1106
inline.NumDeleted: 635
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0EBZ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37, !noundef !7 ; 8 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !37, !nonnull !7, !noundef !7 ; 9 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.g = icmp samesign ult i64 %i.b, 4
  br i1 %i.g, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %i.b, 576460752303423484
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader.i.new
  %.sroa.0.0.i = phi i64 [ 0, %.preheader.i.new ], [ %i.w, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.3, %bb.f ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %.val9.i = load i64, ptr %i.i, align 8, !noalias !37, !noundef !7 ; 2 uses
  %i.j = icmp ult i64 %.val9.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.j)
  %.not.i = icmp eq i64 %.val9.i, 0
  %i.k = or disjoint i64 %.sroa.0.0.i, 1          ; 3 uses
  br i1 %.not.i, label %.loopexit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val9.i.1 = load i64, ptr %i.m, align 8, !noalias !37, !noundef !7 ; 2 uses
  %i.n = icmp ult i64 %.val9.i.1, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %.not.i.1 = icmp eq i64 %.val9.i.1, 0
  %i.o = or disjoint i64 %.sroa.0.0.i, 2          ; 3 uses
  br i1 %.not.i.1, label %.loopexit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %.val9.i.2 = load i64, ptr %i.q, align 8, !noalias !37, !noundef !7 ; 2 uses
  %i.r = icmp ult i64 %.val9.i.2, 2305843009213693952
  tail call void @llvm.assume(i1 %i.r)
  %.not.i.2 = icmp eq i64 %.val9.i.2, 0
  %i.s = or disjoint i64 %.sroa.0.0.i, 3          ; 3 uses
  br i1 %.not.i.2, label %.loopexit, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %.val9.i.3 = load i64, ptr %i.u, align 8, !noalias !37, !noundef !7 ; 2 uses
  %i.v = icmp ult i64 %.val9.i.3, 2305843009213693952
  tail call void @llvm.assume(i1 %i.v)
  %.not.i.3 = icmp eq i64 %.val9.i.3, 0
  %i.w = add nuw nsw i64 %.sroa.0.0.i, 4          ; 3 uses
  br i1 %.not.i.3, label %.loopexit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit.loopexit.unr-lcssa, label %bb.b

.loopexit:                                        ; preds = %bb.j, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.lcssa = phi i64 [ %i.s, %bb.e ], [ %.sroa.0.0.i, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %.sroa.0.0.i.epil, %bb.j ] ; 3 uses
  %.lcssa22 = phi ptr [ %i.t, %bb.e ], [ %i.h, %bb.b ], [ %i.l, %bb.c ], [ %i.p, %bb.d ], [ %i.al, %bb.j ]
  %.lcssa20 = phi i64 [ %i.w, %bb.e ], [ %i.k, %bb.b ], [ %i.o, %bb.c ], [ %i.s, %bb.d ], [ %i.ao, %bb.j ] ; 3 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.lcssa22)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.i unwind label %.loopexit.split-lp.i, !noalias !37

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.i: ; preds = %.loopexit
  %i.x = icmp samesign ult i64 %.lcssa20, %i.b
  br i1 %i.x, label %.lr.ph.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit._crit_edge.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit._crit_edge.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit10.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.i ], [ %.sroa.15.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit10.i ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !37
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit

.lr.ph.i:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit10.i
  %.sroa.8.132.i = phi i64 [ %.sroa.8.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit10.i ], [ %.lcssa20, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.i ] ; 3 uses
  %.sroa.15.131.i = phi i64 [ %.sroa.15.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit10.i ], [ %.sroa.0.0.i.lcssa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.8.132.i ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %.val.i = load i64, ptr %i.z, align 8, !noalias !37, !noundef !7 ; 2 uses
  %i.aa = icmp ult i64 %.val.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aa)
  %.not23.i = icmp eq i64 %.val.i, 0
  br i1 %.not23.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = add nuw nsw i64 %.sroa.8.132.i, 1       ; 2 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit10.i unwind label %.loopexit.i, !noalias !37

bb.h:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.15.131.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !37
  %i.ad = add i64 %.sroa.15.131.i, 1
  %i.ae = add nuw nsw i64 %.sroa.8.132.i, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit10.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit10.i: ; preds = %bb.h, %bb.g
  %.sroa.15.2.i = phi i64 [ %i.ad, %bb.h ], [ %.sroa.15.131.i, %bb.g ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.ae, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.af = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.af, label %.lr.ph.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit._crit_edge.i

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %.loopexit
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.131.i, %.loopexit.i ], [ %.sroa.0.0.i.lcssa, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %i.ab, %.loopexit.i ], [ %.lcssa20, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ag = sub i64 %i.b, %.sroa.8.0.i              ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.8.0.i
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.15.0.i
  %i.aj = mul nuw nsw i64 %i.ag, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.ah, i64 %i.aj, i1 false), !noalias !38
  %i.ak = add i64 %i.ag, %.sroa.15.0.i
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !37, !noalias !39
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit.loopexit.unr-lcssa, %.preheader.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.w, %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.epil.preheader
  %.sroa.0.0.i.epil = phi i64 [ %i.ao, %bb.k ], [ %.sroa.0.0.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.k ], [ 0, %.epil.preheader ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %.val9.i.epil = load i64, ptr %i.am, align 8, !noalias !37, !noundef !7 ; 2 uses
  %i.an = icmp ult i64 %.val9.i.epil, 2305843009213693952
  tail call void @llvm.assume(i1 %i.an)
  %.not.i.epil = icmp eq i64 %.val9.i.epil, 0
  %i.ao = add nuw nsw i64 %.sroa.0.0.i.epil, 1    ; 2 uses
  br i1 %.not.i.epil, label %.loopexit, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit, label %bb.j, !llvm.loop !36

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit: ; preds = %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE10retain_mutNCINvB2_6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0E0EB1j_.exit.loopexit.unr-lcssa, %bb.k, %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryE8dedup_byNCNvBH_8simplifys_0EBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 5 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %i.u, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit ] ; 5 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.i = load i32, ptr %i.g, align 4, !alias.scope !46, !noundef !7
  %i.j = load i32, ptr %i.h, align 4, !alias.scope !47, !noundef !7
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !range !10, !alias.scope !46, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.p = getelementptr i8, ptr %i.g, i64 -4
  %i.q = load i8, ptr %i.p, align 4, !range !10, !alias.scope !47, !noundef !7
  %1 = trunc nuw i8 %i.q to i1                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %1, label %.split.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %1, label %bb.g, label %bb.h

.split.i:                                         ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.g, i64 -3
  %i.s = load i8, ptr %i.o, align 1, !alias.scope !46, !noundef !7
  %i.t = load i8, ptr %i.r, align 1, !alias.scope !47, !noundef !7
  %.not.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split.i, %bb.f, %bb.e
  store i8 0, ptr %i.l, align 4, !alias.scope !46
  br label %bb.h

_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit: ; preds = %bb.c
  %i.u = add nuw nsw i64 %.sroa.0.022, 1          ; 2 uses
  %.not = icmp eq i64 %i.u, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.h:                                             ; preds = %bb.g, %.split.i, %bb.f
  %.sroa.5.023 = add nuw nsw i64 %.sroa.0.022, 1  ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.5.023, %i.b
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.h
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %bb.h ], [ %.sroa.11.1, %bb.m ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.h, %bb.m
  %.sroa.5.025 = phi i64 [ %.sroa.5.0, %bb.m ], [ %.sroa.5.023, %bb.h ] ; 2 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1, %bb.m ], [ %.sroa.0.022, %bb.h ] ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025 ; 4 uses
  %i.x = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.024 ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.z = load i32, ptr %i.w, align 4, !alias.scope !48, !noundef !7
  %i.aa = load i32, ptr %i.y, align 4, !alias.scope !49, !noundef !7
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit12

bb.i:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !range !10, !alias.scope !48, !noundef !7
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.ag = getelementptr i8, ptr %i.x, i64 -4
  %i.ah = load i8, ptr %i.ag, align 4, !range !10, !alias.scope !49, !noundef !7
  %2 = trunc nuw i8 %i.ah to i1                   ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %2, label %.split.i10, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %2, label %bb.l, label %bb.m

.split.i10:                                       ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %i.x, i64 -3
  %i.aj = load i8, ptr %i.af, align 1, !alias.scope !48, !noundef !7
  %i.ak = load i8, ptr %i.ai, align 1, !alias.scope !49, !noundef !7
  %.not.i11 = icmp eq i8 %i.aj, %i.ak
  br i1 %.not.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split.i10, %bb.k, %bb.j
  store i8 0, ptr %i.ac, align 4, !alias.scope !48
  br label %bb.m

.thread:                                          ; preds = %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit, %bb.a, %._crit_edge
  ret void

_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit12: ; preds = %.lr.ph
  %i.al = load i64, ptr %i.w, align 4
  store i64 %i.al, ptr %i.x, align 4
  %i.am = add i64 %.sroa.11.024, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %.split.i10, %bb.l, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit12
  %.sroa.11.1 = phi i64 [ %i.am, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit12 ], [ %.sroa.11.024, %bb.l ], [ %.sroa.11.024, %.split.i10 ], [ %.sroa.11.024, %bb.k ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.025, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE6retainNCNvMNtBJ_6hybridNtB1H_11HybridIndex38lookup_trigram_with_masks_using_reader0EBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !56, !noundef !7 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE10retain_mutNCINvB2_6retainNCNvMNtBJ_6hybridNtB21_11HybridIndex38lookup_trigram_with_masks_using_reader0E0EBJ_.exit, label %.preheader25.i

.preheader25.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !56, !nonnull !7, !noundef !7 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader25.i
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.c ], [ 0, %.preheader25.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val11.i = load i32, ptr %i.g, align 4, !noalias !56, !noundef !7
  %i.h = load ptr, ptr %2, align 8, !noalias !56, !nonnull !7, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB2_11HybridIndex19reader_entry_active(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.i, i32 noundef %.val11.i), !noalias !56
  %i.k = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %i.j, label %bb.c, label %.preheader.i, !prof !11

.preheader.i:                                     ; preds = %bb.b
  %i.l = icmp samesign ult i64 %i.k, %i.b
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.k, %i.b
  br i1 %i.m, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE10retain_mutNCINvB2_6retainNCNvMNtBJ_6hybridNtB21_11HybridIndex38lookup_trigram_with_masks_using_reader0E0EBJ_.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.e ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !56
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE10retain_mutNCINvB2_6retainNCNvMNtBJ_6hybridNtB21_11HybridIndex38lookup_trigram_with_masks_using_reader0E0EBJ_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %.sroa.7.035.i = phi i64 [ %.sroa.7.0.i, %bb.e ], [ %i.k, %.preheader.i ] ; 3 uses
  %.sroa.13.034.i = phi i64 [ %.sroa.13.1.i, %bb.e ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.035.i ; 3 uses
  %.val9.i = load i32, ptr %i.n, align 4, !noalias !56, !noundef !7
  %i.o = load ptr, ptr %2, align 8, !noalias !56, !nonnull !7, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = invoke noundef zeroext i1 @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB2_11HybridIndex19reader_entry_active(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.p, i32 noundef %.val9.i)
          to label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE6retainNCNvMNtBL_6hybridNtB1J_11HybridIndex38lookup_trigram_with_masks_using_reader0E0BL_.exit.i unwind label %bb.f, !noalias !56

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE6retainNCNvMNtBL_6hybridNtB1J_11HybridIndex38lookup_trigram_with_masks_using_reader0E0BL_.exit.i: ; preds = %.lr.ph.i
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE6retainNCNvMNtBL_6hybridNtB1J_11HybridIndex38lookup_trigram_with_masks_using_reader0E0BL_.exit.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.034.i
  %i.s = load i64, ptr %i.n, align 4, !noalias !56
  store i64 %i.s, ptr %i.r, align 4, !noalias !56
  %i.t = add i64 %.sroa.13.034.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE6retainNCNvMNtBL_6hybridNtB1J_11HybridIndex38lookup_trigram_with_masks_using_reader0E0BL_.exit.i
  %.sroa.13.1.i = phi i64 [ %i.t, %bb.d ], [ %.sroa.13.034.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE6retainNCNvMNtBL_6hybridNtB1J_11HybridIndex38lookup_trigram_with_masks_using_reader0E0BL_.exit.i ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.035.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = sub nuw nsw i64 %i.b, %.sroa.7.035.i     ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.034.i
  %i.x = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 4 %i.n, i64 %i.x, i1 false), !noalias !57
  %i.y = add i64 %i.v, %.sroa.13.034.i
  store i64 %i.y, ptr %i.a, align 8, !alias.scope !56, !noalias !58
  resume { ptr, i32 } %i.u

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE10retain_mutNCINvB2_6retainNCNvMNtBJ_6hybridNtB21_11HybridIndex38lookup_trigram_with_masks_using_reader0E0EBJ_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE8dedup_byNCINvB2_12dedup_by_keyNCNvNtBJ_5query30sort_dedup_postings_by_file_ids0_0mE0EBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %.sroa.5.024, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load i32, ptr %i.g, align 4, !noundef !7
  %.val12 = load i32, ptr %i.h, align 4, !noundef !7
  %i.i = icmp eq i32 %.val11, %.val12
  %.sroa.5.024 = add nuw nsw i64 %.sroa.0.023, 1  ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp samesign ult i64 %.sroa.5.024, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.024 ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %.val.prol = load i32, ptr %i.m, align 4, !noundef !7
  %.val10.prol = load i32, ptr %i.o, align 4, !noundef !7
  %i.p = icmp eq i32 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  %i.q = load i64, ptr %i.m, align 4
  store i64 %i.q, ptr %i.n, align 4
  %i.r = add nuw i64 %.sroa.0.023, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.r, %bb.d ], [ %.sroa.0.023, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw nsw i64 %.sroa.0.023, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.026.unr = phi i64 [ %.sroa.5.024, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.025.unr = phi i64 [ %.sroa.0.023, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.l, %indvar
  br i1 %i.s, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.024, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.026 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.026 ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.025 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %.val = load i32, ptr %i.t, align 4, !noundef !7
  %.val10 = load i32, ptr %i.v, align 4, !noundef !7
  %i.w = icmp eq i32 %.val, %.val10
  br i1 %i.w, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.x = load i64, ptr %i.t, align 4
  store i64 %i.x, ptr %i.u, align 4
  %i.y = add i64 %.sroa.11.025, 1
end_hunk_0
