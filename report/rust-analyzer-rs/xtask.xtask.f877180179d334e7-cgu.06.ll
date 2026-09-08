Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.06?download=true
inline.NumInlined: 398
inline.NumDeleted: 186
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCsluekWoTk8SK_11proc_macro25IdentNvYBW_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask:bb.a
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = tail call noundef i8 @_RNvXsB_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !158 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.q, -2
  %i.r = icmp sgt i8 %i.q, -1
  %.sroa.0.0.i.i.not59.i = or i1 %.not.i.i.i, %i.r ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %.sroa.0.0.i.i.not59.i, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.sroa.01.0.i23.i = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = tail call noundef i8 @_RNvXsB_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t), !noalias !158 ; 2 uses
  %.not.i.i7.i = icmp ne i8 %i.u, -2
  %i.v = icmp slt i8 %i.u, 0
  %.sroa.0.0.i.i8.i = and i1 %.not.i.i7.i, %i.v
  br i1 %.sroa.0.0.i.i8.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.w = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i26.i = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = tail call noundef i8 @_RNvXsB_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y), !noalias !158 ; 2 uses
  %.not.i.i9.i = icmp ne i8 %i.z, -2
  %i.aa = icmp slt i8 %i.z, 0
  %.sroa.0.0.i.i10.i = and i1 %.not.i.i9.i, %i.aa
  br i1 %.sroa.0.0.i.i10.i, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.ab = add nuw nsw i64 %.sroa.01.1.i26.i, 1    ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.ab, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph27.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i
  %i.ad = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i12.i = icmp eq i64 %i.ad, 0
  %or.cond.i = or i1 %.sroa.0.0.i.i.not59.i, %.not.i.i12.i
  br i1 %or.cond.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0)
  %i.ae = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.p:                                             ; preds = %bb.i
  %..i11.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsluekWoTk8SK_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i11.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  %i.af = shl nuw nsw i64 %..i11.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i445155.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask.exit.i.i.i ]
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.aj = phi i64 [ %i.ad, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i445155.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i445155.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ap, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i.i, -1
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.an = getelementptr [24 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 3)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask.exit.i.i.i unwind label %bb.q, !noalias !158

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !158
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ai, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i ], [ %i.ag, %bb.p ], [ %i.ae, %bb.o ] ; 2 uses
  %i.aq = lshr i64 %.sroa.023.0, 1
  %i.ar = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.as = sub nsw i64 %factor, %i.aq
  %i.at = add nuw i64 %i.ar, %factor
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = mul i64 %i.at, %.sroa.0.0
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false)
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit
  %.sroa.02.136 = phi i64 [ %i.az, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.az = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bd, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.az
  %i.bf = load i64, ptr %i.be, align 8, !noundef !5 ; 3 uses
  %i.bg = lshr i64 %i.bf, 1                       ; 5 uses
  %i.bh = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bi = add nuw i64 %i.bg, %i.bh                ; 5 uses
  %i.bj = sub i64 %.sroa.09.0, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = icmp samesign ugt i64 %i.bi, %3
  %i.bm = trunc i64 %.sroa.023.135 to i1
  %i.bn = or i64 %i.bf, %.sroa.023.135
  %i.bo = trunc i64 %i.bn to i1
  %or.cond3.i = or i1 %i.bl, %i.bo
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = trunc i64 %i.bf to i1
  br i1 %i.bp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bq = shl nuw nsw i64 %i.bi, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.br = or i64 %i.bg, 1
  %i.bs = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %i.bv = xor i32 %i.bu, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsluekWoTk8SK_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.bk, i64 noundef range(i64 0, 384307168202282326) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bg
  %i.bx = or i64 %i.bh, 1
  %i.by = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsluekWoTk8SK_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 384307168202282326) %i.bh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYBX_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.bk, i64 noundef range(i64 0, 384307168202282326) %i.bi, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bg, ptr noalias nofree noundef nonnull %5)
  %i.cc = shl nuw nsw i64 %i.bi, 1
  %i.cd = or disjoint i64 %i.cc, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cd, %bb.x ], [ %i.bq, %bb.t ] ; 2 uses
  %i.ce = icmp ugt i64 %i.az, 1
  br i1 %i.ce, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cf = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cg = lshr i64 %.sroa.018.0, 1
  %i.ch = add nuw i64 %i.cg, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ci = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ci, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cj = or i64 %1, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsluekWoTk8SK_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !172, !noalias !173, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 40
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !172, !noalias !173, !noundef !5 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !172, !noalias !173, !nonnull !5, !noundef !5
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !174, !noalias !175 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !172, !noalias !173, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !172, !noalias !173, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !176, !noalias !175 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !172, !noalias !173, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !172, !noalias !173, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !177, !noalias !175 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph37.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [24 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 3)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i.i unwind label %bb.q, !noalias !173

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !173
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !5 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 384307168202282326) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 384307168202282326) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 384307168202282326) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvMBY_BW_7collect0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7Feature7reverseBA_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 88
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !182, !noalias !183, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 96
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !182, !noalias !183, !noundef !5 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !182, !noalias !183, !nonnull !5, !noundef !5
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !182, !noalias !183, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i), !noalias !184 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i, -1      ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7Feature7reverseBA_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !182, !noalias !183, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !182, !noalias !183, !noundef !5 ; 3 uses
  %spec.store.select.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i18.i), !noalias !184 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !182, !noalias !183, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !182, !noalias !183, !noundef !5 ; 3 uses
  %spec.store.select.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i20.i), !noalias !184 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7Feature7reverseBA_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7Feature7reverseBA_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureEB16_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureEB16_.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureEB16_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureEB16_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [80 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 10)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureEB16_.exit.i.i.i unwind label %bb.q, !noalias !183

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !183
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7Feature7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7Feature7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7Feature7reverseBA_.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !5 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 115292150460684698) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [80 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 115292150460684698) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMBZ_BX_7collect0E0EB13_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 115292150460684698) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvMBY_BW_7collect0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10Diagnostic7reverseBA_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 88
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !189, !noalias !190, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 96
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !189, !noalias !190, !noundef !5 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !189, !noalias !190, !nonnull !5, !noundef !5
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !189, !noalias !190, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i), !noalias !191 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i, -1      ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10Diagnostic7reverseBA_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !189, !noalias !190, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !189, !noalias !190, !noundef !5 ; 3 uses
  %spec.store.select.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i18.i), !noalias !191 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !189, !noalias !190, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !189, !noalias !190, !noundef !5 ; 3 uses
  %spec.store.select.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i20.i), !noalias !191 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10Diagnostic7reverseBA_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10Diagnostic7reverseBA_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticEB16_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticEB16_.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticEB16_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticEB16_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [80 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 10)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticEB16_.exit.i.i.i unwind label %bb.q, !noalias !190

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !190
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10Diagnostic7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10Diagnostic7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10Diagnostic7reverseBA_.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !5 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 115292150460684698) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [80 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 115292150460684698) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMBZ_BX_7collect0E0EB13_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 115292150460684698) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvMBY_BW_7collect0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6Assist7reverseBA_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 88
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !196, !noalias !197, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 96
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !196, !noalias !197, !noundef !5 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !196, !noalias !197, !nonnull !5, !noundef !5
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i), !noalias !198 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i, -1      ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6Assist7reverseBA_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !196, !noalias !197, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !196, !noalias !197, !noundef !5 ; 3 uses
  %spec.store.select.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i18.i), !noalias !198 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !196, !noalias !197, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !196, !noalias !197, !noundef !5 ; 3 uses
  %spec.store.select.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i20.i), !noalias !198 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMB14_B12_7collect0E0EB18_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6Assist7reverseBA_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6Assist7reverseBA_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistEB16_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistEB16_.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistEB16_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistEB16_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [80 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 10)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistEB16_.exit.i.i.i unwind label %bb.q, !noalias !197

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !197
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6Assist7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMB15_B13_7collect0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6Assist7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6Assist7reverseBA_.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !5 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 115292150460684698) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [80 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 115292150460684698) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMBZ_BX_7collect0E0EB13_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 115292150460684698) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMB18_B16_7collect0E0EB1c_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMB17_B15_7collect0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvBY_26generate_descriptor_clippy0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_26generate_descriptor_clippy0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_26generate_descriptor_clippy0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_26generate_descriptor_clippy0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB14_26generate_descriptor_clippy0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLint7reverseBA_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 80
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !203, !noalias !204, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 88
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !203, !noalias !204, !noundef !5 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 32
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !203, !noalias !204, !nonnull !5, !noundef !5
  %i.s = getelementptr i8, ptr %i.n, i64 40
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i), !noalias !205 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i, -1      ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLint7reverseBA_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !203, !noalias !204, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 40
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !203, !noalias !204, !noundef !5 ; 3 uses
  %spec.store.select.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i18.i), !noalias !205 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB14_26generate_descriptor_clippy0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB14_26generate_descriptor_clippy0E0EB18_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 32
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !203, !noalias !204, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 40
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !203, !noalias !204, !noundef !5 ; 3 uses
  %spec.store.select.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i20.i), !noalias !205 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB14_26generate_descriptor_clippy0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB14_26generate_descriptor_clippy0E0EB18_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB14_26generate_descriptor_clippy0E0EB18_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB14_26generate_descriptor_clippy0E0EB18_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLint7reverseBA_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_26generate_descriptor_clippy0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB17_26generate_descriptor_clippy0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_26generate_descriptor_clippy0E0EB19_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLint7reverseBA_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintEB16_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintEB16_.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_26generate_descriptor_clippy0E0EB19_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintEB16_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintEB16_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [48 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintEB16_.exit.i.i.i unwind label %bb.q, !noalias !204

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !204
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLint7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_26generate_descriptor_clippy0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLint7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLint7reverseBA_.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB18_26generate_descriptor_clippy0E0EB1c_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB18_26generate_descriptor_clippy0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB18_26generate_descriptor_clippy0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB18_26generate_descriptor_clippy0E0EB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB18_26generate_descriptor_clippy0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB18_26generate_descriptor_clippy0E0EB1c_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !5 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB18_26generate_descriptor_clippy0E0EB1c_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB17_26generate_descriptor_clippy0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 192153584101141163) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB17_26generate_descriptor_clippy0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 192153584101141163) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvBZ_26generate_descriptor_clippy0E0EB13_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 192153584101141163) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB18_26generate_descriptor_clippy0E0EB1c_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB18_26generate_descriptor_clippy0E0EB1c_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints10ClippyLintNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB17_26generate_descriptor_clippy0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtB26_6string6StringNCNvB10_5lowers0_0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ce, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cc, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers0_0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.av, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers0_0E0EB1b_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers0_0E0EB1b_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers0_0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc7reverseBC_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc11sort_by_keyNtNtB7_6string6StringNCNvBC_5lowers0_0E0BG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n) #18, !noalias !209 ; 2 uses
  %.not27.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.k
  br i1 %.not27.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc7reverseBC_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not27.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %.preheader16.i, %bb.l
  %.sroa.01.0.i18.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader16.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %.sroa.01.0.i18.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -96
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc11sort_by_keyNtNtB7_6string6StringNCNvBC_5lowers0_0E0BG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.s) #18, !noalias !209
  br i1 %i.t, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers0_0E0EB1a_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i18.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers0_0E0EB1a_.exit.i, label %.lr.ph.i

.lr.ph22.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i21.i = phi i64 [ %i.y, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %.sroa.01.1.i21.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -96
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc11sort_by_keyNtNtB7_6string6StringNCNvBC_5lowers0_0E0BG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.w) #18, !noalias !209
  br i1 %i.x, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers0_0E0EB1a_.exit.i

bb.m:                                             ; preds = %.lr.ph22.i
  %i.y = add nuw nsw i64 %.sroa.01.1.i21.i, 1     ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.y, %i.m
  br i1 %exitcond30.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers0_0E0EB1a_.exit.i, label %.lr.ph22.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers0_0E0EB1a_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph22.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i21.i, %.lr.ph22.i ], [ %.sroa.01.0.i18.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers0_0E0EB1a_.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  %or.cond.not.i = and i1 %i.q, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc7reverseBC_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 96076792050570582) %i.m, i64 %.sroa.01.0)
  %i.ab = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers0_0E0EB1b_.exit

bb.p:                                             ; preds = %bb.i
  %..i7.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 96076792050570582) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtB2f_6string6StringNCNvB19_5lowers0_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i7.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.ac = shl nuw nsw i64 %..i7.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers0_0E0EB1b_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc7reverseBC_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcEB18_.exit.i.i.i, %.preheader16.i, %bb.n, %bb.j
  %.sroa.0.0.i13.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader16.i ], [ %.sroa.0.0.i394650.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcEB18_.exit.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i13.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers0_0E0EB1b_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ag = phi i64 [ %i.aa, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %.sroa.0.0.i394650.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcEB18_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.am, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcEB18_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ai = xor i64 %.sroa.0.017.i.i.i, -1
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ak = getelementptr [96 x i8], ptr %i.ah, i64 %i.ai
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, i64 noundef 12)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcEB18_.exit.i.i.i unwind label %bb.q, !noalias !209

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !209
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcEB18_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.am = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.ag
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc7reverseBC_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers0_0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc7reverseBC_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc7reverseBC_.exit.i ], [ %i.ad, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.an = lshr i64 %.sroa.023.0, 1
  %i.ao = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ap = sub nsw i64 %factor, %i.an
  %i.aq = add nuw nsw i64 %i.ao, %factor
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = xor i64 %i.as, %i.ar
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false)
  %i.av = trunc nuw nsw i64 %i.au to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers0_0E0EB1e_.exit
  %.sroa.02.136 = phi i64 [ %i.aw, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers0_0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers0_0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.aw = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ay, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers0_0E0EB1e_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers0_0E0EB1e_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers0_0E0EB1e_.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ba, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 3 uses
  %i.bd = lshr i64 %i.bc, 1                       ; 5 uses
  %i.be = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bf = add nuw i64 %i.bd, %i.be                ; 5 uses
  %i.bg = sub i64 %.sroa.09.0, %i.bf
  %i.bh = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bg ; 3 uses
  %i.bi = icmp samesign ugt i64 %i.bf, %3
  %i.bj = trunc i64 %.sroa.023.135 to i1
  %i.bk = or i64 %i.bc, %.sroa.023.135
  %i.bl = trunc i64 %i.bk to i1
  %or.cond3.i = or i1 %i.bi, %i.bl
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = trunc i64 %i.bc to i1
  br i1 %i.bm, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bn = shl nuw nsw i64 %i.bf, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers0_0E0EB1e_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bj, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bo = or i64 %i.bd, 1
  %i.bp = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = xor i32 %i.br, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtB2f_6string6StringNCNvB19_5lowers0_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bh, i64 noundef range(i64 0, 96076792050570582) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw [96 x i8], ptr %i.bh, i64 %i.bd
  %i.bu = or i64 %i.be, 1
  %i.bv = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtB2f_6string6StringNCNvB19_5lowers0_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 96076792050570582) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtB27_6string6StringNCNvB11_5lowers0_0E0EB15_(ptr noalias nofree noundef nonnull align 8 %i.bh, i64 noundef range(i64 0, 96076792050570582) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i64 noundef %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.bz = shl nuw nsw i64 %i.bf, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers0_0E0EB1e_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers0_0E0EB1e_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ca, %bb.x ], [ %i.bn, %bb.t ] ; 2 uses
  %i.cb = icmp ugt i64 %i.aw, 1
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cc = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cd = lshr i64 %.sroa.018.0, 1
  %i.ce = add nuw i64 %i.cd, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cf = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cf, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = or i64 %1, 1
  %i.ch = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtB2f_6string6StringNCNvB19_5lowers0_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtB26_6string6StringNCNvB10_5lowers_0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ce, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cc, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers_0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.av, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers_0E0EB1b_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers_0E0EB1b_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers_0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc7reverseBC_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc11sort_by_keyNtNtB7_6string6StringNCNvBC_5lowers_0E0BG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n) #18, !noalias !213 ; 2 uses
  %.not27.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.k
  br i1 %.not27.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc7reverseBC_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not27.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %.preheader16.i, %bb.l
  %.sroa.01.0.i18.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader16.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %.sroa.01.0.i18.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -96
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc11sort_by_keyNtNtB7_6string6StringNCNvBC_5lowers_0E0BG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.s) #18, !noalias !213
  br i1 %i.t, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers_0E0EB1a_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i18.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers_0E0EB1a_.exit.i, label %.lr.ph.i

.lr.ph22.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i21.i = phi i64 [ %i.y, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %.sroa.01.1.i21.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -96
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc11sort_by_keyNtNtB7_6string6StringNCNvBC_5lowers_0E0BG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.w) #18, !noalias !213
  br i1 %i.x, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers_0E0EB1a_.exit.i

bb.m:                                             ; preds = %.lr.ph22.i
  %i.y = add nuw nsw i64 %.sroa.01.1.i21.i, 1     ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.y, %i.m
  br i1 %exitcond30.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers_0E0EB1a_.exit.i, label %.lr.ph22.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers_0E0EB1a_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph22.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i21.i, %.lr.ph22.i ], [ %.sroa.01.0.i18.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtB2c_6string6StringNCNvB16_5lowers_0E0EB1a_.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  %or.cond.not.i = and i1 %i.q, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc7reverseBC_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 96076792050570582) %i.m, i64 %.sroa.01.0)
  %i.ab = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers_0E0EB1b_.exit

bb.p:                                             ; preds = %bb.i
  %..i7.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 96076792050570582) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtB2f_6string6StringNCNvB19_5lowers_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i7.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.ac = shl nuw nsw i64 %..i7.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers_0E0EB1b_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc7reverseBC_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEB18_.exit.i.i.i, %.preheader16.i, %bb.n, %bb.j
  %.sroa.0.0.i13.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader16.i ], [ %.sroa.0.0.i394650.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEB18_.exit.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i13.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers_0E0EB1b_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ag = phi i64 [ %i.aa, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %.sroa.0.0.i394650.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEB18_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.am, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEB18_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ai = xor i64 %.sroa.0.017.i.i.i, -1
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ak = getelementptr [96 x i8], ptr %i.ah, i64 %i.ai
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, i64 noundef 12)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEB18_.exit.i.i.i unwind label %bb.q, !noalias !213

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !213
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEB18_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.am = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.ag
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc7reverseBC_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtB2d_6string6StringNCNvB17_5lowers_0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc7reverseBC_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc7reverseBC_.exit.i ], [ %i.ad, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.an = lshr i64 %.sroa.023.0, 1
  %i.ao = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ap = sub nsw i64 %factor, %i.an
  %i.aq = add nuw nsw i64 %i.ao, %factor
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = xor i64 %i.as, %i.ar
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false)
  %i.av = trunc nuw nsw i64 %i.au to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers_0E0EB1e_.exit
  %.sroa.02.136 = phi i64 [ %i.aw, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers_0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers_0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.aw = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ay, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers_0E0EB1e_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers_0E0EB1e_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers_0E0EB1e_.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ba, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 3 uses
  %i.bd = lshr i64 %i.bc, 1                       ; 5 uses
  %i.be = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bf = add nuw i64 %i.bd, %i.be                ; 5 uses
  %i.bg = sub i64 %.sroa.09.0, %i.bf
  %i.bh = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bg ; 3 uses
  %i.bi = icmp samesign ugt i64 %i.bf, %3
  %i.bj = trunc i64 %.sroa.023.135 to i1
  %i.bk = or i64 %i.bc, %.sroa.023.135
  %i.bl = trunc i64 %i.bk to i1
  %or.cond3.i = or i1 %i.bi, %i.bl
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = trunc i64 %i.bc to i1
  br i1 %i.bm, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bn = shl nuw nsw i64 %i.bf, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers_0E0EB1e_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bj, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bo = or i64 %i.bd, 1
  %i.bp = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = xor i32 %i.br, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtB2f_6string6StringNCNvB19_5lowers_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bh, i64 noundef range(i64 0, 96076792050570582) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw [96 x i8], ptr %i.bh, i64 %i.bd
  %i.bu = or i64 %i.be, 1
  %i.bv = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtB2f_6string6StringNCNvB19_5lowers_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 96076792050570582) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtB27_6string6StringNCNvB11_5lowers_0E0EB15_(ptr noalias nofree noundef nonnull align 8 %i.bh, i64 noundef range(i64 0, 96076792050570582) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i64 noundef %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.bz = shl nuw nsw i64 %i.bf, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers_0E0EB1e_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtB2g_6string6StringNCNvB1a_5lowers_0E0EB1e_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ca, %bb.x ], [ %i.bn, %bb.t ] ; 2 uses
  %i.cb = icmp ugt i64 %i.aw, 1
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cc = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cd = lshr i64 %.sroa.018.0, 1
  %i.ce = add nuw i64 %i.cd, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cf = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cf, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = or i64 %1, 1
  %i.ch = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtB2f_6string6StringNCNvB19_5lowers_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyTbNtNtB20_6string6StringENCNCNvB10_5lowers1_00E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ce, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cc, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTbNtNtB27_6string6StringENCNCNvB17_5lowers1_00E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.av, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTbNtNtB27_6string6StringENCNCNvB17_5lowers1_00E0EB1b_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTbNtNtB27_6string6StringENCNCNvB17_5lowers1_00E0EB1b_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyTbNtNtB26_6string6StringENCNCNvB16_5lowers1_00E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field7reverseBC_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field11sort_by_keyTbNtNtB7_6string6StringENCNCNvBC_5lowers1_00E0BG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n) #18, !noalias !217 ; 2 uses
  %.not27.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.k
  br i1 %.not27.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field7reverseBC_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not27.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %.preheader16.i, %bb.l
  %.sroa.01.0.i18.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader16.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i18.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -56
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field11sort_by_keyTbNtNtB7_6string6StringENCNCNvBC_5lowers1_00E0BG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s) #18, !noalias !217
  br i1 %i.t, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyTbNtNtB26_6string6StringENCNCNvB16_5lowers1_00E0EB1a_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i18.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyTbNtNtB26_6string6StringENCNCNvB16_5lowers1_00E0EB1a_.exit.i, label %.lr.ph.i

.lr.ph22.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i21.i = phi i64 [ %i.y, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i21.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -56
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field11sort_by_keyTbNtNtB7_6string6StringENCNCNvBC_5lowers1_00E0BG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.w) #18, !noalias !217
  br i1 %i.x, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyTbNtNtB26_6string6StringENCNCNvB16_5lowers1_00E0EB1a_.exit.i

bb.m:                                             ; preds = %.lr.ph22.i
  %i.y = add nuw nsw i64 %.sroa.01.1.i21.i, 1     ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.y, %i.m
  br i1 %exitcond30.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyTbNtNtB26_6string6StringENCNCNvB16_5lowers1_00E0EB1a_.exit.i, label %.lr.ph22.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyTbNtNtB26_6string6StringENCNCNvB16_5lowers1_00E0EB1a_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph22.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i21.i, %.lr.ph22.i ], [ %.sroa.01.0.i18.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyTbNtNtB26_6string6StringENCNCNvB16_5lowers1_00E0EB1a_.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  %or.cond.not.i = and i1 %i.q, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field7reverseBC_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.ab = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTbNtNtB27_6string6StringENCNCNvB17_5lowers1_00E0EB1b_.exit

bb.p:                                             ; preds = %bb.i
  %..i7.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTbNtNtB29_6string6StringENCNCNvB19_5lowers1_00E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i7.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.ac = shl nuw nsw i64 %..i7.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTbNtNtB27_6string6StringENCNCNvB17_5lowers1_00E0EB1b_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field7reverseBC_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldEB18_.exit.i.i.i, %.preheader16.i, %bb.n, %bb.j
  %.sroa.0.0.i13.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader16.i ], [ %.sroa.0.0.i394650.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldEB18_.exit.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i13.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTbNtNtB27_6string6StringENCNCNvB17_5lowers1_00E0EB1b_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ag = phi i64 [ %i.aa, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i394650.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldEB18_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.am, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldEB18_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ai = xor i64 %.sroa.0.017.i.i.i, -1
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ak = getelementptr [56 x i8], ptr %i.ah, i64 %i.ai
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, i64 noundef 7)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldEB18_.exit.i.i.i unwind label %bb.q, !noalias !217

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !217
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldEB18_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.am = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.ag
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field7reverseBC_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTbNtNtB27_6string6StringENCNCNvB17_5lowers1_00E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field7reverseBC_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5Field7reverseBC_.exit.i ], [ %i.ad, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.an = lshr i64 %.sroa.023.0, 1
  %i.ao = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ap = sub nsw i64 %factor, %i.an
  %i.aq = add nuw nsw i64 %i.ao, %factor
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = xor i64 %i.as, %i.ar
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false)
  %i.av = trunc nuw nsw i64 %i.au to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTbNtNtB2a_6string6StringENCNCNvB1a_5lowers1_00E0EB1e_.exit
  %.sroa.02.136 = phi i64 [ %i.aw, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTbNtNtB2a_6string6StringENCNCNvB1a_5lowers1_00E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTbNtNtB2a_6string6StringENCNCNvB1a_5lowers1_00E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.aw = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ay, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTbNtNtB2a_6string6StringENCNCNvB1a_5lowers1_00E0EB1e_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTbNtNtB2a_6string6StringENCNCNvB1a_5lowers1_00E0EB1e_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTbNtNtB2a_6string6StringENCNCNvB1a_5lowers1_00E0EB1e_.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ba, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 3 uses
  %i.bd = lshr i64 %i.bc, 1                       ; 5 uses
  %i.be = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bf = add nuw i64 %i.bd, %i.be                ; 5 uses
  %i.bg = sub i64 %.sroa.09.0, %i.bf
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bg ; 3 uses
  %i.bi = icmp samesign ugt i64 %i.bf, %3
  %i.bj = trunc i64 %.sroa.023.135 to i1
  %i.bk = or i64 %i.bc, %.sroa.023.135
  %i.bl = trunc i64 %i.bk to i1
  %or.cond3.i = or i1 %i.bi, %i.bl
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = trunc i64 %i.bc to i1
  br i1 %i.bm, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bn = shl nuw nsw i64 %i.bf, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTbNtNtB2a_6string6StringENCNCNvB1a_5lowers1_00E0EB1e_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bj, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bo = or i64 %i.bd, 1
  %i.bp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = xor i32 %i.br, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTbNtNtB29_6string6StringENCNCNvB19_5lowers1_00E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bh, i64 noundef range(i64 0, 164703072086692426) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bd
  %i.bu = or i64 %i.be, 1
  %i.bv = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTbNtNtB29_6string6StringENCNCNvB19_5lowers1_00E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 164703072086692426) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyTbNtNtB21_6string6StringENCNCNvB11_5lowers1_00E0EB15_(ptr noalias nofree noundef nonnull align 8 %i.bh, i64 noundef range(i64 0, 164703072086692426) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.bz = shl nuw nsw i64 %i.bf, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTbNtNtB2a_6string6StringENCNCNvB1a_5lowers1_00E0EB1e_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTbNtNtB2a_6string6StringENCNCNvB1a_5lowers1_00E0EB1e_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ca, %bb.x ], [ %i.bn, %bb.t ] ; 2 uses
  %i.cb = icmp ugt i64 %i.aw, 1
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cc = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cd = lshr i64 %.sroa.018.0, 1
  %i.ce = add nuw i64 %i.cd, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cf = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cf, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = or i64 %1, 1
  %i.ch = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTbNtNtB29_6string6StringENCNCNvB19_5lowers1_00E0EB1d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtCsluekWoTk8SK_11proc_macro25IdentNvYBW_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !229, !noalias !230, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !229, !noalias !230, !nonnull !5, !align !6, !noundef !5
  %i.q = tail call noundef i8 @_RNvXsB_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val11.i), !noalias !231 ; 2 uses
  %.not.i.i.i.i = icmp ne i8 %i.q, -2
  %i.r = icmp slt i8 %i.q, 0
  %.sroa.0.0.i.i.i.i = and i1 %.not.i.i.i.i, %i.r ; 2 uses
  %.not36.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %.sroa.0.0.i.i.i.i, label %.preheader.i, label %.preheader25.i

.preheader25.i:                                   ; preds = %bb.k
  br i1 %.not36.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not36.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i, label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.preheader25.i, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader25.i ]
  %.sroa.01.0.i27.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader25.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i27.i
  %.val8.i = load ptr, ptr %i.s, align 8, !alias.scope !229, !noalias !230, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.t = tail call noundef i8 @_RNvXsB_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val9.i), !noalias !231 ; 2 uses
  %.not.i.i.i12.i = icmp ne i8 %i.t, -2
  %i.u = icmp slt i8 %i.t, 0
  %.sroa.0.0.i.i.i13.i = and i1 %.not.i.i.i12.i, %i.u
  br i1 %.sroa.0.0.i.i.i13.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i27.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.lr.ph31.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i30.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i30.i
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !229, !noalias !230, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.x = tail call noundef i8 @_RNvXsB_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val7.i), !noalias !231 ; 2 uses
  %.not.i.i.i14.i = icmp ne i8 %i.x, -2
  %i.y = icmp slt i8 %i.x, 0
  %.sroa.0.0.i.i.i15.i = and i1 %.not.i.i.i14.i, %i.y
  br i1 %.sroa.0.0.i.i.i15.i, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i

bb.m:                                             ; preds = %.lr.ph31.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i30.i, 1     ; 2 uses
  %exitcond39.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond39.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph31.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph31.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i30.i, %.lr.ph31.i ], [ %.sroa.01.0.i27.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i
  br i1 %.sroa.0.0.i.i.i.i, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.ab = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.p:                                             ; preds = %bb.i
  %..i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtCsluekWoTk8SK_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i16.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #19
  %i.ac = shl nuw nsw i64 %..i16.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i, %middle.block, %.preheader25.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i22.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader25.i ], [ %.sroa.0.0.i505761.i, %middle.block ], [ %.sroa.0.0.i505761.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i22.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ah = phi i64 [ %i.ag, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i505761.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i505761.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ah, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.al = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !234, !noalias !235
  %wide.load54 = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !234, !noalias !235
  %i.an = getelementptr i8, ptr %i.al, i64 -8
  %i.ao = getelementptr i8, ptr %i.al, i64 -24
  %wide.load55 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !236, !noalias !237
  %wide.load56 = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !236, !noalias !237
  %reverse = shufflevector <2 x i64> %wide.load55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x i64> %reverse, ptr %i.ak, align 8, !alias.scope !234, !noalias !235
  store <2 x i64> %reverse57, ptr %i.ap, align 8, !alias.scope !234, !noalias !235
  %i.aq = getelementptr i8, ptr %i.al, i64 -8
  %i.ar = getelementptr i8, ptr %i.al, i64 -24
  %reverse58 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58, ptr %i.aq, align 8, !alias.scope !236, !noalias !237
  store <2 x ptr> %reverse59, ptr %i.ar, align 8, !alias.scope !236, !noalias !237
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.ay, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader ] ; 3 uses
  %i.at = xor i64 %.sroa.0.016.i.i.i, -1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ai, i64 %i.at ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !alias.scope !234, !noalias !235, !nonnull !5, !align !6, !noundef !5
  %i.ax = load i64, ptr %i.av, align 8, !alias.scope !236, !noalias !237
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !234, !noalias !235
  store ptr %i.aw, ptr %i.av, align 8, !alias.scope !236, !noalias !237
  %i.ay = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i, !llvm.loop !228

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtCsluekWoTk8SK_11proc_macro25IdentNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCsluekWoTk8SK_11proc_macro25Ident7reverseCslkzCjlEuW1f_5xtask.exit.i ], [ %i.ad, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtCsluekWoTk8SK_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtCsluekWoTk8SK_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYBX_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtCsluekWoTk8SK_11proc_macro25IdentNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.x ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.co = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cr, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtCsluekWoTk8SK_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dh, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit
  %.sroa.021.0 = phi i8 [ %i.by, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !258, !noalias !259, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !258, !noalias !259, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %.val10.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !noalias !260, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %.val10.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.r, align 8, !noalias !260, !noundef !5 ; 4 uses
  %i.s = getelementptr i8, ptr %.val11.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.s, align 8, !noalias !260, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %.val11.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.t, align 8, !noalias !260, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !261, !noalias !260 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub nsw i64 %.val1.i.i.i, %.val3.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i.i.i.i.i.i, 0 ; 2 uses
  %.not44.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.y, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.k
  br i1 %.not44.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not44.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i, label %.lr.ph39.i

.lr.ph.i:                                         ; preds = %.preheader33.i, %bb.l
  %.val3.i.i15.i = phi i64 [ %.val1.i.i13.i, %bb.l ], [ %.val1.i.i.i, %.preheader33.i ] ; 2 uses
  %.val2.i.i14.i = phi ptr [ %.val.i.i12.i, %bb.l ], [ %.val.i.i.i, %.preheader33.i ]
  %.sroa.01.0.i35.i = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader33.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i35.i
  %.val8.i = load ptr, ptr %i.z, align 8, !alias.scope !258, !noalias !259, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %.val8.i, i64 8
  %.val.i.i12.i = load ptr, ptr %i.aa, align 8, !noalias !260, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val8.i, i64 16
  %.val1.i.i13.i = load i64, ptr %i.ab, align 8, !noalias !260, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i13.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i15.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i12.i, ptr nonnull readonly %.val2.i.i14.i, i64 %spec.store.select.i.i.i.i.i.i16.i), !alias.scope !262, !noalias !260 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub nsw i64 %.val1.i.i13.i, %.val3.i.i15.i
  %spec.select.i.i.i.i.i.i17.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i.i.i.i.i17.i, 0
  br i1 %i.ag, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.01.0.i35.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.lr.ph39.i:                                       ; preds = %.preheader.i, %bb.m
  %.val3.i.i21.i = phi i64 [ %.val1.i.i19.i, %bb.m ], [ %.val1.i.i.i, %.preheader.i ] ; 2 uses
  %.val2.i.i20.i = phi ptr [ %.val.i.i18.i, %bb.m ], [ %.val.i.i.i, %.preheader.i ]
  %.sroa.01.1.i38.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i38.i
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !258, !noalias !259, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i18.i = load ptr, ptr %i.aj, align 8, !noalias !260, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i19.i = load i64, ptr %i.ak, align 8, !noalias !260, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i22.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i19.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i21.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i18.i, ptr nonnull readonly %.val2.i.i20.i, i64 %spec.store.select.i.i.i.i.i.i22.i), !alias.scope !263, !noalias !260 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub nsw i64 %.val1.i.i19.i, %.val3.i.i21.i
  %spec.select.i.i.i.i.i.i23.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i.i.i.i.i23.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i

bb.m:                                             ; preds = %.lr.ph39.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i38.i, 1    ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.aq, %i.m
  br i1 %exitcond47.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph39.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph39.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i38.i, %.lr.ph39.i ], [ %.sroa.01.0.i35.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i
  br i1 %i.y, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.p:                                             ; preds = %bb.i
  %..i24.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i24.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #19
  %i.at = shl nuw nsw i64 %..i24.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i, %middle.block, %.preheader33.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i30.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader33.i ], [ %.sroa.0.0.i667377.i, %middle.block ], [ %.sroa.0.0.i667377.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i30.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %.not.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i667377.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i667377.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ay, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ay, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = xor i64 %index, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.bc = getelementptr [8 x i8], ptr %i.az, i64 %i.ba ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bb, align 8, !alias.scope !266, !noalias !267
  %wide.load54 = load <2 x ptr>, ptr %i.bd, align 8, !alias.scope !266, !noalias !267
  %i.be = getelementptr i8, ptr %i.bc, i64 -8
  %i.bf = getelementptr i8, ptr %i.bc, i64 -24
  %wide.load55 = load <2 x i64>, ptr %i.be, align 8, !alias.scope !268, !noalias !269
  %wide.load56 = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !268, !noalias !269
  %reverse = shufflevector <2 x i64> %wide.load55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %reverse, ptr %i.bb, align 8, !alias.scope !266, !noalias !267
  store <2 x i64> %reverse57, ptr %i.bg, align 8, !alias.scope !266, !noalias !267
  %i.bh = getelementptr i8, ptr %i.bc, i64 -8
  %i.bi = getelementptr i8, ptr %i.bc, i64 -24
  %reverse58 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58, ptr %i.bh, align 8, !alias.scope !268, !noalias !269
  store <2 x ptr> %reverse59, ptr %i.bi, align 8, !alias.scope !268, !noalias !269
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.bp, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.preheader ] ; 3 uses
  %i.bk = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.az, i64 %i.bk ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !alias.scope !266, !noalias !267, !nonnull !5, !align !6, !noundef !5
  %i.bo = load i64, ptr %i.bm, align 8, !alias.scope !268, !noalias !269
  store i64 %i.bo, ptr %i.bl, align 8, !alias.scope !266, !noalias !267
  store ptr %i.bn, ptr %i.bm, align 8, !alias.scope !268, !noalias !269
  %i.bp = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bp, %i.ay
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i, !llvm.loop !257

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsbSS6DM8SDEO_5alloc6string6String7reverseCslkzCjlEuW1f_5xtask.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bq = lshr i64 %.sroa.023.0, 1
  %i.br = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bs = sub nsw i64 %factor, %i.bq
  %i.bt = add nuw nsw i64 %i.br, %factor
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit
  %.sroa.02.136 = phi i64 [ %i.bz, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bz = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.cb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cd, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !5 ; 3 uses
  %i.cg = lshr i64 %i.cf, 1                       ; 5 uses
  %i.ch = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.ci = add nuw i64 %i.cg, %i.ch                ; 5 uses
  %i.cj = sub i64 %.sroa.09.0, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 3 uses
  %i.cl = icmp samesign ugt i64 %i.ci, %3
  %i.cm = trunc i64 %.sroa.023.135 to i1
  %i.cn = or i64 %i.cf, %.sroa.023.135
  %i.co = trunc i64 %i.cn to i1
  %or.cond3.i = or i1 %i.cl, %i.co
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %i.cf to i1
  br i1 %i.cp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i64 %i.ci, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cr = or i64 %i.cg, 1
  %i.cs = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cg
  %i.cx = or i64 %i.ch, 1
  %i.cy = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.cw, i64 noundef range(i64 0, 1152921504606846976) %i.ch, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.ci, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cg, ptr noalias nofree noundef nonnull %5)
  %i.dc = shl nuw nsw i64 %i.ci, 1
  %i.dd = or disjoint i64 %i.dc, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dd, %bb.x ], [ %i.cq, %bb.t ] ; 2 uses
  %i.de = icmp ugt i64 %i.bz, 1
  br i1 %i.de, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.df = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.dg = lshr i64 %.sroa.018.0, 1
  %i.dh = add nuw i64 %i.dg, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.di = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.di, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dj = or i64 %1, 1
  %i.dk = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvBZ_8generate0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dt, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dr, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generate0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.ck, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generate0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generate0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generate0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !281, !noalias !282, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !281, !noalias !282, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !283, !nonnull !5, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !283, !noundef !5 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !283, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !283, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !283 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not36.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader25.i

.preheader25.i:                                   ; preds = %bb.k
  br i1 %.not36.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not36.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i, label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.preheader25.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader25.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader25.i ]
  %.sroa.01.0.i27.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader25.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i27.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !281, !noalias !282, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !283, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !283, !noundef !5 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !283 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generate0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i27.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generate0E0EB19_.exit.i, label %.lr.ph.i

.lr.ph31.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i30.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i30.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !281, !noalias !282, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !283, !nonnull !5, !noundef !5 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !283, !noundef !5 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !283 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generate0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph31.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i30.i, 1    ; 2 uses
  %exitcond39.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond39.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generate0E0EB19_.exit.i, label %.lr.ph31.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generate0E0EB19_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph31.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i30.i, %.lr.ph31.i ], [ %.sroa.01.0.i27.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generate0E0EB19_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generate0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB18_8generate0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i16.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.bf = shl nuw nsw i64 %..i16.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generate0E0EB1a_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i, %middle.block, %.preheader25.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i22.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader25.i ], [ %.sroa.0.0.i576468.i, %middle.block ], [ %.sroa.0.0.i576468.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i22.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generate0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i576468.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i576468.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !286, !noalias !287
  %wide.load54 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !286, !noalias !287
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8
  %i.br = getelementptr i8, ptr %i.bo, i64 -24
  %wide.load55 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !288, !noalias !289
  %wide.load56 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !288, !noalias !289
  %reverse = shufflevector <2 x i64> %wide.load55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !286, !noalias !287
  store <2 x i64> %reverse57, ptr %i.bs, align 8, !alias.scope !286, !noalias !287
  %i.bt = getelementptr i8, ptr %i.bo, i64 -8
  %i.bu = getelementptr i8, ptr %i.bo, i64 -24
  %reverse58 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58, ptr %i.bt, align 8, !alias.scope !288, !noalias !289
  store <2 x ptr> %reverse59, ptr %i.bu, align 8, !alias.scope !288, !noalias !289
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.cb, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader ] ; 3 uses
  %i.bw = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.bl, i64 %i.bw ; 2 uses
  %i.bz = load ptr, ptr %i.bx, align 8, !alias.scope !286, !noalias !287, !nonnull !5, !align !6, !noundef !5
  %i.ca = load i64, ptr %i.by, align 8, !alias.scope !288, !noalias !289
  store i64 %i.ca, ptr %i.bx, align 8, !alias.scope !286, !noalias !287
  store ptr %i.bz, ptr %i.by, align 8, !alias.scope !288, !noalias !289
  %i.cb = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cb, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i, !llvm.loop !280

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generate0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bi, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.cc = lshr i64 %.sroa.023.0, 1
  %i.cd = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ce = sub nsw i64 %factor, %i.cc
  %i.cf = add nuw nsw i64 %i.cd, %factor
  %i.cg = mul i64 %i.ce, %.sroa.0.0
  %i.ch = mul i64 %i.cf, %.sroa.0.0
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 false)
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generate0E0EB1d_.exit
  %.sroa.02.136 = phi i64 [ %i.cl, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generate0E0EB1d_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generate0E0EB1d_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cl = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.cn, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generate0E0EB1d_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generate0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generate0E0EB1d_.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cp, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !5 ; 3 uses
  %i.cs = lshr i64 %i.cr, 1                       ; 5 uses
  %i.ct = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cu = add nuw i64 %i.cs, %i.ct                ; 5 uses
  %i.cv = sub i64 %.sroa.09.0, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cv ; 3 uses
  %i.cx = icmp samesign ugt i64 %i.cu, %3
  %i.cy = trunc i64 %.sroa.023.135 to i1
  %i.cz = or i64 %i.cr, %.sroa.023.135
  %i.da = trunc i64 %i.cz to i1
  %or.cond3.i = or i1 %i.cx, %i.da
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i64 %i.cr to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dc = shl nuw nsw i64 %i.cu, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generate0E0EB1d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cy, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.dd = or i64 %i.cs, 1
  %i.de = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB18_8generate0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cw, i64 noundef range(i64 0, 1152921504606846976) %i.cs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cs
  %i.dj = or i64 %i.ct, 1
  %i.dk = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB18_8generate0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.di, i64 noundef range(i64 0, 1152921504606846976) %i.ct, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvB10_8generate0E0EB14_(ptr noalias nofree noundef nonnull align 8 %i.cw, i64 noundef range(i64 0, 1152921504606846976) %i.cu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.do = shl nuw nsw i64 %i.cu, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generate0E0EB1d_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generate0E0EB1d_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dp, %bb.x ], [ %i.dc, %bb.t ] ; 2 uses
  %i.dq = icmp ugt i64 %i.cl, 1
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dr = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ds = lshr i64 %.sroa.018.0, 1
  %i.dt = add nuw i64 %i.ds, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.du = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.du, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dv = or i64 %1, 1
  %i.dw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dv, i1 true)
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = xor i32 %i.dy, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB18_8generate0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvBZ_8generates0_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dt, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dr, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generates0_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.ck, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generates0_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generates0_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generates0_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !301, !noalias !302, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !301, !noalias !302, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !303, !nonnull !5, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !303, !noundef !5 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !303, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !303, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !303 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not36.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader25.i

.preheader25.i:                                   ; preds = %bb.k
  br i1 %.not36.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not36.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i, label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.preheader25.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader25.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader25.i ]
  %.sroa.01.0.i27.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader25.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i27.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !301, !noalias !302, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !303, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !303, !noundef !5 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !303 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generates0_0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i27.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generates0_0E0EB19_.exit.i, label %.lr.ph.i

.lr.ph31.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i30.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i30.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !301, !noalias !302, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !303, !nonnull !5, !noundef !5 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !303, !noundef !5 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !303 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generates0_0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph31.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i30.i, 1    ; 2 uses
  %exitcond39.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond39.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generates0_0E0EB19_.exit.i, label %.lr.ph31.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generates0_0E0EB19_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph31.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i30.i, %.lr.ph31.i ], [ %.sroa.01.0.i27.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvB15_8generates0_0E0EB19_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generates0_0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB18_8generates0_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i16.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.bf = shl nuw nsw i64 %..i16.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generates0_0E0EB1a_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i, %middle.block, %.preheader25.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i22.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader25.i ], [ %.sroa.0.0.i576468.i, %middle.block ], [ %.sroa.0.0.i576468.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i22.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generates0_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i576468.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i576468.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !306, !noalias !307
  %wide.load54 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !306, !noalias !307
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8
  %i.br = getelementptr i8, ptr %i.bo, i64 -24
  %wide.load55 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !308, !noalias !309
  %wide.load56 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !308, !noalias !309
  %reverse = shufflevector <2 x i64> %wide.load55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !306, !noalias !307
  store <2 x i64> %reverse57, ptr %i.bs, align 8, !alias.scope !306, !noalias !307
  %i.bt = getelementptr i8, ptr %i.bo, i64 -8
  %i.bu = getelementptr i8, ptr %i.bo, i64 -24
  %reverse58 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58, ptr %i.bt, align 8, !alias.scope !308, !noalias !309
  store <2 x ptr> %reverse59, ptr %i.bu, align 8, !alias.scope !308, !noalias !309
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.cb, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i.preheader ] ; 3 uses
  %i.bw = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.bl, i64 %i.bw ; 2 uses
  %i.bz = load ptr, ptr %i.bx, align 8, !alias.scope !306, !noalias !307, !nonnull !5, !align !6, !noundef !5
  %i.ca = load i64, ptr %i.by, align 8, !alias.scope !308, !noalias !309
  store i64 %i.ca, ptr %i.bx, align 8, !alias.scope !306, !noalias !307
  store ptr %i.bz, ptr %i.by, align 8, !alias.scope !308, !noalias !309
  %i.cb = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cb, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test12split_at_mutBB_.exit11.i.i.i, !llvm.loop !300

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB16_8generates0_0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bi, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4Test7reverseBB_.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.cc = lshr i64 %.sroa.023.0, 1
  %i.cd = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ce = sub nsw i64 %factor, %i.cc
  %i.cf = add nuw nsw i64 %i.cd, %factor
  %i.cg = mul i64 %i.ce, %.sroa.0.0
  %i.ch = mul i64 %i.cf, %.sroa.0.0
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 false)
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generates0_0E0EB1d_.exit
  %.sroa.02.136 = phi i64 [ %i.cl, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generates0_0E0EB1d_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generates0_0E0EB1d_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cl = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.cn, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generates0_0E0EB1d_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generates0_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generates0_0E0EB1d_.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cp, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !5 ; 3 uses
  %i.cs = lshr i64 %i.cr, 1                       ; 5 uses
  %i.ct = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cu = add nuw i64 %i.cs, %i.ct                ; 5 uses
  %i.cv = sub i64 %.sroa.09.0, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cv ; 3 uses
  %i.cx = icmp samesign ugt i64 %i.cu, %3
  %i.cy = trunc i64 %.sroa.023.135 to i1
  %i.cz = or i64 %i.cr, %.sroa.023.135
  %i.da = trunc i64 %i.cz to i1
  %or.cond3.i = or i1 %i.cx, %i.da
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i64 %i.cr to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dc = shl nuw nsw i64 %i.cu, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generates0_0E0EB1d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cy, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.dd = or i64 %i.cs, 1
  %i.de = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB18_8generates0_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cw, i64 noundef range(i64 0, 1152921504606846976) %i.cs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cs
  %i.dj = or i64 %i.ct, 1
  %i.dk = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB18_8generates0_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.di, i64 noundef range(i64 0, 1152921504606846976) %i.ct, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvB10_8generates0_0E0EB14_(ptr noalias nofree noundef nonnull align 8 %i.cw, i64 noundef range(i64 0, 1152921504606846976) %i.cu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.do = shl nuw nsw i64 %i.cu, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generates0_0E0EB1d_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvB19_8generates0_0E0EB1d_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dp, %bb.x ], [ %i.dc, %bb.t ] ; 2 uses
  %i.dq = icmp ugt i64 %i.cl, 1
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dr = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ds = lshr i64 %.sroa.018.0, 1
  %i.dt = add nuw i64 %i.ds, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.du = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.du, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dv = or i64 %1, 1
  %i.dw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dv, i1 true)
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = xor i32 %i.dy, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB18_8generates0_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortReNvYBW_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dl, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dj, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit
  %.sroa.021.0 = phi i8 [ %i.cc, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !346, !noalias !347, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 24
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !346, !noalias !347, !noundef !5 ; 4 uses
  %.val16.i = load ptr, ptr %i.n, align 8, !alias.scope !346, !noalias !347, !nonnull !5, !noundef !5
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !346, !noalias !347, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !348, !noalias !349 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = icmp slt i64 %spec.select.i.i.i.i.i.i, 0 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.w, label %.preheader.i, label %.preheader31.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !346, !noalias !347, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !346, !noalias !347, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.z = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !350, !noalias !349 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %i.ac = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ab, i64 %i.ac, i64 %i.aa
  %i.ad = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.ad, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.am, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !346, !noalias !347, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val7.i = load i64, ptr %i.ag, align 8, !alias.scope !346, !noalias !347, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !351, !noalias !349 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.al, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.am = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.am, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph37.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph37.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.an = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.an)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.ao = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #19
  %i.ap = shl nuw nsw i64 %..i22.i, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.epil.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i.loopexit.unr-lcssa, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i ], [ %i.bt, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ar = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.at = getelementptr [16 x i8], ptr %i.bc, i64 %i.ar ; 3 uses
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !352, !noalias !353, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !352, !noalias !353, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !354, !noalias !347
  store ptr %i.au, ptr %i.at, align 8, !alias.scope !355, !noalias !356
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !alias.scope !355, !noalias !356
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.epil.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i.loopexit.unr-lcssa, %.preheader31.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i606771.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i606771.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.epil.preheader ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.q:                                             ; preds = %bb.n
  %i.ba = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %.not.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bb = phi i64 [ %i.ba, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i606771.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i606771.i ; 3 uses
  %xtraiter = and i64 %i.bb, 1
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i.new

_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.bb, 9223372036854775806
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i.new ], [ %i.bt, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i ]
  %i.be = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.bg = getelementptr [16 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !alias.scope !352, !noalias !353, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !352, !noalias !353, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !354, !noalias !347
  store ptr %i.bh, ptr %i.bg, align 8, !alias.scope !355, !noalias !356
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !alias.scope !355, !noalias !356
  %i.bl = xor i64 %.sroa.0.016.i.i.i, -2
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = getelementptr [16 x i8], ptr %i.bc, i64 %i.bl ; 3 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !alias.scope !352, !noalias !353, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !352, !noalias !353, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !354, !noalias !347
  store ptr %i.bp, ptr %i.bo, align 8, !alias.scope !355, !noalias !356
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !alias.scope !355, !noalias !356
  %i.bt = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i.loopexit.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRe12split_at_mutCslkzCjlEuW1f_5xtask.exit11.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.az, %_RNvMNtCshzWfHUSfYae_4core5sliceSRe7reverseCslkzCjlEuW1f_5xtask.exit.i ], [ %i.aq, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  %i.bu = lshr i64 %.sroa.023.0, 1
  %i.bv = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bw = sub nsw i64 %factor, %i.bu
  %i.bx = add nuw nsw i64 %i.bv, %factor
  %i.by = mul i64 %i.bw, %.sroa.0.0
  %i.bz = mul i64 %i.bx, %.sroa.0.0
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ca, i1 false)
  %i.cc = trunc nuw nsw i64 %i.cb to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit
  %.sroa.02.136 = phi i64 [ %i.cd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cd = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.cf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ch, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cd
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !5 ; 3 uses
  %i.ck = lshr i64 %i.cj, 1                       ; 5 uses
  %i.cl = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cm = add nuw i64 %i.ck, %i.cl                ; 5 uses
  %i.cn = sub i64 %.sroa.09.0, %i.cm
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cn ; 3 uses
  %i.cp = icmp samesign ugt i64 %i.cm, %3
  %i.cq = trunc i64 %.sroa.023.135 to i1
  %i.cr = or i64 %i.cj, %.sroa.023.135
  %i.cs = trunc i64 %i.cr to i1
  %or.cond3.i = or i1 %i.cp, %i.cs
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = trunc i64 %i.cj to i1
  br i1 %i.ct, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cu = shl nuw nsw i64 %i.cm, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cq, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cv = or i64 %i.ck, 1
  %i.cw = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.ck, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.ck
  %i.db = or i64 %i.cl, 1
  %i.dc = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.da, i64 noundef range(i64 0, 576460752303423488) %i.cl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeReNvYBX_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.cm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.ck, ptr noalias nofree noundef nonnull %5)
  %i.dg = shl nuw nsw i64 %i.cm, 1
  %i.dh = or disjoint i64 %i.dg, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dh, %bb.x ], [ %i.cu, %bb.t ] ; 2 uses
  %i.di = icmp ugt i64 %i.cd, 1
  br i1 %i.di, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dj = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.dk = lshr i64 %.sroa.018.0, 1
  %i.dl = add nuw i64 %i.dk, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dm = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dm, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dn = or i64 %1, 1
  %i.do = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = xor i32 %i.dq, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTNtNtCsbSS6DM8SDEO_5alloc6string6StringBX_ENCINvMNtB11_5sliceSBW_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsbSS6DM8SDEO_5alloc6string6StringBv_E7reverseCslkzCjlEuW1f_5xtask.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 56
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !363, !noalias !364, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 64
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !363, !noalias !364, !noundef !5 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !363, !noalias !364, !nonnull !5, !noundef !5
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !363, !noalias !364, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i), !noalias !365 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i, -1      ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsbSS6DM8SDEO_5alloc6string6StringBv_E7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !363, !noalias !364, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !363, !noalias !364, !noundef !5 ; 3 uses
  %spec.store.select.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i18.i), !noalias !365 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !363, !noalias !364, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !363, !noalias !364, !noundef !5 ; 3 uses
  %spec.store.select.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i20.i), !noalias !365 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2n_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2n_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2n_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsbSS6DM8SDEO_5alloc6string6StringBv_E7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbSS6DM8SDEO_5alloc6string6StringB16_ENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2q_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2o_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsbSS6DM8SDEO_5alloc6string6StringBv_E7reverseCslkzCjlEuW1f_5xtask.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbSS6DM8SDEO_5alloc6string6StringB11_EECslkzCjlEuW1f_5xtask.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbSS6DM8SDEO_5alloc6string6StringB11_EECslkzCjlEuW1f_5xtask.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2o_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbSS6DM8SDEO_5alloc6string6StringB11_EECslkzCjlEuW1f_5xtask.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbSS6DM8SDEO_5alloc6string6StringB11_EECslkzCjlEuW1f_5xtask.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [48 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbSS6DM8SDEO_5alloc6string6StringB11_EECslkzCjlEuW1f_5xtask.exit.i.i.i unwind label %bb.q, !noalias !364

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !364
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbSS6DM8SDEO_5alloc6string6StringB11_EECslkzCjlEuW1f_5xtask.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsbSS6DM8SDEO_5alloc6string6StringBv_E7reverseCslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCsbSS6DM8SDEO_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsbSS6DM8SDEO_5alloc6string6StringBv_E7reverseCslkzCjlEuW1f_5xtask.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsbSS6DM8SDEO_5alloc6string6StringBv_E7reverseCslkzCjlEuW1f_5xtask.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2r_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2r_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !5 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbSS6DM8SDEO_5alloc6string6StringB16_ENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2q_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 192153584101141163) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbSS6DM8SDEO_5alloc6string6StringB16_ENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2q_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 192153584101141163) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBY_ENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2g_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 192153584101141163) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2r_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbSS6DM8SDEO_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2r_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbSS6DM8SDEO_5alloc6string6StringB16_ENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCslkzCjlEuW1f_5xtask7codegen5lints27generate_feature_descriptors1_0E0EB2q_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB12_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB12_5sliceSBW_11sort_by_keyBX_NCNvB1W_14generate_nodess1_0E0EB20_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cw, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cu, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB19_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB19_5sliceSB13_11sort_by_keyB14_NCNvB23_14generate_nodess1_0E0EB27_.exit
  %.sroa.021.0 = phi i8 [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB19_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB19_5sliceSB13_11sort_by_keyB14_NCNvB23_14generate_nodess1_0E0EB27_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB19_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB19_5sliceSB13_11sort_by_keyB14_NCNvB23_14generate_nodess1_0E0EB27_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB18_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB18_5sliceSB12_11sort_by_keyB13_NCNvB22_14generate_nodess1_0E0EB26_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBA_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEE7reverseB1x_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !379, !noalias !380, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !379, !noalias !380, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %.val10.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !noalias !381, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %.val10.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.r, align 8, !noalias !381, !noundef !5 ; 4 uses
  %i.s = getelementptr i8, ptr %.val11.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.s, align 8, !noalias !381, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %.val11.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.t, align 8, !noalias !381, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !382, !noalias !381 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub nsw i64 %.val1.i.i.i, %.val3.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %.not44.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.y, label %.preheader33.i, label %.preheader.i

.preheader33.i:                                   ; preds = %bb.k
  br i1 %.not44.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBA_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEE7reverseB1x_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not44.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph39.i

.lr.ph.i:                                         ; preds = %.preheader33.i, %bb.l
  %.val3.i.i15.i = phi i64 [ %.val1.i.i13.i, %bb.l ], [ %.val1.i.i.i, %.preheader33.i ] ; 2 uses
  %.val2.i.i14.i = phi ptr [ %.val.i.i12.i, %bb.l ], [ %.val.i.i.i, %.preheader33.i ]
  %.sroa.01.0.i35.i = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader33.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.0.i35.i
  %.val8.i = load ptr, ptr %i.z, align 8, !alias.scope !379, !noalias !380, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %.val8.i, i64 8
  %.val.i.i12.i = load ptr, ptr %i.aa, align 8, !noalias !381, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val8.i, i64 16
  %.val1.i.i13.i = load i64, ptr %i.ab, align 8, !noalias !381, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i13.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i15.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i12.i, ptr nonnull readonly %.val2.i.i14.i, i64 %spec.store.select.i.i.i.i.i.i16.i), !alias.scope !383, !noalias !381 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub nsw i64 %.val1.i.i13.i, %.val3.i.i15.i
  %spec.select.i.i.i.i.i.i17.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i.i.i.i.i17.i, 0
  br i1 %i.ag, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB18_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB18_5sliceSB12_11sort_by_keyB13_NCNvB22_14generate_nodess1_0E0EB26_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.01.0.i35.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB18_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB18_5sliceSB12_11sort_by_keyB13_NCNvB22_14generate_nodess1_0E0EB26_.exit.i, label %.lr.ph.i

.lr.ph39.i:                                       ; preds = %.preheader.i, %bb.m
  %.val3.i.i21.i = phi i64 [ %.val1.i.i19.i, %bb.m ], [ %.val1.i.i.i, %.preheader.i ] ; 2 uses
  %.val2.i.i20.i = phi ptr [ %.val.i.i18.i, %bb.m ], [ %.val.i.i.i, %.preheader.i ]
  %.sroa.01.1.i38.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.1.i38.i
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !379, !noalias !380, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i18.i = load ptr, ptr %i.aj, align 8, !noalias !381, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i19.i = load i64, ptr %i.ak, align 8, !noalias !381, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i22.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i19.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i21.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i18.i, ptr nonnull readonly %.val2.i.i20.i, i64 %spec.store.select.i.i.i.i.i.i22.i), !alias.scope !384, !noalias !381 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub nsw i64 %.val1.i.i19.i, %.val3.i.i21.i
  %spec.select.i.i.i.i.i.i23.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i.i.i.i.i23.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB18_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB18_5sliceSB12_11sort_by_keyB13_NCNvB22_14generate_nodess1_0E0EB26_.exit.i

bb.m:                                             ; preds = %.lr.ph39.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i38.i, 1    ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.aq, %i.m
  br i1 %exitcond47.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB18_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB18_5sliceSB12_11sort_by_keyB13_NCNvB22_14generate_nodess1_0E0EB26_.exit.i, label %.lr.ph39.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB18_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB18_5sliceSB12_11sort_by_keyB13_NCNvB22_14generate_nodess1_0E0EB26_.exit.i: ; preds = %bb.m, %.lr.ph39.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i35.i, %.lr.ph.i ], [ %.sroa.01.1.i38.i, %.lr.ph39.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB18_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB18_5sliceSB12_11sort_by_keyB13_NCNvB22_14generate_nodess1_0E0EB26_.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  %or.cond.i = or i1 %i.y, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBA_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEE7reverseB1x_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 %.sroa.01.0)
  %i.at = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB19_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB19_5sliceSB13_11sort_by_keyB14_NCNvB23_14generate_nodess1_0E0EB27_.exit

bb.p:                                             ; preds = %bb.i
  %..i24.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1b_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1b_5sliceSB15_11sort_by_keyB16_NCNvB25_14generate_nodess1_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i24.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.au = shl nuw nsw i64 %..i24.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB19_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB19_5sliceSB13_11sort_by_keyB14_NCNvB23_14generate_nodess1_0E0EB27_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBA_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEE7reverseB1x_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB16_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEEB24_.exit.i.i.i, %.preheader33.i, %bb.n, %bb.j
  %.sroa.0.0.i30.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader33.i ], [ %.sroa.0.0.i677478.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB16_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEEB24_.exit.i.i.i ]
  %i.aw = shl nuw nsw i64 %.sroa.0.0.i30.i, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB19_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB19_5sliceSB13_11sort_by_keyB14_NCNvB23_14generate_nodess1_0E0EB27_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ay = phi i64 [ %i.as, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i677478.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.0.i677478.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB16_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEEB24_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.be, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB16_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEEB24_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bc = getelementptr [32 x i8], ptr %i.az, i64 %i.ba
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB16_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEEB24_.exit.i.i.i unwind label %bb.q, !noalias !380

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !380
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB16_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEEB24_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.be = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.be, %i.ay
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBA_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEE7reverseB1x_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB19_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB19_5sliceSB13_11sort_by_keyB14_NCNvB23_14generate_nodess1_0E0EB27_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBA_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEE7reverseB1x_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ax, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBA_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEE7reverseB1x_.exit.i ], [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bh = sub nsw i64 %factor, %i.bf
  %i.bi = add nuw i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1c_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1c_5sliceSB16_11sort_by_keyB17_NCNvB26_14generate_nodess1_0E0EB2a_.exit
  %.sroa.02.136 = phi i64 [ %i.bo, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1c_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1c_5sliceSB16_11sort_by_keyB17_NCNvB26_14generate_nodess1_0E0EB2a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1c_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1c_5sliceSB16_11sort_by_keyB17_NCNvB26_14generate_nodess1_0E0EB2a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bo = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1c_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1c_5sliceSB16_11sort_by_keyB17_NCNvB26_14generate_nodess1_0E0EB2a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1c_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1c_5sliceSB16_11sort_by_keyB17_NCNvB26_14generate_nodess1_0E0EB2a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1c_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1c_5sliceSB16_11sort_by_keyB17_NCNvB26_14generate_nodess1_0E0EB2a_.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !5 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 5 uses
  %i.bw = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 5 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.by ; 3 uses
  %i.ca = icmp samesign ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.135 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.135
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cf = shl nuw nsw i64 %i.bx, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1c_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1c_5sliceSB16_11sort_by_keyB17_NCNvB26_14generate_nodess1_0E0EB2a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cb, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1b_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1b_5sliceSB15_11sort_by_keyB16_NCNvB25_14generate_nodess1_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 288230376151711744) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.bv
  %i.cm = or i64 %i.bw, 1
  %i.cn = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1b_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1b_5sliceSB15_11sort_by_keyB16_NCNvB25_14generate_nodess1_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef range(i64 0, 288230376151711744) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB13_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB13_5sliceSBX_11sort_by_keyBY_NCNvB1X_14generate_nodess1_0E0EB21_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 288230376151711744) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cr = shl nuw nsw i64 %i.bx, 1
  %i.cs = or disjoint i64 %i.cr, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1c_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1c_5sliceSB16_11sort_by_keyB17_NCNvB26_14generate_nodess1_0E0EB2a_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1c_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1c_5sliceSB16_11sort_by_keyB17_NCNvB26_14generate_nodess1_0E0EB2a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cs, %bb.x ], [ %i.cf, %bb.t ] ; 2 uses
  %i.ct = icmp ugt i64 %i.bo, 1
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cu = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cv = lshr i64 %.sroa.018.0, 1
  %i.cw = add nuw i64 %i.cv, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cx = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cx, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cy = or i64 %1, 1
  %i.cz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 1
  %i.dc = xor i32 %i.db, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1b_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEENCINvMNtB1b_5sliceSB15_11sort_by_keyB16_NCNvB25_14generate_nodess1_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYBW_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cz, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cx, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB13_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB13_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB13_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1d_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionE7reverseBF_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !448, !noalias !449, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val3.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !448, !noalias !449, !noundef !5 ; 4 uses
  %.val4.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !450, !noalias !451, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val5.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !450, !noalias !451, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i, i64 %.val5.i.i.i)
  %i.s = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val4.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !452, !noalias !453 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %.val3.i.i.i, %.val5.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.t ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i, 0
  %i.w = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val6.i.i.i = load i8, ptr %i.x, align 8, !range !7, !alias.scope !448, !noalias !449 ; 3 uses
  %.val7.i.i.i = load i8, ptr %i.y, align 8, !range !7, !alias.scope !450, !noalias !451
  %i.z = icmp samesign ult i8 %.val6.i.i.i, %.val7.i.i.i
  %.sroa.0.0.i.i.i = select i1 %cond.i.i.i.i.i.i, i1 %i.z, i1 %i.w ; 2 uses
  %.not47.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %.sroa.0.0.i.i.i, label %.preheader.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.k
  br i1 %.not47.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionE7reverseBF_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not47.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph42.i

.lr.ph.i:                                         ; preds = %.preheader36.i, %bb.l
  %.val7.i.i15.i = phi i8 [ %.val6.i.i14.i, %bb.l ], [ %.val6.i.i.i, %.preheader36.i ]
  %.val5.i.i10.i = phi i64 [ %.val3.i.i8.i, %bb.l ], [ %.val3.i.i.i, %.preheader36.i ] ; 2 uses
  %.val4.i.i9.i = phi ptr [ %.val.i.i7.i, %bb.l ], [ %.val.i.i.i, %.preheader36.i ]
  %.sroa.01.0.i38.i = phi i64 [ %i.aj, %bb.l ], [ 2, %.preheader36.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i38.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %.val.i.i7.i = load ptr, ptr %i.aa, align 8, !alias.scope !456, !noalias !457, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val3.i.i8.i = load i64, ptr %i.ab, align 8, !alias.scope !456, !noalias !457, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i.i11.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i8.i, i64 %.val5.i.i10.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i7.i, ptr nonnull readonly %.val4.i.i9.i, i64 %spec.store.select.i.i.i.i.i.i.i11.i), !alias.scope !458, !noalias !459 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val3.i.i8.i, %.val5.i.i10.i
  %spec.select.i.i.i.i.i.i.i12.i = select i1 %i.ae, i64 %i.af, i64 %i.ad ; 2 uses
  %cond.i.i.i.i.i13.i = icmp eq i64 %spec.select.i.i.i.i.i.i.i12.i, 0
  %i.ag = icmp slt i64 %spec.select.i.i.i.i.i.i.i12.i, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val6.i.i14.i = load i8, ptr %i.ah, align 8, !range !7, !alias.scope !456, !noalias !457 ; 2 uses
  %i.ai = icmp samesign ult i8 %.val6.i.i14.i, %.val7.i.i15.i
  %.sroa.0.0.i.i16.i = select i1 %cond.i.i.i.i.i13.i, i1 %i.ai, i1 %i.ag
  br i1 %.sroa.0.0.i.i16.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1d_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = add nuw nsw i64 %.sroa.01.0.i38.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1d_.exit.i, label %.lr.ph.i

.lr.ph42.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i.i25.i = phi i8 [ %.val6.i.i24.i, %bb.m ], [ %.val6.i.i.i, %.preheader.i ]
  %.val5.i.i20.i = phi i64 [ %.val3.i.i18.i, %bb.m ], [ %.val3.i.i.i, %.preheader.i ] ; 2 uses
  %.val4.i.i19.i = phi ptr [ %.val.i.i17.i, %bb.m ], [ %.val.i.i.i, %.preheader.i ]
  %.sroa.01.1.i41.i = phi i64 [ %i.at, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i41.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %.val.i.i17.i = load ptr, ptr %i.ak, align 8, !alias.scope !462, !noalias !463, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val3.i.i18.i = load i64, ptr %i.al, align 8, !alias.scope !462, !noalias !463, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i.i21.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i18.i, i64 %.val5.i.i20.i)
  %i.am = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i17.i, ptr nonnull readonly %.val4.i.i19.i, i64 %spec.store.select.i.i.i.i.i.i.i21.i), !alias.scope !464, !noalias !465 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub i64 %.val3.i.i18.i, %.val5.i.i20.i
  %spec.select.i.i.i.i.i.i.i22.i = select i1 %i.ao, i64 %i.ap, i64 %i.an ; 2 uses
  %cond.i.i.i.i.i23.i = icmp eq i64 %spec.select.i.i.i.i.i.i.i22.i, 0
  %i.aq = icmp slt i64 %spec.select.i.i.i.i.i.i.i22.i, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val6.i.i24.i = load i8, ptr %i.ar, align 8, !range !7, !alias.scope !462, !noalias !463 ; 2 uses
  %i.as = icmp samesign ult i8 %.val6.i.i24.i, %.val7.i.i25.i
  %.sroa.0.0.i.i26.i = select i1 %cond.i.i.i.i.i23.i, i1 %i.as, i1 %i.aq
  br i1 %.sroa.0.0.i.i26.i, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1d_.exit.i

bb.m:                                             ; preds = %.lr.ph42.i
  %i.at = add nuw nsw i64 %.sroa.01.1.i41.i, 1    ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.at, %i.m
  br i1 %exitcond50.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1d_.exit.i, label %.lr.ph42.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1d_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph42.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i41.i, %.lr.ph42.i ], [ %.sroa.01.0.i38.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.au = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.au)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1d_.exit.i
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  %or.cond.not.i = and i1 %.sroa.0.0.i.i.i, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionE7reverseBF_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0)
  %i.aw = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB13_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

bb.p:                                             ; preds = %bb.i
  %..i27.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i27.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  %i.ax = shl nuw nsw i64 %..i27.i, 1
  %i.ay = or disjoint i64 %i.ax, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB13_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionE7reverseBF_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEEB1b_.exit.i.i.i, %.preheader36.i, %bb.n, %bb.j
  %.sroa.0.0.i33.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader36.i ], [ %.sroa.0.0.i707781.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEEB1b_.exit.i.i.i ]
  %i.az = shl nuw nsw i64 %.sroa.0.0.i33.i, 1
  %i.ba = or disjoint i64 %i.az, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB13_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.bb = phi i64 [ %i.av, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i707781.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i707781.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEEB1b_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bh, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEEB1b_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bd = xor i64 %.sroa.0.017.i.i.i, -1
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bf = getelementptr [24 x i8], ptr %i.bc, i64 %i.bd
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, i64 noundef 3)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEEB1b_.exit.i.i.i unwind label %bb.q, !noalias !466

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !466
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEEB1b_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.bb
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionE7reverseBF_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB13_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionE7reverseBF_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ba, %_RNvMNtCshzWfHUSfYae_4core5sliceSTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionE7reverseBF_.exit.i ], [ %i.ay, %bb.p ], [ %i.aw, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit
  %.sroa.02.136 = phi i64 [ %i.br, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.br = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 5 uses
  %i.bz = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 5 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cb ; 3 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.135 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.135
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ce, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 384307168202282326) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 384307168202282326) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYBX_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 384307168202282326) %i.ca, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.by, ptr noalias nofree noundef nonnull %5)
  %i.cu = shl nuw nsw i64 %i.ca, 1
  %i.cv = or disjoint i64 %i.cu, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cv, %bb.x ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cw = icmp ugt i64 %i.br, 1
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cx = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cy = lshr i64 %.sroa.018.0, 1
  %i.cz = add nuw i64 %i.cy, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.da = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.da, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = or i64 %1, 1
  %i.dc = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrc11sort_by_keyNtNtB7_6string6StringNCNvBC_5lowers0_0E0BG_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume unwind label %bb.h

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val2 = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val4 = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val2, i64 range(i64 0, -9223372036854775808) %.val4)
  %i.j = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val3, i64 %spec.store.select.i.i.i.i), !alias.scope !470 ; 2 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit7 unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.f ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit7: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit
  %i.o = icmp eq i32 %i.j, 0
  %i.p = sub nsw i64 %.val2, %.val4
  %i.q = sext i32 %i.j to i64
  %spec.select.i.i.i.i = select i1 %i.o, i64 %i.p, i64 %i.q
  %i.r = icmp slt i64 %spec.select.i.i.i.i, 0
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.r

bb.h:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrc11sort_by_keyNtNtB7_6string6StringNCNvBC_5lowers_0E0BG_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume unwind label %bb.h

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val2 = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val4 = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val2, i64 range(i64 0, -9223372036854775808) %.val4)
  %i.j = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val3, i64 %spec.store.select.i.i.i.i), !alias.scope !474 ; 2 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit7 unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.f ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit7: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit
  %i.o = icmp eq i32 %i.j, 0
  %i.p = sub nsw i64 %.val2, %.val4
  %i.q = sext i32 %i.j to i64
  %spec.select.i.i.i.i = select i1 %i.o, i64 %i.p, i64 %i.q
  %i.r = icmp slt i64 %spec.select.i.i.i.i, 0
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_0
