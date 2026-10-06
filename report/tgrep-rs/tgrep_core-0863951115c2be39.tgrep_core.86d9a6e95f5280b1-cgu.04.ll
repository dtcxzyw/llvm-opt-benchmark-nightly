Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.04?download=true
inline.NumInlined: 652
inline.NumDeleted: 292
begin_hunk_0_@_RINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsbzNSmZPCnTx_10tgrep_core:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.1335, i64 24 ; 2 uses
  %i.aw = getelementptr i8, ptr %.sroa.012.1335, i64 8
  %.sroa.012.1.val = load ptr, ptr %i.aw, align 8, !nonnull !7, !noundef !7
  %i.ax = getelementptr i8, ptr %.sroa.012.1335, i64 16
  %.sroa.012.1.val80 = load i64, ptr %i.ax, align 8, !noundef !7 ; 5 uses
  %.not.i86 = icmp eq i64 %.sroa.26.2333, 0
  br i1 %.not.i86, label %.invoke, label %bb.g, !prof !9

bb.g:                                             ; preds = %.lr.ph336
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.035.2334, i64 1 ; 2 uses
  %i.az = add nsw i64 %.sroa.26.2333, -1          ; 2 uses
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %.sroa.035.2334, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %bb.g
  %.not.i92 = icmp ugt i64 %.sroa.012.1.val80, %i.az
  br i1 %.not.i92, label %.invoke, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %i.ay, i64 noundef %.sroa.012.1.val80, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.1.val, i64 noundef %.sroa.012.1.val80, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.preheader202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader206:                                    ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.012.2.val79
  %i.bb = sub nuw nsw i64 %i.bh, %.sroa.012.2.val79 ; 2 uses
  %i.bc = icmp eq ptr %i.bd, %i.c
  br i1 %i.bc, label %.loopexit, label %.lr.ph331

.lr.ph331:                                        ; preds = %.preheader206.preheader, %.preheader206
  %.sroa.012.2330 = phi ptr [ %i.bd, %.preheader206 ], [ %i.e, %.preheader206.preheader ] ; 3 uses
  %.sroa.035.3329 = phi ptr [ %i.ba, %.preheader206 ], [ %i.ai, %.preheader206.preheader ] ; 2 uses
  %.sroa.26.3328 = phi i64 [ %i.bb, %.preheader206 ], [ %i.aj, %.preheader206.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.2330, i64 24 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.012.2330, i64 8
  %.sroa.012.2.val = load ptr, ptr %i.be, align 8, !nonnull !7, !noundef !7
  %i.bf = getelementptr i8, ptr %.sroa.012.2330, i64 16
  %.sroa.012.2.val79 = load i64, ptr %i.bf, align 8, !noundef !7 ; 5 uses
  %.not.i98 = icmp ult i64 %.sroa.26.3328, 2
  br i1 %.not.i98, label %.invoke, label %bb.j, !prof !9

bb.j:                                             ; preds = %.lr.ph331
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.035.3329, i64 2 ; 2 uses
  %i.bh = add nsw i64 %.sroa.26.3328, -2          ; 2 uses
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %.sroa.035.3329, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.k:                                             ; preds = %bb.j
  %.not.i104 = icmp ugt i64 %.sroa.012.2.val79, %i.bh
  br i1 %.not.i104, label %.invoke, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.012.2.val79, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.2.val, i64 noundef %.sroa.012.2.val79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.preheader206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader211:                                    ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.012.3.val78
  %i.bj = sub nuw nsw i64 %i.bp, %.sroa.012.3.val78 ; 2 uses
  %i.bk = icmp eq ptr %i.bl, %i.c
  br i1 %i.bk, label %.loopexit, label %.lr.ph326

.lr.ph326:                                        ; preds = %.preheader211.preheader, %.preheader211
  %.sroa.012.3325 = phi ptr [ %i.bl, %.preheader211 ], [ %i.e, %.preheader211.preheader ] ; 3 uses
  %.sroa.035.4324 = phi ptr [ %i.bi, %.preheader211 ], [ %i.ai, %.preheader211.preheader ] ; 2 uses
  %.sroa.26.4323 = phi i64 [ %i.bj, %.preheader211 ], [ %i.aj, %.preheader211.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.012.3325, i64 24 ; 2 uses
  %i.bm = getelementptr i8, ptr %.sroa.012.3325, i64 8
  %.sroa.012.3.val = load ptr, ptr %i.bm, align 8, !nonnull !7, !noundef !7
  %i.bn = getelementptr i8, ptr %.sroa.012.3325, i64 16
  %.sroa.012.3.val78 = load i64, ptr %i.bn, align 8, !noundef !7 ; 5 uses
  %.not.i110 = icmp ult i64 %.sroa.26.4323, 3
  br i1 %.not.i110, label %.invoke, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph326
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.035.4324, i64 3 ; 2 uses
  %i.bp = add nsw i64 %.sroa.26.4323, -3          ; 2 uses
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %.sroa.035.4324, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.n:                                             ; preds = %bb.m
  %.not.i116 = icmp ugt i64 %.sroa.012.3.val78, %i.bp
  br i1 %.not.i116, label %.invoke, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %i.bo, i64 noundef %.sroa.012.3.val78, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.3.val, i64 noundef %.sroa.012.3.val78, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.preheader211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader215:                                    ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.012.4.val77
  %i.br = sub nuw nsw i64 %i.bx, %.sroa.012.4.val77 ; 2 uses
  %i.bs = icmp eq ptr %i.bt, %i.c
  br i1 %i.bs, label %.loopexit, label %.lr.ph321

.lr.ph321:                                        ; preds = %.preheader215.preheader, %.preheader215
  %.sroa.012.4320 = phi ptr [ %i.bt, %.preheader215 ], [ %i.e, %.preheader215.preheader ] ; 3 uses
  %.sroa.035.5319 = phi ptr [ %i.bq, %.preheader215 ], [ %i.ai, %.preheader215.preheader ] ; 2 uses
  %.sroa.26.5318 = phi i64 [ %i.br, %.preheader215 ], [ %i.aj, %.preheader215.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.4320, i64 24 ; 2 uses
  %i.bu = getelementptr i8, ptr %.sroa.012.4320, i64 8
  %.sroa.012.4.val = load ptr, ptr %i.bu, align 8, !nonnull !7, !noundef !7
  %i.bv = getelementptr i8, ptr %.sroa.012.4320, i64 16
  %.sroa.012.4.val77 = load i64, ptr %i.bv, align 8, !noundef !7 ; 5 uses
  %.not.i122 = icmp ult i64 %.sroa.26.5318, 4
  br i1 %.not.i122, label %.invoke, label %bb.p, !prof !9

bb.p:                                             ; preds = %.lr.ph321
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.035.5319, i64 4 ; 2 uses
  %i.bx = add nsw i64 %.sroa.26.5318, -4          ; 2 uses
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %.sroa.035.5319, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.q:                                             ; preds = %bb.p
  %.not.i128 = icmp ugt i64 %.sroa.012.4.val77, %i.bx
  br i1 %.not.i128, label %.invoke, label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %i.bw, i64 noundef %.sroa.012.4.val77, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.4.val, i64 noundef %.sroa.012.4.val77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.preheader215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader:                                       ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.012.5.val76
  %i.bz = sub nuw nsw i64 %i.cf, %.sroa.012.5.val76 ; 2 uses
  %i.ca = icmp eq ptr %i.cb, %i.c
  br i1 %i.ca, label %.loopexit, label %.lr.ph346

.lr.ph346:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.012.5345 = phi ptr [ %i.cb, %.preheader ], [ %i.e, %.preheader.preheader ] ; 3 uses
  %.sroa.035.6344 = phi ptr [ %i.by, %.preheader ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %.sroa.26.6343 = phi i64 [ %i.bz, %.preheader ], [ %i.aj, %.preheader.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.5345, i64 24 ; 2 uses
  %i.cc = getelementptr i8, ptr %.sroa.012.5345, i64 8
  %.sroa.012.5.val = load ptr, ptr %i.cc, align 8, !nonnull !7, !noundef !7
  %i.cd = getelementptr i8, ptr %.sroa.012.5345, i64 16
  %.sroa.012.5.val76 = load i64, ptr %i.cd, align 8, !noundef !7 ; 5 uses
  %.not.i134 = icmp ugt i64 %4, %.sroa.26.6343
  br i1 %.not.i134, label %.invoke, label %bb.s, !prof !9

bb.s:                                             ; preds = %.lr.ph346
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.035.6344, i64 %4 ; 2 uses
  %i.cf = sub nuw nsw i64 %.sroa.26.6343, %4      ; 2 uses
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %.sroa.035.6344, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %bb.t unwind label %.loopexit196

bb.t:                                             ; preds = %bb.s
  %.not.i140 = icmp ugt i64 %.sroa.012.5.val76, %i.cf
  br i1 %.not.i140, label %.invoke, label %bb.u, !prof !9

.invoke:                                          ; preds = %bb.q, %.lr.ph321, %bb.n, %.lr.ph326, %bb.k, %.lr.ph331, %bb.h, %.lr.ph336, %bb.e, %bb.t, %.lr.ph346
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @49, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %i.ce, i64 noundef %.sroa.012.5.val76, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.5.val, i64 noundef %.sroa.012.5.val76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.preheader unwind label %.loopexit196

bb.v:                                             ; preds = %bb.y, %.loopexit
  ret void

bb.w:                                             ; preds = %.loopexit.split-lp
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.x:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

bb.y:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ci, align 8
  br label %bb.v
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SBT_20sort_unstable_by_keymNCNCNvMNtBX_6hybridNtB2p_11HybridIndex13full_snapshots0_00E0EBX_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load i32, ptr %i.b, align 4, !noundef !7 ; 3 uses
  %.val6 = load i32, ptr %0, align 4, !noundef !7
  %i.c = icmp ult i32 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i32 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %3 = add nsw i64 %.sroa.01.0.i13, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val3 = load i32, ptr %i.d, align 4, !noundef !7 ; 2 uses
  %i.e = icmp ult i32 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i32 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %5 = add nsw i64 %.sroa.01.1.i16, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i32, ptr %i.g, align 4, !noundef !7 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit.thread, label %.lr.ph17

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNCNvMNtB1b_6hybridNtB2E_11HybridIndex13full_snapshots0_00E0EB1b_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNCNvMNtB16_6hybridNtB2z_11HybridIndex13full_snapshots0_00E0EB16_.exit.thread
  %i.q = lshr i64 %1, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.w, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 1)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SBT_20sort_unstable_by_keymNCNvNtBX_8external14merge_segmentss0_0E0EBX_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load i32, ptr %i.b, align 4, !noundef !7 ; 3 uses
  %.val6 = load i32, ptr %0, align 4, !noundef !7
  %i.c = icmp ult i32 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i32 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %3 = add nsw i64 %.sroa.01.0.i13, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val3 = load i32, ptr %i.d, align 4, !noundef !7 ; 2 uses
  %i.e = icmp ult i32 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i32 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %5 = add nsw i64 %.sroa.01.1.i16, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i32, ptr %i.g, align 4, !noundef !7 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit.thread, label %.lr.ph17

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNvNtB1b_8external14merge_segmentss0_0E0EB1b_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB6_SB12_20sort_unstable_by_keymNCNvNtB16_8external14merge_segmentss0_0E0EB16_.exit.thread
  %i.q = lshr i64 %1, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.w, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 1)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SBT_16sort_unstable_byNCNvMs0_BV_NtBV_14ExternalSorter10sort_arena0E0EBX_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val9 = load i32, ptr %i.b, align 4            ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 20
  %.val10 = load i32, ptr %i.c, align 4, !noundef !7 ; 4 uses
  %.val11 = load i32, ptr %0, align 4
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load i32, ptr %i.d, align 4, !noundef !7 ; 2 uses
  %i.e = icmp eq i32 %.val10, %.val12
  %i.f = icmp ult i32 %.val9, %.val11
  %i.g = icmp ult i32 %.val10, %.val12
  %i.h = select i1 %i.e, i1 %i.f, i1 %i.g         ; 2 uses
  %.not27 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %bb.b
  br i1 %.not27, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not27, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit, label %.lr.ph23

.lr.ph:                                           ; preds = %.preheader17, %bb.c
  %.val8 = phi i32 [ %.val6, %bb.c ], [ %.val10, %.preheader17 ] ; 2 uses
  %.val7 = phi i32 [ %.val5, %bb.c ], [ %.val9, %.preheader17 ]
  %.sroa.01.0.i19 = phi i64 [ %i.o, %bb.c ], [ 2, %.preheader17 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 2 uses
  %3 = add nsw i64 %.sroa.01.0.i19, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val5 = load i32, ptr %i.i, align 4            ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val6 = load i32, ptr %i.j, align 4, !noundef !7 ; 3 uses
  %i.k = icmp eq i32 %.val6, %.val8
  %i.l = icmp ult i32 %.val5, %.val7
  %i.m = icmp ult i32 %.val6, %.val8
  %i.n = select i1 %i.k, i1 %i.l, i1 %i.m
  br i1 %i.n, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.01.0.i19, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit.thread, label %.lr.ph

.lr.ph23:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i32 [ %.val2, %bb.d ], [ %.val10, %.preheader ] ; 2 uses
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val9, %.preheader ]
  %.sroa.01.1.i22 = phi i64 [ %i.v, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.1.i22 ; 2 uses
  %5 = add nsw i64 %.sroa.01.1.i22, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i32, ptr %i.p, align 4             ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val2 = load i32, ptr %i.q, align 4, !noundef !7 ; 3 uses
  %i.r = icmp eq i32 %.val2, %.val4
  %i.s = icmp ult i32 %.val, %.val3
  %i.t = icmp ult i32 %.val2, %.val4
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t
  br i1 %i.u, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit

bb.d:                                             ; preds = %.lr.ph23
  %i.v = add nuw nsw i64 %.sroa.01.1.i22, 1       ; 2 uses
  %exitcond30.not = icmp eq i64 %i.v, %1
  br i1 %exitcond30.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit.thread, label %.lr.ph23

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit: ; preds = %.lr.ph, %.lr.ph23, %.preheader17, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader17 ], [ 2, %.preheader ], [ %.sroa.01.1.i22, %.lr.ph23 ], [ %.sroa.01.0.i19, %.lr.ph ] ; 2 uses
  %i.w = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.x, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit
  br i1 %i.h, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit
  %i.y = or i64 %1, 1
  %i.z = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = xor i32 %i.ab, 126
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvMs0_B19_NtB19_14ExternalSorter10sort_arena0E0EB1b_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, i32 noundef %i.ac, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_14ExternalSorter10sort_arena0E0EB16_.exit.thread
  %i.ad = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.al, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.af = xor i64 %.sroa.0.017.i.i, -1
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.0.017.i.i ; 2 uses
  %i.ah = getelementptr [12 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, i64 noundef 1)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 4, !alias.scope !229, !noalias !230
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ak, align 4, !alias.scope !231, !noalias !232
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.aj, align 4, !alias.scope !229, !noalias !230
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.ak, align 4, !alias.scope !231, !noalias !232
  %i.al = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, %i.ad
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SBT_16sort_unstable_byNCNvNtBX_7builder28write_index_v2_from_postings0E0EBX_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val9 = load i32, ptr %i.b, align 4            ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 20
  %.val10 = load i32, ptr %i.c, align 4, !noundef !7 ; 4 uses
  %.val11 = load i32, ptr %0, align 4
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load i32, ptr %i.d, align 4, !noundef !7 ; 2 uses
  %i.e = icmp eq i32 %.val10, %.val12
  %i.f = icmp ult i32 %.val9, %.val11
  %i.g = icmp ult i32 %.val10, %.val12
  %i.h = select i1 %i.e, i1 %i.f, i1 %i.g         ; 2 uses
  %.not27 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %bb.b
  br i1 %.not27, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not27, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit, label %.lr.ph23

.lr.ph:                                           ; preds = %.preheader17, %bb.c
  %.val8 = phi i32 [ %.val6, %bb.c ], [ %.val10, %.preheader17 ] ; 2 uses
  %.val7 = phi i32 [ %.val5, %bb.c ], [ %.val9, %.preheader17 ]
  %.sroa.01.0.i19 = phi i64 [ %i.o, %bb.c ], [ 2, %.preheader17 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 2 uses
  %3 = add nsw i64 %.sroa.01.0.i19, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val5 = load i32, ptr %i.i, align 4            ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val6 = load i32, ptr %i.j, align 4, !noundef !7 ; 3 uses
  %i.k = icmp eq i32 %.val6, %.val8
  %i.l = icmp ult i32 %.val5, %.val7
  %i.m = icmp ult i32 %.val6, %.val8
  %i.n = select i1 %i.k, i1 %i.l, i1 %i.m
  br i1 %i.n, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.01.0.i19, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit.thread, label %.lr.ph

.lr.ph23:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i32 [ %.val2, %bb.d ], [ %.val10, %.preheader ] ; 2 uses
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val9, %.preheader ]
  %.sroa.01.1.i22 = phi i64 [ %i.v, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.1.i22 ; 2 uses
  %5 = add nsw i64 %.sroa.01.1.i22, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i32, ptr %i.p, align 4             ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val2 = load i32, ptr %i.q, align 4, !noundef !7 ; 3 uses
  %i.r = icmp eq i32 %.val2, %.val4
  %i.s = icmp ult i32 %.val, %.val3
  %i.t = icmp ult i32 %.val2, %.val4
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t
  br i1 %i.u, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit

bb.d:                                             ; preds = %.lr.ph23
  %i.v = add nuw nsw i64 %.sroa.01.1.i22, 1       ; 2 uses
  %exitcond30.not = icmp eq i64 %i.v, %1
  br i1 %exitcond30.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit.thread, label %.lr.ph23

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit: ; preds = %.lr.ph, %.lr.ph23, %.preheader17, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader17 ], [ 2, %.preheader ], [ %.sroa.01.1.i22, %.lr.ph23 ], [ %.sroa.01.0.i19, %.lr.ph ] ; 2 uses
  %i.w = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.x, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit
  br i1 %i.h, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit
  %i.y = or i64 %1, 1
  %i.z = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = xor i32 %i.ab, 126
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvNtB1b_7builder28write_index_v2_from_postings0E0EB1b_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, i32 noundef %i.ac, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SB12_16sort_unstable_byNCNvNtB16_7builder28write_index_v2_from_postings0E0EB16_.exit.thread
  %i.ad = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.al, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.af = xor i64 %.sroa.0.017.i.i, -1
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.0.017.i.i ; 2 uses
  %i.ah = getelementptr [12 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, i64 noundef 1)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 4, !alias.scope !245, !noalias !246
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ak, align 4, !alias.scope !247, !noalias !248
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.aj, align 4, !alias.scope !245, !noalias !246
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.ak, align 4, !alias.scope !247, !noalias !248
  %i.al = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, %i.ad
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting7reverseBy_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBT_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val10 = load i64, ptr %i.c, align 8, !noundef !7 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val11 = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val12 = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val10, i64 range(i64 0, -9223372036854775808) %.val12)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.val9, ptr nonnull readonly %.val11, i64 %spec.store.select.i.i.i.i.i), !alias.scope !258 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub nsw i64 %.val10, %.val12
  %spec.select.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g
  %i.j = icmp slt i64 %spec.select.i.i.i.i.i, 0   ; 2 uses
  %.not31 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader21

.preheader21:                                     ; preds = %bb.b
  br i1 %.not31, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not31, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph27

.lr.ph:                                           ; preds = %.preheader21, %bb.c
  %.val8 = phi i64 [ %.val6, %bb.c ], [ %.val10, %.preheader21 ] ; 2 uses
  %.val7 = phi ptr [ %.val5, %bb.c ], [ %.val9, %.preheader21 ]
  %.sroa.01.0.i23 = phi i64 [ %i.s, %bb.c ], [ 2, %.preheader21 ] ; 4 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i23 ; 2 uses
  %3 = add nsw i64 %.sroa.01.0.i23, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val5 = load ptr, ptr %i.l, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %.val6 = load i64, ptr %i.m, align 8, !noundef !7 ; 3 uses
  %spec.store.select.i.i.i.i.i13 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val6, i64 range(i64 0, -9223372036854775808) %.val8)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val5, ptr nonnull readonly %.val7, i64 %spec.store.select.i.i.i.i.i13), !alias.scope !259 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub nsw i64 %.val6, %.val8
  %spec.select.i.i.i.i.i14 = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i.i.i.i14, 0
  br i1 %i.r, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.sroa.01.0.i23, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread, label %.lr.ph

.lr.ph27:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i64 [ %.val2, %bb.d ], [ %.val10, %.preheader ] ; 2 uses
  %.val3 = phi ptr [ %.val, %bb.d ], [ %.val9, %.preheader ]
  %.sroa.01.1.i26 = phi i64 [ %i.ab, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.1.i26 ; 2 uses
  %5 = add nsw i64 %.sroa.01.1.i26, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val = load ptr, ptr %i.u, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val2 = load i64, ptr %i.v, align 8, !noundef !7 ; 3 uses
  %spec.store.select.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val2, i64 range(i64 0, -9223372036854775808) %.val4)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val3, i64 %spec.store.select.i.i.i.i.i15), !alias.scope !260 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub nsw i64 %.val2, %.val4
  %spec.select.i.i.i.i.i16 = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = icmp slt i64 %spec.select.i.i.i.i.i16, 0
  br i1 %i.aa, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %.lr.ph27
  %i.ab = add nuw nsw i64 %.sroa.01.1.i26, 1      ; 2 uses
  %exitcond34.not = icmp eq i64 %i.ab, %1
  br i1 %exitcond34.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread, label %.lr.ph27

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.lr.ph, %.lr.ph27, %.preheader21, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader21 ], [ 2, %.preheader ], [ %.sroa.01.1.i26, %.lr.ph27 ], [ %.sroa.01.0.i23, %.lr.ph ] ; 2 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ad, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCsbzNSmZPCnTx_10tgrep_core.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  %i.ae = or i64 %1, 1
  %i.af = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 126
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB17_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i32 noundef %i.ai, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread
  %i.aj = lshr i64 %1, 1
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ap, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i, -1
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.an = getelementptr [24 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1s_11IndexReader4opens0_0E0EB1u_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %2, align 8, !nonnull !7, !align !12, !noundef !7
  %.val8 = load i64, ptr %i.b, align 8, !noundef !7 ; 5 uses
  %.val9 = load i64, ptr %0, align 8, !noundef !7 ; 3 uses
  %.val.i = load ptr, ptr %.val7, align 8, !nonnull !7, !align !12, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 12 uses
  %i.g = icmp ult i64 %.val8, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i64 %.val9, %i.f
  br i1 %i.h, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val8, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val9, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.val8 ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.val9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !7 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !7 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.r)
  %i.s = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.p, i64 %spec.store.select.i.i) ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %i.n, %i.r
  %spec.select.i.i = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = icmp slt i64 %spec.select.i.i, 0         ; 2 uses
  %.not38 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit
  br i1 %.not38, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit
  br i1 %.not38, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit, label %.lr.ph35

.lr.ph:                                           ; preds = %.preheader22, %bb.i
  %i.x = phi i64 [ %i.ag, %bb.i ], [ %i.n, %.preheader22 ] ; 2 uses
  %i.y = phi ptr [ %i.ae, %bb.i ], [ %i.l, %.preheader22 ]
  %.val6 = phi i64 [ %.val5, %bb.i ], [ %.val8, %.preheader22 ] ; 2 uses
  %.sroa.01.0.i32 = phi i64 [ %i.am, %bb.i ], [ 2, %.preheader22 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i32
  %3 = add nsw i64 %.sroa.01.0.i32, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val5 = load i64, ptr %i.z, align 8, !noundef !7 ; 4 uses
  %i.aa = icmp ult i64 %.val5, %i.f
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ab = icmp ult i64 %.val6, %i.f
  br i1 %i.ab, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit13, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val5, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val6, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit13: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.val5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !7 ; 3 uses
  %spec.store.select.i.i11 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.x)
  %i.ah = tail call i32 @memcmp(ptr nonnull %i.ae, ptr nonnull %i.y, i64 %spec.store.select.i.i11) ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %i.ag, %i.x
  %spec.select.i.i12 = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp slt i64 %spec.select.i.i12, 0
  br i1 %i.al, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit13
  %i.am = add nuw nsw i64 %.sroa.01.0.i32, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit.thread, label %.lr.ph

.lr.ph35:                                         ; preds = %.preheader, %bb.m
  %i.an = phi i64 [ %i.aw, %bb.m ], [ %i.n, %.preheader ] ; 2 uses
  %i.ao = phi ptr [ %i.au, %bb.m ], [ %i.l, %.preheader ]
  %.val3 = phi i64 [ %.val2, %bb.m ], [ %.val8, %.preheader ] ; 2 uses
  %.sroa.01.1.i34 = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i34
  %5 = add nsw i64 %.sroa.01.1.i34, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val2 = load i64, ptr %i.ap, align 8, !noundef !7 ; 4 uses
  %i.aq = icmp ult i64 %.val2, %i.f
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph35
  %i.ar = icmp ult i64 %.val3, %i.f
  br i1 %i.ar, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit17, label %bb.l

bb.k:                                             ; preds = %.lr.ph35
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val3, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit17: ; preds = %bb.j
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.val2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !7 ; 3 uses
  %spec.store.select.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.an)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ao, i64 %spec.store.select.i.i15) ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.an
  %spec.select.i.i16 = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i16, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit

bb.m:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit17
  %i.bc = add nuw nsw i64 %.sroa.01.1.i34, 1      ; 2 uses
  %exitcond49.not = icmp eq i64 %i.bc, %1
  br i1 %exitcond49.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit.thread, label %.lr.ph35

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit: ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit13, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit17, %.preheader22, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader22 ], [ 2, %.preheader ], [ %.sroa.01.1.i34, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit17 ], [ %.sroa.01.0.i32, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit13 ] ; 2 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.be, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit.thread, label %bb.n

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit.thread: ; preds = %bb.i, %bb.m, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit
  br i1 %i.w, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCsbzNSmZPCnTx_10tgrep_core.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit
  %i.bf = or i64 %1, 1
  %i.bg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true)
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = xor i32 %i.bi, 126
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1G_11IndexReader4opens0_0E0EB1I_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.bj, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit.thread, %bb.n
  ret void

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMB6_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1B_11IndexReader4opens0_0E0EB1D_.exit.thread
  %i.bk = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i
  %n.vec = and i64 %i.bk, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !270, !noalias !269
  %wide.load97 = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !270, !noalias !269
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load98 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !271, !noalias !268
  %wide.load99 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !271, !noalias !268
  %reverse = shufflevector <2 x i64> %wide.load98, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse100 = shufflevector <2 x i64> %wide.load99, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !270, !noalias !269
  store <2 x i64> %reverse100, ptr %i.bp, align 8, !alias.scope !270, !noalias !269
  %reverse101 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse102 = shufflevector <2 x i64> %wide.load97, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse101, ptr %i.bq, align 8, !alias.scope !271, !noalias !268
  store <2 x i64> %reverse102, ptr %i.br, align 8, !alias.scope !271, !noalias !268
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCsbzNSmZPCnTx_10tgrep_core.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.by, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load i64, ptr %i.bu, align 8, !alias.scope !270, !noalias !269, !noundef !7
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !271, !noalias !268
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !270, !noalias !269
  store i64 %i.bw, ptr %i.bv, align 8, !alias.scope !271, !noalias !268
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCsbzNSmZPCnTx_10tgrep_core.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i, !llvm.loop !267
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm7reverseCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val5 = load i32, ptr %i.b, align 4, !alias.scope !21, !noalias !22, !noundef !7 ; 3 uses
  %.val6 = load i32, ptr %0, align 4, !alias.scope !22, !noalias !21, !noundef !7
  %i.c = icmp ult i32 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i32 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i13
  %3 = add nsw i64 %.sroa.01.0.i13, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val3 = load i32, ptr %i.d, align 4, !alias.scope !21, !noalias !22, !noundef !7 ; 2 uses
  %i.e = icmp ult i32 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i32 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.1.i16
  %5 = add nsw i64 %.sroa.01.1.i16, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i32, ptr %i.g, align 4, !alias.scope !21, !noalias !22, !noundef !7 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread, label %.lr.ph17

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  br i1 %i.c, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm7reverseCsbzNSmZPCnTx_10tgrep_core.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm7reverseCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSm7reverseCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread, %bb.e
  ret void

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 16
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 1152921504606846968      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !alias.scope !281, !noalias !280
  %wide.load39 = load <4 x i32>, ptr %i.v, align 4, !alias.scope !281, !noalias !280
  %i.w = getelementptr i8, ptr %i.u, i64 -12      ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -28      ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !282, !noalias !279
  %wide.load41 = load <4 x i32>, ptr %i.x, align 4, !alias.scope !282, !noalias !279
  %reverse = shufflevector <4 x i32> %wide.load40, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse42 = shufflevector <4 x i32> %wide.load41, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.t, align 4, !alias.scope !281, !noalias !280
  store <4 x i32> %reverse42, ptr %i.v, align 4, !alias.scope !281, !noalias !280
  %reverse43 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse44 = shufflevector <4 x i32> %wide.load39, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse43, ptr %i.w, align 4, !alias.scope !282, !noalias !279
  store <4 x i32> %reverse44, ptr %i.x, align 4, !alias.scope !282, !noalias !279
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !277

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm7reverseCsbzNSmZPCnTx_10tgrep_core.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !alias.scope !281, !noalias !280, !noundef !7
  %i.ad = load i32, ptr %i.ab, align 4, !alias.scope !282, !noalias !279
  store i32 %i.ad, ptr %i.aa, align 4, !alias.scope !281, !noalias !280
  store i32 %i.ac, ptr %i.ab, align 4, !alias.scope !282, !noalias !279
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm7reverseCsbzNSmZPCnTx_10tgrep_core.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i, !llvm.loop !278
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB19_5sliceSB14_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2l_6hybridNtB3a_11HybridIndex13execute_query0Es_0E0EB2l_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3INtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB14_5sliceSBZ_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2f_6hybridNtB34_11HybridIndex13execute_query0Es_0E0EB2f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB19_5sliceSB14_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2l_6hybridNtB3a_11HybridIndex13execute_query0Es_0E0EB2l_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB19_5sliceSB14_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2l_6hybridNtB3a_11HybridIndex13execute_query0Es_0E0EB2l_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB19_5sliceSB14_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2l_6hybridNtB3a_11HybridIndex13execute_query0Es_0E0EB2l_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3INtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB14_5sliceSBZ_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2f_6hybridNtB34_11HybridIndex13execute_query0Es_0E0EB2f_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3INtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB14_5sliceSBZ_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2f_6hybridNtB34_11HybridIndex13execute_query0Es_0E0EB2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 16
  %.sroa.0.0.val13 = load i64, ptr %i.n, align 8, !noundef !7 ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 16
  %.sroa.04.0.val14 = load i64, ptr %i.o, align 8, !noundef !7 ; 3 uses
  %i.p = icmp ult i64 %.sroa.0.0.val13, 2305843009213693952
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i64 %.sroa.04.0.val14, 2305843009213693952
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp samesign ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 16
  %.sroa.08.0.val12 = load i64, ptr %i.s, align 8, !noundef !7 ; 3 uses
  %i.t = icmp ult i64 %.sroa.08.0.val12, 2305843009213693952
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.v = xor i1 %i.r, %i.u
  %i.w = icmp samesign ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.x = xor i1 %i.r, %i.w
  %..i = select i1 %i.x, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.v, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %3, 3                           ; 5 uses
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 3 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.i
  %i.k = mul nuw i64 %i.h, 7                      ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.k
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.l, i64 noundef %i.h, ptr noalias nofree noundef nonnull %4)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.k
  %i.p = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noundef %1, ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.h, ptr noalias nofree noundef nonnull %4)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.k
  %i.s = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noundef %2, ptr noundef %i.q, ptr noundef %i.r, i64 noundef %i.h, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.s, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.p, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.t = getelementptr i8, ptr %.sroa.0.0, i64 8  ; 2 uses
  %.sroa.0.0.val17 = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  %i.u = getelementptr i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %.sroa.0.0.val18 = load i64, ptr %i.u, align 8, !noundef !7
  %i.v = getelementptr i8, ptr %.sroa.04.0, i64 8 ; 2 uses
  %.sroa.04.0.val19 = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %.sroa.04.0.val20 = load i64, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val17, i64 noundef %.sroa.0.0.val18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.val19) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.val19, i64 noundef %.sroa.04.0.val20)
  %i.x = call noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.0.0.val = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  %.sroa.0.0.val14 = load i64, ptr %i.u, align 8, !noundef !7
  %i.y = getelementptr i8, ptr %.sroa.08.0, i64 8 ; 2 uses
  %.sroa.08.0.val15 = load ptr, ptr %i.y, align 8 ; 2 uses
  %i.z = getelementptr i8, ptr %.sroa.08.0, i64 16 ; 2 uses
  %.sroa.08.0.val16 = load i64, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val15) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0.val15, i64 noundef %.sroa.08.0.val16)
  %i.aa = call noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = xor i8 %i.aa, %i.x
end_hunk_0
