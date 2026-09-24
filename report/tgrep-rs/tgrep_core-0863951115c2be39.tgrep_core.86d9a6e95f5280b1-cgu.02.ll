Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.02?download=true
inline.NumInlined: 1106
inline.NumDeleted: 635
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEE6retainNCNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted0EBZ_:bb.a
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
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %i.v, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit ] ; 5 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.i = load i32, ptr %i.g, align 4, !alias.scope !46, !noalias !47, !noundef !7
  %i.j = load i32, ptr %i.h, align 4, !alias.scope !47, !noalias !46, !noundef !7
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !range !10, !alias.scope !46, !noalias !47, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.p = getelementptr i8, ptr %i.g, i64 -4
  %i.q = load i8, ptr %i.p, align 4, !range !10, !alias.scope !47, !noalias !46, !noundef !7
  %i.r = trunc nuw i8 %i.q to i1                  ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.r, label %.split.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.g, label %bb.h

.split.i:                                         ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.g, i64 -3
  %i.t = load i8, ptr %i.o, align 1, !alias.scope !46, !noalias !47, !noundef !7
  %i.u = load i8, ptr %i.s, align 1, !alias.scope !47, !noalias !46, !noundef !7
  %.not.i = icmp eq i8 %i.t, %i.u
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split.i, %bb.f, %bb.e
  store i8 0, ptr %i.l, align 4, !alias.scope !46, !noalias !47
  br label %bb.h

_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit: ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.0.022, 1          ; 2 uses
  %.not = icmp eq i64 %i.v, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.h:                                             ; preds = %bb.g, %.split.i, %bb.f
  %.sroa.5.023 = add nuw i64 %.sroa.0.022, 1      ; 2 uses
  %i.w = icmp ult i64 %.sroa.5.023, %i.b
  br i1 %i.w, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.h
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %bb.h ], [ %.sroa.11.1, %bb.m ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.h, %bb.m
  %.sroa.5.025 = phi i64 [ %.sroa.5.0, %bb.m ], [ %.sroa.5.023, %bb.h ] ; 2 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1, %bb.m ], [ %.sroa.0.022, %bb.h ] ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025 ; 4 uses
  %i.y = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.024 ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.aa = load i32, ptr %i.x, align 4, !alias.scope !48, !noalias !49, !noundef !7
  %i.ab = load i32, ptr %i.z, align 4, !alias.scope !49, !noalias !48, !noundef !7
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit12

bb.i:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !range !10, !alias.scope !48, !noalias !49, !noundef !7
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.ah = getelementptr i8, ptr %i.y, i64 -4
  %i.ai = load i8, ptr %i.ah, align 4, !range !10, !alias.scope !49, !noalias !48, !noundef !7
  %i.aj = trunc nuw i8 %i.ai to i1                ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %.split.i10, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.l, label %bb.m

.split.i10:                                       ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.y, i64 -3
  %i.al = load i8, ptr %i.ag, align 1, !alias.scope !48, !noalias !49, !noundef !7
  %i.am = load i8, ptr %i.ak, align 1, !alias.scope !49, !noalias !48, !noundef !7
  %.not.i11 = icmp eq i8 %i.al, %i.am
  br i1 %.not.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split.i10, %bb.k, %bb.j
  store i8 0, ptr %i.ad, align 4, !alias.scope !48, !noalias !49
  br label %bb.m

.thread:                                          ; preds = %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit, %bb.a, %._crit_edge
  ret void

_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit12: ; preds = %.lr.ph
  %i.an = load i64, ptr %i.x, align 4
  store i64 %i.an, ptr %i.y, align 4
  %i.ao = add i64 %.sroa.11.024, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %.split.i10, %bb.l, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit12
  %.sroa.11.1 = phi i64 [ %i.ao, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core5query8simplifys_0B5_.exit12 ], [ %.sroa.11.024, %bb.l ], [ %.sroa.11.024, %.split.i10 ], [ %.sroa.11.024, %bb.k ] ; 2 uses
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
  %.sroa.5.024 = add nuw i64 %.sroa.0.023, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.024, %i.b
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
  %i.r = add i64 %.sroa.0.023, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.r, %bb.d ], [ %.sroa.0.023, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.023, 2
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
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.y, %bb.f ], [ %.sroa.11.025, %.lr.ph ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.026
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %.val.1 = load i32, ptr %i.aa, align 4, !noundef !7
  %.val10.1 = load i32, ptr %i.ac, align 4, !noundef !7
  %i.ad = icmp eq i32 %.val.1, %.val10.1
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  %i.ae = load i64, ptr %i.aa, align 4
  store i64 %i.ae, ptr %i.ab, align 4
  %i.af = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.af, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.026, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRmQIBw_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEEBR_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtBZ_6hybridNtB1Z_11HybridIndex24execute_query_with_masks0Es1_0EBZ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !62, !noundef !7 ; 9 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit, label %.preheader25.i

.preheader25.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !62, !nonnull !7, !noundef !7 ; 11 uses
  %i.g = load i8, ptr %1, align 1, !noalias !62, !noundef !7 ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.h = icmp samesign ult i64 %i.b, 4
  br i1 %i.h, label %.epil.preheader, label %.preheader25.i.new

.preheader25.i.new:                               ; preds = %.preheader25.i
  %unroll_iter = and i64 %i.b, 1152921504606846972
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader25.i.new
  %.sroa.0.0.i = phi i64 [ 0, %.preheader25.i.new ], [ %.sroa.7.028.i.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader25.i.new ], [ %niter.next.3, %bb.g ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 5
  %.val11.i = load i8, ptr %i.j, align 1, !noalias !62, !noundef !7
  %i.k = and i8 %.val11.i, %i.g
  %.not.i = icmp eq i8 %i.k, 0
  %.sroa.7.028.i = or disjoint i64 %.sroa.0.0.i, 1 ; 3 uses
  br i1 %.not.i, label %.preheader.i, label %bb.d, !prof !8

.preheader.i:                                     ; preds = %bb.k, %bb.b, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.lcssa = phi i64 [ %.sroa.7.028.i.2, %bb.f ], [ %.sroa.0.0.i, %bb.b ], [ %.sroa.7.028.i, %bb.d ], [ %.sroa.7.028.i.1, %bb.e ], [ %.sroa.0.0.i.epil, %bb.k ] ; 5 uses
  %.sroa.7.028.i.lcssa = phi i64 [ %.sroa.7.028.i.3, %bb.f ], [ %.sroa.7.028.i, %bb.b ], [ %.sroa.7.028.i.1, %bb.d ], [ %.sroa.7.028.i.2, %bb.e ], [ %.sroa.7.028.i.epil, %bb.k ] ; 6 uses
  %i.l = icmp samesign ult i64 %.sroa.7.028.i.lcssa, %i.b
  br i1 %i.l, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.m = sub nuw i64 %i.b, %.sroa.7.028.i.lcssa
  %.neg = add i64 %.sroa.7.028.i.lcssa, 1
  %xtraiter12 = and i64 %i.m, 1
  %lcmp.mod13.not = icmp eq i64 %xtraiter12, 0
  br i1 %lcmp.mod13.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.028.i.lcssa ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 5
  %.val9.i.prol = load i8, ptr %i.o, align 1, !noalias !62, !noundef !7
  %i.p = load i8, ptr %1, align 1, !noalias !62, !noundef !7
  %i.q = and i8 %i.p, %.val9.i.prol
  %.not24.i.prol = icmp eq i8 %i.q, 0
  br i1 %.not24.i.prol, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i.lcssa
  %i.s = load i64, ptr %i.n, align 4, !noalias !62
  store i64 %i.s, ptr %i.r, align 4, !noalias !62
  %i.t = add i64 %.sroa.0.0.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph.i.prol
  %.sroa.13.1.i.prol = phi i64 [ %i.t, %bb.c ], [ %.sroa.0.0.i.lcssa, %.lr.ph.i.prol ] ; 2 uses
  %.sroa.7.0.i.prol = add nuw nsw i64 %.sroa.7.028.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.13.1.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.7.030.i.unr = phi i64 [ %.sroa.7.028.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.7.0.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.13.029.i.unr = phi i64 [ %.sroa.0.0.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.u = icmp eq i64 %i.b, %.neg
  br i1 %i.u, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.028.i
  %i.w = getelementptr i8, ptr %i.v, i64 5
  %.val11.i.1 = load i8, ptr %i.w, align 1, !noalias !62, !noundef !7
  %i.x = and i8 %.val11.i.1, %i.g
  %.not.i.1 = icmp eq i8 %i.x, 0
  %.sroa.7.028.i.1 = or disjoint i64 %.sroa.0.0.i, 2 ; 3 uses
  br i1 %.not.i.1, label %.preheader.i, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.028.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 5
  %.val11.i.2 = load i8, ptr %i.z, align 1, !noalias !62, !noundef !7
  %i.aa = and i8 %.val11.i.2, %i.g
  %.not.i.2 = icmp eq i8 %i.aa, 0
  %.sroa.7.028.i.2 = or disjoint i64 %.sroa.0.0.i, 3 ; 3 uses
  br i1 %.not.i.2, label %.preheader.i, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.028.i.2
  %i.ac = getelementptr i8, ptr %i.ab, i64 5
  %.val11.i.3 = load i8, ptr %i.ac, align 1, !noalias !62, !noundef !7
  %i.ad = and i8 %.val11.i.3, %i.g
  %.not.i.3 = icmp eq i8 %i.ad, 0
  %.sroa.7.028.i.3 = add nuw nsw i64 %.sroa.0.0.i, 4 ; 3 uses
  br i1 %.not.i.3, label %.preheader.i, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit.loopexit.unr-lcssa, label %bb.b

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader.i ], [ %.sroa.13.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.13.1.i.1, %bb.j ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !62
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.7.030.i = phi i64 [ %.sroa.7.0.i.1, %bb.j ], [ %.sroa.7.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.13.029.i = phi i64 [ %.sroa.13.1.i.1, %bb.j ], [ %.sroa.13.029.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.030.i ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 5
  %.val9.i = load i8, ptr %i.af, align 1, !noalias !62, !noundef !7
  %i.ag = load i8, ptr %1, align 1, !noalias !62, !noundef !7
  %i.ah = and i8 %i.ag, %.val9.i
  %.not24.i = icmp eq i8 %i.ah, 0
  br i1 %.not24.i, label %.lr.ph.i.1, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.029.i
  %i.aj = load i64, ptr %i.ae, align 4, !noalias !62
  store i64 %i.aj, ptr %i.ai, align 4, !noalias !62
  %i.ak = add i64 %.sroa.13.029.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.i
  %.sroa.13.1.i = phi i64 [ %i.ak, %bb.h ], [ %.sroa.13.029.i, %.lr.ph.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.030.i ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 13
  %.val9.i.1 = load i8, ptr %i.am, align 1, !noalias !62, !noundef !7
  %i.an = load i8, ptr %1, align 1, !noalias !62, !noundef !7
  %i.ao = and i8 %i.an, %.val9.i.1
  %.not24.i.1 = icmp eq i8 %i.ao, 0
  br i1 %.not24.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.1.i
  %i.ar = load i64, ptr %i.ap, align 4, !noalias !62
  store i64 %i.ar, ptr %i.aq, align 4, !noalias !62
  %i.as = add i64 %.sroa.13.1.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.1
  %.sroa.13.1.i.1 = phi i64 [ %i.as, %bb.i ], [ %.sroa.13.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.7.0.i.1 = add nuw nsw i64 %.sroa.7.030.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.7.0.i.1, %i.b
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit.loopexit.unr-lcssa, %.preheader25.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader25.i ], [ %.sroa.7.028.i.3, %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.epil.preheader
  %.sroa.0.0.i.epil = phi i64 [ %.sroa.7.028.i.epil, %bb.l ], [ %.sroa.0.0.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil
  %i.au = getelementptr i8, ptr %i.at, i64 5
  %.val11.i.epil = load i8, ptr %i.au, align 1, !noalias !62, !noundef !7
  %i.av = and i8 %.val11.i.epil, %i.g
  %.not.i.epil = icmp eq i8 %i.av, 0
  %.sroa.7.028.i.epil = add nuw nsw i64 %.sroa.0.0.i.epil, 1 ; 2 uses
  br i1 %.not.i.epil, label %.preheader.i, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit, label %bb.k, !llvm.loop !61

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit: ; preds = %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE10retain_mutNCINvB2_6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1j_6hybridNtB2j_11HybridIndex24execute_query_with_masks0Es1_0E0EB1j_.exit.loopexit.unr-lcssa, %bb.l, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtBT_11HybridIndex27lookup_trigram_using_reader0EBV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !69, !noundef !7 ; 6 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB1d_11HybridIndex27lookup_trigram_using_reader0E0EB1f_.exit, label %.preheader25.i

.preheader25.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !69, !nonnull !7, !noundef !7 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader25.i
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.c ], [ 0, %.preheader25.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val11.i = load i32, ptr %i.g, align 4, !noalias !69, !noundef !7
  %i.h = load ptr, ptr %2, align 8, !noalias !69, !nonnull !7, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB2_11HybridIndex19reader_entry_active(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.i, i32 noundef %.val11.i), !noalias !69
  %i.k = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %i.j, label %bb.c, label %.preheader.i, !prof !11

.preheader.i:                                     ; preds = %bb.b
  %i.l = icmp samesign ult i64 %i.k, %i.b
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.k, %i.b
  br i1 %i.m, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB1d_11HybridIndex27lookup_trigram_using_reader0E0EB1f_.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.e ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !69
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB1d_11HybridIndex27lookup_trigram_using_reader0E0EB1f_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %.sroa.7.035.i = phi i64 [ %.sroa.7.0.i, %bb.e ], [ %i.k, %.preheader.i ] ; 3 uses
  %.sroa.13.034.i = phi i64 [ %.sroa.13.1.i, %bb.e ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.7.035.i ; 3 uses
  %.val9.i = load i32, ptr %i.n, align 4, !noalias !69, !noundef !7
  %i.o = load ptr, ptr %2, align 8, !noalias !69, !nonnull !7, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = invoke noundef zeroext i1 @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB2_11HybridIndex19reader_entry_active(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.p, i32 noundef %.val9.i)
          to label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecmE6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtBV_11HybridIndex27lookup_trigram_using_reader0E0BX_.exit.i unwind label %bb.f, !noalias !69

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecmE6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtBV_11HybridIndex27lookup_trigram_using_reader0E0BX_.exit.i: ; preds = %.lr.ph.i
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecmE6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtBV_11HybridIndex27lookup_trigram_using_reader0E0BX_.exit.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.13.034.i
  %i.s = load i32, ptr %i.n, align 4, !noalias !69
  store i32 %i.s, ptr %i.r, align 4, !noalias !69
  %i.t = add i64 %.sroa.13.034.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecmE6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtBV_11HybridIndex27lookup_trigram_using_reader0E0BX_.exit.i
  %.sroa.13.1.i = phi i64 [ %i.t, %bb.d ], [ %.sroa.13.034.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecmE6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtBV_11HybridIndex27lookup_trigram_using_reader0E0BX_.exit.i ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.035.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = sub nuw nsw i64 %i.b, %.sroa.7.035.i     ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.13.034.i
  %i.x = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 4 %i.n, i64 %i.x, i1 false), !noalias !70
  %i.y = add i64 %i.v, %.sroa.13.034.i
  store i64 %i.y, ptr %i.a, align 8, !alias.scope !69, !noalias !71
  resume { ptr, i32 } %i.u

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB1d_11HybridIndex27lookup_trigram_using_reader0E0EB1f_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8dedup_byNCNvMs5_B5_Bv_5dedup0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %.val11 = load i32, ptr %i.g, align 4, !noundef !7
  %.val12 = load i32, ptr %i.h, align 4, !noundef !7
  %i.i = icmp eq i32 %.val11, %.val12
  %.sroa.5.023 = add nuw i64 %.sroa.0.022, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %.val.prol = load i32, ptr %i.m, align 4, !noundef !7 ; 2 uses
  %.val10.prol = load i32, ptr %i.o, align 4, !noundef !7
  %i.p = icmp eq i32 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i32 %.val.prol, ptr %i.n, align 4
  %i.q = add i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %.val = load i32, ptr %i.s, align 4, !noundef !7 ; 2 uses
  %.val10 = load i32, ptr %i.u, align 4, !noundef !7
  %i.v = icmp eq i32 %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i32 %.val, ptr %i.t, align 4
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %.val.1 = load i32, ptr %i.y, align 4, !noundef !7 ; 2 uses
  %.val10.1 = load i32, ptr %i.aa, align 4, !noundef !7
  %i.ab = icmp eq i32 %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i32 %.val.1, ptr %i.z, align 4
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENvYeNtBI_8ToString9to_stringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = ptrtoint ptr %.val5 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !74, !noundef !7 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !range !12, !alias.scope !74, !noundef !7
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.g, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit_crit_edge unwind label %bb.c

._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.h, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit_crit_edge, %bb.a
  %i.m = phi i64 [ %.pre, %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit_crit_edge ], [ %i.i, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.p, align 8
  store ptr %i.h, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.q, align 8
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterReENvYeNtNtB14_6string8ToString9to_stringENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2r_8for_each4callNtB1U_6StringNCINvMsk_B12_INtB12_3VecB3u_E14extend_trustedBN_E0E0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterReENvYeNtNtB1g_6string8ToString9to_stringEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %lpad.thr_comm

bb.c:                                             ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterReENvYeNtNtB1g_6string8ToString9to_stringEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtB1r_5slice4iter4IterBG_EEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !13, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !79, !noundef !7 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !12, !alias.scope !79, !noundef !7
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80
  store ptr %i.j, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB26_8for_each4callB1s_NCINvMsk_NtB1w_3vecINtB3m_3VecB1s_E14extend_trustedBP_E0E0ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4IterNtNtBK_8external14TrigramPostingENCNvB33_18write_sorted_arena0EEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 12                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !83, !noundef !7 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !12, !alias.scope !83, !noundef !7
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE7reserveBI_.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.e, i64 noundef 4, i64 noundef 8)
  %.pre = load i64, ptr %i.f, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE7reserveBI_.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE7reserveBI_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.g, %bb.a ], [ %.pre, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.n, align 8
  store ptr %i.f, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.o, align 8
end_hunk_0
