Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.05?download=true
inline.NumInlined: 1053
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry000Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #32
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !728 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !728 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !728 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !728 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !12
  %i.t = load i8, ptr %i.r, align 1, !noundef !12
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !723, !noalias !726
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !726, !noalias !723
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !723, !noalias !726
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !726, !noalias !723
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstoreNtB7_10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.10116.i.i.i.i = alloca [24 x i8], align 8 ; 10 uses
  %.sroa.11.i.i.i.i = alloca [32 x i8], align 8   ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.3.sroa.2.i.i.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.3.sroa.3.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.5104.i.i.i.i = alloca [56 x i8], align 8 ; 9 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.13.i.i.i.i = alloca [56 x i8], align 8   ; 8 uses
  %.sroa.5.i16.i.i.i = alloca [56 x i8], align 8  ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [48 x i8], align 8                ; 14 uses
  %i.s = alloca [72 x i8], align 8                ; 17 uses
  %.sroa.3.i.i.i.i = alloca [24 x i8], align 8    ; 7 uses
  %.sroa.5.i.i.i.i = alloca [40 x i8], align 8    ; 6 uses
  %i.t = alloca [72 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.1152.i.i.i = alloca [24 x i8], align 8   ; 7 uses
  %.sroa.1253.i.i.i = alloca [32 x i8], align 8   ; 7 uses
  %.sroa.838.sroa.6.i.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.838.sroa.7.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.10186.i.i = alloca [24 x i8], align 8    ; 7 uses
  %.sroa.11187.i.i = alloca [32 x i8], align 16   ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [48 x i8], align 8               ; 10 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [72 x i8], align 8               ; 11 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [32 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [8 x i8], align 8                ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 6 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.6136.i.i = alloca [24 x i8], align 8     ; 7 uses
  %.sroa.11.i.i = alloca [32 x i8], align 8       ; 5 uses
  %.sroa.10132.i.i = alloca [24 x i8], align 8    ; 7 uses
  %i.aw = alloca [32 x i8], align 8               ; 12 uses
  %i.ax = alloca [192 x i8], align 8              ; 6 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 7 uses
  %.sroa.6.i = alloca [32 x i8], align 16         ; 7 uses
  %.sroa.7.i = alloca [16 x i8], align 16         ; 6 uses
  %i.ay = alloca [96 x i8], align 16              ; 11 uses
  %i.az = alloca [952 x i8], align 8              ; 7 uses
  %i.ba = alloca [912 x i8], align 8              ; 13 uses
  %i.bb = alloca [24 x i8], align 8               ; 9 uses
  %i.bc = alloca [8 x i8], align 8                ; 5 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [40 x i8], align 8               ; 8 uses
  %i.bg = alloca [24 x i8], align 8               ; 9 uses
  %i.bh = alloca [8 x i8], align 8                ; 5 uses
  %i.bi = alloca [32 x i8], align 8               ; 8 uses
  %i.bj = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.1120 = alloca [24 x i8], align 8         ; 2 uses
  %.sroa.12 = alloca [32 x i8], align 16          ; 2 uses
  %.sroa.13 = alloca [16 x i8], align 16          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 1064 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !334, !noundef !12
  switch i8 %i.bl, label %default.unreachable46 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.i
  ]

default.unreachable46:                            ; preds = %bb.gi, %bb.dz, %bb.dv, %bb.bc, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bm = load ptr, ptr %1, align 8, !nonnull !12, !align !50, !noundef !12 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 312
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !729, !nonnull !12, !noundef !12 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 320
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !729, !nonnull !12, !align !50, !noundef !12 ; 3 uses
  %i.bt = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !noalias !729
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bq, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bs, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !240, !invariant.load !12
  %i.bz = add nsw i64 %i.by, -1
  %i.ca = and i64 %i.bz, -16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cc, ptr %i.cd, align 8
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bs, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.bo, ptr %.sroa.814.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 106
  br label %bb.l

bb.d:                                             ; preds = %bb.kz, %.body
  %.pn2 = phi { ptr, i32 } [ %i.aeh, %bb.kz ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !738, !nonnull !12, !noundef !12
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !738
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cg) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ld

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.e, %bb.lc
  %.pn4 = phi { ptr, i32 } [ %i.aem, %bb.lc ], [ %.pn2, %bb.d ], [ %.pn2, %bb.e ]
  store i8 2, ptr %i.bk, align 8
  resume { ptr, i32 } %.pn4

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #34
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #34
  unreachable

bb.h:                                             ; preds = %bb.as, %bb.ar
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.h
  %i.cl = phi ptr [ %i.cm, %bb.h ], [ %i.fb, %bb.aq ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %bb.h ], [ %.pn24.i, %bb.aq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.cl) #30
          to label %bb.d unwind label %bb.ld

bb.i:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 106
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !360, !noalias !739
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 106 ; 3 uses
  switch i8 %.pre, label %default.unreachable46 [
    i8 0, label %bb.l
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !739
  br label %bb.at

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !739
  br label %bb.bc

bb.l:                                             ; preds = %.thread, %bb.i
  %i.co = phi ptr [ %i.cf, %.thread ], [ %i.cn, %bb.i ] ; 6 uses
  %i.cp = phi ptr [ %i.ce, %.thread ], [ %i.cm, %bb.i ] ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  store i8 0, ptr %i.cq, align 8, !noalias !739
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 105 ; 3 uses
  store i8 0, ptr %i.cr, align 1, !noalias !739
  %i.cs = load ptr, ptr %i.cp, align 8, !noalias !739, !nonnull !12, !noundef !12
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !739, !nonnull !12, !align !50, !noundef !12
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !739, !noundef !12
  store i64 %i.cx, ptr %i.cv, align 8, !noalias !739
  %i.cy = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !739
  %i.cz = icmp samesign ult i64 %i.cy, 3
  br i1 %i.cz, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.da = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE, i64 16) monotonic, align 8, !noalias !739 ; 2 uses
  %i.db = icmp ult i8 %i.da, 3
  br i1 %i.db, label %bb.p, label %bb.n, !prof !743

bb.n:                                             ; preds = %bb.m
  %i.dc = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE) #36
          to label %bb.p unwind label %bb.o, !noalias !744

bb.o:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i = phi i8 [ %i.da, %bb.m ], [ %i.dc, %bb.n ] ; 2 uses
  %i.de = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.de, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = load ptr, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE, align 8, !noalias !739, !nonnull !12, !align !50, !noundef !12
  %i.dg = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.df, i8 noundef %.sroa.0.0.i.i)
          to label %bb.s unwind label %bb.r, !noalias !744

bb.r:                                             ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.s:                                             ; preds = %bb.q
  br i1 %i.dg, label %bb.af, label %bb.v

bb.t:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !739
  br label %bb.aq

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.v
  store i8 1, ptr %i.cq, align 8, !noalias !739
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !739
  br label %bb.an

bb.v:                                             ; preds = %bb.s, %bb.p, %bb.l
end_hunk_0
begin_hunk_1_@_RNCNvXs1_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstoreNtB7_10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %bb.aj unwind label %bb.ai, !noalias !744

bb.ai:                                            ; preds = %bb.ah
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.bg) #30
          to label %.body35.i unwind label %bb.ae, !noalias !744

bb.aj:                                            ; preds = %bb.ah
  store i8 1, ptr %i.cq, align 8, !noalias !739
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i34.i unwind label %bb.ak, !noalias !744

bb.ak:                                            ; preds = %bb.aj
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body35.i unwind label %bb.al, !noalias !744

bb.al:                                            ; preds = %bb.ak
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !744
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i34.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit38.i unwind label %bb.am, !noalias !744

.body35.i:                                        ; preds = %bb.am, %bb.ak, %bb.ai, %bb.ag
  %.pn9.i = phi { ptr, i32 } [ %i.eb, %bb.ag ], [ %i.ei, %bb.ai ], [ %i.el, %bb.am ], [ %i.ej, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !739
  br label %bb.aq

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i34.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body35.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit38.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !739
  br label %bb.an

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit38.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !739
  store i8 1, ptr %i.cr, align 1, !noalias !739
  %i.em = load i64, ptr %i.cv, align 8, !noalias !739, !noundef !12
  %i.en = getelementptr inbounds nuw i8, ptr %i.ba, i64 208
  store i64 %i.em, ptr %i.en, align 8, !noalias !739
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ba, i64 192
  store ptr %i.cs, ptr %i.eo, align 8, !noalias !739
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  store ptr %i.cu, ptr %i.ep, align 8, !noalias !739
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ba, i64 241
  store i8 0, ptr %i.eq, align 1, !noalias !739
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.val28.i = load i64, ptr %i.er, align 8, !range !245, !noalias !739, !noundef !12
  %.not.i30.i = icmp eq i64 %.val28.i, 2
  store i8 0, ptr %i.cr, align 1, !noalias !739
  br i1 %.not.i30.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %i.es, ptr noundef nonnull align 8 dereferenceable(912) %i.ba, i64 912, i1 false), !noalias !739
  store i8 0, ptr %i.cq, align 8, !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.er, i64 40, i1 false), !noalias !739
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(952) %i.et, ptr noundef nonnull align 8 dereferenceable(952) %i.az, i64 952, i1 false), !noalias !739
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %i.eu, ptr noundef nonnull align 8 dereferenceable(912) %i.ba, i64 912, i1 false), !noalias !739
  br label %bb.bc

.body40.i:                                        ; preds = %bb.kr, %.body43.i, %bb.bb, %bb.ay, %bb.au
  %i.ev = phi ptr [ %i.fd, %bb.bb ], [ %i.fd, %bb.ay ], [ %i.fd, %bb.au ], [ %i.fs, %bb.kr ], [ %i.fs, %.body43.i ] ; 2 uses
  %i.ew = phi ptr [ %i.fe, %bb.bb ], [ %i.fe, %bb.ay ], [ %i.fe, %bb.au ], [ %i.ft, %bb.kr ], [ %i.ft, %.body43.i ] ; 2 uses
  %.pn21.pn.i = phi { ptr, i32 } [ %i.fl, %bb.bb ], [ %i.fj, %bb.ay ], [ %i.fg, %bb.au ], [ %i.adz, %bb.kr ], [ %.pn19.i, %.body43.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 105 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !range !17, !noalias !739, !noundef !12
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.kv, label %bb.ku

bb.aq:                                            ; preds = %bb.kw, %bb.ku, %bb.kt, %.body35.i, %bb.t, %bb.r, %bb.o
  %i.fa = phi ptr [ %i.fm, %bb.kt ], [ %i.ev, %bb.kw ], [ %i.ev, %bb.ku ], [ %i.co, %.body35.i ], [ %i.co, %bb.o ], [ %i.co, %bb.t ], [ %i.co, %bb.r ]
  %i.fb = phi ptr [ %i.fn, %bb.kt ], [ %i.ew, %bb.kw ], [ %i.ew, %bb.ku ], [ %i.cp, %.body35.i ], [ %i.cp, %bb.o ], [ %i.cp, %bb.t ], [ %i.cp, %bb.r ]
  %.pn24.i = phi { ptr, i32 } [ %i.aeb, %bb.kt ], [ %.pn21.pn.i, %bb.kw ], [ %.pn21.pn.i, %bb.ku ], [ %.pn9.i, %.body35.i ], [ %i.dd, %bb.o ], [ %.pn2.i, %bb.t ], [ %i.dh, %bb.r ]
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %i.fc, align 8, !noalias !739
  store i8 2, ptr %i.fa, align 2, !noalias !739
  br label %.body

bb.ar:                                            ; preds = %bb.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #34
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #34
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ao, %bb.j
  %i.fd = phi ptr [ %i.co, %bb.ao ], [ %i.cn, %bb.j ] ; 5 uses
  %i.fe = phi ptr [ %i.cp, %bb.ao ], [ %i.cm, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !739
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  invoke void @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.ay, ptr noundef nonnull align 8 %i.ff, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.av unwind label %bb.au, !noalias !744

bb.au:                                            ; preds = %bb.at
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !739
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ff) #30
          to label %.body40.i unwind label %bb.ae, !noalias !744

bb.av:                                            ; preds = %bb.at
  %i.fh = load i64, ptr %i.ay, align 16, !range !762, !noalias !739, !noundef !12 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, -9223372036854775710
  br i1 %i.fi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !739
  br label %bb.kx

bb.ax:                                            ; preds = %bb.av
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !739
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !noalias !739
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, i64 24, i1 false), !noalias !739
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.0..sroa_idx.i, i64 32, i1 false), !noalias !739
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !739
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ff)
          to label %bb.az unwind label %bb.ay, !noalias !744

bb.ay:                                            ; preds = %bb.ax
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ff) #30
          to label %.body40.i unwind label %bb.ba, !noalias !744

bb.az:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ff)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bb, !noalias !744

bb.ba:                                            ; preds = %bb.ay
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !744
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.kq, %bb.az
  %i.fm = phi ptr [ %i.fd, %bb.az ], [ %i.fs, %bb.kq ] ; 2 uses
  %i.fn = phi ptr [ %i.fe, %bb.az ], [ %i.ft, %bb.kq ] ; 2 uses
  %.sroa.050.0.i = phi i64 [ %i.fh, %bb.az ], [ %.sroa.0181.1.i.i, %bb.kq ]
  %.sroa.3.0.i = phi i64 [ %.sroa.3.0.copyload.i, %bb.az ], [ %.sroa.5182.1.i.i, %bb.kq ]
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.az ], [ %.sroa.9184.1.i.i, %bb.kq ]
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 105
  store i8 0, ptr %i.fo, align 1, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !739
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 8, !range !17, !noalias !739, !noundef !12
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.ks, label %bb.ky

bb.bc:                                            ; preds = %bb.ap, %bb.k
  %i.fs = phi ptr [ %i.co, %bb.ap ], [ %i.cn, %bb.k ] ; 4 uses
  %i.ft = phi ptr [ %i.cp, %bb.ap ], [ %i.cm, %bb.k ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10186.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11187.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6136.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !739
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 353 ; 4 uses
  %i.fw = load i8, ptr %i.fv, align 1, !range !360, !noalias !763, !noundef !12
  switch i8 %i.fw, label %default.unreachable46 [
    i8 0, label %bb.bd
    i8 1, label %bb.bl
    i8 2, label %bb.bm
    i8 3, label %bb.bo
    i8 4, label %bb.dv
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.fx, align 8, !noalias !763
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !763, !noundef !12
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utils23commit_uri_from_version(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ga, i64 noundef %i.fz)
          to label %bb.bf unwind label %bb.be, !noalias !767

bb.be:                                            ; preds = %bb.bd
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !763, !nonnull !12, !noundef !12
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !763, !nonnull !12, !align !50, !noundef !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gh = load ptr, ptr %i.gg, align 8, !invariant.load !12, !noalias !767, !nonnull !12
  %i.gi = invoke { ptr, ptr } %i.gh(ptr noundef nonnull %i.gd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ga)
          to label %bb.bh unwind label %bb.bg, !noalias !767 ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ga) #30
          to label %bb.bj unwind label %bb.bi, !noalias !767

bb.bh:                                            ; preds = %bb.bf
  %i.gk = extractvalue { ptr, ptr } %i.gi, 0
  %i.gl = extractvalue { ptr, ptr } %i.gi, 1
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %i.gk, ptr %i.gm, align 8, !noalias !763
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %i.gl, ptr %i.gn, align 8, !noalias !763
  br label %bb.bo

bb.bi:                                            ; preds = %bb.kn, %bb.ki, %.body105.i.i, %bb.dt, %bb.cv, %.body.i.i, %bb.bn, %bb.bg
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !767
  unreachable

bb.bj:                                            ; preds = %bb.kn, %bb.km, %bb.kh, %.body91.i.i, %.body.i.i, %bb.bg
  %.pn46.i.i = phi { ptr, i32 } [ %i.adj, %bb.kh ], [ %.pn43.i.i, %.body91.i.i ], [ %.pn43.i.i, %bb.kn ], [ %.pn43.i.i, %bb.km ], [ %.pn.i.i, %.body.i.i ], [ %i.gj, %bb.bg ]
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.gp, align 8, !noalias !763
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.be
  %.pn46.pn.i.i = phi { ptr, i32 } [ %.pn46.i.i, %bb.bj ], [ %i.gb, %bb.be ]
  store i8 2, ptr %i.fv, align 1, !noalias !763
  br label %.body43.i

bb.bl:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #34
          to label %.noexc45.i unwind label %bb.ko, !noalias !744

.noexc45.i:                                       ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #34
          to label %.noexc46.i unwind label %bb.ko, !noalias !744

.noexc46.i:                                       ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bo
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %.val83.i.i = load ptr, ptr %i.gs, align 8, !noalias !763
  %i.gr = getelementptr i8, ptr %1, i64 368
  %.val84.i.i = load ptr, ptr %i.gr, align 8, !noalias !763, !nonnull !12, !align !50, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val83.i.i, ptr nonnull %.val84.i.i) #30
          to label %.body.i.i unwind label %bb.bi, !noalias !767

bb.bo:                                            ; preds = %bb.bh, %bb.bc
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 5 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bp unwind label %bb.bn, !noalias !767

bb.bp:                                            ; preds = %bb.bo
  %i.gt = load i64, ptr %i.ax, align 8, !range !51, !noalias !763, !noundef !12
  %i.gu = icmp eq i64 %i.gt, -9223372036854775807
  br i1 %i.gu, label %bb.kp, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  store i8 1, ptr %i.gv, align 8, !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.fu, ptr noundef nonnull align 8 dereferenceable(192) %i.ax, i64 192, i1 false), !noalias !763
  %.val81.i.i = load ptr, ptr %i.gs, align 8, !noalias !763 ; 5 uses
  %i.gw = getelementptr i8, ptr %1, i64 368
  %.val82.i.i = load ptr, ptr %i.gw, align 8, !noalias !763, !nonnull !12, !align !50, !noundef !12 ; 5 uses
  %i.gx = load ptr, ptr %.val82.i.i, align 8, !invariant.load !12, !noalias !767 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val81.i.i) ]
  invoke void %i.gx(ptr noundef nonnull %.val81.i.i)
          to label %bb.bs unwind label %bb.bu, !noalias !767

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.gy = getelementptr inbounds nuw i8, ptr %.val82.i.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !range !227, !invariant.load !12, !noalias !767 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hb = getelementptr inbounds nuw i8, ptr %.val82.i.i, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !range !240, !invariant.load !12, !noalias !767
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val81.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val81.i.i, i64 noundef range(i64 1, 0) %i.gz, i64 noundef range(i64 1, 536870913) %i.hc) #35, !noalias !767
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.bu:                                            ; preds = %bb.br
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val82.i.i, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !range !227, !invariant.load !12, !noalias !767 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %.body.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hh = getelementptr inbounds nuw i8, ptr %.val82.i.i, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !range !240, !invariant.load !12, !noalias !767
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val81.i.i, i64 noundef range(i64 1, 0) %i.hf, i64 noundef range(i64 1, 536870913) %i.hi) #35, !noalias !767
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bv, %bb.bu, %bb.bn
  %.pn.i.i = phi { ptr, i32 } [ %i.gq, %bb.bn ], [ %i.hd, %bb.bu ], [ %i.hd, %bb.bv ]
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.hj) #30
          to label %bb.bj unwind label %bb.bi, !noalias !767

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.bt, %bb.bs
  %i.hk = load i64, ptr %i.fu, align 8, !range !21, !noalias !763, !noundef !12
  %i.hl = icmp eq i64 %i.hk, -9223372036854775808
  br i1 %i.hl, label %bb.bw, label %.thread.i.i

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !range !471, !noalias !763, !noundef !12 ; 2 uses
  %i.ho = icmp ne i64 %i.hn, -9223372036854775800
  call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp eq i64 %i.hn, -9223372036854775801
  br i1 %i.hp, label %bb.bx, label %bb.cw

.thread.i.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.gs, ptr noundef nonnull align 8 dereferenceable(192) %i.fu, i64 192, i1 false), !noalias !763
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10132.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1152.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1253.i.i.i)
  br label %bb.dw

bb.bx:                                            ; preds = %bb.bw
  %i.hq = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !763
  %i.hr = icmp samesign ult i64 %i.hq, 2
  br i1 %i.hr, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %bb.bx
  %i.hs = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !763 ; 2 uses
  %i.ht = icmp ult i8 %i.hs, 3
  br i1 %i.ht, label %bb.cb, label %bb.bz, !prof !743

bb.bz:                                            ; preds = %bb.by
  %i.hu = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE) #36
          to label %bb.cb unwind label %bb.ca, !noalias !767

bb.ca:                                            ; preds = %bb.bz
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cb:                                            ; preds = %bb.bz, %bb.by
  %.sroa.0.0.i.i.i = phi i8 [ %i.hs, %bb.by ], [ %i.hu, %bb.bz ] ; 2 uses
  %i.hw = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.hw, label %bb.cf, label %bb.cd

bb.cc:                                            ; preds = %bb.cd
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cd:                                            ; preds = %bb.cb
  %i.hy = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !763, !nonnull !12, !align !50, !noundef !12
  %i.hz = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hy, i8 noundef %.sroa.0.0.i.i.i)
          to label %bb.ce unwind label %bb.cc, !noalias !767

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.hz, label %bb.cp, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cb, %bb.bx
  %i.ia = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !763
  %.not212.i.i = icmp eq i8 %i.ia, 0
  br i1 %.not212.i.i, label %bb.cg, label %bb.cs

bb.cg:                                            ; preds = %bb.cf
  %i.ib = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !763 ; 2 uses
  %i.ic = icmp ult i64 %i.ib, 6
  call void @llvm.assume(i1 %i.ic)
  %i.id = icmp samesign ugt i64 %i.ib, 3
  br i1 %i.id, label %bb.ci, label %bb.cs

bb.ch:                                            ; preds = %bb.ci
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ci:                                            ; preds = %bb.cg
  %i.if = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !763, !nonnull !12, !align !50, !noundef !12 ; 3 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 32
  %.val79.i.i = load ptr, ptr %i.ig, align 8, !noalias !767, !nonnull !12, !noundef !12
  %i.ih = getelementptr i8, ptr %i.if, i64 40
  %.val80.i.i = load i64, ptr %i.ih, align 8, !noalias !767, !noundef !12
  store i64 4, ptr %i.aj, align 8, !alias.scope !768, !noalias !763
  %.sroa.6165.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.val79.i.i, ptr %.sroa.6165.0..sroa_idx.i.i, align 8, !alias.scope !768, !noalias !763
  %.sroa.8166.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.val80.i.i, ptr %.sroa.8166.0..sroa_idx.i.i, align 8, !alias.scope !768, !noalias !763
  %i.ii = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cj unwind label %bb.ch, !noalias !767 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.ij = extractvalue { ptr, ptr } %i.ii, 0      ; 2 uses
  %i.ik = extractvalue { ptr, ptr } %i.ii, 1      ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !invariant.load !12, !noalias !767, !nonnull !12
  %i.in = invoke noundef zeroext i1 %i.im(ptr noundef %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.cl unwind label %bb.ck, !noalias !767

bb.ck:                                            ; preds = %bb.cj
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cl:                                            ; preds = %bb.cj
  br i1 %i.in, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !763
  %i.ip = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !763, !nonnull !12, !align !50, !noundef !12
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !763
  store ptr @30, ptr %i.ag, align 8, !noalias !763
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr inttoptr (i64 45 to ptr), ptr %i.ir, align 8, !noalias !763
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !763
  %i.is = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @5, ptr %i.is, align 8, !noalias !763
  store i64 1, ptr %i.ai, align 8, !alias.scope !772, !noalias !775
  %.sroa.4.0..sroa_idx.i87.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i87.i.i, align 8, !alias.scope !772, !noalias !775
  %.sroa.5.0..sroa_idx.i88.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i88.i.i, align 8, !alias.scope !772, !noalias !775
  %i.it = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.iq, ptr %i.it, align 8, !alias.scope !772, !noalias !775
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.if, ptr noundef nonnull %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ik, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.co unwind label %bb.cn, !noalias !767

bb.cn:                                            ; preds = %bb.cm
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !763
  br label %bb.cv

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !763
  br label %bb.cs

bb.cp:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !763
  %i.iv = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !763, !nonnull !12, !align !50, !noundef !12
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !763
  store ptr @30, ptr %i.ak, align 8, !noalias !763
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr inttoptr (i64 45 to ptr), ptr %i.ix, align 8, !noalias !763
  store ptr %i.ak, ptr %i.al, align 8, !noalias !763
  %i.iy = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @5, ptr %i.iy, align 8, !noalias !763
  store i64 1, ptr %i.am, align 8, !noalias !763
  %.sroa.6158.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %.sroa.6158.0..sroa_idx.i.i, align 8, !noalias !763
  %.sroa.7159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 1, ptr %.sroa.7159.0..sroa_idx.i.i, align 8, !noalias !763
  %.sroa.8160.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.iw, ptr %.sroa.8160.0..sroa_idx.i.i, align 8, !noalias !763
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.am)
          to label %bb.cr unwind label %bb.cq, !noalias !767

bb.cq:                                            ; preds = %bb.cp
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !763
  br label %bb.cv

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !763
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ka, %bb.dr, %bb.cr, %bb.co, %bb.cl, %bb.cg, %bb.cf
  %.sroa.0181.0.i.i = phi i64 [ -9223372036854775711, %bb.ka ], [ -9223372036854775743, %bb.dr ], [ -9223372036854775711, %bb.co ], [ -9223372036854775711, %bb.cl ], [ -9223372036854775711, %bb.cg ], [ -9223372036854775711, %bb.cf ], [ -9223372036854775711, %bb.cr ] ; 3 uses
  %.sroa.5182.0.i.i = phi i64 [ %i.abl, %bb.ka ], [ %.sroa.0195.0.copyload.i.i, %bb.dr ], [ 0, %bb.co ], [ 0, %bb.cl ], [ 0, %bb.cg ], [ 0, %bb.cf ], [ 0, %bb.cr ] ; 3 uses
  %.sroa.9184.0.i.i = phi ptr [ %.sroa.4193.0.copyload.i.i, %bb.ka ], [ %.sroa.5196.0.copyload.i.i, %bb.dr ], [ undef, %bb.co ], [ undef, %bb.cl ], [ undef, %bb.cg ], [ undef, %bb.cf ], [ undef, %bb.cr ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ja)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.ct, !noalias !767

bb.ct:                                            ; preds = %bb.cs
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ja)
          to label %.body91.i.i unwind label %bb.cu, !noalias !767

bb.cu:                                            ; preds = %bb.ct
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !767
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.cs
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ja)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.ke, !noalias !767

bb.cv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.ds, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.cc, %bb.ca
  %.pn40.pn.i.i = phi { ptr, i32 } [ %i.iz, %bb.cq ], [ %.pn32.ph.i.i, %bb.ds ], [ %.pn18.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.iu, %bb.cn ], [ %i.io, %bb.ck ], [ %i.hx, %bb.cc ], [ %i.ie, %bb.ch ], [ %i.hv, %bb.ca ]
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.jd) #30
          to label %.body91.i.i unwind label %bb.bi, !noalias !767

bb.cw:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !763
  store i8 0, ptr %i.gv, align 8, !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.hm, i64 72, i1 false), !noalias !763
  %i.je = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !763
  %i.jf = icmp samesign ult i64 %i.je, 5
  br i1 %i.jf, label %bb.cx, label %bb.de
end_hunk_1
begin_hunk_2_@_RNCNvXs1_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstoreNtB7_10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  %i.ach = invoke noundef zeroext i1 %i.acg(ptr noundef %i.acd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.jw unwind label %bb.jv, !noalias !767

bb.jv:                                            ; preds = %bb.ju
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

bb.jw:                                            ; preds = %bb.ju
  br i1 %i.ach, label %bb.jx, label %bb.ka

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !763
  %i.acj = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !763, !nonnull !12, !align !50, !noundef !12
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !763
  store ptr @33, ptr %i.ao, align 8, !noalias !763
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.acl, align 8, !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !763
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val86.i.i = load i64, ptr %i.acm, align 8, !noalias !763, !noundef !12
  store i64 %.val86.i.i, ptr %i.an, align 8, !noalias !763
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !763
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @5, ptr %i.acn, align 8, !noalias !763
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.an, ptr %i.aco, align 8, !noalias !763
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr @34, ptr %i.acp, align 8, !noalias !763
  store i64 1, ptr %i.aq, align 8, !alias.scope !981, !noalias !984
  %.sroa.4.0..sroa_idx.i114.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i114.i.i, align 8, !alias.scope !981, !noalias !984
  %.sroa.5.0..sroa_idx.i115.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i115.i.i, align 8, !alias.scope !981, !noalias !984
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ack, ptr %i.acq, align 8, !alias.scope !981, !noalias !984
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abz, ptr noundef nonnull %i.acd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ace, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %bb.jz unwind label %bb.jy, !noalias !767

bb.jy:                                            ; preds = %bb.jx
  %i.acr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !763
  br label %bb.ki

bb.jz:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !763
  br label %bb.ka

bb.ka:                                            ; preds = %bb.kd, %bb.jz, %bb.jw, %bb.jr, %bb.jq
  %.sroa.4193.0.copyload.i.i = load ptr, ptr %.sroa.4142.0..sroa_idx.i.i, align 8, !noalias !763
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.6136.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10186.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.acs, i64 16, i1 false), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !763
  br label %bb.cs

bb.kb:                                            ; preds = %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !763
  %i.act = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !763, !nonnull !12, !align !50, !noundef !12
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !763
  store ptr @33, ptr %i.at, align 8, !noalias !763
  %i.acv = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.acv, align 8, !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !763
  %i.acw = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val85.i.i = load i64, ptr %i.acw, align 8, !noalias !763, !noundef !12
  store i64 %.val85.i.i, ptr %i.as, align 8, !noalias !763
  store ptr %i.at, ptr %i.au, align 8, !noalias !763
  %i.acx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @5, ptr %i.acx, align 8, !noalias !763
  %i.acy = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.as, ptr %i.acy, align 8, !noalias !763
  %i.acz = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr @34, ptr %i.acz, align 8, !noalias !763
  store i64 1, ptr %i.av, align 8, !noalias !763
  %.sroa.7146.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %.sroa.7146.0..sroa_idx.i.i, align 8, !noalias !763
  %.sroa.8147.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 2, ptr %.sroa.8147.0..sroa_idx.i.i, align 8, !noalias !763
  %.sroa.9148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.acu, ptr %.sroa.9148.0..sroa_idx.i.i, align 8, !noalias !763
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry000Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.av)
          to label %bb.kd unwind label %bb.kc, !noalias !767

bb.kc:                                            ; preds = %bb.kb
  %i.ada = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !763
  br label %bb.ki

bb.kd:                                            ; preds = %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !763
  br label %bb.ka

.body91.i.i:                                      ; preds = %bb.kk, %bb.ke, %bb.cv, %bb.ct
  %.pn43.i.i = phi { ptr, i32 } [ %.pn40.pn.i.i, %bb.cv ], [ %i.jb, %bb.ct ], [ %i.adc, %bb.ke ], [ %i.adr, %bb.kk ] ; 3 uses
  %i.adb = load i64, ptr %i.fu, align 8, !range !21, !noalias !763, !noundef !12
  %.not45.i.i = icmp eq i64 %i.adb, -9223372036854775808
  br i1 %.not45.i.i, label %bb.km, label %bb.bj

bb.ke:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.add = load i64, ptr %i.fu, align 8, !range !21, !noalias !763, !noundef !12
  %i.ade = icmp eq i64 %i.add, -9223372036854775808
  br i1 %i.ade, label %bb.kf, label %bb.kq

bb.kf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.adg = load i8, ptr %i.adf, align 8, !range !17, !noalias !763, !noundef !12
  %i.adh = trunc nuw i8 %i.adg to i1
  br i1 %i.adh, label %bb.kg, label %bb.kq

bb.kg:                                            ; preds = %bb.kf
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.adi)
          to label %bb.kq unwind label %bb.kh, !noalias !767

bb.kh:                                            ; preds = %bb.kg
  %i.adj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ki:                                            ; preds = %bb.kc, %bb.jy, %bb.jv, %bb.js, %bb.jn, %bb.jl
  %.pn14.pn.pn.i.i = phi { ptr, i32 } [ %i.ada, %bb.kc ], [ %i.aby, %bb.js ], [ %i.abp, %bb.jl ], [ %i.acr, %bb.jy ], [ %i.aci, %bb.jv ], [ %i.abr, %bb.jn ]
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.adk = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.adl = load ptr, ptr %i.adk, align 8, !noalias !993, !nonnull !12, !noundef !12
  %i.adm = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.adn = load ptr, ptr %.sroa.4142.0..sroa_idx.i.i, align 8, !alias.scope !994, !noalias !763, !noundef !12
  %i.ado = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.adp = load i64, ptr %i.ado, align 8, !alias.scope !994, !noalias !763, !noundef !12
  invoke void %i.adl(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.adm, ptr noundef %i.adn, i64 noundef %i.adp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.bi, !noalias !767, !inline_history !305

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.ki, %bb.jg, %.body105.i.i
  %.pn18.pn.i.i = phi { ptr, i32 } [ %.pn14.pn.pn.i.i, %bb.ki ], [ %i.abi, %bb.jg ], [ %eh.lpad-body106.i.i, %.body105.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !763
  br label %bb.cv

bb.kj:                                            ; preds = %bb.jh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.11187.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i, i64 32, i1 false), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10186.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6136.i.i, i64 24, i1 false), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !763
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.adq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i unwind label %bb.kk, !noalias !767

bb.kk:                                            ; preds = %bb.kj
  %i.adr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.adq)
          to label %.body91.i.i unwind label %bb.kl, !noalias !767

bb.kl:                                            ; preds = %bb.kk
  %i.ads = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !767
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i: ; preds = %bb.kj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.adq)
          to label %bb.kq unwind label %bb.ke, !noalias !767

bb.km:                                            ; preds = %.body91.i.i
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.adu = load i8, ptr %i.adt, align 8, !range !17, !noalias !763, !noundef !12
  %i.adv = trunc nuw i8 %i.adu to i1
  br i1 %i.adv, label %bb.kn, label %bb.bj

bb.kn:                                            ; preds = %bb.km
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.adw) #30
          to label %bb.bj unwind label %bb.bi, !noalias !767

bb.ko:                                            ; preds = %bb.bm, %bb.bl
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i

bb.kp:                                            ; preds = %bb.je, %bb.bp
  %.sink.i.ph.i = phi i8 [ 3, %bb.bp ], [ 4, %bb.je ]
  store i8 %.sink.i.ph.i, ptr %i.fv, align 1, !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10186.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11187.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !739
  br label %bb.kx

bb.kq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i, %bb.kg, %bb.kf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.sroa.0181.1.i.i = phi i64 [ -9223372036854775743, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i ], [ %.sroa.0181.0.i.i, %bb.kg ], [ %.sroa.0181.0.i.i, %bb.kf ], [ %.sroa.0181.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.5182.1.i.i = phi i64 [ %.sroa.054.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i ], [ %.sroa.5182.0.i.i, %bb.kg ], [ %.sroa.5182.0.i.i, %bb.kf ], [ %.sroa.5182.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.9184.1.i.i = phi ptr [ %i.qm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i ], [ %.sroa.9184.0.i.i, %bb.kg ], [ %.sroa.9184.0.i.i, %bb.kf ], [ %.sroa.9184.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.ady, align 8, !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10186.i.i, i64 24, i1 false), !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.11187.i.i, i64 32, i1 false), !noalias !739
  store i8 1, ptr %i.fv, align 1, !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10186.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11187.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !739
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.fu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.kr, !noalias !744

bb.kr:                                            ; preds = %bb.kq
  %i.adz = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

bb.ks:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aea = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.aea)
          to label %bb.ky unwind label %bb.kt, !noalias !744

bb.kt:                                            ; preds = %bb.ks
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.body43.i:                                        ; preds = %bb.ko, %bb.bk
  %.pn19.i = phi { ptr, i32 } [ %.pn46.pn.i.i, %bb.bk ], [ %i.adx, %bb.ko ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.fu) #30
          to label %.body40.i unwind label %bb.ae, !noalias !744

bb.ku:                                            ; preds = %bb.kv, %.body40.i
  store i8 0, ptr %i.ex, align 1, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !739
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aed = load i8, ptr %i.aec, align 8, !range !17, !noalias !739, !noundef !12
  %i.aee = trunc nuw i8 %i.aed to i1
  br i1 %i.aee, label %bb.kw, label %bb.aq

bb.kv:                                            ; preds = %.body40.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ba) #30
          to label %bb.ku unwind label %bb.ae, !noalias !744

bb.kw:                                            ; preds = %bb.ku
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.aef) #30
          to label %bb.aq unwind label %bb.ae, !noalias !744

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit10, %bb.kx
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit10 ], [ 3, %bb.kx ]
  store i8 %storemerge, ptr %i.bk, align 8
  ret void

bb.kx:                                            ; preds = %bb.kp, %bb.aw
  %i.aeg = phi ptr [ %i.fd, %bb.aw ], [ %i.fs, %bb.kp ]
  %.sink.i.ph = phi i8 [ 3, %bb.aw ], [ 4, %bb.kp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !739
  store i8 %.sink.i.ph, ptr %i.aeg, align 2, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.ky:                                            ; preds = %bb.ks, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  store i8 0, ptr %i.fp, align 8, !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1120, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7.i, i64 16, i1 false)
  store i8 1, ptr %i.fm, align 2, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.fn)
          to label %bb.la unwind label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.la:                                            ; preds = %bb.ky
  %i.aei = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.aej = load ptr, ptr %i.aei, align 8, !alias.scope !1001, !nonnull !12, !noundef !12
  %i.aek = atomicrmw sub ptr %i.aej, i64 1 release, align 8, !noalias !1001
  %i.ael = icmp eq i64 %i.aek, 1
  br i1 %i.ael, label %bb.lb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit10

bb.lb:                                            ; preds = %bb.la
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aei) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit10 unwind label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit10: ; preds = %bb.la, %bb.lb
  store i64 %.sroa.050.0.i, ptr %0, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.i, ptr %.sroa.3.0..sroa_idx, align 16
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1120, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.12, i64 32, i1 false)
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.623.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.13, i64 16, i1 false)
  br label %common.ret

bb.ld:                                            ; preds = %bb.e, %.body
  %i.aen = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstoreNtB7_10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.341.i.i = alloca [64 x i8], align 8      ; 7 uses
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3.i.i = alloca [64 x i8], align 8        ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %3 = alloca [48 x i8], align 8                  ; 11 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [88 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 12 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [64 x i8], align 8                ; 12 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.927 = alloca [64 x i8], align 8          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 297 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !range !334, !noundef !12
  switch i8 %i.u, label %default.unreachable38 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
  ]

default.unreachable38:                            ; preds = %bb.au, %bb.m, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !align !50, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = load i64, ptr %i.y, align 8, !noundef !12
  store i8 0, ptr %i.v, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !12
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !1002

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #33
          to label %bb.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1003, !nonnull !12, !noundef !12 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 320
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1003, !nonnull !12, !align !50, !noundef !12 ; 3 uses
  %i.ag = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !1003
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.ad, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.af, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !240, !invariant.load !12
  %i.an = add nsw i64 %i.am, -1
  %i.ao = and i64 %i.an, -16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.aq, ptr %i.ar, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.af, ptr %.sroa.721.0..sroa_idx, align 8
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.z, ptr %.sroa.822.0..sroa_idx, align 8
  %.sroa.1024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.ai, ptr %.sroa.1024.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 194
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.341.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 194
  br label %bb.n

bb.f:                                             ; preds = %bb.cq, %.body
  %.pn2 = phi { ptr, i32 } [ %i.hj, %bb.cq ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !1012, !nonnull !12, !noundef !12
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !1012
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.cz

bb.h:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.i:                                             ; preds = %bb.c
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ct, %bb.g, %bb.f, %bb.h
  %.pn6 = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.ho, %bb.ct ], [ %.pn2, %bb.f ], [ %.pn2, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.az) #30
          to label %.body14 unwind label %bb.cz

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #34
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #34
  unreachable

bb.l:                                             ; preds = %bb.ak, %bb.aj
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.l
  %i.bb = phi ptr [ %i.bc, %bb.l ], [ %i.dr, %bb.ai ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %.pn22.i, %bb.ai ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bb) #30
          to label %bb.f unwind label %bb.cz

bb.m:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 194
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !360, !noalias !1013
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.341.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 194 ; 3 uses
  switch i8 %.pre, label %default.unreachable38 [
    i8 0, label %bb.n
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %bb.al
    i8 4, label %bb.au
  ]

bb.n:                                             ; preds = %.thread, %bb.m
  %i.be = phi ptr [ %i.at, %.thread ], [ %i.bd, %bb.m ] ; 6 uses
  %i.bf = phi ptr [ %i.as, %.thread ], [ %i.bc, %bb.m ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  store i8 0, ptr %i.bg, align 8, !noalias !1013
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 193 ; 3 uses
  store i8 0, ptr %i.bh, align 1, !noalias !1013
  %i.bi = load ptr, ptr %i.bf, align 8, !noalias !1013, !nonnull !12, !noundef !12
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1013, !nonnull !12, !align !50, !noundef !12
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !1013, !noundef !12
  store i64 %i.bn, ptr %i.bl, align 8, !noalias !1013
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !1013, !nonnull !12, !align !50, !noundef !12
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !1013
  %i.br = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1013
  %i.bs = icmp samesign ult i64 %i.br, 3
  br i1 %i.bs, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bt = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry010___CALLSITE, i64 16) monotonic, align 8, !noalias !1013 ; 2 uses
  %i.bu = icmp ult i8 %i.bt, 3
  br i1 %i.bu, label %bb.r, label %bb.p, !prof !743

bb.p:                                             ; preds = %bb.o
  %i.bv = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry010___CALLSITE) #36
          to label %bb.r unwind label %bb.q, !noalias !1017

bb.q:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.r:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i = phi i8 [ %i.bt, %bb.o ], [ %i.bv, %bb.p ] ; 2 uses
  %i.bx = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.bx, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry010___CALLSITE, align 8, !noalias !1013, !nonnull !12, !align !50, !noundef !12
  %i.bz = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.by, i8 noundef %.sroa.0.0.i.i)
          to label %bb.u unwind label %bb.t, !noalias !1017

bb.t:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.u:                                             ; preds = %bb.s
  br i1 %i.bz, label %bb.ac, label %bb.x

bb.v:                                             ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1013
  br label %bb.ai

bb.w:                                             ; preds = %bb.aa, %bb.x
  store i8 1, ptr %i.bg, align 8, !noalias !1013
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1013
  br label %bb.af

bb.x:                                             ; preds = %bb.u, %bb.r, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1013
  %i.cc = load ptr, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry010___CALLSITE, align 8, !noalias !1013, !nonnull !12, !align !50, !noundef !12 ; 2 uses
  store i64 2, ptr %i.o, align 8, !alias.scope !1018, !noalias !1021
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.cc, ptr %i.cd, align 8, !alias.scope !1018, !noalias !1021
  %i.ce = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1013
  %.not.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1013
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1013
  store ptr %i.bo, ptr %i.l, align 8, !noalias !1013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1013
  store ptr %i.bo, ptr %i.k, align 8, !noalias !1013
  store ptr %i.bl, ptr %i.m, align 8, !noalias !1013
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @32, ptr %i.cg, align 8, !noalias !1013
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.ch, align 8, !noalias !1013
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @44, ptr %i.ci, align 8, !noalias !1013
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.bl, ptr %i.cj, align 8, !noalias !1013
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @32, ptr %i.ck, align 8, !noalias !1013
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.k, ptr %i.cl, align 8, !noalias !1013
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @45, ptr %i.cm, align 8, !noalias !1013
  store i64 1, ptr %i.n, align 8, !alias.scope !1023, !noalias !1026
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1023, !noalias !1026
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1023, !noalias !1026
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.cf, ptr %i.cn, align 8, !alias.scope !1023, !noalias !1026
  %i.co = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.aa unwind label %bb.z, !noalias !1017 ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1013
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.o) #30
          to label %bb.v unwind label %bb.ab, !noalias !1017

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1013
  br label %bb.w

bb.ab:                                            ; preds = %bb.cn, %bb.cm, %.body34.i, %bb.am, %bb.z
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1017
  unreachable

bb.ac:                                            ; preds = %bb.u
  %i.cr = load ptr, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry010___CALLSITE, align 8, !noalias !1013, !nonnull !12, !align !50, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1013
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1013
  store ptr %i.bo, ptr %i.q, align 8, !noalias !1013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1013
  store ptr %i.bo, ptr %i.p, align 8, !noalias !1013
  store ptr %i.bl, ptr %i.r, align 8, !noalias !1013
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @32, ptr %i.ct, align 8, !noalias !1013
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.q, ptr %i.cu, align 8, !noalias !1013
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @44, ptr %i.cv, align 8, !noalias !1013
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.bl, ptr %i.cw, align 8, !noalias !1013
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @32, ptr %i.cx, align 8, !noalias !1013
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.p, ptr %i.cy, align 8, !noalias !1013
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr @45, ptr %i.cz, align 8, !noalias !1013
  store i64 1, ptr %i.s, align 8, !alias.scope !1029, !noalias !1032
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !alias.scope !1029, !noalias !1032
  %.sroa.5.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx.i29.i, align 8, !alias.scope !1029, !noalias !1032
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.cs, ptr %i.da, align 8, !alias.scope !1029, !noalias !1032
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.db, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %bb.ae unwind label %bb.ad, !noalias !1017

bb.ad:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1013
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  store i8 1, ptr %i.bg, align 8, !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1013
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.w
  store i8 1, ptr %i.bh, align 1, !noalias !1013
  store ptr %i.bi, ptr %3, align 8, !noalias !1013
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bk, ptr %i.dd, align 8, !noalias !1013
  %i.de = load ptr, ptr %i.bo, align 8, !noalias !1013, !nonnull !12, !align !50, !noundef !12
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.de, ptr %i.df, align 8, !noalias !1013
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.dg, align 8, !noalias !1013
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.val26.i = load i64, ptr %i.dh, align 8, !range !245, !noalias !1013, !noundef !12
  %.not.i27.i = icmp eq i64 %.val26.i, 2
  store i8 0, ptr %i.bh, align 1, !noalias !1013
  br i1 %.not.i27.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !noalias !1013
  store i8 0, ptr %i.bg, align 8, !noalias !1013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.dh, i64 40, i1 false), !noalias !1013
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dj, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !1013
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !noalias !1013
  br label %bb.au

.body.i:                                          ; preds = %.body34.i, %bb.at, %bb.aq, %bb.am
  %i.dl = phi ptr [ %i.dt, %bb.at ], [ %i.dt, %bb.aq ], [ %i.dt, %bb.am ], [ %i.ei, %.body34.i ] ; 2 uses
  %i.dm = phi ptr [ %i.du, %bb.at ], [ %i.du, %bb.aq ], [ %i.du, %bb.am ], [ %i.ej, %.body34.i ] ; 2 uses
  %.pn19.pn.i = phi { ptr, i32 } [ %i.eb, %bb.at ], [ %i.dz, %bb.aq ], [ %i.dw, %bb.am ], [ %.pn17.i, %.body34.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 193 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !range !17, !noalias !1013, !noundef !12
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.cm, label %bb.cl

bb.ai:                                            ; preds = %bb.cn, %bb.cl, %bb.ck, %bb.ad, %bb.v, %bb.t, %bb.q
  %i.dq = phi ptr [ %i.ec, %bb.ck ], [ %i.dl, %bb.cn ], [ %i.dl, %bb.cl ], [ %i.be, %bb.ad ], [ %i.be, %bb.q ], [ %i.be, %bb.v ], [ %i.be, %bb.t ]
  %i.dr = phi ptr [ %i.ed, %bb.ck ], [ %i.dm, %bb.cn ], [ %i.dm, %bb.cl ], [ %i.bf, %bb.ad ], [ %i.bf, %bb.q ], [ %i.bf, %bb.v ], [ %i.bf, %bb.t ]
  %.pn22.i = phi { ptr, i32 } [ %i.hd, %bb.ck ], [ %.pn19.pn.i, %bb.cn ], [ %.pn19.pn.i, %bb.cl ], [ %i.dc, %bb.ad ], [ %i.bw, %bb.q ], [ %i.cp, %bb.v ], [ %i.ca, %bb.t ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 0, ptr %i.ds, align 8, !noalias !1013
  store i8 2, ptr %i.dq, align 2, !noalias !1013
  br label %.body

bb.aj:                                            ; preds = %bb.m
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #34
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.m
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #34
          to label %.noexc11 unwind label %bb.l

.noexc11:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ag, %bb.m
  %i.dt = phi ptr [ %i.be, %bb.ag ], [ %i.bd, %bb.m ] ; 5 uses
  %i.du = phi ptr [ %i.bf, %bb.ag ], [ %i.bc, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1013
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 5 uses
  invoke void @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %i.dv, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.an unwind label %bb.am, !noalias !1017

bb.am:                                            ; preds = %bb.al
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1013
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dv) #30
          to label %.body.i unwind label %bb.ab, !noalias !1017

bb.an:                                            ; preds = %bb.al
  %i.dx = load i64, ptr %i.i, align 8, !range !1035, !noalias !1013, !noundef !12 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, -9223372036854775780
  br i1 %i.dy, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1013
  br label %bb.co

bb.ap:                                            ; preds = %bb.an
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.341.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx.i, i64 64, i1 false), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1013
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dv)
          to label %bb.ar unwind label %bb.aq, !noalias !1017

bb.aq:                                            ; preds = %bb.ap
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dv) #30
          to label %.body.i unwind label %bb.as, !noalias !1017

bb.ar:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.at, !noalias !1017

bb.as:                                            ; preds = %bb.aq
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1017
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ci, %bb.ar
  %i.ec = phi ptr [ %i.ei, %bb.ci ], [ %i.dt, %bb.ar ] ; 2 uses
  %i.ed = phi ptr [ %i.ej, %bb.ci ], [ %i.du, %bb.ar ] ; 2 uses
  %.sroa.043.0.i = phi i64 [ %.sroa.040.0.i.i, %bb.ci ], [ %i.dx, %bb.ar ]
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 193
  store i8 0, ptr %i.ee, align 1, !noalias !1013
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 8, !range !17, !noalias !1013, !noundef !12
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.cj, label %bb.cp

bb.au:                                            ; preds = %bb.ah, %bb.m
  %i.ei = phi ptr [ %i.be, %bb.ah ], [ %i.bd, %bb.m ] ; 3 uses
  %i.ej = phi ptr [ %i.bf, %bb.ah ], [ %i.bc, %bb.m ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1013
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 4 uses
  %i.em = load i8, ptr %i.el, align 8, !range !334, !noalias !1036, !noundef !12
  switch i8 %i.em, label %default.unreachable38 [
    i8 0, label %bb.av
    i8 1, label %bb.ay
    i8 2, label %bb.az
    i8 3, label %bb.bb
  ]

bb.av:                                            ; preds = %bb.au
  %i.en = load ptr, ptr %i.ek, align 8, !noalias !1036, !nonnull !12, !noundef !12
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !1036, !nonnull !12, !align !50, !noundef !12
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !1036, !nonnull !12, !align !50, !noundef !12
  %i.es = invoke { ptr, ptr } @_RNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retriesCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er, i64 noundef 15)
          to label %bb.ax unwind label %bb.aw, !noalias !1040 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ax:                                            ; preds = %bb.av
  %i.eu = extractvalue { ptr, ptr } %i.es, 0
  %i.ev = extractvalue { ptr, ptr } %i.es, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.eu, ptr %i.ew, align 8, !noalias !1036
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.ev, ptr %i.ex, align 8, !noalias !1036
  br label %bb.bb

bb.ay:                                            ; preds = %bb.au
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #34
          to label %.noexc32.i unwind label %bb.cg, !noalias !1017

.noexc32.i:                                       ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.au
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #34
          to label %.noexc33.i unwind label %bb.cg, !noalias !1017

.noexc33.i:                                       ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.bb
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1036
  %.val13.i.i = load ptr, ptr %i.fa, align 8, !noalias !1036
  %i.ez = getelementptr i8, ptr %1, i64 232
  %.val14.i.i = load ptr, ptr %i.ez, align 8, !noalias !1036, !nonnull !12, !align !50, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val13.i.i, ptr nonnull %.val14.i.i) #30
          to label %.body.i.i unwind label %bb.cf, !noalias !1040

bb.bb:                                            ; preds = %bb.ax, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1036
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bc unwind label %bb.ba, !noalias !1040

bb.bc:                                            ; preds = %bb.bb
  %i.fb = load i64, ptr %i.h, align 8, !range !488, !noalias !1036, !noundef !12 ; 3 uses
  %i.fc = icmp eq i64 %i.fb, -9223372036854775789
  br i1 %i.fc, label %bb.ch, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx.i.i, i64 64, i1 false), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1036
  %.val.i.i = load ptr, ptr %i.fa, align 8, !noalias !1036 ; 5 uses
  %i.fd = getelementptr i8, ptr %1, i64 232
  %.val12.i.i = load ptr, ptr %i.fd, align 8, !noalias !1036, !nonnull !12, !align !50, !noundef !12 ; 5 uses
  %i.fe = load ptr, ptr %.val12.i.i, align 8, !invariant.load !12, !noalias !1040 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.fe(ptr noundef nonnull %.val.i.i)
          to label %bb.bf unwind label %bb.bh, !noalias !1040

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ff = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !227, !invariant.load !12, !noalias !1040 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fi = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !240, !invariant.load !12, !noalias !1040
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #35, !noalias !1040
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.bh:                                            ; preds = %bb.be
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !227, !invariant.load !12, !noalias !1040 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %.body.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fo = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !240, !invariant.load !12, !noalias !1040
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #35, !noalias !1040
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.bg, %bb.bf
  %.not.i22.i.i = icmp eq i64 %i.fb, -9223372036854775790
  br i1 %.not.i22.i.i, label %bb.bj, label %bb.ce

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.fq = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1036
  %i.fr = icmp samesign ult i64 %i.fq, 2
  br i1 %i.fr, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.fs = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0010___CALLSITE, i64 16) monotonic, align 8, !noalias !1036 ; 2 uses
  %i.ft = icmp ult i8 %i.fs, 3
  br i1 %i.ft, label %bb.bn, label %bb.bl, !prof !743

bb.bl:                                            ; preds = %bb.bk
  %i.fu = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0010___CALLSITE) #36
          to label %bb.bn unwind label %bb.bm, !noalias !1040

bb.bm:                                            ; preds = %bb.bl
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.sroa.0.0.i.i.i = phi i8 [ %i.fs, %bb.bk ], [ %i.fu, %bb.bl ] ; 2 uses
  %i.fw = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.fw, label %bb.br, label %bb.bp

bb.bo:                                            ; preds = %bb.bp
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.fy = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0010___CALLSITE, align 8, !noalias !1036, !nonnull !12, !align !50, !noundef !12
  %i.fz = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fy, i8 noundef %.sroa.0.0.i.i.i)
          to label %bb.bq unwind label %bb.bo, !noalias !1040

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.fz, label %bb.cb, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bn, %bb.bj
  %i.ga = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1036
  %.not.i31.i = icmp eq i8 %i.ga, 0
  br i1 %.not.i31.i, label %bb.bs, label %bb.ci

bb.bs:                                            ; preds = %bb.br
  %i.gb = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1036 ; 2 uses
  %i.gc = icmp ult i64 %i.gb, 6
  call void @llvm.assume(i1 %i.gc)
  %i.gd = icmp samesign ugt i64 %i.gb, 3
  br i1 %i.gd, label %bb.bu, label %bb.ci

bb.bt:                                            ; preds = %bb.bu
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.gf = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0010___CALLSITE, align 8, !noalias !1036, !nonnull !12, !align !50, !noundef !12 ; 3 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 32
  %.val20.i.i = load ptr, ptr %i.gg, align 8, !noalias !1040, !nonnull !12, !noundef !12
  %i.gh = getelementptr i8, ptr %i.gf, i64 40
  %.val21.i.i = load i64, ptr %i.gh, align 8, !noalias !1040, !noundef !12
  store i64 4, ptr %i.d, align 8, !alias.scope !1041, !noalias !1036
  %.sroa.638.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.val20.i.i, ptr %.sroa.638.0..sroa_idx.i.i, align 8, !alias.scope !1041, !noalias !1036
  %.sroa.839.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.val21.i.i, ptr %.sroa.839.0..sroa_idx.i.i, align 8, !alias.scope !1041, !noalias !1036
  %i.gi = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bv unwind label %bb.bt, !noalias !1040 ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.gj = extractvalue { ptr, ptr } %i.gi, 0      ; 2 uses
  %i.gk = extractvalue { ptr, ptr } %i.gi, 1      ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !invariant.load !12, !noalias !1040, !nonnull !12
  %i.gn = invoke noundef zeroext i1 %i.gm(ptr noundef %i.gj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.bx unwind label %bb.bw, !noalias !1040

bb.bw:                                            ; preds = %bb.bv
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bx:                                            ; preds = %bb.bv
  br i1 %i.gn, label %bb.by, label %bb.ci

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1036
  %i.gp = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0010___CALLSITE, align 8, !noalias !1036, !nonnull !12, !align !50, !noundef !12
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1036
  store ptr @36, ptr %i.a, align 8, !noalias !1036
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 67 to ptr), ptr %i.gr, align 8, !noalias !1036
  store ptr %i.a, ptr %i.b, align 8, !noalias !1036
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @5, ptr %i.gs, align 8, !noalias !1036
  store i64 1, ptr %i.c, align 8, !alias.scope !1045, !noalias !1048
  %.sroa.4.0..sroa_idx.i23.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i23.i.i, align 8, !alias.scope !1045, !noalias !1048
  %.sroa.5.0..sroa_idx.i24.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i24.i.i, align 8, !alias.scope !1045, !noalias !1048
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.gq, ptr %i.gt, align 8, !alias.scope !1045, !noalias !1048
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gf, ptr noundef nonnull %i.gj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.ca unwind label %bb.bz, !noalias !1040

bb.bz:                                            ; preds = %bb.by
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1036
  br label %.body.i.i

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1036
  br label %bb.ci

bb.cb:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1036
  %i.gv = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0010___CALLSITE, align 8, !noalias !1036, !nonnull !12, !align !50, !noundef !12
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1036
  store ptr @36, ptr %i.e, align 8, !noalias !1036
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 67 to ptr), ptr %i.gx, align 8, !noalias !1036
  store ptr %i.e, ptr %i.f, align 8, !noalias !1036
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @5, ptr %i.gy, align 8, !noalias !1036
  store i64 1, ptr %i.g, align 8, !noalias !1036
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1036
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1036
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.gw, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1036
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry000Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.cd unwind label %bb.cc, !noalias !1040

bb.cc:                                            ; preds = %bb.cb
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1036
  br label %.body.i.i

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1036
  br label %bb.ci

.body.i.i:                                        ; preds = %bb.cc, %bb.bz, %bb.bw, %bb.bt, %bb.bo, %bb.bm, %bb.bi, %bb.bh, %bb.ba, %bb.aw
  %.pn9.pn.i.i = phi { ptr, i32 } [ %i.fx, %bb.bo ], [ %i.gz, %bb.cc ], [ %i.ge, %bb.bt ], [ %i.fv, %bb.bm ], [ %i.gu, %bb.bz ], [ %i.go, %bb.bw ], [ %i.et, %bb.aw ], [ %i.ey, %bb.ba ], [ %i.fk, %bb.bh ], [ %i.fk, %bb.bi ]
  store i8 2, ptr %i.el, align 8, !noalias !1036
  br label %.body34.i

bb.ce:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.341.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.i.i, i64 64, i1 false), !noalias !1013
  br label %bb.ci

bb.cf:                                            ; preds = %bb.ba
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1040
  unreachable

bb.cg:                                            ; preds = %bb.az, %bb.ay
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

bb.ch:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1036
  store i8 3, ptr %i.el, align 8, !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  br label %bb.co

bb.ci:                                            ; preds = %bb.ce, %bb.cd, %bb.ca, %bb.bx, %bb.bs, %bb.br
  %.sroa.040.0.i.i = phi i64 [ %i.fb, %bb.ce ], [ -9223372036854775781, %bb.ca ], [ -9223372036854775781, %bb.bx ], [ -9223372036854775781, %bb.bs ], [ -9223372036854775781, %bb.br ], [ -9223372036854775781, %bb.cd ]
  store i8 1, ptr %i.el, align 8, !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.hc)
          to label %bb.cp unwind label %bb.ck, !noalias !1017

bb.ck:                                            ; preds = %bb.cj
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.body34.i:                                        ; preds = %bb.cg, %.body.i.i
  %.pn17.i = phi { ptr, i32 } [ %.pn9.pn.i.i, %.body.i.i ], [ %i.hb, %bb.cg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ek) #30
          to label %.body.i unwind label %bb.ab, !noalias !1017

bb.cl:                                            ; preds = %bb.cm, %.body.i
  store i8 0, ptr %i.dn, align 1, !noalias !1013
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.hf = load i8, ptr %i.he, align 8, !range !17, !noalias !1013, !noundef !12
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.cn, label %bb.ai

bb.cm:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %3) #30
          to label %bb.cl unwind label %bb.ab, !noalias !1017

bb.cn:                                            ; preds = %bb.cl
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.hh) #30
          to label %bb.ai unwind label %bb.ab, !noalias !1017

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.co
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 3, %bb.co ]
  store i8 %storemerge, ptr %i.t, align 1
  ret void

bb.co:                                            ; preds = %bb.ch, %bb.ao
  %i.hi = phi ptr [ %i.dt, %bb.ao ], [ %i.ei, %bb.ch ]
  %.sink.i.ph = phi i8 [ 3, %bb.ao ], [ 4, %bb.ch ]
  store i8 %.sink.i.ph, ptr %i.hi, align 2, !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 -9223372036854775780, ptr %0, align 8
  br label %common.ret

bb.cp:                                            ; preds = %bb.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  store i8 0, ptr %i.ef, align 8, !noalias !1013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.927, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.341.i.i, i64 64, i1 false)
  store i8 1, ptr %i.ec, align 2, !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ed)
          to label %bb.cr unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.cr:                                            ; preds = %bb.cp
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !1057, !nonnull !12, !noundef !12
  %i.hm = atomicrmw sub ptr %i.hl, i64 1 release, align 8, !noalias !1057
  %i.hn = icmp eq i64 %i.hm, 1
  br i1 %i.hn, label %bb.cs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit13

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hk) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit13 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit13: ; preds = %bb.cr, %bb.cs
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !1058, !noundef !12 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit13
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %.body14 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.cu
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.cy

bb.cx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit13
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !1067, !nonnull !12, !noundef !12
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !1067, !noundef !12
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !1067, !noundef !12
  invoke void %i.hw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef %i.hz, i64 noundef %i.ib)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.cy, !inline_history !1068

.body14:                                          ; preds = %bb.cy, %bb.cv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.if, %bb.cy ], [ %i.ht, %bb.cv ]
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.id = load i8, ptr %i.ic, align 8, !range !17, !noundef !12
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.db, label %bb.da

bb.cy:                                            ; preds = %bb.cx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body14

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.cx
  store i64 %.sroa.043.0.i, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.927, i64 64, i1 false)
  br label %common.ret

bb.cz:                                            ; preds = %bb.g, %bb.db, %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.da:                                            ; preds = %bb.db, %.body14
  store i8 2, ptr %i.t, align 1
  resume { ptr, i32 } %.pn6.pn

bb.db:                                            ; preds = %.body14
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %1) #30
          to label %bb.da unwind label %bb.cz
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstoreNtB7_10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 12 uses
  %i.e = alloca [104 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.6.i.i = alloca [80 x i8], align 16       ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i.sroa.4.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.771.i = alloca [80 x i8], align 16       ; 4 uses
  %.sroa.7.i = alloca [496 x i8], align 16        ; 8 uses
  %.sroa.9.i = alloca [80 x i8], align 16         ; 8 uses
  %.sroa.6.sroa.3.i = alloca [16 x i8], align 8   ; 7 uses
  %i.q = alloca [544 x i8], align 16              ; 11 uses
  %i.r = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.10.sroa.11.sroa.10.i = alloca [16 x i8], align 8 ; 9 uses
  %.sroa.10.sroa.13.i = alloca [64 x i8], align 8 ; 8 uses
  %i.s = alloca [536 x i8], align 8               ; 19 uses
  %i.t = alloca [88 x i8], align 8                ; 7 uses
  %i.u = alloca [17 x i8], align 1                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 10 uses
  %i.w = alloca [16 x i8], align 16               ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !range !334, !noundef !12
  switch i8 %i.y, label %default.unreachable57 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable57:                            ; preds = %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.z = load ptr, ptr %1, align 8, !nonnull !12, !align !50, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.z, ptr %i.ac, align 8
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @54, ptr %.sroa.715.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ab, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.3.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 57
  br label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %.body5, %.body5.thread
  %.pn2 = phi { ptr, i32 } [ %i.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.ae, %.body5 ], [ %.pn7.pn.pn.pn.pn.pn.i, %.body5.thread ]
  store i8 2, ptr %i.x, align 8
  resume { ptr, i32 } %.pn2

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #34
  unreachable

.body5:                                           ; preds = %bb.v, %bb.w
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.aj, align 1
  %cond.i = icmp eq i8 %.pr, 3
  br i1 %cond.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %.body5
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1L_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %.body

.body:                                            ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.ah, align 8
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
end_hunk_2
