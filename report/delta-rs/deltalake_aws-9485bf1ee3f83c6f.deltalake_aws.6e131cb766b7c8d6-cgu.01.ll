inline.NumInlined: 1838
inline.NumDeleted: 674
begin_hunk_0_@_RNCNvMs_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB6_18S3DynamoDbLogStore18try_complete_entry0Ba_:bb.a
bb.dp:                                            ; preds = %bb.cu, %bb.da, %bb.cx, %bb.dh, %bb.cp, %bb.cn
  %.pn42.pn = phi { ptr, i32 } [ %i.jf, %bb.dh ], [ %i.hr, %bb.cu ], [ %i.hj, %bb.cn ], [ %i.ij, %bb.da ], [ %i.ib, %bb.cx ], [ %i.hl, %bb.cp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.ae) #31
          to label %bb.dj unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.body
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !2071 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !2071 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !2071 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2071 ; 2 uses
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
  %i.s = load i8, ptr %i.q, align 1, !noundef !3
  %i.t = load i8, ptr %i.r, align 1, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !2066, !noalias !2069
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !2069, !noalias !2066
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
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !2066, !noalias !2069
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !2069, !noalias !2066
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
define internal void @_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %.sroa.6136.i.i = alloca [24 x i8], align 8     ; 6 uses
  %.sroa.11.i.i = alloca [32 x i8], align 8       ; 5 uses
  %.sroa.10132.i.i = alloca [24 x i8], align 8    ; 7 uses
  %i.aw = alloca [32 x i8], align 8               ; 13 uses
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
  %i.bk = alloca [72 x i8], align 8               ; 6 uses
  %i.bl = alloca [392 x i8], align 8              ; 8 uses
  %i.bm = alloca [392 x i8], align 8              ; 11 uses
  %i.bn = alloca [40 x i8], align 8               ; 5 uses
  %i.bo = alloca [32 x i8], align 8               ; 5 uses
  %i.bp = alloca [6896 x i8], align 8             ; 5 uses
  %i.bq = alloca [6888 x i8], align 8             ; 5 uses
  %i.br = alloca [6888 x i8], align 8             ; 7 uses
  %i.bs = alloca [88 x i8], align 8               ; 15 uses
  %.sroa.553.i = alloca [40 x i8], align 8        ; 10 uses
  %i.bt = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.539.i = alloca [40 x i8], align 8        ; 10 uses
  %.sroa.642.i = alloca [240 x i8], align 8       ; 9 uses
  %.sroa.745.i = alloca [96 x i8], align 8        ; 8 uses
  %i.bu = alloca [392 x i8], align 8              ; 11 uses
  %.sroa.1023.i = alloca [40 x i8], align 8       ; 9 uses
  %i.bv = alloca [288 x i8], align 8              ; 12 uses
  %i.bw = alloca [96 x i8], align 16              ; 8 uses
  %.sroa.11107 = alloca [24 x i8], align 8        ; 7 uses
  %.sroa.12108 = alloca [32 x i8], align 16       ; 7 uses
  %.sroa.13 = alloca [16 x i8], align 16          ; 7 uses
  %.sroa.587 = alloca [63 x i8], align 1          ; 2 uses
  %i.bx = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.863 = alloca [40 x i8], align 8          ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !range !618, !noundef !3
  switch i8 %i.bz, label %default.unreachable150 [
    i8 0, label %.thread151
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
    i8 4, label %bb.av
    i8 5, label %bb.bn
  ]

default.unreachable150:                           ; preds = %bb.in, %bb.ge, %bb.ga, %bb.dh, %bb.bn, %bb.i, %bb.e, %bb.a
  unreachable

.thread151:                                       ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !3, !align !99, !noundef !3 ; 4 uses
  store ptr %i.cd, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load i64, ptr %1, align 8, !noundef !3  ; 2 uses
  store i64 %i.cf, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %i.cd, i64 808
  %.val = load ptr, ptr %i.cg, align 8, !nonnull !3, !noundef !3
  %i.ch = getelementptr i8, ptr %i.cd, i64 816
  %.val17 = load i64, ptr %i.ch, align 8, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 312
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.ci, ptr %i.cj, align 8
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %.val, ptr %.sroa.759.0..sroa_idx, align 8
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %.val17, ptr %.sroa.860.0..sroa_idx, align 8
  %.sroa.961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.cf, ptr %.sroa.961.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7072
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.553.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.642.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.745.i)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 7072
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #34
  unreachable

bb.d:                                             ; preds = %bb.g, %bb.f
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ak, %bb.d
  %i.cn = phi ptr [ %i.co, %bb.d ], [ %i.fc, %bb.ak ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %bb.d ], [ %.pn6.pn.i, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_(ptr noundef nonnull align 8 %i.cn) #31
          to label %.body34 unwind label %bb.at

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 7072
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !120, !noalias !2072
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.553.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.642.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.745.i)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 7072 ; 4 uses
  switch i8 %.pre, label %default.unreachable150 [
    i8 0, label %.thread.i
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.i
  ]

.thread.i:                                        ; preds = %.thread151, %bb.e
  %i.cq = phi ptr [ %i.cl, %.thread151 ], [ %i.cp, %bb.e ]
  %i.cr = phi ptr [ %i.ck, %.thread151 ], [ %i.co, %bb.e ] ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !2072, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !2072, !nonnull !3, !noundef !3
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !2072, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !2072, !noundef !3
  store i64 %i.cz, ptr %i.cx, align 8, !noalias !2072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !2072
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1023.i)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store ptr %i.cs, ptr %i.da, align 8, !noalias !2072
  %.sroa.026.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.cx, ptr %.sroa.026.sroa.8.0..sroa_idx.i, align 8, !noalias !2072
  %.sroa.026.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.cu, ptr %.sroa.026.sroa.9.0..sroa_idx.i, align 8, !noalias !2072
  %.sroa.026.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.cw, ptr %.sroa.026.sroa.10.0..sroa_idx.i, align 8, !noalias !2072
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 7056
  store ptr %i.cs, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2072
  %.sroa.1027.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 7066 ; 2 uses
  store i8 0, ptr %.sroa.1027.0..sroa_idx.i, align 2, !noalias !2072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !2072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !2072
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #34
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #34
          to label %.noexc20 unwind label %bb.d

.noexc20:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.s, %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.h
  %i.dc = phi ptr [ %i.cp, %bb.h ], [ %i.du, %bb.q ]
  %i.dd = phi ptr [ %i.co, %bb.h ], [ %i.dv, %bb.q ]
  %i.de = phi ptr [ %i.df, %bb.h ], [ %i.dx, %bb.q ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.db, %bb.h ], [ %.pn6.i.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !2072
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBP_18DynamoDbLockClient5retryNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation8get_item16__get_item_output13GetItemOutputINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtB1R_12GetItemErrorNtNtNtB3p_4http8response8ResponseENCNCNvBL_16get_commit_entry00NCNCB5h_00NCB5h_s_0E0EBP_(ptr noundef nonnull align 8 %i.de) #31
          to label %.body10.i unwind label %bb.am, !noalias !2076

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !2072
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1023.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 7066 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !range !120, !noalias !2077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !2072
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !2072
  switch i8 %.pre.i, label %default.unreachable150 [
    i8 0, label %._crit_edge124
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.j
  ]

._crit_edge124:                                   ; preds = %bb.i
  %.phi.trans.insert125 = getelementptr inbounds nuw i8, ptr %1, i64 7056
  %.pre126 = load ptr, ptr %.phi.trans.insert125, align 8, !noalias !2077
  br label %bb.k
end_hunk_0
begin_hunk_1_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.afu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.il, !noalias !2208

bb.lg:                                            ; preds = %bb.ik
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.afv)
          to label %bb.lk unwind label %bb.lh, !noalias !2208

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.li, %bb.lh, %bb.lf
  %i.afw = phi ptr [ %i.vg, %bb.lh ], [ %i.vg, %bb.lf ], [ %i.vo, %bb.li ]
  %i.afx = phi ptr [ %i.vh, %bb.lh ], [ %i.vh, %bb.lf ], [ %i.vp, %bb.li ]
  %.pn13.i.i.i = phi { ptr, i32 } [ %i.afy, %bb.lh ], [ %i.aft, %bb.lf ], [ %.pn10.pn.i.i.i, %bb.li ]
  store i8 2, ptr %i.afw, align 8, !noalias !2182
  br label %.body105.i.i

bb.lh:                                            ; preds = %bb.lg
  %i.afy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body24.i.i.i:                                    ; preds = %bb.lb, %.body.i17.i.i.i
  %i.afz = phi ptr [ %i.adu, %.body.i17.i.i.i ], [ %.phi.trans.insert.i.i, %bb.lb ]
  %i.aga = phi ptr [ %i.adv, %.body.i17.i.i.i ], [ %i.pv, %bb.lb ]
  %i.agb = phi ptr [ %i.adx, %.body.i17.i.i.i ], [ %i.vr, %bb.lb ]
  %.pn8.i.i.i = phi { ptr, i32 } [ %.pn32.i.i.i.i, %.body.i17.i.i.i ], [ %i.afl, %bb.lb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.agb) #31
          to label %bb.im unwind label %bb.il, !noalias !2208

bb.li:                                            ; preds = %bb.im
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.agc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.il, !noalias !2208

bb.lj:                                            ; preds = %bb.lc, %bb.ih
  %i.agd = phi ptr [ %i.ve, %bb.ih ], [ %i.afm, %bb.lc ]
  %.sink.i.ph.i.i = phi i8 [ 3, %bb.ih ], [ 4, %bb.lc ]
  store i8 %.sink.i.ph.i.i, ptr %i.agd, align 8, !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1152.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1253.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10132.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2157
  br label %bb.mu

bb.lk:                                            ; preds = %bb.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10132.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1152.i.i.i, i64 24, i1 false), !noalias !2370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1253.i.i.i, i64 32, i1 false), !noalias !2157
  store i8 1, ptr %i.vg, align 8, !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1152.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1253.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6136.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10132.i.i, i64 24, i1 false), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10132.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.vh)
          to label %bb.lm unwind label %bb.ll, !noalias !2161

bb.ll:                                            ; preds = %bb.lk
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.lm:                                            ; preds = %bb.lk
  %.not.i107.i.i = icmp eq i64 %.sroa.054.0.i.i.i, -9223372036854775790
  br i1 %.not.i107.i.i, label %bb.ln, label %bb.mo

bb.ln:                                            ; preds = %bb.lm
  %.sroa.4142.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4142.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6136.i.i, i64 24, i1 false), !noalias !2157
  store ptr %i.vi, ptr %i.aw, align 8, !noalias !2157
  %i.agf = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2157
  %i.agg = icmp ult i64 %i.agf, 2
  %i.agh = ptrtoint ptr %i.vi to i64
  br i1 %i.agg, label %bb.lo, label %bb.lv

bb.lo:                                            ; preds = %bb.ln
  %i.agi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, i64 16) monotonic, align 8, !noalias !2157 ; 2 uses
  %i.agj = icmp ult i8 %i.agi, 3
  br i1 %i.agj, label %bb.lr, label %bb.lp, !prof !1860

bb.lp:                                            ; preds = %bb.lo
  %i.agk = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE) #32
          to label %bb.lr unwind label %bb.lq, !noalias !2161

bb.lq:                                            ; preds = %bb.lp
  %i.agl = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

bb.lr:                                            ; preds = %bb.lp, %bb.lo
  %.sroa.0.0.i109.i.i = phi i8 [ %i.agi, %bb.lo ], [ %i.agk, %bb.lp ] ; 2 uses
  %i.agm = icmp eq i8 %.sroa.0.0.i109.i.i, 0
  br i1 %i.agm, label %bb.lv, label %bb.lt

bb.ls:                                            ; preds = %bb.lt
  %i.agn = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

bb.lt:                                            ; preds = %bb.lr
  %i.ago = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !2157, !nonnull !3, !align !99, !noundef !3
  %i.agp = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ago, i8 noundef %.sroa.0.0.i109.i.i)
          to label %bb.lu unwind label %bb.ls, !noalias !2161

bb.lu:                                            ; preds = %bb.lt
  br i1 %i.agp, label %bb.mg, label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lr, %bb.ln
  %i.agq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2157
  %.not.i42.i = icmp eq i8 %i.agq, 0
  br i1 %.not.i42.i, label %bb.lw, label %bb.mf

bb.lw:                                            ; preds = %bb.lv
  %i.agr = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2157 ; 2 uses
  %i.ags = icmp ult i64 %i.agr, 6
  call void @llvm.assume(i1 %i.ags)
  %i.agt = icmp samesign ugt i64 %i.agr, 3
  br i1 %i.agt, label %bb.ly, label %bb.mf

bb.lx:                                            ; preds = %bb.ly
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

bb.ly:                                            ; preds = %bb.lw
  %i.agv = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !2157, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.agw = getelementptr i8, ptr %i.agv, i64 32
  %.val79.i.i = load ptr, ptr %i.agw, align 8, !noalias !2161, !nonnull !3, !noundef !3
  %i.agx = getelementptr i8, ptr %i.agv, i64 40
  %.val80.i.i = load i64, ptr %i.agx, align 8, !noalias !2161, !noundef !3
  store i64 4, ptr %i.ar, align 8, !alias.scope !2371, !noalias !2157
  %.sroa.6153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.val79.i.i, ptr %.sroa.6153.0..sroa_idx.i.i, align 8, !alias.scope !2371, !noalias !2157
  %.sroa.8154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.val80.i.i, ptr %.sroa.8154.0..sroa_idx.i.i, align 8, !alias.scope !2371, !noalias !2157
  %i.agy = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.lz unwind label %bb.lx, !noalias !2161 ; 2 uses

bb.lz:                                            ; preds = %bb.ly
  %i.agz = extractvalue { ptr, ptr } %i.agy, 0    ; 2 uses
  %i.aha = extractvalue { ptr, ptr } %i.agy, 1    ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  %i.ahc = load ptr, ptr %i.ahb, align 8, !invariant.load !3, !noalias !2161, !nonnull !3
  %i.ahd = invoke noundef zeroext i1 %i.ahc(ptr noundef %i.agz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.mb unwind label %bb.ma, !noalias !2161

bb.ma:                                            ; preds = %bb.lz
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

bb.mb:                                            ; preds = %bb.lz
  br i1 %i.ahd, label %bb.mc, label %bb.mf

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2157
  %i.ahf = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !2157, !nonnull !3, !align !99, !noundef !3
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2157
  store ptr @29, ptr %i.ao, align 8, !noalias !2157
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.ahh, align 8, !noalias !2157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2157
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val86.i.i = load i64, ptr %i.ahi, align 8, !noalias !2157, !noundef !3
  store i64 %.val86.i.i, ptr %i.an, align 8, !noalias !2157
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !2157
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @18, ptr %i.ahj, align 8, !noalias !2157
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.an, ptr %i.ahk, align 8, !noalias !2157
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr @30, ptr %i.ahl, align 8, !noalias !2157
  store i64 1, ptr %i.aq, align 8, !alias.scope !2375, !noalias !2378
  %.sroa.4.0..sroa_idx.i114.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i114.i.i, align 8, !alias.scope !2375, !noalias !2378
  %.sroa.5.0..sroa_idx.i115.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i115.i.i, align 8, !alias.scope !2375, !noalias !2378
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ahg, ptr %i.ahm, align 8, !alias.scope !2375, !noalias !2378
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.agv, ptr noundef nonnull %i.agz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aha, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %bb.me unwind label %bb.md, !noalias !2161

bb.md:                                            ; preds = %bb.mc
  %i.ahn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2157
  br label %bb.mn

bb.me:                                            ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2157
  br label %bb.mf

bb.mf:                                            ; preds = %bb.mi, %bb.me, %bb.mb, %bb.lw, %bb.lv
  %.sroa.4193.0.copyload.i.i = load ptr, ptr %.sroa.4142.0..sroa_idx.i.i, align 8, !noalias !2157
  %.sroa.5194.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10186.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5194.0..sroa_idx.i.i, i64 16, i1 false), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2157
  br label %bb.ex

bb.mg:                                            ; preds = %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2157
  %i.aho = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !2157, !nonnull !3, !align !99, !noundef !3
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2157
  store ptr @29, ptr %i.at, align 8, !noalias !2157
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.ahq, align 8, !noalias !2157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2157
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val85.i.i = load i64, ptr %i.ahr, align 8, !noalias !2157, !noundef !3
  store i64 %.val85.i.i, ptr %i.as, align 8, !noalias !2157
  store ptr %i.at, ptr %i.au, align 8, !noalias !2157
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @18, ptr %i.ahs, align 8, !noalias !2157
  %i.aht = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.as, ptr %i.aht, align 8, !noalias !2157
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr @30, ptr %i.ahu, align 8, !noalias !2157
  store i64 1, ptr %i.av, align 8, !noalias !2157
  %.sroa.7146.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %.sroa.7146.0..sroa_idx.i.i, align 8, !noalias !2157
  %.sroa.8147.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 2, ptr %.sroa.8147.0..sroa_idx.i.i, align 8, !noalias !2157
  %.sroa.9148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.ahp, ptr %.sroa.9148.0..sroa_idx.i.i, align 8, !noalias !2157
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry000Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.av)
          to label %bb.mi unwind label %bb.mh, !noalias !2161

bb.mh:                                            ; preds = %bb.mg
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2157
  br label %bb.mn

bb.mi:                                            ; preds = %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2157
  br label %bb.mf

.body91.i.i:                                      ; preds = %bb.mp, %bb.mj, %bb.fa, %bb.ey
  %.pn43.i.i = phi { ptr, i32 } [ %.pn40.pn.i.i, %bb.fa ], [ %i.nx, %bb.ey ], [ %i.ahx, %bb.mj ], [ %i.aim, %bb.mp ] ; 3 uses
  %i.ahw = load i64, ptr %i.kq, align 8, !range !6, !noalias !2157, !noundef !3
  %.not45.i.i = icmp eq i64 %i.ahw, -9223372036854775808
  br i1 %.not45.i.i, label %bb.mr, label %bb.do

bb.mj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ahy = load i64, ptr %i.kq, align 8, !range !6, !noalias !2157, !noundef !3
  %i.ahz = icmp eq i64 %i.ahy, -9223372036854775808
  br i1 %i.ahz, label %bb.mk, label %bb.mv

bb.mk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.aia = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.aib = load i8, ptr %i.aia, align 8, !range !703, !noalias !2157, !noundef !3
  %i.aic = trunc nuw i8 %i.aib to i1
  br i1 %i.aic, label %bb.ml, label %bb.mv

bb.ml:                                            ; preds = %bb.mk
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aid)
          to label %bb.mv unwind label %bb.mm, !noalias !2161

bb.mm:                                            ; preds = %bb.ml
  %i.aie = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.mn:                                            ; preds = %bb.mh, %bb.md, %bb.ma, %bb.lx, %bb.ls, %bb.lq
  %.pn14.pn.pn.i.i = phi { ptr, i32 } [ %i.ahv, %bb.mh ], [ %i.agu, %bb.lx ], [ %i.agl, %bb.lq ], [ %i.ahn, %bb.md ], [ %i.ahe, %bb.ma ], [ %i.agn, %bb.ls ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  %i.aif = getelementptr inbounds nuw i8, ptr %i.vi, i64 32
  %i.aig = load ptr, ptr %i.aif, align 8, !noalias !2387, !nonnull !3, !noundef !3
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.aii = load ptr, ptr %.sroa.4142.0..sroa_idx.i.i, align 8, !alias.scope !2388, !noalias !2157, !noundef !3
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.aik = load i64, ptr %i.aij, align 8, !alias.scope !2388, !noalias !2157, !noundef !3
  invoke void %i.aig(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aih, ptr noundef %i.aii, i64 noundef %i.aik)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.dn, !noalias !2161, !inline_history !626

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.mn, %bb.ll, %.body105.i.i
  %.pn18.pn.i.i = phi { ptr, i32 } [ %.pn14.pn.pn.i.i, %bb.mn ], [ %i.age, %bb.ll ], [ %eh.lpad-body106.i.i, %.body105.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2157
  br label %bb.fa

bb.mo:                                            ; preds = %bb.lm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.11187.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i, i64 32, i1 false), !noalias !2157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10186.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6136.i.i, i64 24, i1 false), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2157
  %i.ail = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ail)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i unwind label %bb.mp, !noalias !2161

bb.mp:                                            ; preds = %bb.mo
  %i.aim = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ail)
          to label %.body91.i.i unwind label %bb.mq, !noalias !2161

bb.mq:                                            ; preds = %bb.mp
  %i.ain = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2161
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i: ; preds = %bb.mo
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ail)
          to label %bb.mv unwind label %bb.mj, !noalias !2161

bb.mr:                                            ; preds = %.body91.i.i
  %i.aio = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.aip = load i8, ptr %i.aio, align 8, !range !703, !noalias !2157, !noundef !3
  %i.aiq = trunc nuw i8 %i.aip to i1
  br i1 %i.aiq, label %bb.ms, label %bb.do

bb.ms:                                            ; preds = %bb.mr
  %i.air = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.air) #31
          to label %bb.do unwind label %bb.dn, !noalias !2161

bb.mt:                                            ; preds = %bb.dr, %bb.dq
  %i.ais = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i

bb.mu:                                            ; preds = %bb.lj, %bb.du
  %.sink.i.ph.i = phi i8 [ 3, %bb.du ], [ 4, %bb.lj ]
  store i8 %.sink.i.ph.i, ptr %i.kr, align 1, !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10186.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11187.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2134
  br label %bb.nc

bb.mv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i, %bb.ml, %bb.mk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.sroa.0181.1.i.i = phi i64 [ -9223372036854775743, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i ], [ %.sroa.0181.0.i.i, %bb.ml ], [ %.sroa.0181.0.i.i, %bb.mk ], [ %.sroa.0181.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.5182.1.i.i = phi i64 [ %.sroa.054.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i ], [ %.sroa.5182.0.i.i, %bb.ml ], [ %.sroa.5182.0.i.i, %bb.mk ], [ %.sroa.5182.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.9184.1.i.i = phi ptr [ %i.vi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i120.i.i ], [ %.sroa.9184.0.i.i, %bb.ml ], [ %.sroa.9184.0.i.i, %bb.mk ], [ %.sroa.9184.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %i.ait = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 0, ptr %i.ait, align 8, !noalias !2157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10186.i.i, i64 24, i1 false), !noalias !2134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.11187.i.i, i64 32, i1 false), !noalias !2134
  store i8 1, ptr %i.kr, align 1, !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10186.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11187.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2134
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.kq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.mw, !noalias !2138

bb.mw:                                            ; preds = %bb.mv
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

bb.mx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aiv = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.aiv)
          to label %bb.nd unwind label %bb.my, !noalias !2138

bb.my:                                            ; preds = %bb.mx
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.body43.i:                                        ; preds = %bb.mt, %bb.dp
  %.pn19.i = phi { ptr, i32 } [ %.pn46.pn.i.i, %bb.dp ], [ %i.ais, %bb.mt ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.kq) #31
          to label %.body40.i unwind label %bb.cj, !noalias !2138

bb.mz:                                            ; preds = %bb.na, %.body40.i
  store i8 0, ptr %i.jt, align 1, !noalias !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2134
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aiy = load i8, ptr %i.aix, align 8, !range !703, !noalias !2134, !noundef !3
  %i.aiz = trunc nuw i8 %i.aiy to i1
  br i1 %i.aiz, label %bb.nb, label %bb.cv
end_hunk_1
